proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z010clg400-1
  set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/git/SDPU/DataSniffer/DataSniffer.cache/wt [current_project]
  set_property parent.project_path C:/git/SDPU/DataSniffer/DataSniffer.xpr [current_project]
  set_property ip_repo_paths C:/git/SDPU/ip_repo/axis_fifo_1.0 [current_project]
  set_property ip_output_repo C:/git/SDPU/DataSniffer/DataSniffer.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/git/SDPU/DataSniffer/DataSniffer.runs/synth_1/PeselSearcher.dcp
  link_design -top PeselSearcher -part xc7z010clg400-1
  write_hwdef -file PeselSearcher.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force PeselSearcher_opt.dcp
  catch { report_drc -file PeselSearcher_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force PeselSearcher_placed.dcp
  catch { report_io -file PeselSearcher_io_placed.rpt }
  catch { report_utilization -file PeselSearcher_utilization_placed.rpt -pb PeselSearcher_utilization_placed.pb }
  catch { report_control_sets -verbose -file PeselSearcher_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force PeselSearcher_routed.dcp
  catch { report_drc -file PeselSearcher_drc_routed.rpt -pb PeselSearcher_drc_routed.pb -rpx PeselSearcher_drc_routed.rpx }
  catch { report_methodology -file PeselSearcher_methodology_drc_routed.rpt -rpx PeselSearcher_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file PeselSearcher_timing_summary_routed.rpt -rpx PeselSearcher_timing_summary_routed.rpx }
  catch { report_power -file PeselSearcher_power_routed.rpt -pb PeselSearcher_power_summary_routed.pb -rpx PeselSearcher_power_routed.rpx }
  catch { report_route_status -file PeselSearcher_route_status.rpt -pb PeselSearcher_route_status.pb }
  catch { report_clock_utilization -file PeselSearcher_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force PeselSearcher_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force PeselSearcher.mmi }
  write_bitstream -force -no_partial_bitfile PeselSearcher.bit 
  catch { write_sysdef -hwdef PeselSearcher.hwdef -bitfile PeselSearcher.bit -meminfo PeselSearcher.mmi -file PeselSearcher.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}


# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/git/SDPU/DataSniffer/DataSniffer.cache/wt [current_project]
set_property parent.project_path C:/git/SDPU/DataSniffer/DataSniffer.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
set_property ip_repo_paths c:/git/SDPU/ip_repo/axis_fifo_1.0 [current_project]
set_property ip_output_repo c:/git/SDPU/DataSniffer/DataSniffer.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0.xci
set_property is_locked true [get_files c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1 -new_name DataSniffer_axi_dma_0_0 -ip [get_ips DataSniffer_axi_dma_0_0]]

if { $cached_ip eq {} } {

synth_design -top DataSniffer_axi_dma_0_0 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix DataSniffer_axi_dma_0_0_ DataSniffer_axi_dma_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataSniffer_axi_dma_0_0_stub.v
 lappend ipCachedFiles DataSniffer_axi_dma_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataSniffer_axi_dma_0_0_stub.vhdl
 lappend ipCachedFiles DataSniffer_axi_dma_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataSniffer_axi_dma_0_0_sim_netlist.v
 lappend ipCachedFiles DataSniffer_axi_dma_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataSniffer_axi_dma_0_0_sim_netlist.vhdl
 lappend ipCachedFiles DataSniffer_axi_dma_0_0_sim_netlist.vhdl

 config_ip_cache -add -dcp DataSniffer_axi_dma_0_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips DataSniffer_axi_dma_0_0]
}

rename_ref -prefix_all DataSniffer_axi_dma_0_0_

write_checkpoint -force -noxdef DataSniffer_axi_dma_0_0.dcp

catch { report_utilization -file DataSniffer_axi_dma_0_0_utilization_synth.rpt -pb DataSniffer_axi_dma_0_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0.dcp c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0.dcp c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0_stub.v c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0_stub.vhdl c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0_sim_netlist.v c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/git/SDPU/DataSniffer/DataSniffer.runs/DataSniffer_axi_dma_0_0_synth_1/DataSniffer_axi_dma_0_0_sim_netlist.vhdl c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/git/SDPU/DataSniffer/DataSniffer.ip_user_files/ip/DataSniffer_axi_dma_0_0]} {
  catch { 
    file copy -force c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.v C:/git/SDPU/DataSniffer/DataSniffer.ip_user_files/ip/DataSniffer_axi_dma_0_0
  }
}

if {[file isdir C:/git/SDPU/DataSniffer/DataSniffer.ip_user_files/ip/DataSniffer_axi_dma_0_0]} {
  catch { 
    file copy -force c:/git/SDPU/DataSniffer/DataSniffer.srcs/sources_1/bd/DataSniffer/ip/DataSniffer_axi_dma_0_0/DataSniffer_axi_dma_0_0_stub.vhdl C:/git/SDPU/DataSniffer/DataSniffer.ip_user_files/ip/DataSniffer_axi_dma_0_0
  }
}

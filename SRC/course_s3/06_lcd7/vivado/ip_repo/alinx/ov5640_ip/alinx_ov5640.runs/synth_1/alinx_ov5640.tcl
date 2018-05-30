# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg400-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir Y:/project/zynq_ip_repo/alinx/ov5640_ip/alinx_ov5640.cache/wt [current_project]
set_property parent.project_path Y:/project/zynq_ip_repo/alinx/ov5640_ip/alinx_ov5640.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  y:/project/zynq_ip_repo/alinx/ov5640_ip
  y:/ax/ax7010/vivado_project_b/ov5640_ip
} [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files -quiet Y:/project/zynq_ip_repo/alinx/ov5640_ip/alinx_ov5640.runs/cmos_in_buf_synth_1/cmos_in_buf.dcp
set_property used_in_implementation false [get_files Y:/project/zynq_ip_repo/alinx/ov5640_ip/alinx_ov5640.runs/cmos_in_buf_synth_1/cmos_in_buf.dcp]
read_verilog -library xil_defaultlib {
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/i2c_com.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/cmos_in_axi4s_coupler.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/cmos_in_axi4s_formatter.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/reg_config.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/power_on_delay.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/cmos_8_16bit.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/cmos_in_axi4s.v
  Y:/project/zynq_ip_repo/alinx/ov5640_ip/src/alinx_ov5640.v
}
synth_design -top alinx_ov5640 -part xc7z020clg400-2
write_checkpoint -noxdef alinx_ov5640.dcp
catch { report_utilization -file alinx_ov5640_utilization_synth.rpt -pb alinx_ov5640_utilization_synth.pb }

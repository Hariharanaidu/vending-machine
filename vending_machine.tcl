# Copyright (C) 2023  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: vending_machine.tcl
# Generated on: Fri Nov 17 03:01:21 2023

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "vending_machine"]} {
		puts "Project vending_machine is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists vending_machine]} {
		project_open -revision vending_machine vending_machine
	} else {
		project_new -revision vending_machine vending_machine
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "MAX 10"
	set_global_assignment -name DEVICE 10M50DAF256C7G
	set_global_assignment -name TOP_LEVEL_ENTITY ven_mac
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 22.1STD.2
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "16:16:47  NOVEMBER 16, 2023"
	set_global_assignment -name LAST_QUARTUS_VERSION "22.1std.2 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name BOARD "MAX 10 FPGA Development Kit"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name VERILOG_FILE ven_mac.v
	set_global_assignment -name VERILOG_FILE ven_mac_tb.v
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY ON -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_ENABLE_STATUS TEST_BENCH_MODE -section_id eda_simulation
	set_global_assignment -name EDA_NATIVELINK_SIMULATION_TEST_BENCH ven_mac_tb -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_NAME ven_mac_tb -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id ven_mac_tb
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME ven_mac_tb -section_id ven_mac_tb
	set_global_assignment -name EDA_TEST_BENCH_FILE ven_mac_tb.v -section_id ven_mac_tb
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}

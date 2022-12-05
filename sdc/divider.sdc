###############################################################################
# Created by write_sdc
# Mon Dec  5 19:56:40 2022
###############################################################################
current_design divider
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout1}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout10}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout2}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout3}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout4}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout5}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout6}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout7}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout8}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cout9}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {cout1}]
set_load -pin_load 0.0729 [get_ports {cout10}]
set_load -pin_load 0.0729 [get_ports {cout2}]
set_load -pin_load 0.0729 [get_ports {cout3}]
set_load -pin_load 0.0729 [get_ports {cout4}]
set_load -pin_load 0.0729 [get_ports {cout5}]
set_load -pin_load 0.0729 [get_ports {cout6}]
set_load -pin_load 0.0729 [get_ports {cout7}]
set_load -pin_load 0.0729 [get_ports {cout8}]
set_load -pin_load 0.0729 [get_ports {cout9}]
set_driving_cell -lib_cell gf180mcu_fd_sc_mcu7t5v0__inv_4 -pin {ZN} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]

## Generated SDC file "ryba_new_v8.sdc"

## Copyright (C) 2025  Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Altera and sold by Altera or its authorized distributors.  Please
## refer to the Altera Software License Subscription Agreements 
## on the Quartus Prime software download page.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

## DATE    "Fri Jun 26 17:06:22 2026"

##
## DEVICE  "EP4CE55F23I7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk50}]
create_clock -name {refclko} -period 1.000 -waveform { 0.000 0.500 } [get_ports {refclko}]
create_clock -name {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2} -period 1.000 -waveform { 0.000 0.500 } [get_registers {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {eth_pll_u|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {eth_pll_u|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -master_clock {clk50} [get_pins {eth_pll_u|altpll_component|auto_generated|pll1|clk[0]}] 
create_generated_clock -name {main_pll_u|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {main_pll_u|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 8 -divide_by 5 -master_clock {clk50} [get_pins {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {refclko}] -rise_to [get_clocks {refclko}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {refclko}] -fall_to [get_clocks {refclko}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {refclko}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {refclko}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {refclko}] -rise_to [get_clocks {refclko}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {refclko}] -fall_to [get_clocks {refclko}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {refclko}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {refclko}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {refclko}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {refclko}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {refclko}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {refclko}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {refclko}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {refclko}] -hold 0.090  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {refclko}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {refclko}] -hold 0.090  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {refclko}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {refclko}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {refclko}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {refclko}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {emac_eth:emac_eth_unit|mii2rmii:mii2rmii_unit|intel_fpga_mii2rmii:fpga_mii2rmii_0|clkdiv2:u0_clkdiv|clkby2}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {main_pll_u|altpll_component|auto_generated|pll1|clk[0]}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|altera_tse_register_map_small:U_REG|command_config[9]}] -to [get_registers {*|altera_tse_mac_tx:U_TX|*}]
set_false_path -from [get_registers {*|altera_tse_register_map_small:U_REG|mac_0[*]}] -to [get_registers {*|altera_tse_mac_tx:U_TX|*}]
set_false_path -from [get_registers {*|altera_tse_register_map_small:U_REG|mac_1[*]}] -to [get_registers {*|altera_tse_mac_tx:U_TX|*}]
set_false_path -from [get_registers {*|altera_tse_register_map_small:U_REG|mac_0[*]}] -to [get_registers {*|altera_tse_mac_rx:U_RX|*}]
set_false_path -from [get_registers {*|altera_tse_register_map_small:U_REG|mac_1[*]}] -to [get_registers {*|altera_tse_mac_rx:U_RX|*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|altera_tse_reset_synchronizer:*|altera_tse_reset_synchronizer_chain*|clrn}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_altsyncram_dpm_fifo:U_RTSM|altsyncram*}] -to [get_registers *] 5
set_multicycle_path -setup -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] -to [get_registers *] 5
set_multicycle_path -setup -end -from [get_registers *] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] 5
set_multicycle_path -hold -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_altsyncram_dpm_fifo:U_RTSM|altsyncram*}] -to [get_registers *] 5
set_multicycle_path -hold -end -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] -to [get_registers *] 5
set_multicycle_path -hold -end -from [get_registers *] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_retransmit_cntl:U_RETR|*}] 5


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers *] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_34:RX_STATUS|wr_g_ptr_reg[*]}] -to [get_registers {*altera_tse_a_fifo_34:RX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_WR_G_PTR|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 100.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|dout_reg_sft*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|eop_sft*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000
set_max_delay -from [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|sop_reg*}] -to [get_registers {*|altera_tse_top_w_fifo:U_MAC|altera_tse_top_1geth:U_GETH|altera_tse_mac_tx:U_TX|*}] 7.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers *] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000
set_min_delay -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_34:RX_STATUS|wr_g_ptr_reg[*]}] -to [get_registers {*altera_tse_a_fifo_34:RX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_WR_G_PTR|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*|q}] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]|q}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*altera_tse_a_fifo_34:RX_STATUS|wr_g_ptr_reg[*]|q}] -to [get_registers {*altera_tse_a_fifo_34:RX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_WR_G_PTR|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}]


#**************************************************************
# Set Max Skew
#**************************************************************

set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_opt_1246:TX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:TX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_RD|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_1|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_opt_1246:RX_DATA|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_opt_1246:RX_DATA|altera_eth_tse_std_synchronizer_bundle:U_SYNC_3|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_tx_min_ff:U_TXFF|altera_tse_a_fifo_13:TX_STATUS|altera_tse_gray_cnt:U_WRT|g_out[*]}] -to [get_registers {*altera_tse_a_fifo_13:TX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_2|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 
set_max_skew -from [get_registers {emac_eth:emac_eth_unit|emac:mac_unit|emac_0002:emac_inst|altera_eth_tse_mac:i_tse_mac|altera_tse_top_w_fifo_10_100_1000:U_MAC_TOP|altera_tse_top_w_fifo:U_MAC|altera_tse_rx_min_ff:U_RXFF|altera_tse_a_fifo_34:RX_STATUS|wr_g_ptr_reg[*]}] -to [get_registers {*altera_tse_a_fifo_34:RX_STATUS|altera_eth_tse_std_synchronizer_bundle:U_SYNC_WR_G_PTR|altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1*}] 7.500 

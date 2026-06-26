module ryba_new_v8(
	//system
	input						clk50,				//system clock 50MHz
	input						clk50_1,			//alternative system clock 50MHz
	input						reset_n,			//system reset = alt_rdy
	output						alt_rdy,			//must be set to high
	//synchronization
	input 						sync,				//sync from head (may be pulse, or asinchronous serial input)
	//PHY interface	
	input						refclko,			//reference clock from LAN8720
	output						etclk,				//clock 50MHz to LAN8720
	output 						nrst,				//reset to LAN8720
	//RMII signals
	inout						mdio,
	output 						mdc,
	output		[1:0] 			txd,
	output						txen,
	input		[1:0]			rxd,
	input						crs_dv,
	input						rx_er,
	//channals
	output		[3:0]			mclk_adc,			//ADC cloks
	input		[11:0]			d1x,				//ADC data channals 0 - 3
	input		[11:0]			d2x,				//ADC data channals 4 - 7
	input		[11:0]			d3x,				//ADC data channals 8 - 11
	input		[11:0]			d4x,				//ADC data channals 12 - 15
	output		[1:0]			sel1x,				//select channals 0 - 3 (reverce order)
	output		[1:0]			sel2x,				//select channals 4 - 7 (reverce order)
	output		[1:0]			sel3x,				//select channals 8 - 11 (reverce order)
	output		[1:0]			sel4x,				//select channals 12 - 15 (reverce order)
	output		[3:0]			sclk_dac,			//DAC clocks
	output		[3:0]			syncn_dac,			//DAC sync_n
	output		[3:0]			din0_dac,			//DAC data 0 (first VGA regulation)
	output		[3:0]			din1_dac,			//DAC data 1 (second VGA regulation)
	//pulse signals: even index - open BCP53 (0, 2, 4, 6), odd index - open IRF830 (1, 3, 5, 7)
	output		[7:0]			pulse1x,			//pulse generator channals 0 - 3 (reverce order)
	output		[7:0]			pulse2x,			//pulse generator channals 4 - 7 (reverce order)
	output		[7:0]			pulse3x,			//pulse generator channals 8 - 11 (reverce order)
	output		[7:0]			pulse4x,			//pulse generator channals 12 - 15 (reverce order)
	//test leds
	output 		[3:0] 			led
);

assign alt_rdy = 1'b1;

endmodule

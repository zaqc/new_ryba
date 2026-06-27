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
	
	wire						sys_clk;	// 80 MHz
	wire						adc_clk;	// 65 MHz
	wire						rst_n;
	wire						main_rst_n;
	wire						eth_rst_n;
	
	main_pll main_pll_u(
		.inclk0(clk50),
		
		.c0(sys_clk),
		.c1(adc_clk),
		
		.locked(main_rst_n)
	);
	
	wire		[31:0]			packet_data;
	wire						packet_vld;
	wire						packet_rdy;
	wire						packet_ready;
	wire		[15:0]			packet_size;
	
	//assign packet_size = 16'd512;
	//assign packet_vld = 1'b1;
	
	reg			[23:0]			main_sync;
	always @ (posedge sys_clk or negedge rst_n) 
		if(~rst_n) 
			main_sync <= 24'd0;
		else
			main_sync <= main_sync + 1'd1;
	
	wire						dscope_sync;
	assign dscope_sync = &{main_sync};
		
	eth_pll eth_pll_u(
		.inclk0(clk50),
		.c0(etclk),
		.locked(eth_rst_n)
	);
	
	assign nrst = eth_rst_n;
	
	
	reg			[7:0]			rst_ss = 8'd0;
	always @ (posedge sys_clk)
		if(!rst_n)
			rst_ss <= {rst_ss[6:0], eth_rst_n & main_rst_n};
	
	assign rst_n = rst_ss[7];
	
	wire						sys_rst_n;

	emac_eth emac_eth_unit(
		.rst_n(sys_rst_n),
		.sysclk(sys_clk),
		
		.i_sync(packet_ready),
		
		.i_frame_data(packet_data),
		.i_frame_vld(packet_vld),
		.o_frame_rdy(packet_rdy),
		
		.i_frame_size(packet_size),
		
		.i_refclk(refclko),
		//.o_refclk(refclk),
		
		//.o_ephy_rst_n(ephy1_rstn),
		
		.i_rxd(rxd),
		.i_rxdv(crs_dv),
		.i_rxer(rx_er),
		
		.o_txd(txd),
		.o_txen(txen),
		
		.o_mdc(mdc),
		.io_mdio(mdio)
	);
	
	reg			[11:0]			adc_data;
	always @ (posedge adc_clk) adc_data <= adc_data + 1'd1;
	
	dscope_main #(
		.ASCAN_ADDR_WIDTH(10)
	) dscope_main_u (
		.rst_n(rst_n),
		.sys_clk(sys_clk),
		.adc_clk(adc_clk),
		
		.i_sys_sync(dscope_sync),
		
		.i_adc_data(adc_data),
		
		.i_n_samples(16'd256),
		.i_accum(8'd1),
		.i_accum_type(2'd1),
		.i_skip_ticks(16'd1024),
		
		.o_out_data(packet_data),
		.o_out_vld(packet_vld),
		.i_out_rdy(packet_rdy),
		.o_out_size(packet_size),
		.o_data_ready(packet_ready),
		
		.o_sys_rst_n(sys_rst_n)
	);
endmodule

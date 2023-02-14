`timescale 1ns/1ps

`define SYS_TIME_PERIOD     20
`define ETH_TIME_PERIOD     5

`define     HOST_0          0
`define     HOST_1          1

`include "dutif.sv"

module Top_Sim_NIC_Link();

    DUTInterface dutif_requester();
    DUTInterface dutif_responder();
    Host host_requester;
    Host host_responder;

`ifdef ENABLE_DUT

/*Requester nic-link interface*/
    wire                                        w_hpc_requester_link_tx_valid;
    wire                                        w_hpc_requester_link_tx_last;
    wire                [256 - 1 : 0]           wv_hpc_requester_link_tx_data;
    wire                [5 - 1 : 0]             wv_hpc_requester_link_tx_keep;
    wire                                        w_hpc_requester_link_tx_ready;
    wire                                        w_hpc_requester_link_tx_start; 		
    wire                [7 - 1:0]		        wv_hpc_requester_link_tx_user;

    wire                [31:0]                        wv_hpc_requester_link_tx_keep_32bit;
    wire                [31:0]                        wv_hpc_requester_link_rx_keep_32bit;
    wire                [31:0]                        wv_hpc_responder_link_tx_keep_32bit;
    wire                [31:0]                        wv_hpc_responder_link_rx_keep_32bit;

    wire                                        w_hpc_requester_link_rx_valid;
    wire                                        w_hpc_requester_link_rx_last;
    wire                [256 - 1 : 0]           wv_hpc_requester_link_rx_data;
    wire                [5 - 1 : 0]             wv_hpc_requester_link_rx_keep;
    wire                                        w_hpc_requester_link_rx_ready;
    wire                                        w_hpc_requester_link_rx_start; 		
    wire                [7 - 1:0]		        wv_hpc_requester_link_rx_user; 	 

/*Responder nic-link interface*/
    wire                                        w_hpc_responder_link_tx_valid;
    wire                                        w_hpc_responder_link_tx_last;
    wire                [256 - 1 : 0]           wv_hpc_responder_link_tx_data;
    wire                [5 - 1 : 0]             wv_hpc_responder_link_tx_keep;
    wire                                        w_hpc_responder_link_tx_ready;
    wire                                        w_hpc_responder_link_tx_start; 		
    wire                [7 - 1:0]		        wv_hpc_responder_link_tx_user;

    wire                                        w_hpc_responder_link_rx_valid;
    wire                                        w_hpc_responder_link_rx_last;
    wire                [256 - 1 : 0]           wv_hpc_responder_link_rx_data;
    wire                [5 - 1 : 0]             wv_hpc_responder_link_rx_keep;
    wire                                        w_hpc_responder_link_rx_ready;
    wire                                        w_hpc_responder_link_rx_start; 		
    wire                [7 - 1:0]		        wv_hpc_responder_link_rx_user; 	 

    wire                [128-1:0]     wv_xlgmii_requester_txd;
    wire                [16-1:0]     wv_xlgmii_requester_txc;

    wire                [128-1:0]     wv_xlgmii_responder_txd;
    wire                [16-1:0]     wv_xlgmii_responder_txc;

    assign wv_hpc_requester_link_rx_keep =  
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0001) ? 'd1 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0011) ? 'd2 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0111) ? 'd3 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_1111) ? 'd4 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0001_1111) ? 'd5 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0011_1111) ? 'd6 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0111_1111) ? 'd7 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_1111_1111) ? 'd8 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0001_1111_1111) ? 'd9 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0011_1111_1111) ? 'd10 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0111_1111_1111) ? 'd11 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_1111_1111_1111) ? 'd12 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0001_1111_1111_1111) ? 'd13 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0011_1111_1111_1111) ? 'd14 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0111_1111_1111_1111) ? 'd15 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_1111_1111_1111_1111) ? 'd16 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0001_1111_1111_1111_1111) ? 'd17 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0011_1111_1111_1111_1111) ? 'd18 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0111_1111_1111_1111_1111) ? 'd19 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_1111_1111_1111_1111_1111) ? 'd20 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0001_1111_1111_1111_1111_1111) ? 'd21 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0011_1111_1111_1111_1111_1111) ? 'd22 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0111_1111_1111_1111_1111_1111) ? 'd23 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_1111_1111_1111_1111_1111_1111) ? 'd24 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0001_1111_1111_1111_1111_1111_1111) ? 'd25 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0011_1111_1111_1111_1111_1111_1111) ? 'd26 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0111_1111_1111_1111_1111_1111_1111) ? 'd27 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_1111_1111_1111_1111_1111_1111_1111) ? 'd28 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0001_1111_1111_1111_1111_1111_1111_1111) ? 'd29 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0011_1111_1111_1111_1111_1111_1111_1111) ? 'd30 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0111_1111_1111_1111_1111_1111_1111_1111) ? 'd31 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b1111_1111_1111_1111_1111_1111_1111_1111) ? 'd0 :
                            (wv_hpc_requester_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0000) ? 'd0 : 'd0;

    assign wv_hpc_requester_link_tx_keep_32bit =    
                            (wv_hpc_requester_link_tx_keep == 'd1 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0001 : 
                            (wv_hpc_requester_link_tx_keep == 'd2 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0011 :
                            (wv_hpc_requester_link_tx_keep == 'd3 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0111 :
                            (wv_hpc_requester_link_tx_keep == 'd4 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd5 ) ? 32'b0000_0000_0000_0000_0000_0000_0001_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd6 ) ? 32'b0000_0000_0000_0000_0000_0000_0011_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd7 ) ? 32'b0000_0000_0000_0000_0000_0000_0111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd8 ) ? 32'b0000_0000_0000_0000_0000_0000_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd9 ) ? 32'b0000_0000_0000_0000_0000_0001_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd10) ? 32'b0000_0000_0000_0000_0000_0011_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd11) ? 32'b0000_0000_0000_0000_0000_0111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd12) ? 32'b0000_0000_0000_0000_0000_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd13) ? 32'b0000_0000_0000_0000_0001_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd14) ? 32'b0000_0000_0000_0000_0011_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd15) ? 32'b0000_0000_0000_0000_0111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd16) ? 32'b0000_0000_0000_0000_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd17) ? 32'b0000_0000_0000_0001_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd18) ? 32'b0000_0000_0000_0011_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd19) ? 32'b0000_0000_0000_0111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd20) ? 32'b0000_0000_0000_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd21) ? 32'b0000_0000_0001_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd22) ? 32'b0000_0000_0011_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd23) ? 32'b0000_0000_0111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd24) ? 32'b0000_0000_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd25) ? 32'b0000_0001_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd26) ? 32'b0000_0011_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd27) ? 32'b0000_0111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd28) ? 32'b0000_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd29) ? 32'b0001_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd30) ? 32'b0011_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd31) ? 32'b0111_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_requester_link_tx_keep == 'd0 ) ? 32'b1111_1111_1111_1111_1111_1111_1111_1111 : 'd0;

   assign wv_hpc_responder_link_rx_keep =  
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0001) ? 'd1 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0011) ? 'd2 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0111) ? 'd3 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_1111) ? 'd4 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0001_1111) ? 'd5 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0011_1111) ? 'd6 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0111_1111) ? 'd7 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_1111_1111) ? 'd8 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0001_1111_1111) ? 'd9 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0011_1111_1111) ? 'd10 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0111_1111_1111) ? 'd11 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_1111_1111_1111) ? 'd12 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0001_1111_1111_1111) ? 'd13 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0011_1111_1111_1111) ? 'd14 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0111_1111_1111_1111) ? 'd15 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_1111_1111_1111_1111) ? 'd16 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0001_1111_1111_1111_1111) ? 'd17 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0011_1111_1111_1111_1111) ? 'd18 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0111_1111_1111_1111_1111) ? 'd19 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_1111_1111_1111_1111_1111) ? 'd20 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0001_1111_1111_1111_1111_1111) ? 'd21 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0011_1111_1111_1111_1111_1111) ? 'd22 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0111_1111_1111_1111_1111_1111) ? 'd23 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_1111_1111_1111_1111_1111_1111) ? 'd24 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0001_1111_1111_1111_1111_1111_1111) ? 'd25 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0011_1111_1111_1111_1111_1111_1111) ? 'd26 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0111_1111_1111_1111_1111_1111_1111) ? 'd27 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_1111_1111_1111_1111_1111_1111_1111) ? 'd28 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0001_1111_1111_1111_1111_1111_1111_1111) ? 'd29 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0011_1111_1111_1111_1111_1111_1111_1111) ? 'd30 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0111_1111_1111_1111_1111_1111_1111_1111) ? 'd31 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b1111_1111_1111_1111_1111_1111_1111_1111) ? 'd0 :
                            (wv_hpc_responder_link_rx_keep_32bit == 32'b0000_0000_0000_0000_0000_0000_0000_0000) ? 'd0 : 'd0;

    assign wv_hpc_responder_link_tx_keep_32bit =    
                            (wv_hpc_responder_link_tx_keep == 'd1 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0001 : 
                            (wv_hpc_responder_link_tx_keep == 'd2 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0011 :
                            (wv_hpc_responder_link_tx_keep == 'd3 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_0111 :
                            (wv_hpc_responder_link_tx_keep == 'd4 ) ? 32'b0000_0000_0000_0000_0000_0000_0000_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd5 ) ? 32'b0000_0000_0000_0000_0000_0000_0001_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd6 ) ? 32'b0000_0000_0000_0000_0000_0000_0011_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd7 ) ? 32'b0000_0000_0000_0000_0000_0000_0111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd8 ) ? 32'b0000_0000_0000_0000_0000_0000_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd9 ) ? 32'b0000_0000_0000_0000_0000_0001_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd10) ? 32'b0000_0000_0000_0000_0000_0011_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd11) ? 32'b0000_0000_0000_0000_0000_0111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd12) ? 32'b0000_0000_0000_0000_0000_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd13) ? 32'b0000_0000_0000_0000_0001_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd14) ? 32'b0000_0000_0000_0000_0011_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd15) ? 32'b0000_0000_0000_0000_0111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd16) ? 32'b0000_0000_0000_0000_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd17) ? 32'b0000_0000_0000_0001_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd18) ? 32'b0000_0000_0000_0011_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd19) ? 32'b0000_0000_0000_0111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd20) ? 32'b0000_0000_0000_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd21) ? 32'b0000_0000_0001_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd22) ? 32'b0000_0000_0011_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd23) ? 32'b0000_0000_0111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd24) ? 32'b0000_0000_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd25) ? 32'b0000_0001_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd26) ? 32'b0000_0011_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd27) ? 32'b0000_0111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd28) ? 32'b0000_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd29) ? 32'b0001_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd30) ? 32'b0011_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd31) ? 32'b0111_1111_1111_1111_1111_1111_1111_1111 :
                            (wv_hpc_responder_link_tx_keep == 'd0 ) ? 32'b1111_1111_1111_1111_1111_1111_1111_1111 : 'd0;


	wire 				w_requester_init_finish;
	wire 				w_responder_init_finish;

	assign dutif_requester.o_rdma_init_finish = w_requester_init_finish;
    assign dutif_responder.o_rdma_init_finish = w_responder_init_finish;

    mailbox             host_0_to_1;
    mailbox             host_1_to_0;

    RDMAEngine_Wrapper Requester_Inst(
        .clk(dutif_requester.clk),
        .rst(dutif_requester.rst),
        .o_pio_prog_full(dutif_requester.o_pio_prog_full),
        .i_pio_wr_en(dutif_requester.i_pio_wr_en),
        .iv_pio_data(dutif_requester.iv_pio_data),

        .i_db_cxtmgt_cmd_rd_en(dutif_requester.i_db_cxtmgt_cmd_rd_en),
        .o_db_cxtmgt_cmd_empty(dutif_requester.o_db_cxtmgt_cmd_empty),
        .ov_db_cxtmgt_cmd_data(dutif_requester.ov_db_cxtmgt_cmd_data),

        .o_db_cxtmgt_resp_prog_full(dutif_requester.o_db_cxtmgt_resp_prog_full),
        .i_db_cxtmgt_resp_wr_en(dutif_requester.i_db_cxtmgt_resp_wr_en),
        .iv_db_cxtmgt_resp_data(dutif_requester.iv_db_cxtmgt_resp_data),

        .o_db_cxtmgt_cxt_download_prog_full(dutif_requester.o_db_cxtmgt_cxt_download_prog_full),
        .i_db_cxtmgt_cxt_download_wr_en(dutif_requester.i_db_cxtmgt_cxt_download_wr_en),
        .iv_db_cxtmgt_cxt_download_data(dutif_requester.iv_db_cxtmgt_cxt_download_data),

        .i_wp_cxtmgt_cmd_rd_en(dutif_requester.i_wp_cxtmgt_cmd_rd_en),
        .o_wp_cxtmgt_cmd_empty(dutif_requester.o_wp_cxtmgt_cmd_empty),
        .ov_wp_cxtmgt_cmd_data(dutif_requester.ov_wp_cxtmgt_cmd_data),

        .o_wp_cxtmgt_resp_prog_full(dutif_requester.o_wp_cxtmgt_resp_prog_full),
        .i_wp_cxtmgt_resp_wr_en(dutif_requester.i_wp_cxtmgt_resp_wr_en),
        .iv_wp_cxtmgt_resp_data(dutif_requester.iv_wp_cxtmgt_resp_data),

        .o_wp_cxtmgt_cxt_download_prog_full(dutif_requester.o_wp_cxtmgt_cxt_download_prog_full),
        .i_wp_cxtmgt_cxt_download_wr_en(dutif_requester.i_wp_cxtmgt_cxt_download_wr_en),
        .iv_wp_cxtmgt_cxt_download_data(dutif_requester.iv_wp_cxtmgt_cxt_download_data),

        .i_rtc_cxtmgt_cmd_rd_en(dutif_requester.i_rtc_cxtmgt_cmd_rd_en),
        .o_rtc_cxtmgt_cmd_empty(dutif_requester.o_rtc_cxtmgt_cmd_empty),
        .ov_rtc_cxtmgt_cmd_data(dutif_requester.ov_rtc_cxtmgt_cmd_data),

        .o_rtc_cxtmgt_resp_prog_full(dutif_requester.o_rtc_cxtmgt_resp_prog_full),
        .i_rtc_cxtmgt_resp_wr_en(dutif_requester.i_rtc_cxtmgt_resp_wr_en),
        .iv_rtc_cxtmgt_resp_data(dutif_requester.iv_rtc_cxtmgt_resp_data),

        .o_rtc_cxtmgt_cxt_download_prog_full(dutif_requester.o_rtc_cxtmgt_cxt_download_prog_full),
        .i_rtc_cxtmgt_cxt_download_wr_en(dutif_requester.i_rtc_cxtmgt_cxt_download_wr_en),
        .iv_rtc_cxtmgt_cxt_download_data(dutif_requester.iv_rtc_cxtmgt_cxt_download_data),

    /*Spyglass Add Begin*/
        .o_rtc_cxtmgt_cxt_upload_empty(dutif_requester.o_rtc_cxtmgt_cxt_upload_empty),
        .i_rtc_cxtmgt_cxt_upload_rd_en(dutif_requester.i_rtc_cxtmgt_cxt_upload_rd_en),
        .ov_rtc_cxtmgt_cxt_upload_data(dutif_requester.ov_rtc_cxtmgt_cxt_upload_data),
    /*SPyglass Add End*/

        .i_rrc_cxtmgt_cmd_rd_en(dutif_requester.i_rrc_cxtmgt_cmd_rd_en),
        .o_rrc_cxtmgt_cmd_empty(dutif_requester.o_rrc_cxtmgt_cmd_empty),
        .ov_rrc_cxtmgt_cmd_data(dutif_requester.ov_rrc_cxtmgt_cmd_data),

        .o_rrc_cxtmgt_resp_prog_full(dutif_requester.o_rrc_cxtmgt_resp_prog_full),
        .i_rrc_cxtmgt_resp_wr_en(dutif_requester.i_rrc_cxtmgt_resp_wr_en),
        .iv_rrc_cxtmgt_resp_data(dutif_requester.iv_rrc_cxtmgt_resp_data),

        .o_rrc_cxtmgt_cxt_download_prog_full(dutif_requester.o_rrc_cxtmgt_cxt_download_prog_full),
        .i_rrc_cxtmgt_cxt_download_wr_en(dutif_requester.i_rrc_cxtmgt_cxt_download_wr_en),
        .iv_rrc_cxtmgt_cxt_download_data(dutif_requester.iv_rrc_cxtmgt_cxt_download_data),

        .i_rrc_cxtmgt_cxt_upload_rd_en(dutif_requester.i_rrc_cxtmgt_cxt_upload_rd_en),
        .o_rrc_cxtmgt_cxt_upload_empty(dutif_requester.o_rrc_cxtmgt_cxt_upload_empty),
        .ov_rrc_cxtmgt_cxt_upload_data(dutif_requester.ov_rrc_cxtmgt_cxt_upload_data),

        .i_ee_cxtmgt_cmd_rd_en(dutif_requester.i_ee_cxtmgt_cmd_rd_en),
        .o_ee_cxtmgt_cmd_empty(dutif_requester.o_ee_cxtmgt_cmd_empty),
        .ov_ee_cxtmgt_cmd_data(dutif_requester.ov_ee_cxtmgt_cmd_data),

        .o_ee_cxtmgt_resp_prog_full(dutif_requester.o_ee_cxtmgt_resp_prog_full),
        .i_ee_cxtmgt_resp_wr_en(dutif_requester.i_ee_cxtmgt_resp_wr_en),
        .iv_ee_cxtmgt_resp_data(dutif_requester.iv_ee_cxtmgt_resp_data),

        .o_ee_cxtmgt_cxt_download_prog_full(dutif_requester.o_ee_cxtmgt_cxt_download_prog_full),
        .i_ee_cxtmgt_cxt_download_wr_en(dutif_requester.i_ee_cxtmgt_cxt_download_wr_en),
        .iv_ee_cxtmgt_cxt_download_data(dutif_requester.iv_ee_cxtmgt_cxt_download_data),

        .i_ee_cxtmgt_cxt_upload_rd_en(dutif_requester.i_ee_cxtmgt_cxt_upload_rd_en),
        .o_ee_cxtmgt_cxt_upload_empty(dutif_requester.o_ee_cxtmgt_cxt_upload_empty),
        .ov_ee_cxtmgt_cxt_upload_data(dutif_requester.ov_ee_cxtmgt_cxt_upload_data),

        .i_fe_cxtmgt_cmd_rd_en(dutif_requester.i_fe_cxtmgt_cmd_rd_en),
        .o_fe_cxtmgt_cmd_empty(dutif_requester.o_fe_cxtmgt_cmd_empty),
        .ov_fe_cxtmgt_cmd_data(dutif_requester.ov_fe_cxtmgt_cmd_data),

        .o_fe_cxtmgt_resp_prog_full(dutif_requester.o_fe_cxtmgt_resp_prog_full),
        .i_fe_cxtmgt_resp_wr_en(dutif_requester.i_fe_cxtmgt_resp_wr_en),
        .iv_fe_cxtmgt_resp_data(dutif_requester.iv_fe_cxtmgt_resp_data),

        .o_fe_cxtmgt_cxt_download_prog_full(dutif_requester.o_fe_cxtmgt_cxt_download_prog_full),
        .i_fe_cxtmgt_cxt_download_wr_en(dutif_requester.i_fe_cxtmgt_cxt_download_wr_en),
        .iv_fe_cxtmgt_cxt_download_data(dutif_requester.iv_fe_cxtmgt_cxt_download_data),

        .i_db_vtp_cmd_rd_en(dutif_requester.i_db_vtp_cmd_rd_en),
        .o_db_vtp_cmd_empty(dutif_requester.o_db_vtp_cmd_empty),
        .ov_db_vtp_cmd_data(dutif_requester.ov_db_vtp_cmd_data),

        .o_db_vtp_resp_prog_full(dutif_requester.o_db_vtp_resp_prog_full),
        .i_db_vtp_resp_wr_en(dutif_requester.i_db_vtp_resp_wr_en),
        .iv_db_vtp_resp_data(dutif_requester.iv_db_vtp_resp_data),

        .o_db_vtp_download_prog_full(dutif_requester.o_db_vtp_download_prog_full),
        .i_db_vtp_download_wr_en(dutif_requester.i_db_vtp_download_wr_en),
        .iv_db_vtp_download_data(dutif_requester.iv_db_vtp_download_data),
            
        .i_wp_vtp_wqe_cmd_rd_en(dutif_requester.i_wp_vtp_wqe_cmd_rd_en),
        .o_wp_vtp_wqe_cmd_empty(dutif_requester.o_wp_vtp_wqe_cmd_empty),
        .ov_wp_vtp_wqe_cmd_data(dutif_requester.ov_wp_vtp_wqe_cmd_data),

        .o_wp_vtp_wqe_resp_prog_full(dutif_requester.o_wp_vtp_wqe_resp_prog_full),
        .i_wp_vtp_wqe_resp_wr_en(dutif_requester.i_wp_vtp_wqe_resp_wr_en),
        .iv_wp_vtp_wqe_resp_data(dutif_requester.iv_wp_vtp_wqe_resp_data),

        .o_wp_vtp_wqe_download_prog_full(dutif_requester.o_wp_vtp_wqe_download_prog_full),
        .i_wp_vtp_wqe_download_wr_en(dutif_requester.i_wp_vtp_wqe_download_wr_en),
        .iv_wp_vtp_wqe_download_data(dutif_requester.iv_wp_vtp_wqe_download_data),

        .i_wp_vtp_nd_cmd_rd_en(dutif_requester.i_wp_vtp_nd_cmd_rd_en),
        .o_wp_vtp_nd_cmd_empty(dutif_requester.o_wp_vtp_nd_cmd_empty),
        .ov_wp_vtp_nd_cmd_data(dutif_requester.ov_wp_vtp_nd_cmd_data),

        .o_wp_vtp_nd_resp_prog_full(dutif_requester.o_wp_vtp_nd_resp_prog_full),
        .i_wp_vtp_nd_resp_wr_en(dutif_requester.i_wp_vtp_nd_resp_wr_en),
        .iv_wp_vtp_nd_resp_data(dutif_requester.iv_wp_vtp_nd_resp_data),

        .o_wp_vtp_nd_download_prog_full(dutif_requester.o_wp_vtp_nd_download_prog_full),
        .i_wp_vtp_nd_download_wr_en(dutif_requester.i_wp_vtp_nd_download_wr_en),
        .iv_wp_vtp_nd_download_data(dutif_requester.iv_wp_vtp_nd_download_data),

        .i_rtc_vtp_cmd_rd_en(dutif_requester.i_rtc_vtp_cmd_rd_en),
        .o_rtc_vtp_cmd_empty(dutif_requester.o_rtc_vtp_cmd_empty),
        .ov_rtc_vtp_cmd_data(dutif_requester.ov_rtc_vtp_cmd_data),

        .o_rtc_vtp_resp_prog_full(dutif_requester.o_rtc_vtp_resp_prog_full),
        .i_rtc_vtp_resp_wr_en(dutif_requester.i_rtc_vtp_resp_wr_en),
        .iv_rtc_vtp_resp_data(dutif_requester.iv_rtc_vtp_resp_data),

        .i_rtc_vtp_upload_rd_en(dutif_requester.i_rtc_vtp_upload_rd_en),
        .o_rtc_vtp_upload_empty(dutif_requester.o_rtc_vtp_upload_empty),
        .ov_rtc_vtp_upload_data(dutif_requester.ov_rtc_vtp_upload_data),

        .i_rrc_vtp_cmd_rd_en(dutif_requester.i_rrc_vtp_cmd_rd_en),
        .o_rrc_vtp_cmd_empty(dutif_requester.o_rrc_vtp_cmd_empty),
        .ov_rrc_vtp_cmd_data(dutif_requester.ov_rrc_vtp_cmd_data),

        .o_rrc_vtp_resp_prog_full(dutif_requester.o_rrc_vtp_resp_prog_full),
        .i_rrc_vtp_resp_wr_en(dutif_requester.i_rrc_vtp_resp_wr_en),
        .iv_rrc_vtp_resp_data(dutif_requester.iv_rrc_vtp_resp_data),

        .i_rrc_vtp_upload_rd_en(dutif_requester.i_rrc_vtp_upload_rd_en),
        .o_rrc_vtp_upload_empty(dutif_requester.o_rrc_vtp_upload_empty),
        .ov_rrc_vtp_upload_data(dutif_requester.ov_rrc_vtp_upload_data),

        .i_ee_vtp_cmd_rd_en(dutif_requester.i_ee_vtp_cmd_rd_en),
        .o_ee_vtp_cmd_empty(dutif_requester.o_ee_vtp_cmd_empty),
        .ov_ee_vtp_cmd_data(dutif_requester.ov_ee_vtp_cmd_data),

        .o_ee_vtp_resp_prog_full(dutif_requester.o_ee_vtp_resp_prog_full),
        .i_ee_vtp_resp_wr_en(dutif_requester.i_ee_vtp_resp_wr_en),
        .iv_ee_vtp_resp_data(dutif_requester.iv_ee_vtp_resp_data),

        .i_ee_vtp_upload_rd_en(dutif_requester.i_ee_vtp_upload_rd_en),
        .o_ee_vtp_upload_empty(dutif_requester.o_ee_vtp_upload_empty),
        .ov_ee_vtp_upload_data(dutif_requester.ov_ee_vtp_upload_data),

        .i_ee_vtp_download_wr_en(dutif_requester.i_ee_vtp_download_wr_en),
        .o_ee_vtp_download_prog_full(dutif_requester.o_ee_vtp_download_prog_full),
        .iv_ee_vtp_download_data(dutif_requester.iv_ee_vtp_download_data),

        .i_rwm_vtp_cmd_rd_en(dutif_requester.i_rwm_vtp_cmd_rd_en),
        .o_rwm_vtp_cmd_empty(dutif_requester.o_rwm_vtp_cmd_empty),
        .ov_rwm_vtp_cmd_data(dutif_requester.ov_rwm_vtp_cmd_data),

        .o_rwm_vtp_resp_prog_full(dutif_requester.o_rwm_vtp_resp_prog_full),
        .i_rwm_vtp_resp_wr_en(dutif_requester.i_rwm_vtp_resp_wr_en),
        .iv_rwm_vtp_resp_data(dutif_requester.iv_rwm_vtp_resp_data),

        .i_rwm_vtp_download_wr_en(dutif_requester.i_rwm_vtp_download_wr_en),
        .o_rwm_vtp_download_prog_full(dutif_requester.o_rwm_vtp_download_prog_full),
        .iv_rwm_vtp_download_data(dutif_requester.iv_rwm_vtp_download_data),

        .o_hpc_tx_valid(w_hpc_requester_link_tx_valid),
        .o_hpc_tx_last(w_hpc_requester_link_tx_last),
        .ov_hpc_tx_data(wv_hpc_requester_link_tx_data),
        .ov_hpc_tx_keep(wv_hpc_requester_link_tx_keep),
        .i_hpc_tx_ready(w_hpc_requester_link_tx_ready),
        .o_hpc_tx_start(w_hpc_requester_link_tx_start),
        .ov_hpc_tx_user(wv_hpc_requester_link_tx_user),

        .i_hpc_rx_valid(w_hpc_requester_link_rx_valid),
        .i_hpc_rx_last(w_hpc_requester_link_rx_last),
        .iv_hpc_rx_data(wv_hpc_requester_link_rx_data),
        .iv_hpc_rx_keep(wv_hpc_requester_link_rx_keep),
        .o_hpc_rx_ready(w_hpc_requester_link_rx_ready),
        .i_hpc_rx_start(w_hpc_requester_link_rx_start),
        .iv_hpc_rx_user(wv_hpc_requester_link_rx_user),

        .o_desc_empty(),
        .ov_desc_data(),
        .i_desc_rd_en(1'd0),

        .o_roce_egress_empty(),
        .i_roce_egress_rd_en(1'd0),
        .ov_roce_egress_data(),

        .o_roce_ingress_prog_full(),
        .i_roce_ingress_wr_en(1'd0),
        .iv_roce_ingress_data(256'd0),

		.rw_data('d0),

	 	.o_rdma_init_finish(w_requester_init_finish)
    );

link_top link_top_requester(
    .i_link_clk                     (dutif_requester.clk),
    .i_link_rst_n                   (~dutif_requester.rst),                                 

    .i_nic_clk                      (dutif_requester.clk),
    .i_nic_rst_n                    (~dutif_requester.rst),
    .i_mgmt_clk                     (dutif_requester.clk),
    .i_mgmt_rst_n                   (~dutif_requester.rst),         

    .o_nic_hpc_tx_rdy               (w_hpc_requester_link_tx_ready),
    .iv_nic_hpc_tx_axis_data        (wv_hpc_requester_link_tx_data),
    .iv_nic_hpc_tx_axis_keep        (wv_hpc_requester_link_tx_keep_32bit),
    .i_nic_hpc_tx_axis_start        (w_hpc_requester_link_tx_start),
    .i_nic_hpc_tx_axis_end          (w_hpc_requester_link_tx_last),
    .i_nic_hpc_tx_axis_valid        (w_hpc_requester_link_tx_valid),
    .iv_nic_hpc_tx_axis_user        ({wv_hpc_requester_link_tx_user, 1'b1}),

    .o_nic_eth_tx_rdy               (),
    .iv_nic_eth_tx_axis_data        ('d0),
    .iv_nic_eth_tx_axis_keep        ('d0),
    .i_nic_eth_tx_axis_start        ('d0),
    .i_nic_eth_tx_axis_end          ('d0),
    .i_nic_eth_tx_axis_valid        ('d0),
    .iv_nic_eth_tx_axis_user        ('d0),

    .i_nic_hpc_rx_rdy               (w_hpc_requester_link_rx_ready),
    .ov_nic_hpc_rx_axis_data        (wv_hpc_requester_link_rx_data),
    .ov_nic_hpc_rx_axis_keep        (wv_hpc_requester_link_rx_keep_32bit),
    .o_nic_hpc_rx_axis_start        (w_hpc_requester_link_rx_start),
    .o_nic_hpc_rx_axis_end          (w_hpc_requester_link_rx_last),
    .o_nic_hpc_rx_axis_valid        (w_hpc_requester_link_rx_valid),
    .ov_nic_hpc_rx_axis_user        (wv_hpc_requester_link_rx_user),

    .i_nic_eth_rx_rdy               ('d0),
    .ov_nic_eth_rx_axis_data        (),
    .ov_nic_eth_rx_axis_keep        (),
    .o_nic_eth_rx_axis_start        (),
    .o_nic_eth_rx_axis_end          (),
    .o_nic_eth_rx_axis_valid        (),
    .ov_nic_eth_rx_axis_user        (),
    

    .i_eth_pkt_valid                ('d0),
    .i_eth_pkt_start                ('d0),
    .i_eth_pkt_end                  ('d0),             
    .iv_eth_pkt_user                ('d0),
    .iv_eth_pkt_keep                ('d0),
    .iv_eth_pkt_data                ('d0),
    .o_eth_pkt_ready                (),

	.ib_id                          ('d0),

    .cfg_pkt_in                     ('d0),
    .cfg_pkt_in_vld                 ('d0),
    .cfg_pkt_in_rdy                 (),
    .cfg_pkt_out                    (),
    .cfg_pkt_out_vld                (),
    .cfg_pkt_out_rdy                ('d0),

	.o_link_mode_sel                (),

    .pkt_crdt_m                     (),
    .ovBuffer_VL0_eth_tx_data       (),
    .oBuffer_VL0_eth_tx_empty       (),
    .iBuffer_VL0_eth_tx_rden        ('d0),
    .ovBuffer_VL1_eth_tx_data       (),
    .oBuffer_VL1_eth_tx_empty       (),
    .iBuffer_VL1_eth_tx_rden        ('d0),
    .ovBuffer_VL2_eth_tx_data       (),
    .oBuffer_VL2_eth_tx_empty       (),
    .iBuffer_VL2_eth_tx_rden        ('d0),
    .ovBuffer_VL3_eth_tx_data       (),
    .oBuffer_VL3_eth_tx_empty       (),
    .iBuffer_VL3_eth_tx_rden        ('d0),
    .oTail_VL0_eth_tx_empty         (),
    .iTail_VL0_eth_tx_rden          ('d0),
    .oTail_VL1_eth_tx_empty         (),
    .iTail_VL1_eth_tx_rden          ('d0),
    .oTail_VL2_eth_tx_empty         (),
    .iTail_VL2_eth_tx_rden          ('d0),
    .oTail_VL3_eth_tx_empty         (),
    .iTail_VL3_eth_tx_rden          ('d0),
    .ov_queue0_eth_length           (),
    .ov_queue1_eth_length           (),
    .ov_queue2_eth_length           (),
    .ov_queue3_eth_length           (),
    .iVL0StallState_eth             ('d0),
    .iVL1StallState_eth             ('d0),
    .iVL2StallState_eth             ('d0),
    .iVL3StallState_eth             ('d0),
  
    .i_xlgmii_rxd                   (wv_xlgmii_responder_txd),   
    .i_xlgmii_rxc                   (wv_xlgmii_responder_txc),   
    .i_xlgmii_valid                 ('d1), 
    .o_xlgmii_txd                   (wv_xlgmii_requester_txd),   
    .o_xlgmii_txc                   (wv_xlgmii_requester_txc), 
    .i_pcs_rdy                      ('d1),
    .hpc_rdy_phy_state              (),
    .i_active_trigger               ('d0),
    .o_active_trigger               ()
   
);

    RDMAEngine_Wrapper Responder_Inst(
        .clk(dutif_responder.clk),
        .rst(dutif_responder.rst),
        .o_pio_prog_full(dutif_responder.o_pio_prog_full),
        .i_pio_wr_en(dutif_responder.i_pio_wr_en),
        .iv_pio_data(dutif_responder.iv_pio_data),

        .i_db_cxtmgt_cmd_rd_en(dutif_responder.i_db_cxtmgt_cmd_rd_en),
        .o_db_cxtmgt_cmd_empty(dutif_responder.o_db_cxtmgt_cmd_empty),
        .ov_db_cxtmgt_cmd_data(dutif_responder.ov_db_cxtmgt_cmd_data),

        .o_db_cxtmgt_resp_prog_full(dutif_responder.o_db_cxtmgt_resp_prog_full),
        .i_db_cxtmgt_resp_wr_en(dutif_responder.i_db_cxtmgt_resp_wr_en),
        .iv_db_cxtmgt_resp_data(dutif_responder.iv_db_cxtmgt_resp_data),

        .o_db_cxtmgt_cxt_download_prog_full(dutif_responder.o_db_cxtmgt_cxt_download_prog_full),
        .i_db_cxtmgt_cxt_download_wr_en(dutif_responder.i_db_cxtmgt_cxt_download_wr_en),
        .iv_db_cxtmgt_cxt_download_data(dutif_responder.iv_db_cxtmgt_cxt_download_data),

        .i_wp_cxtmgt_cmd_rd_en(dutif_responder.i_wp_cxtmgt_cmd_rd_en),
        .o_wp_cxtmgt_cmd_empty(dutif_responder.o_wp_cxtmgt_cmd_empty),
        .ov_wp_cxtmgt_cmd_data(dutif_responder.ov_wp_cxtmgt_cmd_data),

        .o_wp_cxtmgt_resp_prog_full(dutif_responder.o_wp_cxtmgt_resp_prog_full),
        .i_wp_cxtmgt_resp_wr_en(dutif_responder.i_wp_cxtmgt_resp_wr_en),
        .iv_wp_cxtmgt_resp_data(dutif_responder.iv_wp_cxtmgt_resp_data),

        .o_wp_cxtmgt_cxt_download_prog_full(dutif_responder.o_wp_cxtmgt_cxt_download_prog_full),
        .i_wp_cxtmgt_cxt_download_wr_en(dutif_responder.i_wp_cxtmgt_cxt_download_wr_en),
        .iv_wp_cxtmgt_cxt_download_data(dutif_responder.iv_wp_cxtmgt_cxt_download_data),

        .i_rtc_cxtmgt_cmd_rd_en(dutif_responder.i_rtc_cxtmgt_cmd_rd_en),
        .o_rtc_cxtmgt_cmd_empty(dutif_responder.o_rtc_cxtmgt_cmd_empty),
        .ov_rtc_cxtmgt_cmd_data(dutif_responder.ov_rtc_cxtmgt_cmd_data),

        .o_rtc_cxtmgt_resp_prog_full(dutif_responder.o_rtc_cxtmgt_resp_prog_full),
        .i_rtc_cxtmgt_resp_wr_en(dutif_responder.i_rtc_cxtmgt_resp_wr_en),
        .iv_rtc_cxtmgt_resp_data(dutif_responder.iv_rtc_cxtmgt_resp_data),

        .o_rtc_cxtmgt_cxt_download_prog_full(dutif_responder.o_rtc_cxtmgt_cxt_download_prog_full),
        .i_rtc_cxtmgt_cxt_download_wr_en(dutif_responder.i_rtc_cxtmgt_cxt_download_wr_en),
        .iv_rtc_cxtmgt_cxt_download_data(dutif_responder.iv_rtc_cxtmgt_cxt_download_data),

    /*Spyglass Add Begin*/
        .o_rtc_cxtmgt_cxt_upload_empty(dutif_responder.o_rtc_cxtmgt_cxt_upload_empty),
        .i_rtc_cxtmgt_cxt_upload_rd_en(dutif_responder.i_rtc_cxtmgt_cxt_upload_rd_en),
        .ov_rtc_cxtmgt_cxt_upload_data(dutif_responder.ov_rtc_cxtmgt_cxt_upload_data),
    /*SPyglass Add End*/

        .i_rrc_cxtmgt_cmd_rd_en(dutif_responder.i_rrc_cxtmgt_cmd_rd_en),
        .o_rrc_cxtmgt_cmd_empty(dutif_responder.o_rrc_cxtmgt_cmd_empty),
        .ov_rrc_cxtmgt_cmd_data(dutif_responder.ov_rrc_cxtmgt_cmd_data),

        .o_rrc_cxtmgt_resp_prog_full(dutif_responder.o_rrc_cxtmgt_resp_prog_full),
        .i_rrc_cxtmgt_resp_wr_en(dutif_responder.i_rrc_cxtmgt_resp_wr_en),
        .iv_rrc_cxtmgt_resp_data(dutif_responder.iv_rrc_cxtmgt_resp_data),

        .o_rrc_cxtmgt_cxt_download_prog_full(dutif_responder.o_rrc_cxtmgt_cxt_download_prog_full),
        .i_rrc_cxtmgt_cxt_download_wr_en(dutif_responder.i_rrc_cxtmgt_cxt_download_wr_en),
        .iv_rrc_cxtmgt_cxt_download_data(dutif_responder.iv_rrc_cxtmgt_cxt_download_data),

        .i_rrc_cxtmgt_cxt_upload_rd_en(dutif_responder.i_rrc_cxtmgt_cxt_upload_rd_en),
        .o_rrc_cxtmgt_cxt_upload_empty(dutif_responder.o_rrc_cxtmgt_cxt_upload_empty),
        .ov_rrc_cxtmgt_cxt_upload_data(dutif_responder.ov_rrc_cxtmgt_cxt_upload_data),

        .i_ee_cxtmgt_cmd_rd_en(dutif_responder.i_ee_cxtmgt_cmd_rd_en),
        .o_ee_cxtmgt_cmd_empty(dutif_responder.o_ee_cxtmgt_cmd_empty),
        .ov_ee_cxtmgt_cmd_data(dutif_responder.ov_ee_cxtmgt_cmd_data),

        .o_ee_cxtmgt_resp_prog_full(dutif_responder.o_ee_cxtmgt_resp_prog_full),
        .i_ee_cxtmgt_resp_wr_en(dutif_responder.i_ee_cxtmgt_resp_wr_en),
        .iv_ee_cxtmgt_resp_data(dutif_responder.iv_ee_cxtmgt_resp_data),

        .o_ee_cxtmgt_cxt_download_prog_full(dutif_responder.o_ee_cxtmgt_cxt_download_prog_full),
        .i_ee_cxtmgt_cxt_download_wr_en(dutif_responder.i_ee_cxtmgt_cxt_download_wr_en),
        .iv_ee_cxtmgt_cxt_download_data(dutif_responder.iv_ee_cxtmgt_cxt_download_data),

        .i_ee_cxtmgt_cxt_upload_rd_en(dutif_responder.i_ee_cxtmgt_cxt_upload_rd_en),
        .o_ee_cxtmgt_cxt_upload_empty(dutif_responder.o_ee_cxtmgt_cxt_upload_empty),
        .ov_ee_cxtmgt_cxt_upload_data(dutif_responder.ov_ee_cxtmgt_cxt_upload_data),

        .i_fe_cxtmgt_cmd_rd_en(dutif_responder.i_fe_cxtmgt_cmd_rd_en),
        .o_fe_cxtmgt_cmd_empty(dutif_responder.o_fe_cxtmgt_cmd_empty),
        .ov_fe_cxtmgt_cmd_data(dutif_responder.ov_fe_cxtmgt_cmd_data),

        .o_fe_cxtmgt_resp_prog_full(dutif_responder.o_fe_cxtmgt_resp_prog_full),
        .i_fe_cxtmgt_resp_wr_en(dutif_responder.i_fe_cxtmgt_resp_wr_en),
        .iv_fe_cxtmgt_resp_data(dutif_responder.iv_fe_cxtmgt_resp_data),

        .o_fe_cxtmgt_cxt_download_prog_full(dutif_responder.o_fe_cxtmgt_cxt_download_prog_full),
        .i_fe_cxtmgt_cxt_download_wr_en(dutif_responder.i_fe_cxtmgt_cxt_download_wr_en),
        .iv_fe_cxtmgt_cxt_download_data(dutif_responder.iv_fe_cxtmgt_cxt_download_data),

        .i_db_vtp_cmd_rd_en(dutif_responder.i_db_vtp_cmd_rd_en),
        .o_db_vtp_cmd_empty(dutif_responder.o_db_vtp_cmd_empty),
        .ov_db_vtp_cmd_data(dutif_responder.ov_db_vtp_cmd_data),

        .o_db_vtp_resp_prog_full(dutif_responder.o_db_vtp_resp_prog_full),
        .i_db_vtp_resp_wr_en(dutif_responder.i_db_vtp_resp_wr_en),
        .iv_db_vtp_resp_data(dutif_responder.iv_db_vtp_resp_data),

        .o_db_vtp_download_prog_full(dutif_responder.o_db_vtp_download_prog_full),
        .i_db_vtp_download_wr_en(dutif_responder.i_db_vtp_download_wr_en),
        .iv_db_vtp_download_data(dutif_responder.iv_db_vtp_download_data),
            
        .i_wp_vtp_wqe_cmd_rd_en(dutif_responder.i_wp_vtp_wqe_cmd_rd_en),
        .o_wp_vtp_wqe_cmd_empty(dutif_responder.o_wp_vtp_wqe_cmd_empty),
        .ov_wp_vtp_wqe_cmd_data(dutif_responder.ov_wp_vtp_wqe_cmd_data),

        .o_wp_vtp_wqe_resp_prog_full(dutif_responder.o_wp_vtp_wqe_resp_prog_full),
        .i_wp_vtp_wqe_resp_wr_en(dutif_responder.i_wp_vtp_wqe_resp_wr_en),
        .iv_wp_vtp_wqe_resp_data(dutif_responder.iv_wp_vtp_wqe_resp_data),

        .o_wp_vtp_wqe_download_prog_full(dutif_responder.o_wp_vtp_wqe_download_prog_full),
        .i_wp_vtp_wqe_download_wr_en(dutif_responder.i_wp_vtp_wqe_download_wr_en),
        .iv_wp_vtp_wqe_download_data(dutif_responder.iv_wp_vtp_wqe_download_data),

        .i_wp_vtp_nd_cmd_rd_en(dutif_responder.i_wp_vtp_nd_cmd_rd_en),
        .o_wp_vtp_nd_cmd_empty(dutif_responder.o_wp_vtp_nd_cmd_empty),
        .ov_wp_vtp_nd_cmd_data(dutif_responder.ov_wp_vtp_nd_cmd_data),

        .o_wp_vtp_nd_resp_prog_full(dutif_responder.o_wp_vtp_nd_resp_prog_full),
        .i_wp_vtp_nd_resp_wr_en(dutif_responder.i_wp_vtp_nd_resp_wr_en),
        .iv_wp_vtp_nd_resp_data(dutif_responder.iv_wp_vtp_nd_resp_data),

        .o_wp_vtp_nd_download_prog_full(dutif_responder.o_wp_vtp_nd_download_prog_full),
        .i_wp_vtp_nd_download_wr_en(dutif_responder.i_wp_vtp_nd_download_wr_en),
        .iv_wp_vtp_nd_download_data(dutif_responder.iv_wp_vtp_nd_download_data),

        .i_rtc_vtp_cmd_rd_en(dutif_responder.i_rtc_vtp_cmd_rd_en),
        .o_rtc_vtp_cmd_empty(dutif_responder.o_rtc_vtp_cmd_empty),
        .ov_rtc_vtp_cmd_data(dutif_responder.ov_rtc_vtp_cmd_data),

        .o_rtc_vtp_resp_prog_full(dutif_responder.o_rtc_vtp_resp_prog_full),
        .i_rtc_vtp_resp_wr_en(dutif_responder.i_rtc_vtp_resp_wr_en),
        .iv_rtc_vtp_resp_data(dutif_responder.iv_rtc_vtp_resp_data),

        .i_rtc_vtp_upload_rd_en(dutif_responder.i_rtc_vtp_upload_rd_en),
        .o_rtc_vtp_upload_empty(dutif_responder.o_rtc_vtp_upload_empty),
        .ov_rtc_vtp_upload_data(dutif_responder.ov_rtc_vtp_upload_data),

        .i_rrc_vtp_cmd_rd_en(dutif_responder.i_rrc_vtp_cmd_rd_en),
        .o_rrc_vtp_cmd_empty(dutif_responder.o_rrc_vtp_cmd_empty),
        .ov_rrc_vtp_cmd_data(dutif_responder.ov_rrc_vtp_cmd_data),

        .o_rrc_vtp_resp_prog_full(dutif_responder.o_rrc_vtp_resp_prog_full),
        .i_rrc_vtp_resp_wr_en(dutif_responder.i_rrc_vtp_resp_wr_en),
        .iv_rrc_vtp_resp_data(dutif_responder.iv_rrc_vtp_resp_data),

        .i_rrc_vtp_upload_rd_en(dutif_responder.i_rrc_vtp_upload_rd_en),
        .o_rrc_vtp_upload_empty(dutif_responder.o_rrc_vtp_upload_empty),
        .ov_rrc_vtp_upload_data(dutif_responder.ov_rrc_vtp_upload_data),

        .i_ee_vtp_cmd_rd_en(dutif_responder.i_ee_vtp_cmd_rd_en),
        .o_ee_vtp_cmd_empty(dutif_responder.o_ee_vtp_cmd_empty),
        .ov_ee_vtp_cmd_data(dutif_responder.ov_ee_vtp_cmd_data),

        .o_ee_vtp_resp_prog_full(dutif_responder.o_ee_vtp_resp_prog_full),
        .i_ee_vtp_resp_wr_en(dutif_responder.i_ee_vtp_resp_wr_en),
        .iv_ee_vtp_resp_data(dutif_responder.iv_ee_vtp_resp_data),

        .i_ee_vtp_upload_rd_en(dutif_responder.i_ee_vtp_upload_rd_en),
        .o_ee_vtp_upload_empty(dutif_responder.o_ee_vtp_upload_empty),
        .ov_ee_vtp_upload_data(dutif_responder.ov_ee_vtp_upload_data),

        .i_ee_vtp_download_wr_en(dutif_responder.i_ee_vtp_download_wr_en),
        .o_ee_vtp_download_prog_full(dutif_responder.o_ee_vtp_download_prog_full),
        .iv_ee_vtp_download_data(dutif_responder.iv_ee_vtp_download_data),

        .i_rwm_vtp_cmd_rd_en(dutif_responder.i_rwm_vtp_cmd_rd_en),
        .o_rwm_vtp_cmd_empty(dutif_responder.o_rwm_vtp_cmd_empty),
        .ov_rwm_vtp_cmd_data(dutif_responder.ov_rwm_vtp_cmd_data),

        .o_rwm_vtp_resp_prog_full(dutif_responder.o_rwm_vtp_resp_prog_full),
        .i_rwm_vtp_resp_wr_en(dutif_responder.i_rwm_vtp_resp_wr_en),
        .iv_rwm_vtp_resp_data(dutif_responder.iv_rwm_vtp_resp_data),

        .i_rwm_vtp_download_wr_en(dutif_responder.i_rwm_vtp_download_wr_en),
        .o_rwm_vtp_download_prog_full(dutif_responder.o_rwm_vtp_download_prog_full),
        .iv_rwm_vtp_download_data(dutif_responder.iv_rwm_vtp_download_data),

        .o_hpc_tx_valid(w_hpc_responder_link_tx_valid),
        .o_hpc_tx_last(w_hpc_responder_link_tx_last),
        .ov_hpc_tx_data(wv_hpc_responder_link_tx_data),
        .ov_hpc_tx_keep(wv_hpc_responder_link_tx_keep),
        .i_hpc_tx_ready(w_hpc_responder_link_tx_ready),
        .o_hpc_tx_start(w_hpc_responder_link_tx_start),
        .ov_hpc_tx_user(wv_hpc_responder_link_tx_user),	

        .i_hpc_rx_valid(w_hpc_responder_link_rx_valid),
        .i_hpc_rx_last(w_hpc_responder_link_rx_last),
        .iv_hpc_rx_data(wv_hpc_responder_link_rx_data),
        .iv_hpc_rx_keep(wv_hpc_responder_link_rx_keep),
        .o_hpc_rx_ready(w_hpc_responder_link_rx_ready),
        .i_hpc_rx_start(w_hpc_responder_link_rx_start),
        .iv_hpc_rx_user(wv_hpc_responder_link_rx_user),

        .o_desc_empty(),
        .ov_desc_data(),
        .i_desc_rd_en(1'd0),

        .o_roce_egress_empty(),
        .i_roce_egress_rd_en(1'd0),
        .ov_roce_egress_data(),

        .o_roce_ingress_prog_full(),
        .i_roce_ingress_wr_en(1'd0),
        .iv_roce_ingress_data(256'd0),
	
		.rw_data('d0),

	 	.o_rdma_init_finish(w_responder_init_finish)
    );

link_top link_top_responder(
    .i_link_clk                     (dutif_responder.clk),
    .i_link_rst_n                   (~dutif_responder.rst),                                 

    .i_nic_clk                      (dutif_responder.clk),
    .i_nic_rst_n                    (~dutif_responder.rst),
    .i_mgmt_clk                     (dutif_responder.clk),
    .i_mgmt_rst_n                   (~dutif_responder.rst),                  

    .o_nic_hpc_tx_rdy               (w_hpc_responder_link_tx_ready),
    .iv_nic_hpc_tx_axis_data        (wv_hpc_responder_link_tx_data),
    .iv_nic_hpc_tx_axis_keep        (wv_hpc_responder_link_tx_keep_32bit),
    .i_nic_hpc_tx_axis_start        (w_hpc_responder_link_tx_start),
    .i_nic_hpc_tx_axis_end          (w_hpc_responder_link_tx_last),
    .i_nic_hpc_tx_axis_valid        (w_hpc_responder_link_tx_valid),
    .iv_nic_hpc_tx_axis_user        ({wv_hpc_responder_link_tx_user, 1'b1}),

    .o_nic_eth_tx_rdy               (),
    .iv_nic_eth_tx_axis_data        ('d0),
    .iv_nic_eth_tx_axis_keep        ('d0),
    .i_nic_eth_tx_axis_start        ('d0),
    .i_nic_eth_tx_axis_end          ('d0),
    .i_nic_eth_tx_axis_valid        ('d0),
    .iv_nic_eth_tx_axis_user        ('d0),

    .i_nic_hpc_rx_rdy               (w_hpc_responder_link_rx_ready),
    .ov_nic_hpc_rx_axis_data        (wv_hpc_responder_link_rx_data),
    .ov_nic_hpc_rx_axis_keep        (wv_hpc_responder_link_rx_keep_32bit),
    .o_nic_hpc_rx_axis_start        (w_hpc_responder_link_rx_start),
    .o_nic_hpc_rx_axis_end          (w_hpc_responder_link_rx_last),
    .o_nic_hpc_rx_axis_valid        (w_hpc_responder_link_rx_valid),
    .ov_nic_hpc_rx_axis_user        (wv_hpc_responder_link_rx_user),

    .i_nic_eth_rx_rdy               ('d0),
    .ov_nic_eth_rx_axis_data        (),
    .ov_nic_eth_rx_axis_keep        (),
    .o_nic_eth_rx_axis_start        (),
    .o_nic_eth_rx_axis_end          (),
    .o_nic_eth_rx_axis_valid        (),
    .ov_nic_eth_rx_axis_user        (),
    

    .i_eth_pkt_valid                ('d0),
    .i_eth_pkt_start                ('d0),
    .i_eth_pkt_end                  ('d0),             
    .iv_eth_pkt_user                ('d0),
    .iv_eth_pkt_keep                ('d0),
    .iv_eth_pkt_data                ('d0),
    .o_eth_pkt_ready                (),

	.ib_id                          ('d0),

    .cfg_pkt_in                     ('d0),
    .cfg_pkt_in_vld                 ('d0),
    .cfg_pkt_in_rdy                 (),
    .cfg_pkt_out                    (),
    .cfg_pkt_out_vld                (),
    .cfg_pkt_out_rdy                ('d0),

	.o_link_mode_sel                (),

    .pkt_crdt_m                     (),
    .ovBuffer_VL0_eth_tx_data       (),
    .oBuffer_VL0_eth_tx_empty       (),
    .iBuffer_VL0_eth_tx_rden        ('d0),
    .ovBuffer_VL1_eth_tx_data       (),
    .oBuffer_VL1_eth_tx_empty       (),
    .iBuffer_VL1_eth_tx_rden        ('d0),
    .ovBuffer_VL2_eth_tx_data       (),
    .oBuffer_VL2_eth_tx_empty       (),
    .iBuffer_VL2_eth_tx_rden        ('d0),
    .ovBuffer_VL3_eth_tx_data       (),
    .oBuffer_VL3_eth_tx_empty       (),
    .iBuffer_VL3_eth_tx_rden        ('d0),
    .oTail_VL0_eth_tx_empty         (),
    .iTail_VL0_eth_tx_rden          ('d0),
    .oTail_VL1_eth_tx_empty         (),
    .iTail_VL1_eth_tx_rden          ('d0),
    .oTail_VL2_eth_tx_empty         (),
    .iTail_VL2_eth_tx_rden          ('d0),
    .oTail_VL3_eth_tx_empty         (),
    .iTail_VL3_eth_tx_rden          ('d0),
    .ov_queue0_eth_length           (),
    .ov_queue1_eth_length           (),
    .ov_queue2_eth_length           (),
    .ov_queue3_eth_length           (),
    .iVL0StallState_eth             ('d0),
    .iVL1StallState_eth             ('d0),
    .iVL2StallState_eth             ('d0),
    .iVL3StallState_eth             ('d0),
  
    .i_xlgmii_rxd                   (wv_xlgmii_requester_txd),   
    .i_xlgmii_rxc                   (wv_xlgmii_requester_txc),   
    .i_xlgmii_valid                 ('d1), 
    .o_xlgmii_txd                   (wv_xlgmii_responder_txd),   
    .o_xlgmii_txc                   (wv_xlgmii_responder_txc), 
    .i_pcs_rdy                      ('d1),      
    .hpc_rdy_phy_state              (),
    .i_active_trigger               ('d0),
    .o_active_trigger               ()
   
);

    
`endif

    initial begin 
        forever begin 
            dutif_requester.clk = 0;
            #(`SYS_TIME_PERIOD / 2);
            dutif_requester.clk = 1;
            #(`SYS_TIME_PERIOD / 2);    
        end 
    end 

    initial begin 
        forever begin 
            dutif_responder.clk = 0;
            #(`SYS_TIME_PERIOD / 2);
            dutif_responder.clk = 1;
            #(`SYS_TIME_PERIOD / 2);    
        end 
    end

    // initial begin 
    //     forever begin 
    //         dutif.eth_clk = 0;
    //         #(`ETH_TIME_PERIOD / 2);
    //         dutif.eth_clk = 1;
    //         #(`ETH_TIME_PERIOD / 2);    
    //     end 
    // end 

	initial begin

		bit		[3:0]			vl;
		bit 	[7:0]			weight;
		bit		[5:0]			addr;

		wait(~dutif_responder.rst);
		vl = 0;
		weight = 0;
		addr = 0;

		repeat(64) begin
			wait(link_top_responder.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
			$display(`INFO, "Have waited oMgmtCfgDataRdy == 1");
			@(posedge dutif_responder.clk) begin
				vl = {$random} % 4;
				weight = {$random} % 256;
				if(addr == 8) begin
					force link_top_responder.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
					force link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				else begin
					force link_top_responder.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
					force link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				addr = addr + 1;
			end 
		end

		vl = 0;
		weight = 0;
		addr = 0;

		repeat(64) begin
			wait(link_top_responder.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
			$display(`INFO, "Have waited oMgmtCfgDataRdy == 1");
			@(posedge dutif_responder.clk) begin
				vl = {$random} % 4;
				weight = {$random} % 256;
				if(addr == 8) begin
					force link_top_responder.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
					force link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				else begin
					force link_top_responder.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
					force link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				addr = addr + 1;
			end 
		end

		@(posedge dutif_responder.clk) begin
			force link_top_responder.u_LinkLayer_top.ivMgmtCfgData = 'd0;
			force link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid = 'd0;
		end

		release link_top_responder.u_LinkLayer_top.ivMgmtCfgData; 
		release link_top_responder.u_LinkLayer_top.iMgmtCfgDataValid;
	end 

	initial begin
		bit		[3:0]			vl;
		bit 	[7:0]			weight;
		bit		[5:0]			addr;
		wait(~dutif_requester.rst);

		vl = 0;
		weight = 0;
		addr = 0;

		repeat(64) begin
			wait(link_top_requester.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
			$display(`INFO, "Have waited oMgmtCfgDataRdy == 1");
			@(posedge dutif_requester.clk) begin
				vl = {$random} % 4;
				weight = {$random} % 256;
				if(addr == 8) begin
					force link_top_requester.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
					force link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				else begin
					force link_top_requester.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
					force link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				addr = addr + 1;
			end 
		end

		vl = 0;
		weight = 0;
		addr = 0;

		repeat(64) begin
			wait(link_top_requester.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
			$display(`INFO, "Have waited oMgmtCfgDataRdy == 1");
			@(posedge dutif_requester.clk) begin
				vl = {$random} % 4;
				weight = {$random} % 256;
				if(addr == 8) begin
					force link_top_requester.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
					force link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				else begin
					force link_top_requester.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
					force link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
				end 
				addr = addr + 1;
			end 
		end

		@(posedge dutif_requester.clk) begin
			force link_top_requester.u_LinkLayer_top.ivMgmtCfgData = 'd0;
			force link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid = 'd0;
		end

		release link_top_requester.u_LinkLayer_top.ivMgmtCfgData; 
		release link_top_requester.u_LinkLayer_top.iMgmtCfgDataValid;
	end 

    initial begin 
        dutif_requester.rst = 1;
        #(`SYS_TIME_PERIOD * 100);
        dutif_requester.rst = 0;
    end 

	initial begin
		$vcdpluson;
	end

    initial begin 
        dutif_responder.rst = 1;
        #(`SYS_TIME_PERIOD * 100);
        dutif_responder.rst = 0;
    end 

    initial begin
        host_0_to_1 = new();
        host_1_to_0 = new();
        host_requester = new(dutif_requester, `HOST_0, host_1_to_0, host_0_to_1);
        host_responder = new(dutif_responder, `HOST_1, host_0_to_1, host_1_to_0);
        fork
            host_requester.run();
            host_responder.run();
        join
    end 

endmodule 

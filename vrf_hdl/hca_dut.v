//CREATE INFORMATION
//----------------------------------------------------------------------------
//
//  (C) COPYRIGHT 2021 BY ICT-HPC CORPORATION ALL RIGHTS RESERVED
//  DATE     : 2021-01-18
//  AUTHOR   : mazhenlong@ncic.ac.cn
//  FILENAME : hca_dut.v
//  FUNCTION : This file supplies the top module of HCA.
//
//----------------------------------------------------------------------------

//CHANGE HISTORY
//----------------------------------------------------------------------------
//
//  AUTHOR          DATE          VERSION          REASON
//  mazhenlong      2021-01-18    v1.0             create
//  mazhenlong      2021-05-12    v1.1             add self-loop-back
//  mazhenlong      2022-01-27    v2               add multi-host
//
//----------------------------------------------------------------------------

`ifndef __HCA_DUT__
`define __HCA_DUT__
//------------------------------------------------------------------------------
//
// MODULE: hca_dut
//
//------------------------------------------------------------------------------
module hca_dut #(
    parameter           C_DATA_WIDTH                    = `DATA_WIDTH,         // RX/TX interface data width
    parameter           KEEP_WIDTH                      = C_DATA_WIDTH / 32,
    parameter           DMA_HEAD_WIDTH                  = `DMA_HEAD_WIDTH,
    parameter           NIC_DATA_WIDTH                  = 256,
    parameter           NIC_KEEP_WIDTH                  = 32,
    parameter           LINK_LAYER_USER_WIDTH           = 7,
    parameter           LINK_LAYER_KEEP_WIDTH           = 6
)(
    //----------------------------------------------------------
    //  Control Interface                           
    //----------------------------------------------------------
    input                                        sys_clk,
    input                                        pcie_clk,
    input                                        rdma_clk,
    input                                        user_reset,
    input                                        user_lnk_up,
    output                                       cmd_rst,

    //----------------------------------------------------------
    //  Host A RDMA Interface                           
    //----------------------------------------------------------
    input                              [2:0]     cfg_max_payload,
    input                              [2:0]     cfg_max_read_req,

    output                                       s_axis_rq_tlast,
    output                 [C_DATA_WIDTH-1:0]    s_axis_rq_tdata,
    output                             [59:0]    s_axis_rq_tuser,
    output                   [KEEP_WIDTH-1:0]    s_axis_rq_tkeep,
    input                                        s_axis_rq_tready,
    output                                       s_axis_rq_tvalid,

    input                  [C_DATA_WIDTH-1:0]    m_axis_rc_tdata,
    input                              [74:0]    m_axis_rc_tuser,
    input                                        m_axis_rc_tlast,
    input                    [KEEP_WIDTH-1:0]    m_axis_rc_tkeep,
    input                                        m_axis_rc_tvalid,
    output                                       m_axis_rc_tready,

    input                  [C_DATA_WIDTH-1:0]    m_axis_cq_tdata,
    input                              [84:0]    m_axis_cq_tuser,
    input                                        m_axis_cq_tlast,
    input                    [KEEP_WIDTH-1:0]    m_axis_cq_tkeep,
    input                                        m_axis_cq_tvalid,
    output                                       m_axis_cq_tready,

    output                 [C_DATA_WIDTH-1:0]    s_axis_cc_tdata,
    output                             [32:0]    s_axis_cc_tuser,
    output                                       s_axis_cc_tlast,
    output                   [KEEP_WIDTH-1:0]    s_axis_cc_tkeep,
    output                                       s_axis_cc_tvalid,
    input                                        s_axis_cc_tready
);

    wire                                                w_hpc_out_valid;
    wire                                                w_hpc_out_start;
    wire                                                w_hpc_out_last ;
    wire            [LINK_LAYER_USER_WIDTH - 1 : 0]     wv_hpc_out_user;
    wire            [NIC_KEEP_WIDTH - 1 : 0]            wv_hpc_out_keep;
    wire            [NIC_DATA_WIDTH - 1 : 0]            wv_hpc_out_data;
    wire                                                w_hpc_out_ready;

    wire                                                w_hpc_in_valid;
    wire                                                w_hpc_in_start;
    wire                                                w_hpc_in_last ;
    wire            [LINK_LAYER_USER_WIDTH - 1 : 0]     wv_hpc_in_user;
    wire            [NIC_KEEP_WIDTH - 1 : 0]            wv_hpc_in_keep;
    wire            [NIC_DATA_WIDTH - 1 : 0]            wv_hpc_in_data;
    wire                                                w_hpc_in_ready;

    wire                                                w_eth_in_valid;
    wire                                                w_eth_in_start;
    wire                                                w_eth_in_last ;
    wire            [LINK_LAYER_USER_WIDTH - 1 : 0]     wv_eth_in_user;
    wire            [NIC_KEEP_WIDTH - 1 : 0]            wv_eth_in_keep;
    wire            [NIC_DATA_WIDTH - 1 : 0]            wv_eth_in_data;
    wire                                                w_eth_in_ready;

    wire                                                w_eth_out_valid;
    wire                                                w_eth_out_start;
    wire                                                w_eth_out_last ;
    wire            [LINK_LAYER_USER_WIDTH - 1 : 0]     wv_eth_out_user;
    wire            [NIC_KEEP_WIDTH - 1 : 0]            wv_eth_out_keep;
    wire            [NIC_DATA_WIDTH - 1 : 0]            wv_eth_out_data;
    wire                                                w_eth_out_ready;

    wire                [128-1:0]       wv_xlgmii_d;
    wire                [16-1:0]        wv_xlgmii_c;

    // wire                [32 - 1 : 0]    wv_hpc_a_in_keep_32bit;
    // wire                [32 - 1 : 0]    wv_hpc_a_out_keep_32bit;
    // wire                [32 - 1 : 0]    wv_hpc_b_in_keep_32bit;
    // wire                [32 - 1 : 0]    wv_hpc_b_out_keep_32bit;

    NIC_Top #(
        .C_DATA_WIDTH           (C_DATA_WIDTH           ), // RX/TX interface data width
        .KEEP_WIDTH             (KEEP_WIDTH             ),

        // defined for pcie interface
        .DMA_HEAD_WIDTH         (DMA_HEAD_WIDTH         ),
        .AXIL_DATA_WIDTH        (32                     ),
        .AXIL_ADDR_WIDTH        (24                     ),
        .UPPER_HEAD_WIDTH       (64                     ),
        .DOWN_HEAD_WIDTH        (64                     ),

        .HCR_BASE               (`HCR_BAR_ADDR          ),
        .ETH_BASE               (`ETH_BAR_ADDR           ),
        .ETH_LEN                (20'h1000               ),
        .P2P_BASE               (20'h2000               ),
        .P2P_LEN                (20'h80000              ),
        
        .DB_BASE                (`DB_BAR_ADDR           ),

        .AXIL_STRB_WIDTH        (4                      ),
        .NIC_DATA_WIDTH         (NIC_DATA_WIDTH         ),
        .NIC_KEEP_WIDTH         (NIC_KEEP_WIDTH         ),
        .LINK_LAYER_USER_WIDTH  (LINK_LAYER_USER_WIDTH  ),
        .NIC_TOP_RW_REG_NUM             (1024                   ),
        .NIC_TOP_RO_REG_NUM             (4096                   )
    ) NIC_inst (
        .rst                        (user_reset),
        .pcie_clk                   (pcie_clk),
        .nic_clk                    (rdma_clk),

        .s_axis_rq_tvalid           (s_axis_rq_tvalid),
        .s_axis_rq_tlast            (s_axis_rq_tlast ),
        .s_axis_rq_tkeep            (s_axis_rq_tkeep ),
        .s_axis_rq_tuser            (s_axis_rq_tuser ),
        .s_axis_rq_tdata            (s_axis_rq_tdata ),
        .s_axis_rq_tready           (s_axis_rq_tready),

        .m_axis_rc_tvalid           (m_axis_rc_tvalid),
        .m_axis_rc_tlast            (m_axis_rc_tlast ),
        .m_axis_rc_tkeep            (m_axis_rc_tkeep ),
        .m_axis_rc_tuser            (m_axis_rc_tuser ),
        .m_axis_rc_tdata            (m_axis_rc_tdata ),
        .m_axis_rc_tready           (m_axis_rc_tready),

        .m_axis_cq_tvalid           (m_axis_cq_tvalid),
        .m_axis_cq_tlast            (m_axis_cq_tlast ),
        .m_axis_cq_tkeep            (m_axis_cq_tkeep ),
        .m_axis_cq_tuser            (m_axis_cq_tuser ),
        .m_axis_cq_tdata            (m_axis_cq_tdata ),
        .m_axis_cq_tready           (m_axis_cq_tready),

        .s_axis_cc_tvalid           (s_axis_cc_tvalid),
        .s_axis_cc_tlast            (s_axis_cc_tlast ),
        .s_axis_cc_tkeep            (s_axis_cc_tkeep ),
        .s_axis_cc_tuser            (s_axis_cc_tuser ),
        .s_axis_cc_tdata            (s_axis_cc_tdata ),
        .s_axis_cc_tready           (s_axis_cc_tready),

        .cfg_max_payload            (cfg_max_payload ),
        .cfg_max_read_req           (cfg_max_read_req),
        // .cfg_interrupt_msix_enable  (0),
        // .cfg_interrupt_msix_mask    (0),
        // .cfg_interrupt_msix_data    (),
        // .cfg_interrupt_msix_address (),
        // .cfg_interrupt_msix_int     (),
        // .cfg_interrupt_msix_sent    (0),
        // .cfg_interrupt_msix_fail    (0),
        // .cfg_interrupt_msi_function_number  (),

        // .p2p_upper_valid            (0),
        // .p2p_upper_last             (0),
        // .p2p_upper_data             (0),
        // .p2p_upper_head             (0),
        // .p2p_upper_ready            (),

        // .p2p_down_valid             (),
        // .p2p_down_last              (),
        // .p2p_down_data              (),
        // .p2p_down_head              (),
        // .p2p_down_ready             (0),

        .nic_link_hpc_tx_pkt_valid             (w_hpc_out_valid ),
        .nic_link_hpc_tx_pkt_start             (w_hpc_out_start ),
        .nic_link_hpc_tx_pkt_end               (w_hpc_out_last ),
        .nic_link_hpc_tx_pkt_user              (wv_hpc_out_user ),
        .nic_link_hpc_tx_pkt_keep              (wv_hpc_out_keep  ),
        .nic_link_hpc_tx_pkt_data              (wv_hpc_out_data  ),
        .nic_link_hpc_tx_pkt_ready             (w_hpc_out_ready),

        .nic_link_hpc_rx_pkt_valid             (w_hpc_in_valid ),
        .nic_link_hpc_rx_pkt_start             (w_hpc_in_start ),
        .nic_link_hpc_rx_pkt_end               (w_hpc_in_last ),
        .nic_link_hpc_rx_pkt_user              (wv_hpc_in_user ),
        .nic_link_hpc_rx_pkt_keep              (wv_hpc_in_keep  ),    
        .nic_link_hpc_rx_pkt_data              (wv_hpc_in_data  ),
        .nic_link_hpc_rx_pkt_ready             (w_hpc_in_ready), 

        .nic_link_eth_tx_pkt_valid             (w_eth_out_valid ),
        .nic_link_eth_tx_pkt_start             (w_eth_out_start ),
        .nic_link_eth_tx_pkt_end               (w_eth_out_last ),
        .nic_link_eth_tx_pkt_user              (wv_eth_out_user ),
        .nic_link_eth_tx_pkt_keep              (wv_eth_out_keep  ),
        .nic_link_eth_tx_pkt_data              (wv_eth_out_data  ), 
        .nic_link_eth_tx_pkt_ready             (w_eth_out_ready), 

        .nic_link_eth_rx_pkt_valid             (w_eth_in_valid ), 
        .nic_link_eth_rx_pkt_start             (w_eth_in_start ),
        .nic_link_eth_rx_pkt_end               (w_eth_in_last ),
        .nic_link_eth_rx_pkt_user              (wv_eth_in_user ),
        .nic_link_eth_rx_pkt_keep              (wv_eth_in_keep  ),    
        .nic_link_eth_rx_pkt_data              (wv_eth_in_data  ),
        .nic_link_eth_rx_pkt_ready             (w_eth_in_ready), 

        // .ov_init_rw_data            (),
        // .iv_rw_data                 (0),
        // .ov_ro_data                 (),
        // .iv_dbg_sel                 (0),
        // .ov_dbg_bus                 ()
        .PCIe_Interface_rw_data                 (0)
    );

    link_top link_inst(
        .i_link_clk                     (a_rdma_clk),
        .i_link_rst_n                   (~a_user_reset),
        .i_nic_clk                      (a_rdma_clk),
        .i_nic_rst_n                    (~a_user_reset),
        .i_mgmt_clk                     (a_rdma_clk),
        .i_mgmt_rst_n                   (~a_user_reset),

        .o_nic_hpc_tx_rdy               (w_hpc_out_ready),
        .iv_nic_hpc_tx_axis_data        (wv_hpc_out_data),
        .iv_nic_hpc_tx_axis_keep        (wv_hpc_out_keep),
        .i_nic_hpc_tx_axis_start        (w_hpc_out_start),
        .i_nic_hpc_tx_axis_end          (w_hpc_out_last),
        .i_nic_hpc_tx_axis_valid        (w_hpc_out_valid),
        .iv_nic_hpc_tx_axis_user        ({wv_hpc_out_user, 1'b1}),

        .o_nic_eth_tx_rdy               (),
        .iv_nic_eth_tx_axis_data        (0),
        .iv_nic_eth_tx_axis_keep        (0),
        .i_nic_eth_tx_axis_start        (0),
        .i_nic_eth_tx_axis_end          (0),
        .i_nic_eth_tx_axis_valid        (0),
        .iv_nic_eth_tx_axis_user        (0),

        .i_nic_hpc_rx_rdy               (w_hpc_in_ready),
        .ov_nic_hpc_rx_axis_data        (wv_hpc_in_data),
        .ov_nic_hpc_rx_axis_keep        (wv_hpc_in_keep),
        .o_nic_hpc_rx_axis_start        (w_hpc_in_start),
        .o_nic_hpc_rx_axis_end          (w_hpc_in_last),
        .o_nic_hpc_rx_axis_valid        (w_hpc_in_valid),
        .ov_nic_hpc_rx_axis_user        (wv_hpc_in_user),

        .i_nic_eth_rx_rdy               (0),
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
    
        .i_xlgmii_rxd                   (wv_xlgmii_d),   
        .i_xlgmii_rxc                   (wv_xlgmii_c),   
        .i_xlgmii_valid                 ('d1), 
        .o_xlgmii_txd                   (wv_xlgmii_d),   
        .o_xlgmii_txc                   (wv_xlgmii_c), 
        .i_pcs_rdy                      ('d1),
        .hpc_rdy_phy_state              (),
        .i_active_trigger               ('d0),
        .o_active_trigger               ()
    );

    initial begin
        bit       [3:0]             vl;
        bit       [7:0]             weight;
        bit       [5:0]             addr;
        wait(~a_user_reset);

        vl = 0;
        weight = 0;
        addr = 0;

        repeat(64) begin
            wait(link_inst.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
            $display("Have waited oMgmtCfgDataRdy == 1");
            @(posedge a_rdma_clk) begin
                vl = {$random} % 4;
                weight = {$random} % 256;
                if(addr == 8) begin
                    force link_inst.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
                    force link_inst.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
                end 
                else begin
                    force link_inst.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b0, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
                    force link_inst.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
                end 
                addr = addr + 1;
            end 
        end

        vl = 0;
        weight = 0;
        addr = 0;

        repeat(64) begin
            wait(link_inst.u_LinkLayer_top.oMgmtCfgDataRdy == 1);
            $display("Have waited oMgmtCfgDataRdy == 1");
            @(posedge a_rdma_clk) begin
                vl = {$random} % 4;
                weight = {$random} % 256;
                if(addr == 8) begin
                    force link_inst.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, 8'd0, vl, 4'd0}};
                    force link_inst.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
                end 
                else begin
                    force link_inst.u_LinkLayer_top.ivMgmtCfgData = {1'b1, {1'b1, 1'b0, addr}, {16'd0, weight, vl, 4'd0}};
                    force link_inst.u_LinkLayer_top.iMgmtCfgDataValid = 'h1;
                end 
                addr = addr + 1;
            end 
        end

        @(posedge a_rdma_clk) begin
            force link_inst.u_LinkLayer_top.ivMgmtCfgData = 'd0;
            force link_inst.u_LinkLayer_top.iMgmtCfgDataValid = 'd0;
        end

        release link_inst.u_LinkLayer_top.ivMgmtCfgData; 
        release link_inst.u_LinkLayer_top.iMgmtCfgDataValid;
    end 

endmodule: hca_dut
`endif
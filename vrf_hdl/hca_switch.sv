`timescale 1ns/100ps
//CREATE INFORMATION
//------------------------------------------------------------------------------------
//
//  (C) COPYRIGHT 2024 BY ICT-HPC CORPORATION ALL RIGHTS RESERVED
//  DATE     : 2024-09-23
//  AUTHOR   : mazhenlong@ncic.ac.cn
//  FILENAME : hca_switch.v
//  FUNCTION : This file supplies the top module of testbench of HCA.
//
//------------------------------------------------------------------------------------

//CHANGE HISTORY
//------------------------------------------------------------------------------------
//
//  AUTHOR          DATE          VERSION          REASON
//  mazhenlong      2024-09-23    v1.0             create
//
//------------------------------------------------------------------------------------

`ifndef __HCA_SWITCH__
`define __HCA_SWITCH__

//------------------------------------------------------------------------------------
//
// MODULE: hca_switch
//
//------------------------------------------------------------------------------------

module switch #(
    parameter C_DATA_WIDTH = `DATA_WIDTH,
    parameter KEEP_WIDTH = C_DATA_WIDTH / 32,
    parameter DMA_HEAD_WIDTH = 128,
    parameter AXIS_TUSER_WIDTH = 128,
    parameter PAGE_SIZE_LOG = 12
);
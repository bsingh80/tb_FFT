// -------------------------------------------------------------
// 
// File Name: hdlsrc\tb_FFT\SDFCommutator2.v
// Created: 2023-02-08 00:35:49
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SDFCommutator2
// Source Path: tb_FFT/DUT/FFT/RADIX22FFT_SDF2_2/SDFCommutator2
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SDFCommutator2
          (clk,
           reset,
           enb,
           dout_1_1_vld,
           xf_re,
           xf_im,
           xf_vld,
           dinf_re,
           dinf_im,
           dinf_vld,
           btf1_re,
           btf1_im,
           btf2_re,
           btf2_im,
           btfout_vld,
           wrData_re,
           wrData_im,
           wrAddr,
           wrEnb,
           dout_2_1_re,
           dout_2_1_im,
           dout_2_1_vld);


  input   clk;
  input   reset;
  input   enb;
  input   dout_1_1_vld;
  input   signed [17:0] xf_re;  // sfix18_En13
  input   signed [17:0] xf_im;  // sfix18_En13
  input   xf_vld;
  input   signed [17:0] dinf_re;  // sfix18_En13
  input   signed [17:0] dinf_im;  // sfix18_En13
  input   dinf_vld;
  input   signed [17:0] btf1_re;  // sfix18_En13
  input   signed [17:0] btf1_im;  // sfix18_En13
  input   signed [17:0] btf2_re;  // sfix18_En13
  input   signed [17:0] btf2_im;  // sfix18_En13
  input   btfout_vld;
  output  signed [17:0] wrData_re;  // sfix18_En13
  output  signed [17:0] wrData_im;  // sfix18_En13
  output  [7:0] wrAddr;  // ufix8
  output  wrEnb;
  output  signed [17:0] dout_2_1_re;  // sfix18_En13
  output  signed [17:0] dout_2_1_im;  // sfix18_En13
  output  dout_2_1_vld;


  reg signed [17:0] SDFCummutator_out_re;  // sfix18
  reg signed [17:0] SDFCummutator_out_im;  // sfix18
  reg  SDFCummutator_out_vld;
  reg [7:0] SDFCummutator_wrAddr_reg;  // ufix8
  reg [2:0] SDFCummutator_wrState;  // ufix3
  reg [1:0] SDFCummutator_mem_btf_switch;  // ufix2
  reg [7:0] SDFCummutator_rdCnt;  // ufix8
  reg signed [17:0] SDFCummutator_wrData_re_reg;  // sfix18
  reg signed [17:0] SDFCummutator_wrData_im_reg;  // sfix18
  reg  SDFCummutator_wrEnb_reg;
  reg signed [17:0] SDFCummutator_wrXData_re_reg;  // sfix18
  reg signed [17:0] SDFCummutator_wrXData_im_reg;  // sfix18
  reg [2:0] SDFCummutator_xWrAddr;  // ufix3
  reg  SDFCummutator_wrxEnb_reg;
  reg [2:0] SDFCummutator_xRdAddr;  // ufix3
  reg [2:0] SDFCummutator_XState;  // ufix3
  reg  SDFCummutator_rdEnb_xmem;
  reg  SDFCummutator_wrEnb_xmem;
  reg  SDFCummutator_xX_vld_reg;
  reg signed [17:0] SDFCummutator_out_re_next;  // sfix18_En13
  reg signed [17:0] SDFCummutator_out_im_next;  // sfix18_En13
  reg  SDFCummutator_out_vld_next;
  reg [7:0] SDFCummutator_wrAddr_reg_next;  // ufix8
  reg [2:0] SDFCummutator_wrState_next;  // ufix3
  reg [1:0] SDFCummutator_mem_btf_switch_next;  // ufix2
  reg [7:0] SDFCummutator_rdCnt_next;  // ufix8
  reg signed [17:0] SDFCummutator_wrData_re_reg_next;  // sfix18_En13
  reg signed [17:0] SDFCummutator_wrData_im_reg_next;  // sfix18_En13
  reg  SDFCummutator_wrEnb_reg_next;
  reg signed [17:0] SDFCummutator_wrXData_re_reg_next;  // sfix18_En13
  reg signed [17:0] SDFCummutator_wrXData_im_reg_next;  // sfix18_En13
  reg [2:0] SDFCummutator_xWrAddr_next;  // ufix3
  reg  SDFCummutator_wrxEnb_reg_next;
  reg [2:0] SDFCummutator_xRdAddr_next;  // ufix3
  reg [2:0] SDFCummutator_XState_next;  // ufix3
  reg  SDFCummutator_rdEnb_xmem_next;
  reg  SDFCummutator_wrEnb_xmem_next;
  reg  SDFCummutator_xX_vld_reg_next;
  reg signed [17:0] wrData_re_1;  // sfix18_En13
  reg signed [17:0] wrData_im_1;  // sfix18_En13
  reg [7:0] wrAddr_1;  // ufix8
  reg  wrEnb_1;
  reg signed [17:0] xData_re;  // sfix18_En13
  reg signed [17:0] xData_im;  // sfix18_En13
  reg [2:0] wrXAddr;  // ufix3
  reg  wrXEnb;
  reg [2:0] rdXAddr;  // ufix3
  reg  xX_vld;
  reg signed [17:0] dout0_re;  // sfix18_En13
  reg signed [17:0] dout0_im;  // sfix18_En13
  reg  dout0_vld;
  wire signed [17:0] xX_re;  // sfix18_En13
  wire signed [17:0] xX_im;  // sfix18_En13
  reg signed [17:0] SDFOutmux_btf2Pipe_re;  // sfix18
  reg signed [17:0] SDFOutmux_btf2Pipe_im;  // sfix18
  reg  SDFOutmux_btfPipe_vld;
  reg signed [17:0] SDFOutmux_btf2Pipe_re_next;  // sfix18_En13
  reg signed [17:0] SDFOutmux_btf2Pipe_im_next;  // sfix18_En13
  reg  SDFOutmux_btfPipe_vld_next;
  reg signed [17:0] dout_2_1_re_1;  // sfix18_En13
  reg signed [17:0] dout_2_1_im_1;  // sfix18_En13
  reg  dout_2_1_vld_1;


  // SDFCummutator
  always @(posedge clk or posedge reset)
    begin : SDFCummutator_process
      if (reset == 1'b1) begin
        SDFCummutator_out_re <= 18'sb000000000000000000;
        SDFCummutator_out_im <= 18'sb000000000000000000;
        SDFCummutator_wrData_re_reg <= 18'sb000000000000000000;
        SDFCummutator_wrData_im_reg <= 18'sb000000000000000000;
        SDFCummutator_wrEnb_reg <= 1'b0;
        SDFCummutator_out_vld <= 1'b0;
        SDFCummutator_wrState <= 3'b000;
        SDFCummutator_mem_btf_switch <= 2'b00;
        SDFCummutator_wrAddr_reg <= 8'b00000000;
        SDFCummutator_rdCnt <= 8'b00000000;
        SDFCummutator_wrXData_re_reg <= 18'sb000000000000000000;
        SDFCummutator_wrXData_im_reg <= 18'sb000000000000000000;
        SDFCummutator_xWrAddr <= 3'b000;
        SDFCummutator_wrxEnb_reg <= 1'b0;
        SDFCummutator_xRdAddr <= 3'b000;
        SDFCummutator_XState <= 3'b000;
        SDFCummutator_rdEnb_xmem <= 1'b0;
        SDFCummutator_wrEnb_xmem <= 1'b0;
        SDFCummutator_xX_vld_reg <= 1'b0;
      end
      else begin
        if (enb) begin
          SDFCummutator_out_re <= SDFCummutator_out_re_next;
          SDFCummutator_out_im <= SDFCummutator_out_im_next;
          SDFCummutator_out_vld <= SDFCummutator_out_vld_next;
          SDFCummutator_wrAddr_reg <= SDFCummutator_wrAddr_reg_next;
          SDFCummutator_wrState <= SDFCummutator_wrState_next;
          SDFCummutator_mem_btf_switch <= SDFCummutator_mem_btf_switch_next;
          SDFCummutator_rdCnt <= SDFCummutator_rdCnt_next;
          SDFCummutator_wrData_re_reg <= SDFCummutator_wrData_re_reg_next;
          SDFCummutator_wrData_im_reg <= SDFCummutator_wrData_im_reg_next;
          SDFCummutator_wrEnb_reg <= SDFCummutator_wrEnb_reg_next;
          SDFCummutator_wrXData_re_reg <= SDFCummutator_wrXData_re_reg_next;
          SDFCummutator_wrXData_im_reg <= SDFCummutator_wrXData_im_reg_next;
          SDFCummutator_xWrAddr <= SDFCummutator_xWrAddr_next;
          SDFCummutator_wrxEnb_reg <= SDFCummutator_wrxEnb_reg_next;
          SDFCummutator_xRdAddr <= SDFCummutator_xRdAddr_next;
          SDFCummutator_XState <= SDFCummutator_XState_next;
          SDFCummutator_rdEnb_xmem <= SDFCummutator_rdEnb_xmem_next;
          SDFCummutator_wrEnb_xmem <= SDFCummutator_wrEnb_xmem_next;
          SDFCummutator_xX_vld_reg <= SDFCummutator_xX_vld_reg_next;
        end
      end
    end

  always @(SDFCummutator_XState, SDFCummutator_mem_btf_switch, SDFCummutator_out_im,
       SDFCummutator_out_re, SDFCummutator_out_vld, SDFCummutator_rdCnt,
       SDFCummutator_rdEnb_xmem, SDFCummutator_wrAddr_reg,
       SDFCummutator_wrData_im_reg, SDFCummutator_wrData_re_reg,
       SDFCummutator_wrEnb_reg, SDFCummutator_wrEnb_xmem, SDFCummutator_wrState,
       SDFCummutator_wrXData_im_reg, SDFCummutator_wrXData_re_reg,
       SDFCummutator_wrxEnb_reg, SDFCummutator_xRdAddr, SDFCummutator_xWrAddr,
       SDFCummutator_xX_vld_reg, btf1_im, btf1_re, btf2_im, btf2_re, btfout_vld,
       dinf_im, dinf_re, dinf_vld, xf_im, xf_re, xf_vld) begin
    SDFCummutator_out_re_next = SDFCummutator_out_re;
    SDFCummutator_out_im_next = SDFCummutator_out_im;
    SDFCummutator_out_vld_next = SDFCummutator_out_vld;
    SDFCummutator_wrAddr_reg_next = SDFCummutator_wrAddr_reg;
    SDFCummutator_wrState_next = SDFCummutator_wrState;
    SDFCummutator_mem_btf_switch_next = SDFCummutator_mem_btf_switch;
    SDFCummutator_rdCnt_next = SDFCummutator_rdCnt;
    SDFCummutator_wrData_re_reg_next = SDFCummutator_wrData_re_reg;
    SDFCummutator_wrData_im_reg_next = SDFCummutator_wrData_im_reg;
    SDFCummutator_wrEnb_reg_next = SDFCummutator_wrEnb_reg;
    SDFCummutator_wrXData_re_reg_next = SDFCummutator_wrXData_re_reg;
    SDFCummutator_wrXData_im_reg_next = SDFCummutator_wrXData_im_reg;
    SDFCummutator_xWrAddr_next = SDFCummutator_xWrAddr;
    SDFCummutator_wrxEnb_reg_next = SDFCummutator_wrxEnb_reg;
    SDFCummutator_xRdAddr_next = SDFCummutator_xRdAddr;
    SDFCummutator_XState_next = SDFCummutator_XState;
    SDFCummutator_rdEnb_xmem_next = SDFCummutator_rdEnb_xmem;
    SDFCummutator_wrEnb_xmem_next = SDFCummutator_wrEnb_xmem;
    SDFCummutator_xX_vld_reg_next = SDFCummutator_xX_vld_reg;
    case ( SDFCummutator_XState)
      3'b000 :
        begin
          SDFCummutator_wrXData_re_reg_next = 18'sb000000000000000000;
          SDFCummutator_wrXData_im_reg_next = 18'sb000000000000000000;
          SDFCummutator_xWrAddr_next = 3'b000;
          SDFCummutator_xRdAddr_next = 3'b000;
          SDFCummutator_wrxEnb_reg_next = 1'b0;
          SDFCummutator_xX_vld_reg_next = 1'b0;
          SDFCummutator_XState_next = 3'b000;
          if ((SDFCummutator_wrEnb_xmem && (SDFCummutator_wrAddr_reg == 8'b11110111)) && SDFCummutator_wrEnb_reg) begin
            SDFCummutator_wrXData_re_reg_next = btf2_re;
            SDFCummutator_wrXData_im_reg_next = btf2_im;
            SDFCummutator_xWrAddr_next = 3'b000;
            if (btfout_vld) begin
              SDFCummutator_wrxEnb_reg_next = 1'b1;
              SDFCummutator_XState_next = 3'b010;
            end
            else begin
              SDFCummutator_wrxEnb_reg_next = 1'b0;
              SDFCummutator_XState_next = 3'b001;
            end
          end
        end
      3'b001 :
        begin
          SDFCummutator_XState_next = 3'b001;
          SDFCummutator_xX_vld_reg_next = 1'b0;
          if (btfout_vld) begin
            SDFCummutator_wrXData_re_reg_next = btf2_re;
            SDFCummutator_wrXData_im_reg_next = btf2_im;
            SDFCummutator_xWrAddr_next = 3'b000;
            SDFCummutator_wrxEnb_reg_next = 1'b1;
            SDFCummutator_XState_next = 3'b010;
          end
        end
      3'b010 :
        begin
          SDFCummutator_wrXData_re_reg_next = btf2_re;
          SDFCummutator_wrXData_im_reg_next = btf2_im;
          SDFCummutator_xX_vld_reg_next = 1'b0;
          if (SDFCummutator_xWrAddr == 3'b111) begin
            SDFCummutator_wrxEnb_reg_next = 1'b0;
            if (SDFCummutator_rdEnb_xmem) begin
              SDFCummutator_XState_next = 3'b100;
              SDFCummutator_xX_vld_reg_next = 1'b1;
              SDFCummutator_xRdAddr_next = 3'b001;
            end
            else begin
              SDFCummutator_XState_next = 3'b011;
            end
            SDFCummutator_xWrAddr_next = 3'b000;
          end
          else if (btfout_vld) begin
            SDFCummutator_XState_next = 3'b010;
            SDFCummutator_wrxEnb_reg_next = 1'b1;
            SDFCummutator_xWrAddr_next = SDFCummutator_xWrAddr + 3'b001;
          end
          else begin
            SDFCummutator_XState_next = 3'b010;
            SDFCummutator_wrxEnb_reg_next = 1'b0;
          end
        end
      3'b011 :
        begin
          if (SDFCummutator_rdEnb_xmem) begin
            SDFCummutator_XState_next = 3'b100;
            SDFCummutator_xX_vld_reg_next = 1'b1;
            SDFCummutator_xRdAddr_next = 3'b001;
          end
        end
      3'b100 :
        begin
          if (SDFCummutator_xRdAddr == 3'b111) begin
            SDFCummutator_xX_vld_reg_next = 1'b1;
            SDFCummutator_xWrAddr_next = 3'b000;
            SDFCummutator_xRdAddr_next = 3'b000;
            if (SDFCummutator_wrEnb_xmem) begin
              SDFCummutator_wrXData_re_reg_next = btf2_re;
              SDFCummutator_wrXData_im_reg_next = btf2_im;
              if (btfout_vld) begin
                SDFCummutator_wrxEnb_reg_next = 1'b1;
                SDFCummutator_XState_next = 3'b010;
              end
              else begin
                SDFCummutator_wrxEnb_reg_next = 1'b0;
                SDFCummutator_XState_next = 3'b001;
              end
            end
            else begin
              SDFCummutator_XState_next = 3'b000;
              SDFCummutator_wrxEnb_reg_next = 1'b0;
              SDFCummutator_wrXData_re_reg_next = 18'sb000000000000000000;
              SDFCummutator_wrXData_im_reg_next = 18'sb000000000000000000;
            end
          end
          else begin
            SDFCummutator_xRdAddr_next = SDFCummutator_xRdAddr + 3'b001;
          end
        end
      default :
        begin
          SDFCummutator_wrXData_re_reg_next = 18'sb000000000000000000;
          SDFCummutator_wrXData_im_reg_next = 18'sb000000000000000000;
          SDFCummutator_xWrAddr_next = 3'b000;
          SDFCummutator_xRdAddr_next = 3'b000;
          SDFCummutator_wrxEnb_reg_next = 1'b0;
          SDFCummutator_XState_next = 3'b000;
        end
    endcase
    case ( SDFCummutator_mem_btf_switch)
      2'b00 :
        begin
          SDFCummutator_mem_btf_switch_next = 2'b00;
          SDFCummutator_rdCnt_next = 8'b00000000;
          SDFCummutator_out_re_next = xf_re;
          SDFCummutator_out_im_next = xf_im;
          SDFCummutator_out_vld_next = 1'b0;
          SDFCummutator_rdEnb_xmem_next = 1'b0;
          if (dinf_vld) begin
            SDFCummutator_mem_btf_switch_next = 2'b01;
            SDFCummutator_rdCnt_next = 8'b00000000;
          end
        end
      2'b01 :
        begin
          SDFCummutator_mem_btf_switch_next = 2'b01;
          SDFCummutator_rdEnb_xmem_next = 1'b0;
          if ((SDFCummutator_rdCnt == 8'b11111111) && btfout_vld) begin
            SDFCummutator_mem_btf_switch_next = 2'b10;
          end
          if (btfout_vld) begin
            SDFCummutator_rdCnt_next = SDFCummutator_rdCnt + 8'b00000001;
          end
          SDFCummutator_out_re_next = btf1_re;
          SDFCummutator_out_im_next = btf1_im;
          SDFCummutator_out_vld_next = btfout_vld;
        end
      2'b10 :
        begin
          SDFCummutator_mem_btf_switch_next = 2'b10;
          if ((SDFCummutator_rdCnt == 8'b11110111) && xf_vld) begin
            SDFCummutator_mem_btf_switch_next = 2'b01;
            SDFCummutator_rdEnb_xmem_next = 1'b1;
          end
          if (xf_vld) begin
            if (SDFCummutator_rdCnt == 8'b11110111) begin
              SDFCummutator_rdCnt_next = 8'b00000000;
            end
            else begin
              SDFCummutator_rdCnt_next = SDFCummutator_rdCnt + 8'b00000001;
            end
          end
          SDFCummutator_out_re_next = xf_re;
          SDFCummutator_out_im_next = xf_im;
          SDFCummutator_out_vld_next = xf_vld;
        end
      default :
        begin
          SDFCummutator_mem_btf_switch_next = 2'b00;
          SDFCummutator_rdCnt_next = 8'b00000000;
          SDFCummutator_out_re_next = xf_re;
          SDFCummutator_out_im_next = xf_im;
          SDFCummutator_out_vld_next = xf_vld;
        end
    endcase
    case ( SDFCummutator_wrState)
      3'b000 :
        begin
          SDFCummutator_wrState_next = 3'b000;
          SDFCummutator_wrEnb_xmem_next = 1'b0;
          SDFCummutator_wrAddr_reg_next = 8'b00000000;
          SDFCummutator_wrData_re_reg_next = dinf_re;
          SDFCummutator_wrData_im_reg_next = dinf_im;
          if (dinf_vld) begin
            SDFCummutator_wrState_next = 3'b001;
            SDFCummutator_wrAddr_reg_next = 8'b00000000;
            SDFCummutator_wrEnb_reg_next = 1'b1;
          end
        end
      3'b001 :
        begin
          SDFCummutator_wrState_next = 3'b001;
          SDFCummutator_wrEnb_reg_next = 1'b0;
          SDFCummutator_wrEnb_xmem_next = 1'b0;
          if (SDFCummutator_wrAddr_reg == 8'b11111111) begin
            if (btfout_vld) begin
              SDFCummutator_wrState_next = 3'b010;
            end
            else begin
              SDFCummutator_wrState_next = 3'b100;
            end
            SDFCummutator_wrAddr_reg_next = 8'b00000000;
            SDFCummutator_wrEnb_reg_next = btfout_vld;
            SDFCummutator_wrData_re_reg_next = btf2_re;
            SDFCummutator_wrData_im_reg_next = btf2_im;
          end
          else if (dinf_vld) begin
            SDFCummutator_wrState_next = 3'b001;
            SDFCummutator_wrAddr_reg_next = SDFCummutator_wrAddr_reg + 8'b00000001;
            SDFCummutator_wrEnb_reg_next = 1'b1;
            SDFCummutator_wrData_re_reg_next = dinf_re;
            SDFCummutator_wrData_im_reg_next = dinf_im;
          end
        end
      3'b010 :
        begin
          SDFCummutator_wrState_next = 3'b010;
          SDFCummutator_wrEnb_reg_next = 1'b0;
          SDFCummutator_wrEnb_xmem_next = 1'b0;
          if (SDFCummutator_wrAddr_reg == 8'b11110110) begin
            SDFCummutator_wrEnb_xmem_next = 1'b1;
          end
          if (SDFCummutator_wrAddr_reg == 8'b11110111) begin
            SDFCummutator_wrAddr_reg_next = SDFCummutator_wrAddr_reg + 8'b00000001;
            SDFCummutator_wrState_next = 3'b011;
            SDFCummutator_wrEnb_reg_next = 1'b0;
            SDFCummutator_wrData_re_reg_next = dinf_re;
            SDFCummutator_wrData_im_reg_next = dinf_im;
          end
          else if (btfout_vld) begin
            SDFCummutator_wrState_next = 3'b010;
            SDFCummutator_wrAddr_reg_next = SDFCummutator_wrAddr_reg + 8'b00000001;
            SDFCummutator_wrEnb_reg_next = 1'b1;
            SDFCummutator_wrData_re_reg_next = btf2_re;
            SDFCummutator_wrData_im_reg_next = btf2_im;
          end
        end
      3'b011 :
        begin
          SDFCummutator_wrAddr_reg_next = 8'b00000000;
          SDFCummutator_wrEnb_reg_next = dinf_vld;
          SDFCummutator_wrData_re_reg_next = dinf_re;
          SDFCummutator_wrData_im_reg_next = dinf_im;
          SDFCummutator_wrEnb_xmem_next = 1'b0;
          if (dinf_vld) begin
            SDFCummutator_wrState_next = 3'b001;
          end
          else begin
            SDFCummutator_wrState_next = 3'b000;
          end
        end
      3'b100 :
        begin
          SDFCummutator_wrState_next = 3'b100;
          SDFCummutator_wrEnb_reg_next = 1'b0;
          SDFCummutator_wrEnb_xmem_next = 1'b0;
          if (btfout_vld) begin
            SDFCummutator_wrState_next = 3'b010;
            SDFCummutator_wrAddr_reg_next = 8'b00000000;
            SDFCummutator_wrEnb_reg_next = 1'b1;
            SDFCummutator_wrData_re_reg_next = btf2_re;
            SDFCummutator_wrData_im_reg_next = btf2_im;
          end
        end
      default :
        begin
          SDFCummutator_wrState_next = 3'b000;
          SDFCummutator_wrAddr_reg_next = 8'b00000000;
          SDFCummutator_wrEnb_reg_next = dinf_vld;
          SDFCummutator_wrData_re_reg_next = dinf_re;
          SDFCummutator_wrData_im_reg_next = dinf_im;
        end
    endcase
    wrData_re_1 = SDFCummutator_wrData_re_reg;
    wrData_im_1 = SDFCummutator_wrData_im_reg;
    wrAddr_1 = SDFCummutator_wrAddr_reg;
    wrEnb_1 = SDFCummutator_wrEnb_reg;
    xData_re = SDFCummutator_wrXData_re_reg;
    xData_im = SDFCummutator_wrXData_im_reg;
    wrXAddr = SDFCummutator_xWrAddr;
    wrXEnb = SDFCummutator_wrxEnb_reg;
    rdXAddr = SDFCummutator_xRdAddr;
    xX_vld = SDFCummutator_xX_vld_reg;
    dout0_re = SDFCummutator_out_re;
    dout0_im = SDFCummutator_out_im;
    dout0_vld = SDFCummutator_out_vld;
  end



  SimpleDualPortRAM_generic #(.AddrWidth(3),
                              .DataWidth(18)
                              )
                            u_dataXMEM_re_0_2 (.clk(clk),
                                               .enb(enb),
                                               .wr_din(xData_re),
                                               .wr_addr(wrXAddr),
                                               .wr_en(wrXEnb),
                                               .rd_addr(rdXAddr),
                                               .rd_dout(xX_re)
                                               );

  SimpleDualPortRAM_generic #(.AddrWidth(3),
                              .DataWidth(18)
                              )
                            u_dataXMEM_im_0_2 (.clk(clk),
                                               .enb(enb),
                                               .wr_din(xData_im),
                                               .wr_addr(wrXAddr),
                                               .wr_en(wrXEnb),
                                               .rd_addr(rdXAddr),
                                               .rd_dout(xX_im)
                                               );

  // SDFOutmux
  always @(posedge clk or posedge reset)
    begin : SDFOutmux_process
      if (reset == 1'b1) begin
        SDFOutmux_btf2Pipe_re <= 18'sb000000000000000000;
        SDFOutmux_btf2Pipe_im <= 18'sb000000000000000000;
        SDFOutmux_btfPipe_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          SDFOutmux_btf2Pipe_re <= SDFOutmux_btf2Pipe_re_next;
          SDFOutmux_btf2Pipe_im <= SDFOutmux_btf2Pipe_im_next;
          SDFOutmux_btfPipe_vld <= SDFOutmux_btfPipe_vld_next;
        end
      end
    end

  always @(SDFOutmux_btf2Pipe_im, SDFOutmux_btf2Pipe_re, SDFOutmux_btfPipe_vld, dout0_im,
       dout0_re, dout0_vld, xX_im, xX_re, xX_vld) begin
    SDFOutmux_btf2Pipe_re_next = SDFOutmux_btf2Pipe_re;
    SDFOutmux_btf2Pipe_im_next = SDFOutmux_btf2Pipe_im;
    SDFOutmux_btfPipe_vld_next = SDFOutmux_btfPipe_vld;
    if (dout0_vld) begin
      SDFOutmux_btf2Pipe_re_next = dout0_re;
      SDFOutmux_btf2Pipe_im_next = dout0_im;
      SDFOutmux_btfPipe_vld_next = 1'b1;
    end
    else if (xX_vld) begin
      SDFOutmux_btf2Pipe_re_next = xX_re;
      SDFOutmux_btf2Pipe_im_next = xX_im;
      SDFOutmux_btfPipe_vld_next = 1'b1;
    end
    else begin
      SDFOutmux_btfPipe_vld_next = 1'b0;
    end
    dout_2_1_re_1 = SDFOutmux_btf2Pipe_re;
    dout_2_1_im_1 = SDFOutmux_btf2Pipe_im;
    dout_2_1_vld_1 = SDFOutmux_btfPipe_vld;
  end



  assign wrData_re = wrData_re_1;

  assign wrData_im = wrData_im_1;

  assign wrAddr = wrAddr_1;

  assign wrEnb = wrEnb_1;

  assign dout_2_1_re = dout_2_1_re_1;

  assign dout_2_1_im = dout_2_1_im_1;

  assign dout_2_1_vld = dout_2_1_vld_1;

endmodule  // SDFCommutator2


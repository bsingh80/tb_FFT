// -------------------------------------------------------------
// 
// File Name: hdlsrc\tb_FFT\RADIX22FFT_SDF2_6.v
// Created: 2023-02-08 00:35:50
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDF2_6
// Source Path: tb_FFT/DUT/FFT/RADIX22FFT_SDF2_6
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDF2_6
          (clk,
           reset,
           enb,
           dout_5_1_re,
           dout_5_1_im,
           dout_5_1_vld,
           rd_6_Addr,
           rd_6_Enb,
           proc_6_enb,
           multiply_6_J,
           dout_6_1_re,
           dout_6_1_im,
           dout_6_1_vld,
           dinXTwdl_6_1_vld);


  input   clk;
  input   reset;
  input   enb;
  input   signed [20:0] dout_5_1_re;  // sfix21_En13
  input   signed [20:0] dout_5_1_im;  // sfix21_En13
  input   dout_5_1_vld;
  input   [3:0] rd_6_Addr;  // ufix4
  input   rd_6_Enb;
  input   proc_6_enb;
  input   multiply_6_J;
  output  signed [21:0] dout_6_1_re;  // sfix22_En13
  output  signed [21:0] dout_6_1_im;  // sfix22_En13
  output  dout_6_1_vld;
  output  dinXTwdl_6_1_vld;


  wire signed [21:0] din_re;  // sfix22_En13
  wire signed [21:0] din_im;  // sfix22_En13
  wire btfin_vld;
  wire saveEnb;
  wire dinVld;
  reg  x_vld;
  reg  x_vld_dly;
  wire signed [21:0] wrData_im;  // sfix22_En13
  wire [3:0] wrAddr;  // ufix4
  wire wrEnb;
  wire signed [21:0] x_im;  // sfix22_En13
  reg signed [21:0] x_im_dly;  // sfix22_En13
  wire signed [21:0] wrData_re;  // sfix22_En13
  wire signed [21:0] x_re;  // sfix22_En13
  reg signed [21:0] x_re_dly;  // sfix22_En13
  reg  Radix22ButterflyG2_procEnb_dly;
  reg  Radix22ButterflyG2_procEnb_dly1;
  reg  Radix22ButterflyG2_procEnb_dly2;
  reg signed [22:0] Radix22ButterflyG2_btf1_re_reg;  // sfix23
  reg signed [22:0] Radix22ButterflyG2_btf1_im_reg;  // sfix23
  reg signed [22:0] Radix22ButterflyG2_btf2_re_reg;  // sfix23
  reg signed [22:0] Radix22ButterflyG2_btf2_im_reg;  // sfix23
  reg signed [21:0] Radix22ButterflyG2_din_re_dly;  // sfix22
  reg signed [21:0] Radix22ButterflyG2_din_im_dly;  // sfix22
  reg  Radix22ButterflyG2_din_vld_dly;
  reg signed [21:0] Radix22ButterflyG2_x_re_dly;  // sfix22
  reg signed [21:0] Radix22ButterflyG2_x_im_dly;  // sfix22
  reg  Radix22ButterflyG2_x_vld_dly;
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_re_dly1;  // sfix22
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_im_dly1;  // sfix22
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_re_dly2;  // sfix22
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_im_dly2;  // sfix22
  reg  Radix22ButterflyG2_multiply_J_dly1;
  reg  Radix22ButterflyG2_procEnb_dly_next;
  reg  Radix22ButterflyG2_procEnb_dly1_next;
  reg  Radix22ButterflyG2_procEnb_dly2_next;
  reg signed [22:0] Radix22ButterflyG2_btf1_re_reg_next;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_btf1_im_reg_next;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_btf2_re_reg_next;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_btf2_im_reg_next;  // sfix23_En13
  reg signed [21:0] Radix22ButterflyG2_din_re_dly_next;  // sfix22_En13
  reg signed [21:0] Radix22ButterflyG2_din_im_dly_next;  // sfix22_En13
  reg  Radix22ButterflyG2_din_vld_dly_next;
  reg signed [21:0] Radix22ButterflyG2_x_re_dly_next;  // sfix22_En13
  reg signed [21:0] Radix22ButterflyG2_x_im_dly_next;  // sfix22_En13
  reg  Radix22ButterflyG2_x_vld_dly_next;
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_re_dly1_next;  // sfix22_En13
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_im_dly1_next;  // sfix22_En13
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_re_dly2_next;  // sfix22_En13
  reg signed [21:0] Radix22ButterflyG2_dinXTwdl_im_dly2_next;  // sfix22_En13
  reg  Radix22ButterflyG2_multiply_J_dly1_next;
  reg signed [21:0] xf_re;  // sfix22_En13
  reg signed [21:0] xf_im;  // sfix22_En13
  reg  xf_vld;
  reg signed [21:0] dinf_re;  // sfix22_En13
  reg signed [21:0] dinf_im;  // sfix22_En13
  reg  dinf_vld;
  reg signed [21:0] btf1_re;  // sfix22_En13
  reg signed [21:0] btf1_im;  // sfix22_En13
  reg signed [21:0] btf2_re;  // sfix22_En13
  reg signed [21:0] btf2_im;  // sfix22_En13
  reg  btfout_vld;
  reg signed [22:0] Radix22ButterflyG2_add_cast;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_0;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_1;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_2;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_0;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_1;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_2;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_3;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_4;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_5;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_add_cast_6;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_3;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_4;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_5;  // sfix23_En13
  reg signed [22:0] Radix22ButterflyG2_sub_cast_6;  // sfix23_En13


  assign din_re = {dout_5_1_re[20], dout_5_1_re};



  assign din_im = {dout_5_1_im[20], dout_5_1_im};



  assign btfin_vld = dout_5_1_vld & proc_6_enb;



  assign saveEnb =  ~ btfin_vld;



  assign dinVld = dout_5_1_vld & saveEnb;



  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        x_vld <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld <= rd_6_Enb;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        x_vld_dly <= 1'b0;
      end
      else begin
        if (enb) begin
          x_vld_dly <= x_vld;
        end
      end
    end



  SimpleDualPortRAM_generic #(.AddrWidth(4),
                              .DataWidth(22)
                              )
                            u_dataMEM_im_0_6 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_im),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_6_Addr),
                                              .rd_dout(x_im)
                                              );

  always @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        x_im_dly <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb) begin
          x_im_dly <= x_im;
        end
      end
    end



  SimpleDualPortRAM_generic #(.AddrWidth(4),
                              .DataWidth(22)
                              )
                            u_dataMEM_re_0_6 (.clk(clk),
                                              .enb(enb),
                                              .wr_din(wrData_re),
                                              .wr_addr(wrAddr),
                                              .wr_en(wrEnb),
                                              .rd_addr(rd_6_Addr),
                                              .rd_dout(x_re)
                                              );

  always @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        x_re_dly <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb) begin
          x_re_dly <= x_re;
        end
      end
    end



  // Radix22ButterflyG2
  always @(posedge clk or posedge reset)
    begin : Radix22ButterflyG2_process
      if (reset == 1'b1) begin
        Radix22ButterflyG2_procEnb_dly <= 1'b0;
        Radix22ButterflyG2_procEnb_dly1 <= 1'b0;
        Radix22ButterflyG2_procEnb_dly2 <= 1'b0;
        Radix22ButterflyG2_btf1_re_reg <= 23'sb00000000000000000000000;
        Radix22ButterflyG2_btf1_im_reg <= 23'sb00000000000000000000000;
        Radix22ButterflyG2_btf2_re_reg <= 23'sb00000000000000000000000;
        Radix22ButterflyG2_btf2_im_reg <= 23'sb00000000000000000000000;
        Radix22ButterflyG2_din_re_dly <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_din_im_dly <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_din_vld_dly <= 1'b0;
        Radix22ButterflyG2_x_re_dly <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_x_im_dly <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_x_vld_dly <= 1'b0;
        Radix22ButterflyG2_dinXTwdl_re_dly1 <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly1 <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_dinXTwdl_re_dly2 <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_dinXTwdl_im_dly2 <= 22'sb0000000000000000000000;
        Radix22ButterflyG2_multiply_J_dly1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Radix22ButterflyG2_procEnb_dly <= Radix22ButterflyG2_procEnb_dly_next;
          Radix22ButterflyG2_procEnb_dly1 <= Radix22ButterflyG2_procEnb_dly1_next;
          Radix22ButterflyG2_procEnb_dly2 <= Radix22ButterflyG2_procEnb_dly2_next;
          Radix22ButterflyG2_btf1_re_reg <= Radix22ButterflyG2_btf1_re_reg_next;
          Radix22ButterflyG2_btf1_im_reg <= Radix22ButterflyG2_btf1_im_reg_next;
          Radix22ButterflyG2_btf2_re_reg <= Radix22ButterflyG2_btf2_re_reg_next;
          Radix22ButterflyG2_btf2_im_reg <= Radix22ButterflyG2_btf2_im_reg_next;
          Radix22ButterflyG2_din_re_dly <= Radix22ButterflyG2_din_re_dly_next;
          Radix22ButterflyG2_din_im_dly <= Radix22ButterflyG2_din_im_dly_next;
          Radix22ButterflyG2_din_vld_dly <= Radix22ButterflyG2_din_vld_dly_next;
          Radix22ButterflyG2_x_re_dly <= Radix22ButterflyG2_x_re_dly_next;
          Radix22ButterflyG2_x_im_dly <= Radix22ButterflyG2_x_im_dly_next;
          Radix22ButterflyG2_x_vld_dly <= Radix22ButterflyG2_x_vld_dly_next;
          Radix22ButterflyG2_dinXTwdl_re_dly1 <= Radix22ButterflyG2_dinXTwdl_re_dly1_next;
          Radix22ButterflyG2_dinXTwdl_im_dly1 <= Radix22ButterflyG2_dinXTwdl_im_dly1_next;
          Radix22ButterflyG2_dinXTwdl_re_dly2 <= Radix22ButterflyG2_dinXTwdl_re_dly2_next;
          Radix22ButterflyG2_dinXTwdl_im_dly2 <= Radix22ButterflyG2_dinXTwdl_im_dly2_next;
          Radix22ButterflyG2_multiply_J_dly1 <= Radix22ButterflyG2_multiply_J_dly1_next;
        end
      end
    end

  always @(Radix22ButterflyG2_btf1_im_reg, Radix22ButterflyG2_btf1_re_reg,
       Radix22ButterflyG2_btf2_im_reg, Radix22ButterflyG2_btf2_re_reg,
       Radix22ButterflyG2_dinXTwdl_im_dly1, Radix22ButterflyG2_dinXTwdl_im_dly2,
       Radix22ButterflyG2_dinXTwdl_re_dly1, Radix22ButterflyG2_dinXTwdl_re_dly2,
       Radix22ButterflyG2_din_im_dly, Radix22ButterflyG2_din_re_dly,
       Radix22ButterflyG2_din_vld_dly, Radix22ButterflyG2_multiply_J_dly1,
       Radix22ButterflyG2_procEnb_dly, Radix22ButterflyG2_procEnb_dly1,
       Radix22ButterflyG2_procEnb_dly2, Radix22ButterflyG2_x_im_dly,
       Radix22ButterflyG2_x_re_dly, Radix22ButterflyG2_x_vld_dly, btfin_vld,
       dinVld, din_im, din_re, multiply_6_J, x_im_dly, x_re_dly, x_vld_dly) begin
    Radix22ButterflyG2_add_cast = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_0 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_1 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_2 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_0 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_1 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_2 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_3 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_4 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_5 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_add_cast_6 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_3 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_4 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_5 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_sub_cast_6 = 23'sb00000000000000000000000;
    Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_btf1_re_reg;
    Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_btf1_im_reg;
    Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_btf2_re_reg;
    Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_btf2_im_reg;
    Radix22ButterflyG2_x_re_dly_next = x_re_dly;
    Radix22ButterflyG2_x_im_dly_next = x_im_dly;
    Radix22ButterflyG2_x_vld_dly_next = x_vld_dly;
    Radix22ButterflyG2_din_re_dly_next = din_re;
    Radix22ButterflyG2_din_im_dly_next = din_im;
    Radix22ButterflyG2_din_vld_dly_next = dinVld;
    Radix22ButterflyG2_procEnb_dly2_next = Radix22ButterflyG2_procEnb_dly1;
    Radix22ButterflyG2_procEnb_dly1_next = Radix22ButterflyG2_procEnb_dly;
    Radix22ButterflyG2_procEnb_dly_next = btfin_vld;
    if (Radix22ButterflyG2_multiply_J_dly1) begin
      Radix22ButterflyG2_add_cast_1 = {x_re_dly[21], x_re_dly};
      Radix22ButterflyG2_add_cast_2 = {Radix22ButterflyG2_dinXTwdl_im_dly2[21], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_add_cast_1 + Radix22ButterflyG2_add_cast_2;
      Radix22ButterflyG2_sub_cast_1 = {x_re_dly[21], x_re_dly};
      Radix22ButterflyG2_sub_cast_2 = {Radix22ButterflyG2_dinXTwdl_im_dly2[21], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_sub_cast_1 - Radix22ButterflyG2_sub_cast_2;
      Radix22ButterflyG2_add_cast_5 = {x_im_dly[21], x_im_dly};
      Radix22ButterflyG2_add_cast_6 = {Radix22ButterflyG2_dinXTwdl_re_dly2[21], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_add_cast_5 + Radix22ButterflyG2_add_cast_6;
      Radix22ButterflyG2_sub_cast_5 = {x_im_dly[21], x_im_dly};
      Radix22ButterflyG2_sub_cast_6 = {Radix22ButterflyG2_dinXTwdl_re_dly2[21], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_sub_cast_5 - Radix22ButterflyG2_sub_cast_6;
    end
    else begin
      Radix22ButterflyG2_add_cast = {x_re_dly[21], x_re_dly};
      Radix22ButterflyG2_add_cast_0 = {Radix22ButterflyG2_dinXTwdl_re_dly2[21], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf1_re_reg_next = Radix22ButterflyG2_add_cast + Radix22ButterflyG2_add_cast_0;
      Radix22ButterflyG2_sub_cast = {x_re_dly[21], x_re_dly};
      Radix22ButterflyG2_sub_cast_0 = {Radix22ButterflyG2_dinXTwdl_re_dly2[21], Radix22ButterflyG2_dinXTwdl_re_dly2};
      Radix22ButterflyG2_btf2_re_reg_next = Radix22ButterflyG2_sub_cast - Radix22ButterflyG2_sub_cast_0;
      Radix22ButterflyG2_add_cast_3 = {x_im_dly[21], x_im_dly};
      Radix22ButterflyG2_add_cast_4 = {Radix22ButterflyG2_dinXTwdl_im_dly2[21], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf1_im_reg_next = Radix22ButterflyG2_add_cast_3 + Radix22ButterflyG2_add_cast_4;
      Radix22ButterflyG2_sub_cast_3 = {x_im_dly[21], x_im_dly};
      Radix22ButterflyG2_sub_cast_4 = {Radix22ButterflyG2_dinXTwdl_im_dly2[21], Radix22ButterflyG2_dinXTwdl_im_dly2};
      Radix22ButterflyG2_btf2_im_reg_next = Radix22ButterflyG2_sub_cast_3 - Radix22ButterflyG2_sub_cast_4;
    end
    Radix22ButterflyG2_dinXTwdl_re_dly2_next = Radix22ButterflyG2_dinXTwdl_re_dly1;
    Radix22ButterflyG2_dinXTwdl_im_dly2_next = Radix22ButterflyG2_dinXTwdl_im_dly1;
    Radix22ButterflyG2_dinXTwdl_re_dly1_next = din_re;
    Radix22ButterflyG2_dinXTwdl_im_dly1_next = din_im;
    Radix22ButterflyG2_multiply_J_dly1_next = multiply_6_J;
    xf_re = Radix22ButterflyG2_x_re_dly;
    xf_im = Radix22ButterflyG2_x_im_dly;
    xf_vld = Radix22ButterflyG2_x_vld_dly;
    dinf_re = Radix22ButterflyG2_din_re_dly;
    dinf_im = Radix22ButterflyG2_din_im_dly;
    dinf_vld = Radix22ButterflyG2_din_vld_dly;
    btf1_re = Radix22ButterflyG2_btf1_re_reg[21:0];
    btf1_im = Radix22ButterflyG2_btf1_im_reg[21:0];
    btf2_re = Radix22ButterflyG2_btf2_re_reg[21:0];
    btf2_im = Radix22ButterflyG2_btf2_im_reg[21:0];
    btfout_vld = Radix22ButterflyG2_procEnb_dly2;
  end



  SDFCommutator6 u_SDFCOMMUTATOR_6 (.clk(clk),
                                    .reset(reset),
                                    .enb(enb),
                                    .dout_5_1_vld(dout_5_1_vld),
                                    .xf_re(xf_re),  // sfix22_En13
                                    .xf_im(xf_im),  // sfix22_En13
                                    .xf_vld(xf_vld),
                                    .dinf_re(dinf_re),  // sfix22_En13
                                    .dinf_im(dinf_im),  // sfix22_En13
                                    .dinf_vld(dinf_vld),
                                    .btf1_re(btf1_re),  // sfix22_En13
                                    .btf1_im(btf1_im),  // sfix22_En13
                                    .btf2_re(btf2_re),  // sfix22_En13
                                    .btf2_im(btf2_im),  // sfix22_En13
                                    .btfout_vld(btfout_vld),
                                    .wrData_re(wrData_re),  // sfix22_En13
                                    .wrData_im(wrData_im),  // sfix22_En13
                                    .wrAddr(wrAddr),  // ufix4
                                    .wrEnb(wrEnb),
                                    .dout_6_1_re(dout_6_1_re),  // sfix22_En13
                                    .dout_6_1_im(dout_6_1_im),  // sfix22_En13
                                    .dout_6_1_vld(dout_6_1_vld)
                                    );

  assign dinXTwdl_6_1_vld = btfin_vld;

endmodule  // RADIX22FFT_SDF2_6


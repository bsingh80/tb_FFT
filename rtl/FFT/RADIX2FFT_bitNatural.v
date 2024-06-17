// -------------------------------------------------------------
// 
// File Name: hdlsrc\tb_FFT\RADIX2FFT_bitNatural.v
// Created: 2023-02-08 00:35:50
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX2FFT_bitNatural
// Source Path: tb_FFT/DUT/FFT/RADIX2FFT_bitNatural
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX2FFT_bitNatural
          (clk,
           reset,
           enb,
           dout_10_1_re,
           dout_10_1_im,
           dout_10_1_vld,
           dout_re1,
           dout_im1,
           dout_vld1);


  input   clk;
  input   reset;
  input   enb;
  input   signed [25:0] dout_10_1_re;  // sfix26_En13
  input   signed [25:0] dout_10_1_im;  // sfix26_En13
  input   dout_10_1_vld;
  output  signed [25:0] dout_re1;  // sfix26_En13
  output  signed [25:0] dout_im1;  // sfix26_En13
  output  dout_vld1;


  reg [1:0] wrStateMachineBitNatural_wrState;  // ufix2
  reg [9:0] wrStateMachineBitNatural_wrAddrCnt;  // ufix10
  reg [1:0] wrStateMachineBitNatural_wrState_next;  // ufix2
  reg [9:0] wrStateMachineBitNatural_wrAddrCnt_next;  // ufix10
  reg  WrEnb;
  reg [9:0] wrAddr;  // ufix10
  reg [9:0] sampleIdx;  // ufix10
  reg [9:0] rdAddr;  // ufix10
  wire signed [25:0] memOut_im;  // sfix26_En13
  wire signed [25:0] memOut_re;  // sfix26_En13
  reg [1:0] rdStateMachineBitNatural_rdState;  // ufix2
  reg [9:0] rdStateMachineBitNatural_rdAddrCnt;  // ufix10
  reg  rdStateMachineBitNatural_doutVldReg1;
  reg  rdStateMachineBitNatural_doutVldReg2;
  reg signed [25:0] rdStateMachineBitNatural_doutReReg;  // sfix26
  reg signed [25:0] rdStateMachineBitNatural_doutImReg;  // sfix26
  reg  rdStateMachineBitNatural_startOutReg;
  reg  rdStateMachineBitNatural_endOutReg1;
  reg  rdStateMachineBitNatural_endOutReg2;
  reg [1:0] rdStateMachineBitNatural_rdState_next;  // ufix2
  reg [9:0] rdStateMachineBitNatural_rdAddrCnt_next;  // ufix10
  reg  rdStateMachineBitNatural_doutVldReg1_next;
  reg  rdStateMachineBitNatural_doutVldReg2_next;
  reg signed [25:0] rdStateMachineBitNatural_doutReReg_next;  // sfix26_En13
  reg signed [25:0] rdStateMachineBitNatural_doutImReg_next;  // sfix26_En13
  reg  rdStateMachineBitNatural_startOutReg_next;
  reg  rdStateMachineBitNatural_endOutReg1_next;
  reg  rdStateMachineBitNatural_endOutReg2_next;
  reg signed [25:0] dout_re1_1;  // sfix26_En13
  reg signed [25:0] dout_im1_1;  // sfix26_En13
  reg  dout_vld1_1;
  reg  startOutW;
  reg  endOutW;


  // wrStateMachineBitNatural
  always @(posedge clk or posedge reset)
    begin : wrStateMachineBitNatural_process
      if (reset == 1'b1) begin
        wrStateMachineBitNatural_wrState <= 2'b00;
        wrStateMachineBitNatural_wrAddrCnt <= 10'b0000000000;
      end
      else begin
        if (enb) begin
          wrStateMachineBitNatural_wrState <= wrStateMachineBitNatural_wrState_next;
          wrStateMachineBitNatural_wrAddrCnt <= wrStateMachineBitNatural_wrAddrCnt_next;
        end
      end
    end

  always @(dout_10_1_vld, wrStateMachineBitNatural_wrAddrCnt,
       wrStateMachineBitNatural_wrState) begin
    wrStateMachineBitNatural_wrState_next = wrStateMachineBitNatural_wrState;
    wrStateMachineBitNatural_wrAddrCnt_next = wrStateMachineBitNatural_wrAddrCnt;
    if (wrStateMachineBitNatural_wrState == 2'b10) begin
      wrAddr = {wrStateMachineBitNatural_wrAddrCnt[0], wrStateMachineBitNatural_wrAddrCnt[1], wrStateMachineBitNatural_wrAddrCnt[2], wrStateMachineBitNatural_wrAddrCnt[3], wrStateMachineBitNatural_wrAddrCnt[4], wrStateMachineBitNatural_wrAddrCnt[5], wrStateMachineBitNatural_wrAddrCnt[6], wrStateMachineBitNatural_wrAddrCnt[7], wrStateMachineBitNatural_wrAddrCnt[8], wrStateMachineBitNatural_wrAddrCnt[9]};
    end
    else begin
      wrAddr = wrStateMachineBitNatural_wrAddrCnt;
    end
    case ( wrStateMachineBitNatural_wrState)
      2'b00 :
        begin
          if (dout_10_1_vld) begin
            wrStateMachineBitNatural_wrState_next = 2'b01;
            wrStateMachineBitNatural_wrAddrCnt_next = 10'b0000000001;
          end
          else begin
            wrStateMachineBitNatural_wrState_next = 2'b00;
            wrStateMachineBitNatural_wrAddrCnt_next = 10'b0000000000;
          end
        end
      2'b01 :
        begin
          if (dout_10_1_vld) begin
            if (wrStateMachineBitNatural_wrAddrCnt == 10'b1111111111) begin
              wrStateMachineBitNatural_wrAddrCnt_next = 10'b0000000000;
              wrStateMachineBitNatural_wrState_next = 2'b10;
            end
            else begin
              wrStateMachineBitNatural_wrAddrCnt_next = wrStateMachineBitNatural_wrAddrCnt + 10'b0000000001;
              wrStateMachineBitNatural_wrState_next = 2'b01;
            end
          end
        end
      2'b10 :
        begin
          if (dout_10_1_vld) begin
            if (wrStateMachineBitNatural_wrAddrCnt == 10'b1111111111) begin
              wrStateMachineBitNatural_wrAddrCnt_next = 10'b0000000000;
              wrStateMachineBitNatural_wrState_next = 2'b01;
            end
            else begin
              wrStateMachineBitNatural_wrAddrCnt_next = wrStateMachineBitNatural_wrAddrCnt + 10'b0000000001;
              wrStateMachineBitNatural_wrState_next = 2'b10;
            end
          end
        end
      default :
        begin
          wrStateMachineBitNatural_wrState_next = 2'b00;
          wrStateMachineBitNatural_wrAddrCnt_next = 10'b0000000000;
        end
    endcase
    WrEnb = dout_10_1_vld;
    sampleIdx = wrStateMachineBitNatural_wrAddrCnt;
  end



  SimpleDualPortRAM_generic #(.AddrWidth(10),
                              .DataWidth(26)
                              )
                            u_dataMEM_im_1 (.clk(clk),
                                            .enb(enb),
                                            .wr_din(dout_10_1_im),
                                            .wr_addr(wrAddr),
                                            .wr_en(WrEnb),
                                            .rd_addr(rdAddr),
                                            .rd_dout(memOut_im)
                                            );

  SimpleDualPortRAM_generic #(.AddrWidth(10),
                              .DataWidth(26)
                              )
                            u_dataMEM_re_1 (.clk(clk),
                                            .enb(enb),
                                            .wr_din(dout_10_1_re),
                                            .wr_addr(wrAddr),
                                            .wr_en(WrEnb),
                                            .rd_addr(rdAddr),
                                            .rd_dout(memOut_re)
                                            );

  // rdStateMachineBitNatural
  always @(posedge clk or posedge reset)
    begin : rdStateMachineBitNatural_process
      if (reset == 1'b1) begin
        rdStateMachineBitNatural_rdState <= 2'b00;
        rdStateMachineBitNatural_rdAddrCnt <= 10'b0000000000;
        rdStateMachineBitNatural_doutVldReg1 <= 1'b0;
        rdStateMachineBitNatural_doutVldReg2 <= 1'b0;
        rdStateMachineBitNatural_doutReReg <= 26'sb00000000000000000000000000;
        rdStateMachineBitNatural_doutImReg <= 26'sb00000000000000000000000000;
        rdStateMachineBitNatural_startOutReg <= 1'b0;
        rdStateMachineBitNatural_endOutReg1 <= 1'b0;
        rdStateMachineBitNatural_endOutReg2 <= 1'b0;
      end
      else begin
        if (enb) begin
          rdStateMachineBitNatural_rdState <= rdStateMachineBitNatural_rdState_next;
          rdStateMachineBitNatural_rdAddrCnt <= rdStateMachineBitNatural_rdAddrCnt_next;
          rdStateMachineBitNatural_doutVldReg1 <= rdStateMachineBitNatural_doutVldReg1_next;
          rdStateMachineBitNatural_doutVldReg2 <= rdStateMachineBitNatural_doutVldReg2_next;
          rdStateMachineBitNatural_doutReReg <= rdStateMachineBitNatural_doutReReg_next;
          rdStateMachineBitNatural_doutImReg <= rdStateMachineBitNatural_doutImReg_next;
          rdStateMachineBitNatural_startOutReg <= rdStateMachineBitNatural_startOutReg_next;
          rdStateMachineBitNatural_endOutReg1 <= rdStateMachineBitNatural_endOutReg1_next;
          rdStateMachineBitNatural_endOutReg2 <= rdStateMachineBitNatural_endOutReg2_next;
        end
      end
    end

  always @(memOut_im, memOut_re, rdStateMachineBitNatural_doutImReg,
       rdStateMachineBitNatural_doutReReg, rdStateMachineBitNatural_doutVldReg1,
       rdStateMachineBitNatural_doutVldReg2,
       rdStateMachineBitNatural_endOutReg1, rdStateMachineBitNatural_endOutReg2,
       rdStateMachineBitNatural_rdAddrCnt, rdStateMachineBitNatural_rdState,
       rdStateMachineBitNatural_startOutReg, sampleIdx) begin
    rdStateMachineBitNatural_rdState_next = rdStateMachineBitNatural_rdState;
    rdStateMachineBitNatural_rdAddrCnt_next = rdStateMachineBitNatural_rdAddrCnt;
    rdStateMachineBitNatural_doutReReg_next = rdStateMachineBitNatural_doutReReg;
    rdStateMachineBitNatural_doutImReg_next = rdStateMachineBitNatural_doutImReg;
    rdStateMachineBitNatural_startOutReg_next = rdStateMachineBitNatural_startOutReg;
    rdStateMachineBitNatural_endOutReg1_next = rdStateMachineBitNatural_endOutReg1;
    if (rdStateMachineBitNatural_rdState == 2'b01) begin
      rdAddr = {rdStateMachineBitNatural_rdAddrCnt[0], rdStateMachineBitNatural_rdAddrCnt[1], rdStateMachineBitNatural_rdAddrCnt[2], rdStateMachineBitNatural_rdAddrCnt[3], rdStateMachineBitNatural_rdAddrCnt[4], rdStateMachineBitNatural_rdAddrCnt[5], rdStateMachineBitNatural_rdAddrCnt[6], rdStateMachineBitNatural_rdAddrCnt[7], rdStateMachineBitNatural_rdAddrCnt[8], rdStateMachineBitNatural_rdAddrCnt[9]};
    end
    else begin
      rdAddr = rdStateMachineBitNatural_rdAddrCnt;
    end
    rdStateMachineBitNatural_endOutReg2_next = rdStateMachineBitNatural_endOutReg1;
    rdStateMachineBitNatural_startOutReg_next = rdStateMachineBitNatural_rdAddrCnt == 10'b0000000001;
    case ( rdStateMachineBitNatural_rdState)
      2'b00 :
        begin
          rdStateMachineBitNatural_doutVldReg1_next = 1'b0;
          if (sampleIdx >= 10'b1111011101) begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000001;
            rdStateMachineBitNatural_doutVldReg1_next = 1'b1;
            rdStateMachineBitNatural_rdState_next = 2'b01;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
          else begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000000;
            rdStateMachineBitNatural_rdState_next = 2'b00;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
        end
      2'b01 :
        begin
          rdStateMachineBitNatural_doutVldReg1_next = 1'b1;
          if (rdStateMachineBitNatural_rdAddrCnt == 10'b1111111111) begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000000;
            rdStateMachineBitNatural_rdState_next = 2'b10;
            rdStateMachineBitNatural_endOutReg1_next = 1'b1;
          end
          else begin
            rdStateMachineBitNatural_rdAddrCnt_next = rdStateMachineBitNatural_rdAddrCnt + 10'b0000000001;
            rdStateMachineBitNatural_rdState_next = 2'b01;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
        end
      2'b10 :
        begin
          rdStateMachineBitNatural_doutVldReg1_next = 1'b0;
          if (sampleIdx >= 10'b1111011101) begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000001;
            rdStateMachineBitNatural_doutVldReg1_next = 1'b1;
            rdStateMachineBitNatural_rdState_next = 2'b11;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
          else begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000000;
            rdStateMachineBitNatural_rdState_next = 2'b10;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
        end
      2'b11 :
        begin
          rdStateMachineBitNatural_doutVldReg1_next = 1'b1;
          if (rdStateMachineBitNatural_rdAddrCnt == 10'b1111111111) begin
            rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000000;
            rdStateMachineBitNatural_rdState_next = 2'b00;
            rdStateMachineBitNatural_endOutReg1_next = 1'b1;
          end
          else begin
            rdStateMachineBitNatural_rdAddrCnt_next = rdStateMachineBitNatural_rdAddrCnt + 10'b0000000001;
            rdStateMachineBitNatural_rdState_next = 2'b11;
            rdStateMachineBitNatural_endOutReg1_next = 1'b0;
          end
        end
      default :
        begin
          rdStateMachineBitNatural_rdState_next = 2'b00;
          rdStateMachineBitNatural_rdAddrCnt_next = 10'b0000000000;
          rdStateMachineBitNatural_doutVldReg1_next = 1'b0;
          rdStateMachineBitNatural_endOutReg1_next = 1'b0;
        end
    endcase
    if (rdStateMachineBitNatural_doutVldReg1) begin
      rdStateMachineBitNatural_doutReReg_next = memOut_re;
      rdStateMachineBitNatural_doutImReg_next = memOut_im;
    end
    rdStateMachineBitNatural_doutVldReg2_next = rdStateMachineBitNatural_doutVldReg1;
    dout_re1_1 = rdStateMachineBitNatural_doutReReg;
    dout_im1_1 = rdStateMachineBitNatural_doutImReg;
    dout_vld1_1 = rdStateMachineBitNatural_doutVldReg2;
    startOutW = rdStateMachineBitNatural_startOutReg;
    endOutW = rdStateMachineBitNatural_endOutReg2;
  end



  assign dout_re1 = dout_re1_1;

  assign dout_im1 = dout_im1_1;

  assign dout_vld1 = dout_vld1_1;

endmodule  // RADIX2FFT_bitNatural


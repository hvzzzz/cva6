// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:axi_riscv_atomics_wrapper_verilog:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SoC_axi_riscv_atomics_wrapper_0_0 (
  CLK,
  aresetn,
  s_axi_in_awid,
  s_axi_in_awaddr,
  s_axi_in_awlen,
  s_axi_in_awsize,
  s_axi_in_awburst,
  s_axi_in_awlock,
  s_axi_in_awcache,
  s_axi_in_awprot,
  s_axi_in_awqos,
  s_axi_in_awatop,
  s_axi_in_awregion,
  s_axi_in_awuser,
  s_axi_in_awvalid,
  s_axi_in_awready,
  s_axi_in_wdata,
  s_axi_in_wstrb,
  s_axi_in_wlast,
  s_axi_in_wuser,
  s_axi_in_wvalid,
  s_axi_in_wready,
  s_axi_in_bid,
  s_axi_in_bresp,
  s_axi_in_buser,
  s_axi_in_bvalid,
  s_axi_in_bready,
  s_axi_in_arid,
  s_axi_in_araddr,
  s_axi_in_arlen,
  s_axi_in_arsize,
  s_axi_in_arburst,
  s_axi_in_arlock,
  s_axi_in_arcache,
  s_axi_in_arprot,
  s_axi_in_arqos,
  s_axi_in_arregion,
  s_axi_in_aruser,
  s_axi_in_arvalid,
  s_axi_in_arready,
  s_axi_in_rdata,
  s_axi_in_rresp,
  s_axi_in_rlast,
  s_axi_in_rid,
  s_axi_in_ruser,
  s_axi_in_rvalid,
  s_axi_in_rready,
  m_axi_out_awid,
  m_axi_out_awaddr,
  m_axi_out_awlen,
  m_axi_out_awsize,
  m_axi_out_awburst,
  m_axi_out_awlock,
  m_axi_out_awcache,
  m_axi_out_awprot,
  m_axi_out_awqos,
  m_axi_out_awatop,
  m_axi_out_awregion,
  m_axi_out_awuser,
  m_axi_out_awvalid,
  m_axi_out_awready,
  m_axi_out_wdata,
  m_axi_out_wstrb,
  m_axi_out_wlast,
  m_axi_out_wuser,
  m_axi_out_wvalid,
  m_axi_out_wready,
  m_axi_out_bid,
  m_axi_out_bresp,
  m_axi_out_buser,
  m_axi_out_bvalid,
  m_axi_out_bready,
  m_axi_out_arid,
  m_axi_out_araddr,
  m_axi_out_arlen,
  m_axi_out_arsize,
  m_axi_out_arburst,
  m_axi_out_arlock,
  m_axi_out_arcache,
  m_axi_out_arprot,
  m_axi_out_arqos,
  m_axi_out_arregion,
  m_axi_out_aruser,
  m_axi_out_arvalid,
  m_axi_out_arready,
  m_axi_out_rdata,
  m_axi_out_rresp,
  m_axi_out_rlast,
  m_axi_out_rid,
  m_axi_out_ruser,
  m_axi_out_rvalid,
  m_axi_out_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF m_axi_out:s_axi_in, ASSOCIATED_RESET aresetn, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWID" *)
input wire [3 : 0] s_axi_in_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWADDR" *)
input wire [63 : 0] s_axi_in_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWLEN" *)
input wire [7 : 0] s_axi_in_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWSIZE" *)
input wire [2 : 0] s_axi_in_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWBURST" *)
input wire [1 : 0] s_axi_in_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWLOCK" *)
input wire s_axi_in_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWCACHE" *)
input wire [3 : 0] s_axi_in_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWPROT" *)
input wire [2 : 0] s_axi_in_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWQOS" *)
input wire [3 : 0] s_axi_in_awqos;
input wire [5 : 0] s_axi_in_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWREGION" *)
input wire [3 : 0] s_axi_in_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWUSER" *)
input wire [0 : 0] s_axi_in_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWVALID" *)
input wire s_axi_in_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in AWREADY" *)
output wire s_axi_in_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WDATA" *)
input wire [63 : 0] s_axi_in_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WSTRB" *)
input wire [7 : 0] s_axi_in_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WLAST" *)
input wire s_axi_in_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WUSER" *)
input wire [0 : 0] s_axi_in_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WVALID" *)
input wire s_axi_in_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in WREADY" *)
output wire s_axi_in_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in BID" *)
output wire [3 : 0] s_axi_in_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in BRESP" *)
output wire [1 : 0] s_axi_in_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in BUSER" *)
output wire [0 : 0] s_axi_in_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in BVALID" *)
output wire s_axi_in_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in BREADY" *)
input wire s_axi_in_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARID" *)
input wire [3 : 0] s_axi_in_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARADDR" *)
input wire [63 : 0] s_axi_in_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARLEN" *)
input wire [7 : 0] s_axi_in_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARSIZE" *)
input wire [2 : 0] s_axi_in_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARBURST" *)
input wire [1 : 0] s_axi_in_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARLOCK" *)
input wire s_axi_in_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARCACHE" *)
input wire [3 : 0] s_axi_in_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARPROT" *)
input wire [2 : 0] s_axi_in_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARQOS" *)
input wire [3 : 0] s_axi_in_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARREGION" *)
input wire [3 : 0] s_axi_in_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARUSER" *)
input wire [0 : 0] s_axi_in_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARVALID" *)
input wire s_axi_in_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in ARREADY" *)
output wire s_axi_in_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RDATA" *)
output wire [63 : 0] s_axi_in_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RRESP" *)
output wire [1 : 0] s_axi_in_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RLAST" *)
output wire s_axi_in_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RID" *)
output wire [3 : 0] s_axi_in_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RUSER" *)
output wire [0 : 0] s_axi_in_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RVALID" *)
output wire s_axi_in_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_in, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in RREADY" *)
input wire s_axi_in_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWID" *)
output wire [3 : 0] m_axi_out_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWADDR" *)
output wire [63 : 0] m_axi_out_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWLEN" *)
output wire [7 : 0] m_axi_out_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWSIZE" *)
output wire [2 : 0] m_axi_out_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWBURST" *)
output wire [1 : 0] m_axi_out_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWLOCK" *)
output wire m_axi_out_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWCACHE" *)
output wire [3 : 0] m_axi_out_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWPROT" *)
output wire [2 : 0] m_axi_out_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWQOS" *)
output wire [3 : 0] m_axi_out_awqos;
output wire [5 : 0] m_axi_out_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWREGION" *)
output wire [3 : 0] m_axi_out_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWUSER" *)
output wire [0 : 0] m_axi_out_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWVALID" *)
output wire m_axi_out_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out AWREADY" *)
input wire m_axi_out_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WDATA" *)
output wire [63 : 0] m_axi_out_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WSTRB" *)
output wire [7 : 0] m_axi_out_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WLAST" *)
output wire m_axi_out_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WUSER" *)
output wire [0 : 0] m_axi_out_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WVALID" *)
output wire m_axi_out_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out WREADY" *)
input wire m_axi_out_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out BID" *)
input wire [3 : 0] m_axi_out_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out BRESP" *)
input wire [1 : 0] m_axi_out_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out BUSER" *)
input wire [0 : 0] m_axi_out_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out BVALID" *)
input wire m_axi_out_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out BREADY" *)
output wire m_axi_out_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARID" *)
output wire [3 : 0] m_axi_out_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARADDR" *)
output wire [63 : 0] m_axi_out_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARLEN" *)
output wire [7 : 0] m_axi_out_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARSIZE" *)
output wire [2 : 0] m_axi_out_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARBURST" *)
output wire [1 : 0] m_axi_out_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARLOCK" *)
output wire m_axi_out_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARCACHE" *)
output wire [3 : 0] m_axi_out_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARPROT" *)
output wire [2 : 0] m_axi_out_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARQOS" *)
output wire [3 : 0] m_axi_out_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARREGION" *)
output wire [3 : 0] m_axi_out_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARUSER" *)
output wire [0 : 0] m_axi_out_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARVALID" *)
output wire m_axi_out_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out ARREADY" *)
input wire [0 : 0] m_axi_out_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RDATA" *)
input wire [63 : 0] m_axi_out_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RRESP" *)
input wire [1 : 0] m_axi_out_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RLAST" *)
input wire m_axi_out_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RID" *)
input wire [3 : 0] m_axi_out_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RUSER" *)
input wire [0 : 0] m_axi_out_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RVALID" *)
input wire m_axi_out_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_out, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out RREADY" *)
output wire m_axi_out_rready;

  axi_riscv_atomics_wrapper_verilog #(
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(64),
    .AXI_ID_WIDTH(4),
    .AXI_USER_WIDTH(1),
    .AXI_MAX_WRITE_TXNS(1),
    .RISCV_WORD_WIDTH(64)
  ) inst (
    .CLK(CLK),
    .aresetn(aresetn),
    .s_axi_in_awid(s_axi_in_awid),
    .s_axi_in_awaddr(s_axi_in_awaddr),
    .s_axi_in_awlen(s_axi_in_awlen),
    .s_axi_in_awsize(s_axi_in_awsize),
    .s_axi_in_awburst(s_axi_in_awburst),
    .s_axi_in_awlock(s_axi_in_awlock),
    .s_axi_in_awcache(s_axi_in_awcache),
    .s_axi_in_awprot(s_axi_in_awprot),
    .s_axi_in_awqos(s_axi_in_awqos),
    .s_axi_in_awatop(s_axi_in_awatop),
    .s_axi_in_awregion(s_axi_in_awregion),
    .s_axi_in_awuser(s_axi_in_awuser),
    .s_axi_in_awvalid(s_axi_in_awvalid),
    .s_axi_in_awready(s_axi_in_awready),
    .s_axi_in_wdata(s_axi_in_wdata),
    .s_axi_in_wstrb(s_axi_in_wstrb),
    .s_axi_in_wlast(s_axi_in_wlast),
    .s_axi_in_wuser(s_axi_in_wuser),
    .s_axi_in_wvalid(s_axi_in_wvalid),
    .s_axi_in_wready(s_axi_in_wready),
    .s_axi_in_bid(s_axi_in_bid),
    .s_axi_in_bresp(s_axi_in_bresp),
    .s_axi_in_buser(s_axi_in_buser),
    .s_axi_in_bvalid(s_axi_in_bvalid),
    .s_axi_in_bready(s_axi_in_bready),
    .s_axi_in_arid(s_axi_in_arid),
    .s_axi_in_araddr(s_axi_in_araddr),
    .s_axi_in_arlen(s_axi_in_arlen),
    .s_axi_in_arsize(s_axi_in_arsize),
    .s_axi_in_arburst(s_axi_in_arburst),
    .s_axi_in_arlock(s_axi_in_arlock),
    .s_axi_in_arcache(s_axi_in_arcache),
    .s_axi_in_arprot(s_axi_in_arprot),
    .s_axi_in_arqos(s_axi_in_arqos),
    .s_axi_in_arregion(s_axi_in_arregion),
    .s_axi_in_aruser(s_axi_in_aruser),
    .s_axi_in_arvalid(s_axi_in_arvalid),
    .s_axi_in_arready(s_axi_in_arready),
    .s_axi_in_rdata(s_axi_in_rdata),
    .s_axi_in_rresp(s_axi_in_rresp),
    .s_axi_in_rlast(s_axi_in_rlast),
    .s_axi_in_rid(s_axi_in_rid),
    .s_axi_in_ruser(s_axi_in_ruser),
    .s_axi_in_rvalid(s_axi_in_rvalid),
    .s_axi_in_rready(s_axi_in_rready),
    .m_axi_out_awid(m_axi_out_awid),
    .m_axi_out_awaddr(m_axi_out_awaddr),
    .m_axi_out_awlen(m_axi_out_awlen),
    .m_axi_out_awsize(m_axi_out_awsize),
    .m_axi_out_awburst(m_axi_out_awburst),
    .m_axi_out_awlock(m_axi_out_awlock),
    .m_axi_out_awcache(m_axi_out_awcache),
    .m_axi_out_awprot(m_axi_out_awprot),
    .m_axi_out_awqos(m_axi_out_awqos),
    .m_axi_out_awatop(m_axi_out_awatop),
    .m_axi_out_awregion(m_axi_out_awregion),
    .m_axi_out_awuser(m_axi_out_awuser),
    .m_axi_out_awvalid(m_axi_out_awvalid),
    .m_axi_out_awready(m_axi_out_awready),
    .m_axi_out_wdata(m_axi_out_wdata),
    .m_axi_out_wstrb(m_axi_out_wstrb),
    .m_axi_out_wlast(m_axi_out_wlast),
    .m_axi_out_wuser(m_axi_out_wuser),
    .m_axi_out_wvalid(m_axi_out_wvalid),
    .m_axi_out_wready(m_axi_out_wready),
    .m_axi_out_bid(m_axi_out_bid),
    .m_axi_out_bresp(m_axi_out_bresp),
    .m_axi_out_buser(m_axi_out_buser),
    .m_axi_out_bvalid(m_axi_out_bvalid),
    .m_axi_out_bready(m_axi_out_bready),
    .m_axi_out_arid(m_axi_out_arid),
    .m_axi_out_araddr(m_axi_out_araddr),
    .m_axi_out_arlen(m_axi_out_arlen),
    .m_axi_out_arsize(m_axi_out_arsize),
    .m_axi_out_arburst(m_axi_out_arburst),
    .m_axi_out_arlock(m_axi_out_arlock),
    .m_axi_out_arcache(m_axi_out_arcache),
    .m_axi_out_arprot(m_axi_out_arprot),
    .m_axi_out_arqos(m_axi_out_arqos),
    .m_axi_out_arregion(m_axi_out_arregion),
    .m_axi_out_aruser(m_axi_out_aruser),
    .m_axi_out_arvalid(m_axi_out_arvalid),
    .m_axi_out_arready(m_axi_out_arready),
    .m_axi_out_rdata(m_axi_out_rdata),
    .m_axi_out_rresp(m_axi_out_rresp),
    .m_axi_out_rlast(m_axi_out_rlast),
    .m_axi_out_rid(m_axi_out_rid),
    .m_axi_out_ruser(m_axi_out_ruser),
    .m_axi_out_rvalid(m_axi_out_rvalid),
    .m_axi_out_rready(m_axi_out_rready)
  );
endmodule

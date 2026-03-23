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


// IP VLNV: xilinx.com:module_ref:clint_wrapper_verilog:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SoC_clint_0_0 (
  aclk,
  aresetn,
  s_axi_clint_awid,
  s_axi_clint_awaddr,
  s_axi_clint_awlen,
  s_axi_clint_awsize,
  s_axi_clint_awburst,
  s_axi_clint_awlock,
  s_axi_clint_awcache,
  s_axi_clint_awprot,
  s_axi_clint_awqos,
  s_axi_clint_awatop,
  s_axi_clint_awregion,
  s_axi_clint_awuser,
  s_axi_clint_awvalid,
  s_axi_clint_awready,
  s_axi_clint_wdata,
  s_axi_clint_wstrb,
  s_axi_clint_wlast,
  s_axi_clint_wuser,
  s_axi_clint_wvalid,
  s_axi_clint_wready,
  s_axi_clint_bid,
  s_axi_clint_bresp,
  s_axi_clint_buser,
  s_axi_clint_bvalid,
  s_axi_clint_bready,
  s_axi_clint_arid,
  s_axi_clint_araddr,
  s_axi_clint_arlen,
  s_axi_clint_arsize,
  s_axi_clint_arburst,
  s_axi_clint_arlock,
  s_axi_clint_arcache,
  s_axi_clint_arprot,
  s_axi_clint_arqos,
  s_axi_clint_arregion,
  s_axi_clint_aruser,
  s_axi_clint_arvalid,
  s_axi_clint_arready,
  s_axi_clint_rdata,
  s_axi_clint_rresp,
  s_axi_clint_rlast,
  s_axi_clint_rid,
  s_axi_clint_ruser,
  s_axi_clint_rvalid,
  s_axi_clint_rready,
  timer_irq_o,
  ipi_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_clint, ASSOCIATED_RESET aresetn, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWID" *)
input wire [13 : 0] s_axi_clint_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWADDR" *)
input wire [63 : 0] s_axi_clint_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWLEN" *)
input wire [7 : 0] s_axi_clint_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWSIZE" *)
input wire [2 : 0] s_axi_clint_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWBURST" *)
input wire [1 : 0] s_axi_clint_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWLOCK" *)
input wire s_axi_clint_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWCACHE" *)
input wire [3 : 0] s_axi_clint_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWPROT" *)
input wire [2 : 0] s_axi_clint_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWQOS" *)
input wire [3 : 0] s_axi_clint_awqos;
input wire [5 : 0] s_axi_clint_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWREGION" *)
input wire [3 : 0] s_axi_clint_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWUSER" *)
input wire [0 : 0] s_axi_clint_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWVALID" *)
input wire s_axi_clint_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint AWREADY" *)
output wire s_axi_clint_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WDATA" *)
input wire [63 : 0] s_axi_clint_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WSTRB" *)
input wire [7 : 0] s_axi_clint_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WLAST" *)
input wire s_axi_clint_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WUSER" *)
input wire [0 : 0] s_axi_clint_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WVALID" *)
input wire s_axi_clint_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint WREADY" *)
output wire s_axi_clint_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint BID" *)
output wire [13 : 0] s_axi_clint_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint BRESP" *)
output wire [1 : 0] s_axi_clint_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint BUSER" *)
output wire [0 : 0] s_axi_clint_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint BVALID" *)
output wire s_axi_clint_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint BREADY" *)
input wire s_axi_clint_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARID" *)
input wire [13 : 0] s_axi_clint_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARADDR" *)
input wire [63 : 0] s_axi_clint_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARLEN" *)
input wire [7 : 0] s_axi_clint_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARSIZE" *)
input wire [2 : 0] s_axi_clint_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARBURST" *)
input wire [1 : 0] s_axi_clint_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARLOCK" *)
input wire s_axi_clint_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARCACHE" *)
input wire [3 : 0] s_axi_clint_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARPROT" *)
input wire [2 : 0] s_axi_clint_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARQOS" *)
input wire [3 : 0] s_axi_clint_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARREGION" *)
input wire [3 : 0] s_axi_clint_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARUSER" *)
input wire [0 : 0] s_axi_clint_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARVALID" *)
input wire s_axi_clint_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint ARREADY" *)
output wire s_axi_clint_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RDATA" *)
output wire [63 : 0] s_axi_clint_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RRESP" *)
output wire [1 : 0] s_axi_clint_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RLAST" *)
output wire s_axi_clint_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RID" *)
output wire [13 : 0] s_axi_clint_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RUSER" *)
output wire [0 : 0] s_axi_clint_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RVALID" *)
output wire s_axi_clint_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_clint, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 14, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_clint RREADY" *)
input wire s_axi_clint_rready;
output wire timer_irq_o;
output wire ipi_o;

  clint_wrapper_verilog #(
    .AXI_ID_WIDTH(14),
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(64),
    .AXI_USER_WIDTH(1),
    .NUMBER_INTERRUPTS(4)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .s_axi_clint_awid(s_axi_clint_awid),
    .s_axi_clint_awaddr(s_axi_clint_awaddr),
    .s_axi_clint_awlen(s_axi_clint_awlen),
    .s_axi_clint_awsize(s_axi_clint_awsize),
    .s_axi_clint_awburst(s_axi_clint_awburst),
    .s_axi_clint_awlock(s_axi_clint_awlock),
    .s_axi_clint_awcache(s_axi_clint_awcache),
    .s_axi_clint_awprot(s_axi_clint_awprot),
    .s_axi_clint_awqos(s_axi_clint_awqos),
    .s_axi_clint_awatop(s_axi_clint_awatop),
    .s_axi_clint_awregion(s_axi_clint_awregion),
    .s_axi_clint_awuser(s_axi_clint_awuser),
    .s_axi_clint_awvalid(s_axi_clint_awvalid),
    .s_axi_clint_awready(s_axi_clint_awready),
    .s_axi_clint_wdata(s_axi_clint_wdata),
    .s_axi_clint_wstrb(s_axi_clint_wstrb),
    .s_axi_clint_wlast(s_axi_clint_wlast),
    .s_axi_clint_wuser(s_axi_clint_wuser),
    .s_axi_clint_wvalid(s_axi_clint_wvalid),
    .s_axi_clint_wready(s_axi_clint_wready),
    .s_axi_clint_bid(s_axi_clint_bid),
    .s_axi_clint_bresp(s_axi_clint_bresp),
    .s_axi_clint_buser(s_axi_clint_buser),
    .s_axi_clint_bvalid(s_axi_clint_bvalid),
    .s_axi_clint_bready(s_axi_clint_bready),
    .s_axi_clint_arid(s_axi_clint_arid),
    .s_axi_clint_araddr(s_axi_clint_araddr),
    .s_axi_clint_arlen(s_axi_clint_arlen),
    .s_axi_clint_arsize(s_axi_clint_arsize),
    .s_axi_clint_arburst(s_axi_clint_arburst),
    .s_axi_clint_arlock(s_axi_clint_arlock),
    .s_axi_clint_arcache(s_axi_clint_arcache),
    .s_axi_clint_arprot(s_axi_clint_arprot),
    .s_axi_clint_arqos(s_axi_clint_arqos),
    .s_axi_clint_arregion(s_axi_clint_arregion),
    .s_axi_clint_aruser(s_axi_clint_aruser),
    .s_axi_clint_arvalid(s_axi_clint_arvalid),
    .s_axi_clint_arready(s_axi_clint_arready),
    .s_axi_clint_rdata(s_axi_clint_rdata),
    .s_axi_clint_rresp(s_axi_clint_rresp),
    .s_axi_clint_rlast(s_axi_clint_rlast),
    .s_axi_clint_rid(s_axi_clint_rid),
    .s_axi_clint_ruser(s_axi_clint_ruser),
    .s_axi_clint_rvalid(s_axi_clint_rvalid),
    .s_axi_clint_rready(s_axi_clint_rready),
    .timer_irq_o(timer_irq_o),
    .ipi_o(ipi_o)
  );
endmodule

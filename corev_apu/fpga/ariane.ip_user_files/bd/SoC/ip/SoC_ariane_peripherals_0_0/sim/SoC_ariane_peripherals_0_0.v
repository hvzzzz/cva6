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


// IP VLNV: xilinx.com:module_ref:ariane_peripherals_wrapper_verilog:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SoC_ariane_peripherals_0_0 (
  aclk,
  aresetn,
  uart_irq_i,
  spi_irq_i,
  eth_irq_i,
  irq_i,
  s_axi_plic_awid,
  s_axi_plic_awaddr,
  s_axi_plic_awlen,
  s_axi_plic_awsize,
  s_axi_plic_awburst,
  s_axi_plic_awlock,
  s_axi_plic_awcache,
  s_axi_plic_awprot,
  s_axi_plic_awqos,
  s_axi_plic_awatop,
  s_axi_plic_awregion,
  s_axi_plic_awuser,
  s_axi_plic_awvalid,
  s_axi_plic_awready,
  s_axi_plic_wdata,
  s_axi_plic_wstrb,
  s_axi_plic_wlast,
  s_axi_plic_wuser,
  s_axi_plic_wvalid,
  s_axi_plic_wready,
  s_axi_plic_bid,
  s_axi_plic_bresp,
  s_axi_plic_buser,
  s_axi_plic_bvalid,
  s_axi_plic_bready,
  s_axi_plic_arid,
  s_axi_plic_araddr,
  s_axi_plic_arlen,
  s_axi_plic_arsize,
  s_axi_plic_arburst,
  s_axi_plic_arlock,
  s_axi_plic_arcache,
  s_axi_plic_arprot,
  s_axi_plic_arqos,
  s_axi_plic_arregion,
  s_axi_plic_aruser,
  s_axi_plic_arvalid,
  s_axi_plic_arready,
  s_axi_plic_rdata,
  s_axi_plic_rresp,
  s_axi_plic_rlast,
  s_axi_plic_rid,
  s_axi_plic_ruser,
  s_axi_plic_rvalid,
  s_axi_plic_rready,
  s_axi_timer_awid,
  s_axi_timer_awaddr,
  s_axi_timer_awlen,
  s_axi_timer_awsize,
  s_axi_timer_awburst,
  s_axi_timer_awlock,
  s_axi_timer_awcache,
  s_axi_timer_awprot,
  s_axi_timer_awqos,
  s_axi_timer_awatop,
  s_axi_timer_awregion,
  s_axi_timer_awuser,
  s_axi_timer_awvalid,
  s_axi_timer_awready,
  s_axi_timer_wdata,
  s_axi_timer_wstrb,
  s_axi_timer_wlast,
  s_axi_timer_wuser,
  s_axi_timer_wvalid,
  s_axi_timer_wready,
  s_axi_timer_bid,
  s_axi_timer_bresp,
  s_axi_timer_buser,
  s_axi_timer_bvalid,
  s_axi_timer_bready,
  s_axi_timer_arid,
  s_axi_timer_araddr,
  s_axi_timer_arlen,
  s_axi_timer_arsize,
  s_axi_timer_arburst,
  s_axi_timer_arlock,
  s_axi_timer_arcache,
  s_axi_timer_arprot,
  s_axi_timer_arqos,
  s_axi_timer_arregion,
  s_axi_timer_aruser,
  s_axi_timer_arvalid,
  s_axi_timer_arready,
  s_axi_timer_rdata,
  s_axi_timer_rresp,
  s_axi_timer_rlast,
  s_axi_timer_rid,
  s_axi_timer_ruser,
  s_axi_timer_rvalid,
  s_axi_timer_rready,
  irq_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_plic:s_axi_timer, ASSOCIATED_RESET aresetn, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire uart_irq_i;
input wire spi_irq_i;
input wire eth_irq_i;
input wire [29 : 7] irq_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWID" *)
input wire [13 : 0] s_axi_plic_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWADDR" *)
input wire [63 : 0] s_axi_plic_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWLEN" *)
input wire [7 : 0] s_axi_plic_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWSIZE" *)
input wire [2 : 0] s_axi_plic_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWBURST" *)
input wire [1 : 0] s_axi_plic_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWLOCK" *)
input wire s_axi_plic_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWCACHE" *)
input wire [3 : 0] s_axi_plic_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWPROT" *)
input wire [2 : 0] s_axi_plic_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWQOS" *)
input wire [3 : 0] s_axi_plic_awqos;
input wire [5 : 0] s_axi_plic_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWREGION" *)
input wire [3 : 0] s_axi_plic_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWUSER" *)
input wire [0 : 0] s_axi_plic_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWVALID" *)
input wire s_axi_plic_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic AWREADY" *)
output wire s_axi_plic_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WDATA" *)
input wire [63 : 0] s_axi_plic_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WSTRB" *)
input wire [7 : 0] s_axi_plic_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WLAST" *)
input wire s_axi_plic_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WUSER" *)
input wire [0 : 0] s_axi_plic_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WVALID" *)
input wire s_axi_plic_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic WREADY" *)
output wire s_axi_plic_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic BID" *)
output wire [13 : 0] s_axi_plic_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic BRESP" *)
output wire [1 : 0] s_axi_plic_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic BUSER" *)
output wire [0 : 0] s_axi_plic_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic BVALID" *)
output wire s_axi_plic_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic BREADY" *)
input wire s_axi_plic_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARID" *)
input wire [13 : 0] s_axi_plic_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARADDR" *)
input wire [63 : 0] s_axi_plic_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARLEN" *)
input wire [7 : 0] s_axi_plic_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARSIZE" *)
input wire [2 : 0] s_axi_plic_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARBURST" *)
input wire [1 : 0] s_axi_plic_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARLOCK" *)
input wire s_axi_plic_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARCACHE" *)
input wire [3 : 0] s_axi_plic_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARPROT" *)
input wire [2 : 0] s_axi_plic_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARQOS" *)
input wire [3 : 0] s_axi_plic_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARREGION" *)
input wire [3 : 0] s_axi_plic_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARUSER" *)
input wire [0 : 0] s_axi_plic_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARVALID" *)
input wire s_axi_plic_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic ARREADY" *)
output wire s_axi_plic_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RDATA" *)
output wire [63 : 0] s_axi_plic_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RRESP" *)
output wire [1 : 0] s_axi_plic_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RLAST" *)
output wire s_axi_plic_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RID" *)
output wire [13 : 0] s_axi_plic_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RUSER" *)
output wire [0 : 0] s_axi_plic_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RVALID" *)
output wire s_axi_plic_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_plic, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 14, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_plic RREADY" *)
input wire s_axi_plic_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWID" *)
input wire [13 : 0] s_axi_timer_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWADDR" *)
input wire [63 : 0] s_axi_timer_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWLEN" *)
input wire [7 : 0] s_axi_timer_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWSIZE" *)
input wire [2 : 0] s_axi_timer_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWBURST" *)
input wire [1 : 0] s_axi_timer_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWLOCK" *)
input wire s_axi_timer_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWCACHE" *)
input wire [3 : 0] s_axi_timer_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWPROT" *)
input wire [2 : 0] s_axi_timer_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWQOS" *)
input wire [3 : 0] s_axi_timer_awqos;
input wire [5 : 0] s_axi_timer_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWREGION" *)
input wire [3 : 0] s_axi_timer_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWUSER" *)
input wire [0 : 0] s_axi_timer_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWVALID" *)
input wire s_axi_timer_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer AWREADY" *)
output wire s_axi_timer_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WDATA" *)
input wire [63 : 0] s_axi_timer_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WSTRB" *)
input wire [7 : 0] s_axi_timer_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WLAST" *)
input wire s_axi_timer_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WUSER" *)
input wire [0 : 0] s_axi_timer_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WVALID" *)
input wire s_axi_timer_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer WREADY" *)
output wire s_axi_timer_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer BID" *)
output wire [13 : 0] s_axi_timer_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer BRESP" *)
output wire [1 : 0] s_axi_timer_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer BUSER" *)
output wire [0 : 0] s_axi_timer_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer BVALID" *)
output wire s_axi_timer_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer BREADY" *)
input wire s_axi_timer_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARID" *)
input wire [13 : 0] s_axi_timer_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARADDR" *)
input wire [63 : 0] s_axi_timer_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARLEN" *)
input wire [7 : 0] s_axi_timer_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARSIZE" *)
input wire [2 : 0] s_axi_timer_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARBURST" *)
input wire [1 : 0] s_axi_timer_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARLOCK" *)
input wire s_axi_timer_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARCACHE" *)
input wire [3 : 0] s_axi_timer_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARPROT" *)
input wire [2 : 0] s_axi_timer_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARQOS" *)
input wire [3 : 0] s_axi_timer_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARREGION" *)
input wire [3 : 0] s_axi_timer_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARUSER" *)
input wire [0 : 0] s_axi_timer_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARVALID" *)
input wire s_axi_timer_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer ARREADY" *)
output wire s_axi_timer_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RDATA" *)
output wire [63 : 0] s_axi_timer_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RRESP" *)
output wire [1 : 0] s_axi_timer_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RLAST" *)
output wire s_axi_timer_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RID" *)
output wire [13 : 0] s_axi_timer_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RUSER" *)
output wire [0 : 0] s_axi_timer_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RVALID" *)
output wire s_axi_timer_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_timer, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 14, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_timer RREADY" *)
input wire s_axi_timer_rready;
output wire [1 : 0] irq_out;

  ariane_peripherals_wrapper_verilog #(
    .AXI_ID_WIDTH(14),
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(64),
    .AXI_USER_WIDTH(1)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .uart_irq_i(uart_irq_i),
    .spi_irq_i(spi_irq_i),
    .eth_irq_i(eth_irq_i),
    .irq_i(irq_i),
    .s_axi_plic_awid(s_axi_plic_awid),
    .s_axi_plic_awaddr(s_axi_plic_awaddr),
    .s_axi_plic_awlen(s_axi_plic_awlen),
    .s_axi_plic_awsize(s_axi_plic_awsize),
    .s_axi_plic_awburst(s_axi_plic_awburst),
    .s_axi_plic_awlock(s_axi_plic_awlock),
    .s_axi_plic_awcache(s_axi_plic_awcache),
    .s_axi_plic_awprot(s_axi_plic_awprot),
    .s_axi_plic_awqos(s_axi_plic_awqos),
    .s_axi_plic_awatop(s_axi_plic_awatop),
    .s_axi_plic_awregion(s_axi_plic_awregion),
    .s_axi_plic_awuser(s_axi_plic_awuser),
    .s_axi_plic_awvalid(s_axi_plic_awvalid),
    .s_axi_plic_awready(s_axi_plic_awready),
    .s_axi_plic_wdata(s_axi_plic_wdata),
    .s_axi_plic_wstrb(s_axi_plic_wstrb),
    .s_axi_plic_wlast(s_axi_plic_wlast),
    .s_axi_plic_wuser(s_axi_plic_wuser),
    .s_axi_plic_wvalid(s_axi_plic_wvalid),
    .s_axi_plic_wready(s_axi_plic_wready),
    .s_axi_plic_bid(s_axi_plic_bid),
    .s_axi_plic_bresp(s_axi_plic_bresp),
    .s_axi_plic_buser(s_axi_plic_buser),
    .s_axi_plic_bvalid(s_axi_plic_bvalid),
    .s_axi_plic_bready(s_axi_plic_bready),
    .s_axi_plic_arid(s_axi_plic_arid),
    .s_axi_plic_araddr(s_axi_plic_araddr),
    .s_axi_plic_arlen(s_axi_plic_arlen),
    .s_axi_plic_arsize(s_axi_plic_arsize),
    .s_axi_plic_arburst(s_axi_plic_arburst),
    .s_axi_plic_arlock(s_axi_plic_arlock),
    .s_axi_plic_arcache(s_axi_plic_arcache),
    .s_axi_plic_arprot(s_axi_plic_arprot),
    .s_axi_plic_arqos(s_axi_plic_arqos),
    .s_axi_plic_arregion(s_axi_plic_arregion),
    .s_axi_plic_aruser(s_axi_plic_aruser),
    .s_axi_plic_arvalid(s_axi_plic_arvalid),
    .s_axi_plic_arready(s_axi_plic_arready),
    .s_axi_plic_rdata(s_axi_plic_rdata),
    .s_axi_plic_rresp(s_axi_plic_rresp),
    .s_axi_plic_rlast(s_axi_plic_rlast),
    .s_axi_plic_rid(s_axi_plic_rid),
    .s_axi_plic_ruser(s_axi_plic_ruser),
    .s_axi_plic_rvalid(s_axi_plic_rvalid),
    .s_axi_plic_rready(s_axi_plic_rready),
    .s_axi_timer_awid(s_axi_timer_awid),
    .s_axi_timer_awaddr(s_axi_timer_awaddr),
    .s_axi_timer_awlen(s_axi_timer_awlen),
    .s_axi_timer_awsize(s_axi_timer_awsize),
    .s_axi_timer_awburst(s_axi_timer_awburst),
    .s_axi_timer_awlock(s_axi_timer_awlock),
    .s_axi_timer_awcache(s_axi_timer_awcache),
    .s_axi_timer_awprot(s_axi_timer_awprot),
    .s_axi_timer_awqos(s_axi_timer_awqos),
    .s_axi_timer_awatop(s_axi_timer_awatop),
    .s_axi_timer_awregion(s_axi_timer_awregion),
    .s_axi_timer_awuser(s_axi_timer_awuser),
    .s_axi_timer_awvalid(s_axi_timer_awvalid),
    .s_axi_timer_awready(s_axi_timer_awready),
    .s_axi_timer_wdata(s_axi_timer_wdata),
    .s_axi_timer_wstrb(s_axi_timer_wstrb),
    .s_axi_timer_wlast(s_axi_timer_wlast),
    .s_axi_timer_wuser(s_axi_timer_wuser),
    .s_axi_timer_wvalid(s_axi_timer_wvalid),
    .s_axi_timer_wready(s_axi_timer_wready),
    .s_axi_timer_bid(s_axi_timer_bid),
    .s_axi_timer_bresp(s_axi_timer_bresp),
    .s_axi_timer_buser(s_axi_timer_buser),
    .s_axi_timer_bvalid(s_axi_timer_bvalid),
    .s_axi_timer_bready(s_axi_timer_bready),
    .s_axi_timer_arid(s_axi_timer_arid),
    .s_axi_timer_araddr(s_axi_timer_araddr),
    .s_axi_timer_arlen(s_axi_timer_arlen),
    .s_axi_timer_arsize(s_axi_timer_arsize),
    .s_axi_timer_arburst(s_axi_timer_arburst),
    .s_axi_timer_arlock(s_axi_timer_arlock),
    .s_axi_timer_arcache(s_axi_timer_arcache),
    .s_axi_timer_arprot(s_axi_timer_arprot),
    .s_axi_timer_arqos(s_axi_timer_arqos),
    .s_axi_timer_arregion(s_axi_timer_arregion),
    .s_axi_timer_aruser(s_axi_timer_aruser),
    .s_axi_timer_arvalid(s_axi_timer_arvalid),
    .s_axi_timer_arready(s_axi_timer_arready),
    .s_axi_timer_rdata(s_axi_timer_rdata),
    .s_axi_timer_rresp(s_axi_timer_rresp),
    .s_axi_timer_rlast(s_axi_timer_rlast),
    .s_axi_timer_rid(s_axi_timer_rid),
    .s_axi_timer_ruser(s_axi_timer_ruser),
    .s_axi_timer_rvalid(s_axi_timer_rvalid),
    .s_axi_timer_rready(s_axi_timer_rready),
    .irq_out(irq_out)
  );
endmodule

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


// IP VLNV: xilinx.com:module_ref:cva6_wrapper_verilog:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SoC_cpu_0_0 (
  aclk,
  aresetn,
  irqs_in,
  ipi_in,
  timer_irq_i,
  debug_req_irq,
  m_axi_cpu_awid,
  m_axi_cpu_awaddr,
  m_axi_cpu_awlen,
  m_axi_cpu_awsize,
  m_axi_cpu_awburst,
  m_axi_cpu_awlock,
  m_axi_cpu_awcache,
  m_axi_cpu_awprot,
  m_axi_cpu_awqos,
  m_axi_cpu_awatop,
  m_axi_cpu_awregion,
  m_axi_cpu_awuser,
  m_axi_cpu_awvalid,
  m_axi_cpu_awready,
  m_axi_cpu_wdata,
  m_axi_cpu_wstrb,
  m_axi_cpu_wlast,
  m_axi_cpu_wuser,
  m_axi_cpu_wvalid,
  m_axi_cpu_wready,
  m_axi_cpu_bid,
  m_axi_cpu_bresp,
  m_axi_cpu_buser,
  m_axi_cpu_bvalid,
  m_axi_cpu_bready,
  m_axi_cpu_arid,
  m_axi_cpu_araddr,
  m_axi_cpu_arlen,
  m_axi_cpu_arsize,
  m_axi_cpu_arburst,
  m_axi_cpu_arlock,
  m_axi_cpu_arcache,
  m_axi_cpu_arprot,
  m_axi_cpu_arqos,
  m_axi_cpu_arregion,
  m_axi_cpu_aruser,
  m_axi_cpu_arvalid,
  m_axi_cpu_arready,
  m_axi_cpu_rdata,
  m_axi_cpu_rresp,
  m_axi_cpu_rlast,
  m_axi_cpu_rid,
  m_axi_cpu_ruser,
  m_axi_cpu_rvalid,
  m_axi_cpu_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi_cpu, ASSOCIATED_RESET aresetn, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irqs_in, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irqs_in INTERRUPT" *)
input wire [1 : 0] irqs_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ipi_in, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ipi_in INTERRUPT" *)
input wire ipi_in;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timer_irq_i, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 timer_irq_i INTERRUPT" *)
input wire timer_irq_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME debug_req_irq, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 debug_req_irq INTERRUPT" *)
input wire debug_req_irq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWID" *)
output wire [3 : 0] m_axi_cpu_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWADDR" *)
output wire [63 : 0] m_axi_cpu_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWLEN" *)
output wire [7 : 0] m_axi_cpu_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWSIZE" *)
output wire [2 : 0] m_axi_cpu_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWBURST" *)
output wire [1 : 0] m_axi_cpu_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWLOCK" *)
output wire m_axi_cpu_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWCACHE" *)
output wire [3 : 0] m_axi_cpu_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWPROT" *)
output wire [2 : 0] m_axi_cpu_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWQOS" *)
output wire [3 : 0] m_axi_cpu_awqos;
output wire [5 : 0] m_axi_cpu_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWREGION" *)
output wire [3 : 0] m_axi_cpu_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWUSER" *)
output wire [0 : 0] m_axi_cpu_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWVALID" *)
output wire m_axi_cpu_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu AWREADY" *)
input wire m_axi_cpu_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WDATA" *)
output wire [63 : 0] m_axi_cpu_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WSTRB" *)
output wire [7 : 0] m_axi_cpu_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WLAST" *)
output wire m_axi_cpu_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WUSER" *)
output wire [0 : 0] m_axi_cpu_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WVALID" *)
output wire m_axi_cpu_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu WREADY" *)
input wire m_axi_cpu_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu BID" *)
input wire [3 : 0] m_axi_cpu_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu BRESP" *)
input wire [1 : 0] m_axi_cpu_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu BUSER" *)
input wire [0 : 0] m_axi_cpu_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu BVALID" *)
input wire m_axi_cpu_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu BREADY" *)
output wire m_axi_cpu_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARID" *)
output wire [3 : 0] m_axi_cpu_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARADDR" *)
output wire [63 : 0] m_axi_cpu_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARLEN" *)
output wire [7 : 0] m_axi_cpu_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARSIZE" *)
output wire [2 : 0] m_axi_cpu_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARBURST" *)
output wire [1 : 0] m_axi_cpu_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARLOCK" *)
output wire m_axi_cpu_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARCACHE" *)
output wire [3 : 0] m_axi_cpu_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARPROT" *)
output wire [2 : 0] m_axi_cpu_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARQOS" *)
output wire [3 : 0] m_axi_cpu_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARREGION" *)
output wire [3 : 0] m_axi_cpu_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARUSER" *)
output wire [0 : 0] m_axi_cpu_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARVALID" *)
output wire m_axi_cpu_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu ARREADY" *)
input wire [0 : 0] m_axi_cpu_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RDATA" *)
input wire [63 : 0] m_axi_cpu_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RRESP" *)
input wire [1 : 0] m_axi_cpu_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RLAST" *)
input wire m_axi_cpu_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RID" *)
input wire [3 : 0] m_axi_cpu_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RUSER" *)
input wire [0 : 0] m_axi_cpu_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RVALID" *)
input wire m_axi_cpu_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_cpu, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 25000000, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_cpu RREADY" *)
output wire m_axi_cpu_rready;

  cva6_wrapper_verilog #(
    .AXI_ID_WIDTH(4),
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(64),
    .AXI_USER_WIDTH(1),
    .AXI_CUT_BYPASS(1)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .irqs_in(irqs_in),
    .ipi_in(ipi_in),
    .timer_irq_i(timer_irq_i),
    .debug_req_irq(debug_req_irq),
    .m_axi_cpu_awid(m_axi_cpu_awid),
    .m_axi_cpu_awaddr(m_axi_cpu_awaddr),
    .m_axi_cpu_awlen(m_axi_cpu_awlen),
    .m_axi_cpu_awsize(m_axi_cpu_awsize),
    .m_axi_cpu_awburst(m_axi_cpu_awburst),
    .m_axi_cpu_awlock(m_axi_cpu_awlock),
    .m_axi_cpu_awcache(m_axi_cpu_awcache),
    .m_axi_cpu_awprot(m_axi_cpu_awprot),
    .m_axi_cpu_awqos(m_axi_cpu_awqos),
    .m_axi_cpu_awatop(m_axi_cpu_awatop),
    .m_axi_cpu_awregion(m_axi_cpu_awregion),
    .m_axi_cpu_awuser(m_axi_cpu_awuser),
    .m_axi_cpu_awvalid(m_axi_cpu_awvalid),
    .m_axi_cpu_awready(m_axi_cpu_awready),
    .m_axi_cpu_wdata(m_axi_cpu_wdata),
    .m_axi_cpu_wstrb(m_axi_cpu_wstrb),
    .m_axi_cpu_wlast(m_axi_cpu_wlast),
    .m_axi_cpu_wuser(m_axi_cpu_wuser),
    .m_axi_cpu_wvalid(m_axi_cpu_wvalid),
    .m_axi_cpu_wready(m_axi_cpu_wready),
    .m_axi_cpu_bid(m_axi_cpu_bid),
    .m_axi_cpu_bresp(m_axi_cpu_bresp),
    .m_axi_cpu_buser(m_axi_cpu_buser),
    .m_axi_cpu_bvalid(m_axi_cpu_bvalid),
    .m_axi_cpu_bready(m_axi_cpu_bready),
    .m_axi_cpu_arid(m_axi_cpu_arid),
    .m_axi_cpu_araddr(m_axi_cpu_araddr),
    .m_axi_cpu_arlen(m_axi_cpu_arlen),
    .m_axi_cpu_arsize(m_axi_cpu_arsize),
    .m_axi_cpu_arburst(m_axi_cpu_arburst),
    .m_axi_cpu_arlock(m_axi_cpu_arlock),
    .m_axi_cpu_arcache(m_axi_cpu_arcache),
    .m_axi_cpu_arprot(m_axi_cpu_arprot),
    .m_axi_cpu_arqos(m_axi_cpu_arqos),
    .m_axi_cpu_arregion(m_axi_cpu_arregion),
    .m_axi_cpu_aruser(m_axi_cpu_aruser),
    .m_axi_cpu_arvalid(m_axi_cpu_arvalid),
    .m_axi_cpu_arready(m_axi_cpu_arready),
    .m_axi_cpu_rdata(m_axi_cpu_rdata),
    .m_axi_cpu_rresp(m_axi_cpu_rresp),
    .m_axi_cpu_rlast(m_axi_cpu_rlast),
    .m_axi_cpu_rid(m_axi_cpu_rid),
    .m_axi_cpu_ruser(m_axi_cpu_ruser),
    .m_axi_cpu_rvalid(m_axi_cpu_rvalid),
    .m_axi_cpu_rready(m_axi_cpu_rready)
  );
endmodule

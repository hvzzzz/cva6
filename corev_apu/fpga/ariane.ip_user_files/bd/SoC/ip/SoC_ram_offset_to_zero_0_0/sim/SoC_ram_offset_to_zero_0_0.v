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


// IP VLNV: xilinx.com:module_ref:ram_offset_to_zero:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SoC_ram_offset_to_zero_0_0 (
  s_axi_ram_awid,
  s_axi_ram_awaddr,
  s_axi_ram_awlen,
  s_axi_ram_awsize,
  s_axi_ram_awburst,
  s_axi_ram_awlock,
  s_axi_ram_awcache,
  s_axi_ram_awprot,
  s_axi_ram_awqos,
  s_axi_ram_awatop,
  s_axi_ram_awregion,
  s_axi_ram_awuser,
  s_axi_ram_awvalid,
  s_axi_ram_awready,
  s_axi_ram_wdata,
  s_axi_ram_wstrb,
  s_axi_ram_wlast,
  s_axi_ram_wuser,
  s_axi_ram_wvalid,
  s_axi_ram_wready,
  s_axi_ram_bid,
  s_axi_ram_bresp,
  s_axi_ram_buser,
  s_axi_ram_bvalid,
  s_axi_ram_bready,
  s_axi_ram_arid,
  s_axi_ram_araddr,
  s_axi_ram_arlen,
  s_axi_ram_arsize,
  s_axi_ram_arburst,
  s_axi_ram_arlock,
  s_axi_ram_arcache,
  s_axi_ram_arprot,
  s_axi_ram_arqos,
  s_axi_ram_arregion,
  s_axi_ram_aruser,
  s_axi_ram_arvalid,
  s_axi_ram_arready,
  s_axi_ram_rdata,
  s_axi_ram_rresp,
  s_axi_ram_rlast,
  s_axi_ram_rid,
  s_axi_ram_ruser,
  s_axi_ram_rvalid,
  s_axi_ram_rready,
  m_axi_ram_awid,
  m_axi_ram_awaddr,
  m_axi_ram_awlen,
  m_axi_ram_awsize,
  m_axi_ram_awburst,
  m_axi_ram_awlock,
  m_axi_ram_awcache,
  m_axi_ram_awprot,
  m_axi_ram_awqos,
  m_axi_ram_awatop,
  m_axi_ram_awregion,
  m_axi_ram_awuser,
  m_axi_ram_awvalid,
  m_axi_ram_awready,
  m_axi_ram_wdata,
  m_axi_ram_wstrb,
  m_axi_ram_wlast,
  m_axi_ram_wuser,
  m_axi_ram_wvalid,
  m_axi_ram_wready,
  m_axi_ram_bid,
  m_axi_ram_bresp,
  m_axi_ram_buser,
  m_axi_ram_bvalid,
  m_axi_ram_bready,
  m_axi_ram_arid,
  m_axi_ram_araddr,
  m_axi_ram_arlen,
  m_axi_ram_arsize,
  m_axi_ram_arburst,
  m_axi_ram_arlock,
  m_axi_ram_arcache,
  m_axi_ram_arprot,
  m_axi_ram_arqos,
  m_axi_ram_arregion,
  m_axi_ram_aruser,
  m_axi_ram_arvalid,
  m_axi_ram_arready,
  m_axi_ram_rdata,
  m_axi_ram_rresp,
  m_axi_ram_rlast,
  m_axi_ram_rid,
  m_axi_ram_ruser,
  m_axi_ram_rvalid,
  m_axi_ram_rready,
  aclk
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWID" *)
input wire [5 : 0] s_axi_ram_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWADDR" *)
input wire [63 : 0] s_axi_ram_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWLEN" *)
input wire [7 : 0] s_axi_ram_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWSIZE" *)
input wire [2 : 0] s_axi_ram_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWBURST" *)
input wire [1 : 0] s_axi_ram_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWLOCK" *)
input wire s_axi_ram_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWCACHE" *)
input wire [3 : 0] s_axi_ram_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWPROT" *)
input wire [2 : 0] s_axi_ram_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWQOS" *)
input wire [3 : 0] s_axi_ram_awqos;
input wire [5 : 0] s_axi_ram_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWREGION" *)
input wire [3 : 0] s_axi_ram_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWUSER" *)
input wire [0 : 0] s_axi_ram_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWVALID" *)
input wire s_axi_ram_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram AWREADY" *)
output wire s_axi_ram_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WDATA" *)
input wire [63 : 0] s_axi_ram_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WSTRB" *)
input wire [7 : 0] s_axi_ram_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WLAST" *)
input wire s_axi_ram_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WUSER" *)
input wire [0 : 0] s_axi_ram_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WVALID" *)
input wire s_axi_ram_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram WREADY" *)
output wire s_axi_ram_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram BID" *)
output wire [5 : 0] s_axi_ram_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram BRESP" *)
output wire [1 : 0] s_axi_ram_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram BUSER" *)
output wire [0 : 0] s_axi_ram_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram BVALID" *)
output wire s_axi_ram_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram BREADY" *)
input wire s_axi_ram_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARID" *)
input wire [5 : 0] s_axi_ram_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARADDR" *)
input wire [63 : 0] s_axi_ram_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARLEN" *)
input wire [7 : 0] s_axi_ram_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARSIZE" *)
input wire [2 : 0] s_axi_ram_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARBURST" *)
input wire [1 : 0] s_axi_ram_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARLOCK" *)
input wire s_axi_ram_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARCACHE" *)
input wire [3 : 0] s_axi_ram_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARPROT" *)
input wire [2 : 0] s_axi_ram_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARQOS" *)
input wire [3 : 0] s_axi_ram_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARREGION" *)
input wire [3 : 0] s_axi_ram_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARUSER" *)
input wire [0 : 0] s_axi_ram_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARVALID" *)
input wire s_axi_ram_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram ARREADY" *)
output wire s_axi_ram_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RDATA" *)
output wire [63 : 0] s_axi_ram_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RRESP" *)
output wire [1 : 0] s_axi_ram_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RLAST" *)
output wire s_axi_ram_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RID" *)
output wire [5 : 0] s_axi_ram_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RUSER" *)
output wire [0 : 0] s_axi_ram_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RVALID" *)
output wire s_axi_ram_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ram, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ram RREADY" *)
input wire s_axi_ram_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWID" *)
output wire [5 : 0] m_axi_ram_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWADDR" *)
output wire [63 : 0] m_axi_ram_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWLEN" *)
output wire [7 : 0] m_axi_ram_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWSIZE" *)
output wire [2 : 0] m_axi_ram_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWBURST" *)
output wire [1 : 0] m_axi_ram_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWLOCK" *)
output wire m_axi_ram_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWCACHE" *)
output wire [3 : 0] m_axi_ram_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWPROT" *)
output wire [2 : 0] m_axi_ram_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWQOS" *)
output wire [3 : 0] m_axi_ram_awqos;
output wire [5 : 0] m_axi_ram_awatop;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWREGION" *)
output wire [3 : 0] m_axi_ram_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWUSER" *)
output wire [0 : 0] m_axi_ram_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWVALID" *)
output wire m_axi_ram_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram AWREADY" *)
input wire m_axi_ram_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WDATA" *)
output wire [63 : 0] m_axi_ram_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WSTRB" *)
output wire [7 : 0] m_axi_ram_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WLAST" *)
output wire m_axi_ram_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WUSER" *)
output wire [0 : 0] m_axi_ram_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WVALID" *)
output wire m_axi_ram_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram WREADY" *)
input wire m_axi_ram_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram BID" *)
input wire [5 : 0] m_axi_ram_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram BRESP" *)
input wire [1 : 0] m_axi_ram_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram BUSER" *)
input wire [0 : 0] m_axi_ram_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram BVALID" *)
input wire m_axi_ram_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram BREADY" *)
output wire m_axi_ram_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARID" *)
output wire [5 : 0] m_axi_ram_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARADDR" *)
output wire [63 : 0] m_axi_ram_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARLEN" *)
output wire [7 : 0] m_axi_ram_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARSIZE" *)
output wire [2 : 0] m_axi_ram_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARBURST" *)
output wire [1 : 0] m_axi_ram_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARLOCK" *)
output wire m_axi_ram_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARCACHE" *)
output wire [3 : 0] m_axi_ram_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARPROT" *)
output wire [2 : 0] m_axi_ram_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARQOS" *)
output wire [3 : 0] m_axi_ram_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARREGION" *)
output wire [3 : 0] m_axi_ram_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARUSER" *)
output wire [0 : 0] m_axi_ram_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARVALID" *)
output wire m_axi_ram_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram ARREADY" *)
input wire [0 : 0] m_axi_ram_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RDATA" *)
input wire [63 : 0] m_axi_ram_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RRESP" *)
input wire [1 : 0] m_axi_ram_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RLAST" *)
input wire m_axi_ram_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RID" *)
input wire [5 : 0] m_axi_ram_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RUSER" *)
input wire [0 : 0] m_axi_ram_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RVALID" *)
input wire m_axi_ram_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ram, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ram RREADY" *)
output wire m_axi_ram_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi_ram:s_axi_ram, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;

  ram_offset_to_zero #(
    .AXI_ADDR_WIDTH(64),
    .AXI_DATA_WIDTH(64),
    .AXI_ID_WIDTH(6),
    .AXI_USER_WIDTH(0),
    .OFFSET(32'H70000000)
  ) inst (
    .s_axi_ram_awid(s_axi_ram_awid),
    .s_axi_ram_awaddr(s_axi_ram_awaddr),
    .s_axi_ram_awlen(s_axi_ram_awlen),
    .s_axi_ram_awsize(s_axi_ram_awsize),
    .s_axi_ram_awburst(s_axi_ram_awburst),
    .s_axi_ram_awlock(s_axi_ram_awlock),
    .s_axi_ram_awcache(s_axi_ram_awcache),
    .s_axi_ram_awprot(s_axi_ram_awprot),
    .s_axi_ram_awqos(s_axi_ram_awqos),
    .s_axi_ram_awatop(s_axi_ram_awatop),
    .s_axi_ram_awregion(s_axi_ram_awregion),
    .s_axi_ram_awuser(s_axi_ram_awuser),
    .s_axi_ram_awvalid(s_axi_ram_awvalid),
    .s_axi_ram_awready(s_axi_ram_awready),
    .s_axi_ram_wdata(s_axi_ram_wdata),
    .s_axi_ram_wstrb(s_axi_ram_wstrb),
    .s_axi_ram_wlast(s_axi_ram_wlast),
    .s_axi_ram_wuser(s_axi_ram_wuser),
    .s_axi_ram_wvalid(s_axi_ram_wvalid),
    .s_axi_ram_wready(s_axi_ram_wready),
    .s_axi_ram_bid(s_axi_ram_bid),
    .s_axi_ram_bresp(s_axi_ram_bresp),
    .s_axi_ram_buser(s_axi_ram_buser),
    .s_axi_ram_bvalid(s_axi_ram_bvalid),
    .s_axi_ram_bready(s_axi_ram_bready),
    .s_axi_ram_arid(s_axi_ram_arid),
    .s_axi_ram_araddr(s_axi_ram_araddr),
    .s_axi_ram_arlen(s_axi_ram_arlen),
    .s_axi_ram_arsize(s_axi_ram_arsize),
    .s_axi_ram_arburst(s_axi_ram_arburst),
    .s_axi_ram_arlock(s_axi_ram_arlock),
    .s_axi_ram_arcache(s_axi_ram_arcache),
    .s_axi_ram_arprot(s_axi_ram_arprot),
    .s_axi_ram_arqos(s_axi_ram_arqos),
    .s_axi_ram_arregion(s_axi_ram_arregion),
    .s_axi_ram_aruser(s_axi_ram_aruser),
    .s_axi_ram_arvalid(s_axi_ram_arvalid),
    .s_axi_ram_arready(s_axi_ram_arready),
    .s_axi_ram_rdata(s_axi_ram_rdata),
    .s_axi_ram_rresp(s_axi_ram_rresp),
    .s_axi_ram_rlast(s_axi_ram_rlast),
    .s_axi_ram_rid(s_axi_ram_rid),
    .s_axi_ram_ruser(s_axi_ram_ruser),
    .s_axi_ram_rvalid(s_axi_ram_rvalid),
    .s_axi_ram_rready(s_axi_ram_rready),
    .m_axi_ram_awid(m_axi_ram_awid),
    .m_axi_ram_awaddr(m_axi_ram_awaddr),
    .m_axi_ram_awlen(m_axi_ram_awlen),
    .m_axi_ram_awsize(m_axi_ram_awsize),
    .m_axi_ram_awburst(m_axi_ram_awburst),
    .m_axi_ram_awlock(m_axi_ram_awlock),
    .m_axi_ram_awcache(m_axi_ram_awcache),
    .m_axi_ram_awprot(m_axi_ram_awprot),
    .m_axi_ram_awqos(m_axi_ram_awqos),
    .m_axi_ram_awatop(m_axi_ram_awatop),
    .m_axi_ram_awregion(m_axi_ram_awregion),
    .m_axi_ram_awuser(m_axi_ram_awuser),
    .m_axi_ram_awvalid(m_axi_ram_awvalid),
    .m_axi_ram_awready(m_axi_ram_awready),
    .m_axi_ram_wdata(m_axi_ram_wdata),
    .m_axi_ram_wstrb(m_axi_ram_wstrb),
    .m_axi_ram_wlast(m_axi_ram_wlast),
    .m_axi_ram_wuser(m_axi_ram_wuser),
    .m_axi_ram_wvalid(m_axi_ram_wvalid),
    .m_axi_ram_wready(m_axi_ram_wready),
    .m_axi_ram_bid(m_axi_ram_bid),
    .m_axi_ram_bresp(m_axi_ram_bresp),
    .m_axi_ram_buser(m_axi_ram_buser),
    .m_axi_ram_bvalid(m_axi_ram_bvalid),
    .m_axi_ram_bready(m_axi_ram_bready),
    .m_axi_ram_arid(m_axi_ram_arid),
    .m_axi_ram_araddr(m_axi_ram_araddr),
    .m_axi_ram_arlen(m_axi_ram_arlen),
    .m_axi_ram_arsize(m_axi_ram_arsize),
    .m_axi_ram_arburst(m_axi_ram_arburst),
    .m_axi_ram_arlock(m_axi_ram_arlock),
    .m_axi_ram_arcache(m_axi_ram_arcache),
    .m_axi_ram_arprot(m_axi_ram_arprot),
    .m_axi_ram_arqos(m_axi_ram_arqos),
    .m_axi_ram_arregion(m_axi_ram_arregion),
    .m_axi_ram_aruser(m_axi_ram_aruser),
    .m_axi_ram_arvalid(m_axi_ram_arvalid),
    .m_axi_ram_arready(m_axi_ram_arready),
    .m_axi_ram_rdata(m_axi_ram_rdata),
    .m_axi_ram_rresp(m_axi_ram_rresp),
    .m_axi_ram_rlast(m_axi_ram_rlast),
    .m_axi_ram_rid(m_axi_ram_rid),
    .m_axi_ram_ruser(m_axi_ram_ruser),
    .m_axi_ram_rvalid(m_axi_ram_rvalid),
    .m_axi_ram_rready(m_axi_ram_rready),
    .aclk(aclk)
  );
endmodule

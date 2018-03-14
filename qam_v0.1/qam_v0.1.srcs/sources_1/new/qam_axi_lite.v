`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2018 10:23:13
// Design Name: 
// Module Name: qam_axi_lite
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module qam_axi_lite(
    input S_AXI_ACLK,
    input S_AXI_ARESETN,
    input [31:0] S_AXI_AWADDR,
    input S_AXI_AWVALID,
    output S_AXI_AWREADY,
    input [31:0] S_AXI_WDATA,
    input [31:0] S_AXI_WSTRB,
    input S_AXI_WVALID,
    output S_AXI_WREADY,
    output S_AXI_BRESP,
    output S_AXI_BVALID,
    input S_AXI_BREADY,
    input [31:0] S_AXI_ARADDR,
    input S_AXI_ARVALID,
    output S_AXI_ARREADY,
    output [31:0] S_AXI_RDATA,
    output [1:0] S_AXI_RRESP,
    output S_AXI_RVALID,
    input S_AXI_RREADY
    );
    
    
    
endmodule

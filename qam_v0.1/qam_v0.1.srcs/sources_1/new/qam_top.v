`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2018 09:21:58
// Design Name: 
// Module Name: qam_top
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


module qam_top(
    input clk,
    input rst,
    input [31:0] signal_in,
    output [31:0] signal_out,
    input [2:0] qam
);
    
    
qam_2 qam2 (
    
);
    
qam_4 qam4 (
    
);

 
qam_8 qam8 (
    
);   
    
    
    
endmodule

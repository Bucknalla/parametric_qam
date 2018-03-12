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
    input rst, // Active High
    input [31:0] signal_in,    
    input [2:0] qam,
    output [31:0] signal_out,
    output reg error
);
    
reg ready = 1'b0;
reg signal_in_mod;
reg ready_qam_2, ready_qam_4, ready_qam_8 = 1'b0;

always @ (posedge clk) begin
    if (!rst) begin
        ready <= 1'b0;
        {ready_qam_2,ready_qam_4,ready_qam_8} <= 3'b000; 
    end
    else begin
        ready <= 1'b1;
        case (qam)
            0 : {ready_qam_2,ready_qam_4,ready_qam_8} <= 3'b100; 
            1 : {ready_qam_2,ready_qam_4,ready_qam_8} <= 3'b010; 
            2 : {ready_qam_2,ready_qam_4,ready_qam_8} <= 3'b001; 
            default : error <= 1'b1;
        endcase
    end
end
    
qam_2 qam2 (
    .clk (clk),
    .rst (rst),
    .ready (ready_qam_2),
    .signal_in (signal_in_mod),
    .signal_out (signal_out)
);
    
// qam_4 qam4 (
//     .clk (clk),
//     .rst (rst),
//     .ready (ready_qam_4),
//     .signal_in (signal_in_mod),
//     .signal_out (signal_out)
// );

 
// qam_8 qam8 (
//     .clk (clk),
//     .rst (rst),
//     .ready (ready_qam_8),
//     .signal_in (signal_in_mod),
//     .signal_out (signal_out)
// );   
    
endmodule

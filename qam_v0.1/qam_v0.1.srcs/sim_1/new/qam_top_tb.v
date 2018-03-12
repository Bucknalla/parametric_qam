`timescale 1ns / 1ps
`default_nettype wire
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2018 12:07:00
// Design Name: 
// Module Name: qam_top_tb
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

module qam_top_tb();
reg clk;
reg rst;
reg qam;

qam_top qam_tb (
  .rst (rst),
  .clk (clk),
  .qam (qam)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk = ~clk;

initial begin
    #1 rst <= 1'bx; clk <= 1'bx;
    #(CLK_PERIOD*3) rst <= 1;
    #(CLK_PERIOD*3) rst <= 0;
    clk <= 0;
    repeat(5) @(posedge clk);
    rst <= 1;
    @(posedge clk);
    repeat(2) @(posedge clk);
    $finish(200);
end

endmodule

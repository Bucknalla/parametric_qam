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
reg [2:0] qam;
reg [31:0] signal_in;
wire [31:0] signal_out;

qam_top qam_tb (
  .rst (rst),
  .clk (clk),
  .qam (qam),
  .signal_in (signal_in),
  .signal_out (signal_out)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk = ~clk;

initial begin
    clk <= 0;
    rst <= 1;
    signal_in <= 32'b00000000000000000000111111111111;
    qam <= 3'b100;
    #(CLK_PERIOD*3) rst <= 0;
    #10 $finish(1);
end

endmodule

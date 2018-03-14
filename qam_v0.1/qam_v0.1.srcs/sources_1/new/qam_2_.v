`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2018 09:28:50
// Design Name: 
// Module Name: qam_2
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


module qam_2_(
    input clk,
    input rst, // Active High
    input ready,
    input signal_in,
    output reg [31:0] signal_out,
    output reg valid
    );

always @ (posedge clk) begin
    if (!rst) begin
        signal_out <= 1'b0;
        valid <= 1'b0;
    end
    else if (ready == 1'b1) begin
        case (signal_in) 
            0 : signal_out <= 32'b00000000000000000000000000000001; // 1 + 0j
            1 : signal_out <= 32'b00000000000000000000111111111111; // -1 + 0j
        endcase 
        valid <= 1'b1;
    end
end
    
endmodule

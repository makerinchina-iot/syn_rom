`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 18:07:58
// Design Name: 
// Module Name: top
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


module top(
    q,
    a
    );

parameter WIDTH = 8;
parameter DEPTH = 4;

output  [WIDTH-1 : 0] q;
input   [DEPTH-1 : 0] a;

mux16 #(WIDTH) rom(
    .q(q),
    .d0(8'h01),
    .d1(8'h02),
    .d2(8'h03),
    .d3(8'h04),
    .d4(8'h05),
    .d5(8'h06),
    .d6(8'h07),
    .d7(8'h08),
    .d8(8'h09),
    .d9(8'h0a),
    .d10(8'h0b),
    .d11(8'h0c),
    .d12(8'h0d),
    .d13(8'h0e),
    .d14(8'h0f),
    .d15(8'h10),
    .a(a)
);

endmodule

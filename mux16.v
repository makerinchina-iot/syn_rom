`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 17:55:46
// Design Name: 
// Module Name: mux16
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


module mux16(
    q,
    d0,
    d1,
    d2,
    d3,
    d4,
    d5,
    d6,
    d7,
    d8,
    d9,
    d10,
    d11,
    d12,
    d13,
    d14,
    d15,
    a
);

parameter WIDTH = 8;

output  [WIDTH-1 : 0]   q;
input   [WIDTH-1 : 0]   d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
input   [3:0]           a;

wire [WIDTH-1 : 0]      q0,q1;

mux8 #(WIDTH) mux8_0(
    .q(q0),
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .d4(d4),
    .d5(d5),
    .d6(d6),
    .d7(d7),
    .a(a[2:0])
);

mux8 #(WIDTH) mux8_1(
    .q(q1),
    .d0(d8),
    .d1(d9),
    .d2(d10),
    .d3(d11),
    .d4(d12),
    .d5(d13),
    .d6(d14),
    .d7(d15),
    .a(a[2:0])
);

mux2 #(WIDTH) mux2_0(
    .q(q),
    .d0(q0),
    .d1(q1),
    .a(a[3])
);

endmodule

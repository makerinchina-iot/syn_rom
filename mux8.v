`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 17:40:42
// Design Name: 
// Module Name: mux8
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


module mux8(
    q,
    d0,
    d1,
    d2,
    d3,
    d4,
    d5,
    d6,
    d7,
    a
    );

parameter WIDTH = 8;

output  [WIDTH-1 : 0]   q;
input   [WIDTH-1 : 0]   d0,d1,d2,d3,d4,d5,d6,d7;
input   [2:0]           a;

wire    [WIDTH-1 : 0]   r0,r1,r2,r3,r4,r5,r6,r7;  

eand #(WIDTH) and0(
    .q(r0),
    .s(~a[2]&~a[1]&~a[0]),
    .d(d0)
);

eand #(WIDTH) and1(
    .q(r1),
    .s(~a[2]&~a[1]&a[0]),
    .d(d1)
);

eand #(WIDTH) and2(
    .q(r2),
    .s(~a[2]&a[1]&~a[0]),
    .d(d2)
);

eand #(WIDTH) and3(
    .q(r3),
    .s(~a[2]&a[1]&a[0]),
    .d(d3)
);

eand #(WIDTH) and4(
    .q(r4),
    .s(a[2]&~a[1]&~a[0]),
    .d(d4)
);

eand #(WIDTH) and5(
    .q(r5),
    .s(a[2]&~a[1]&a[0]),
    .d(d5)
);

eand #(WIDTH) and6(
    .q(r6),
    .s(a[2]&a[1]&~a[0]),
    .d(d6)
);

eand #(WIDTH) and7(
    .q(r7),
    .s(a[2]&a[1]&a[0]),
    .d(d7)
);

assign q = r0|r1|r2|r3|r4|r5|r6|r7;

endmodule

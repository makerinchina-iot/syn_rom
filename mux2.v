`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 17:27:45
// Design Name: 
// Module Name: mux2
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


module mux2(
    q,
    d0,
    d1,
    a
    );

parameter WIDTH = 8;

output  [WIDTH-1 : 0]   q;
input   [WIDTH-1 : 0]   d0;
input   [WIDTH-1 : 0]   d1;

input                   a;

wire [WIDTH-1 : 0]  r0;
wire [WIDTH-1 : 0]  r1;

eand #(WIDTH) and0(
    .q(r0),
    .s(~a),
    .d(d0)
);

eand #(WIDTH) and1(
    .q(r1),
    .s(a),
    .d(d1)
);

assign q = r0 | r1;

endmodule

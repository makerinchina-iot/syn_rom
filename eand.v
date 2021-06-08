`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 17:27:45
// Design Name: 
// Module Name: eand
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

module eand (
    q,
    s,
    d
);

parameter WIDTH = 8;

output  [WIDTH-1 : 0]   q;
input                   s;
input   [WIDTH-1 : 0]   d;

assign q = {WIDTH{s}} & d;
    
endmodule
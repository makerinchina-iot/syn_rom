`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 17:28:22
// Design Name: 
// Module Name: tb
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


module tb();

wire [7:0] q;
reg  [3:0] a;

top top_inst(
    .q(q),
    .a(a)
);

integer cnt = 0;

initial begin
    a = 0;
    for (cnt = 0; cnt < 16; cnt = cnt + 1) begin
        a = cnt;
        #100;
    end

    $finish();
end

endmodule

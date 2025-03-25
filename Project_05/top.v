`include "mux-2to1-64bit.v"
`include "decoder.v"

`include "adder.v"
`include "adder-8bit.v"
`include "adder-64bit.v"

`include "sub-64bit.v"



module adder_subtractor_64bit(A, B, S, Out);

input [63:0] A, B; // inputs, A and B
input S; // selection bit, 0 = Addition, 1 = subtraction
output [63:0] Out;

wire [63:0] Sum, Diff;


adder_64bit adder_64bit0(.A(A), .B(B), .Cin(1'b0), .Sum(Sum), .Cout());
sub_64bit sub_64bit0(.A(A), .B(B), .Diff(Diff));
mux_2to1_64bit mux_2to1_64bit0(.Add(Sum), .Sub(Diff), .Sel(S), .Out(Out));



endmodule
`include "adder-8bit.v"


module adder_64bit(A, B, Cin, Sum, Cout);

input [63:0] A, B;
input Cin;

output [63:0] Sum;
output Cout;
wire [7:0] Carry;

//adder_8bit adder0(.A(A[0:7]),   .B(B[0:7]),   .Cin(Cin),      .Sum(Sum[0:7]),   .Cout(Carry[0]));
//adder_8bit adder1(.A(A[8:15]),  .B(B[8:15]),  .Cin(Carry[0]), .Sum(Sum[8:15]),  .Cout(Carry[1]));
//adder_8bit adder2(.A(A[16:23]), .B(B[16:23]), .Cin(Carry[1]), .Sum(Sum[16:23]), .Cout(Carry[2]));
//adder_8bit adder3(.A(A[24:31]), .B(B[24:31]), .Cin(Carry[2]), .Sum(Sum[24:31]), .Cout(Carry[3]));
//adder_8bit adder4(.A(A[32:39]), .B(B[32:39]), .Cin(Carry[3]), .Sum(Sum[32:39]), .Cout(Carry[4]));
//adder_8bit adder5(.A(A[40:47]), .B(B[40:47]), .Cin(Carry[4]), .Sum(Sum[40:47]), .Cout(Carry[5]));
//adder_8bit adder6(.A(A[48:55]), .B(B[48:55]), .Cin(Carry[5]), .Sum(Sum[48:55]), .Cout(Carry[6]));
//adder_8bit adder7(.A(A[56:63]), .B(B[56:63]), .Cin(Carry[6]), .Sum(Sum[56:63]), .Cout(Carry[7])); 

adder_8bit adder0(.A(A[7:0]),   .B(B[7:0]),   .Cin(Cin),      .Sum(Sum[7:0]),   .Cout(Carry[0]));
adder_8bit adder1(.A(A[15:8]),  .B(B[15:8]),  .Cin(Carry[0]), .Sum(Sum[15:8]),  .Cout(Carry[1]));
adder_8bit adder2(.A(A[23:16]), .B(B[23:16]), .Cin(Carry[1]), .Sum(Sum[23:16]), .Cout(Carry[2]));
adder_8bit adder3(.A(A[31:24]), .B(B[31:24]), .Cin(Carry[2]), .Sum(Sum[31:24]), .Cout(Carry[3]));
adder_8bit adder4(.A(A[39:32]), .B(B[39:32]), .Cin(Carry[3]), .Sum(Sum[39:32]), .Cout(Carry[4]));
adder_8bit adder5(.A(A[47:40]), .B(B[47:40]), .Cin(Carry[4]), .Sum(Sum[47:40]), .Cout(Carry[5]));
adder_8bit adder6(.A(A[55:48]), .B(B[55:48]), .Cin(Carry[5]), .Sum(Sum[55:48]), .Cout(Carry[6]));
adder_8bit adder7(.A(A[63:56]), .B(B[63:56]), .Cin(Carry[6]), .Sum(Sum[63:56]), .Cout(Carry[7])); 

assign Cout = Carry[7];

endmodule
`include "adder.v"


//module adder_8bit(A[7:0], B[7:0], Cin, Sum[7:0], Cout);
module adder_8bit(A, B, Cin, Sum, Cout);

input [7:0] A, B;
input Cin;

output [7:0] Sum;
output Cout;
//wire carry0, carry1, carry3, carry3, carry4, carry5, carry6;
wire [7:0] Carry;

adder adder0(.A(A[0]), .B(B[0]), .Cin(Cin),     .Sum(Sum[0]), .Cout(Carry[0]));
adder adder1(.A(A[1]), .B(B[1]), .Cin(Carry[0]), .Sum(Sum[1]), .Cout(Carry[1]));
adder adder2(.A(A[2]), .B(B[2]), .Cin(Carry[1]), .Sum(Sum[2]), .Cout(Carry[2]));
adder adder3(.A(A[3]), .B(B[3]), .Cin(Carry[2]), .Sum(Sum[3]), .Cout(Carry[3]));
adder adder4(.A(A[4]), .B(B[4]), .Cin(Carry[3]), .Sum(Sum[4]), .Cout(Carry[4]));
adder adder5(.A(A[5]), .B(B[5]), .Cin(Carry[4]), .Sum(Sum[5]), .Cout(Carry[5]));
adder adder6(.A(A[6]), .B(B[6]), .Cin(Carry[5]), .Sum(Sum[6]), .Cout(Carry[6]));
adder adder7(.A(A[7]), .B(B[7]), .Cin(Carry[6]), .Sum(Sum[7]), .Cout(Carry[7]));

assign Cout = Carry[7];

endmodule
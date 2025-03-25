

module sub_64bit (A, B, Diff);

input [63:0] A, B;

output [63:0] Diff;





adder_64bit sub0(.A(A), .B(~B), .Cin(1'b1), .Sum(Diff), .Cout());


endmodule
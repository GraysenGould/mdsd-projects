`timescale 1ns / 1ns 
`include "adder-64bit.v"

module adder_64bit_tb;

reg [63:0]  A, B;
reg Cin;
wire [63:0] Sum;
wire Cout;

adder_64bit adder_64bit0(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
    $dumpfile("adder-64bit-tb.vcd");
    $dumpvars(0, adder_64bit_tb);

    A = 64'd123;
    B = 64'd123;
    Cin = 1'b0;
    
    #20;

    $display("%d, %b",Sum, Cout);

end

endmodule
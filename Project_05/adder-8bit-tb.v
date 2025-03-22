`timescale 1ns / 1ns 
`include "adder-8bit.v"

module adder_8bit_tb;

reg [7:0]  A, B;
reg Cin;
wire [7:0] Sum;
wire Cout;

integer i = 0;

adder_8bit adder_8bit0(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
    $dumpfile("adder-8bit-tb.vcd");
    $dumpvars(0, adder_8bit_tb);

    A = 8'b11111111;
    B = 8'b11111112;
    Cin = 1'b0;
    
    #20;

    $display("%d, %b",Sum, Cout);

end

endmodule
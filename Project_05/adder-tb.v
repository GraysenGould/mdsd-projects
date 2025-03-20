`timescale 1ns / 1ns 
`include "adder.v"

module adder_tb;

reg A, B, Cin;
wire Sum, Cout;

adder adder0(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
    $dumpfile("adder-tb.vcd");
    $dumpvars(0, adder_tb);

    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;
    #20;

    A = 1'b1;
    B = 1'b0;
    Cin = 1'b0;
    #20;

    A = 1'b1;
    B = 1'b1;
    Cin = 1'b0;
    #20;

    $display("Test is done");
end

endmodule
`timescale 1ns / 1ns 
`include "adder.v"

module adder_tb;

reg A, B, Cin;
wire Sum, Cout;

integer i = 0;

adder adder0(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
    $dumpfile("adder-tb.vcd");
    $dumpvars(0, adder_tb);

    $display("A | B | Cin | Sum | Cout");
    $display("------------------------");
    for (i = 0; i < 8; i = i +1) begin 
        {A, B, Cin} = i; #20;
        $display("%b | %b | %b   | %b   | %b   ", A, B, Cin, Sum, Cout);
    end 

    $display("Test is done");
end

endmodule
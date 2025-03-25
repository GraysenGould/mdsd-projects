`timescale 1ns/1ns
`include "top.v"


module top_tb;

reg [63:0] A, B;
reg S;
wire [63:0] Out;

adder_subtractor_64bit adder_subtractor_64bit0(.A(A), .B(B), .S(S), .Out(Out));

initial begin
    $dumpfile("top-tb.vcd");
    $dumpvars(0, top_tb);


    A = 64'd100;
    B = 64'd100;
    S = 1'b0;
    #20;
    $display("%d + %d = %d", A, B, Out);

    A = 64'hFFFFFFFFFFFFFFFF; // -1 in two's compiliment
    B = 64'd1;
    S = 1'b0;
    #20;
    $display("%d + %d = %d", A, B, Out);

    A = 64'd1024;
    B = 64'd512;
    S = 1'b1;
    #20;
    $display("%d - %d = %d", A, B, Out);

    A = 64'd0;
    B = 64'd0;
    S = 1'b1;
    #20;
    $display("%d - %d = %d", A, B, Out);
end

endmodule
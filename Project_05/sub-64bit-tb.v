`timescale 1ns / 1ns 
`include "sub-64bit.v"

module sub_64bit_tb;

reg [63:0]  A, B;
wire [63:0] Diff;

sub_64bit sub_64bit0(.A(A), .B(B), .Diff(Diff));

initial begin
    $dumpfile("sub-64bit-tb.vcd");
    $dumpvars(0, sub_64bit_tb);

    A = 64'd100;
    B = 64'd50;
    
    #20;

    $display("%d", Diff);

end

endmodule
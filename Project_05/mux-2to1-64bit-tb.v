`timescale 1ns / 1ns 
`include "mux-2to1-64bit.v"

module mux_2to1_64bit_tb;

reg [63:0]  Add, Sub;
reg Sel;
wire [63:0] Out;

mux_2to1_64bit mux0(.Add(Add), .Sub(Sub), .Sel(Sel), .Out(Out));

initial begin
    $dumpfile("mux_2to1_64bit_tb.vvp");
    $dumpvars(0, mux_2to1_64bit_tb);

    Add = 64'd100;
    Sub = 64'd50;
    Sel = 1'b0; 
    #20;

    $display("%d", Out);

end

endmodule
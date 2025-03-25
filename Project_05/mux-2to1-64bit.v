

module mux_2to1_64bit(Add, Sub, Sel, Out);

input [63:0] Add, Sub;
input Sel; //selection bit
output [63:0] Out ;

wire D0, D1;

decoder1to2 decoder0(.S(Sel), .D0(D0), .D1(D1));

genvar i;


generate
    for (i = 0; i < 64; i = i + 1) begin
        assign Out[i] = ( Add[i] & D0) | (Sub[i] & D1); //generating body of multiplexor
    end   
endgenerate


endmodule
module decoder1to2(S, D0, D1);

input S;
output D0, D1;

assign D0 = ~S;
assign D1 = S;

endmodule
//2:1 multiplexer

module multiplexer(a, b, s, result);


input [3:0] a, b;
input s;

output [3:0] result;
//s=1, select a;
//s=2 select b;
assign result=(s)?a:b;

endmodule
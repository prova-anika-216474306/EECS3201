//This file has 2 different modules for getting the HEX1 outputs
//FOR GETTING 1 for add only

module adddecoder(op, cout, e, f, g);


input op, cout;

output e, f, g;

//op=0, cout=1 done using POS
//these are equations for LED 1 and LED 2
assign e = ~cout+op;
assign f = ~cout+op;
assign g =1'b1;


endmodule



//FOR GETTING NEGATIVE

module minusdecoder(op, cout, e, f, g);

input op, cout;
output e, f, g;

assign e =1'b1;
assign f =1'b1;
assign g = cout + ~op;

endmodule

 

//RIPPLE CARRY SUBTRACTOR

module rcsubtractor(a0, a1, s, final, cout, sign1, sign2, sign3);
input [3:0] a0, a1 ;// Two 4-bit inputs
 
input s;
output [3:0] final;
output cout, sign1, sign2, sign3;
 //assign s = 1'b1;
 
wire w1, w2, w3;
wire a10, a11, a12, a13;
wire [3:0] result;
wire [3:0] resultf;



//wire r1, r2, r3, r4;
 
 xor(a10, a1[0], s);
 xor(a11, a1[1], s);
 xor(a12, a1[2], s);
 xor(a13, a1[3], s);
   
 
 fulladder adder1(a0[0], a10, s, result[0], w1);
 fulladder adder2(a0[1], a11, w1, result[1], w2);
 fulladder adder3(a0[2], a12, w2, result[2], w3);
 fulladder adder4(a0[3], a13, w3, result[3], cout);
 
wire overflow;
wire cout;

 //if 1 then there is an overflow
xor(overflow, s, cout);
 
 
wire resultf0, resultf1, resultf2, resultf3;

//if there is an overflow, every bit gets inverted
//to remove 2's complement, we invert all bits and add 1


xor(resultf0,result[0], overflow) ;
xor(resultf1,result[1], overflow) ;
xor(resultf2,result[2], overflow) ;
xor(resultf3,result[3], overflow) ;




wire wi1, wi2, wi3;
wire co;

//adding 1
fulladder ad1(resultf0, overflow, 1'b0, final[0], wi1);
fulladder ad2(resultf1, 1'b0, wi1, final[1], wi2);
fulladder ad3(resultf2, 1'b0, wi2, final[2], wi3);
fulladder ad4(resultf3, 1'b0, wi3, final[3], co);
 
minusdecoder md1(s, cout, sign1, sign2, sign3);

endmodule
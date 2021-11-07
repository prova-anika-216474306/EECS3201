//RIPPLE CARRY ADDER
 
module ripplecarry(a0, a1, s, result, cout, sign1, sign2, sign3);
 input [3:0] a0, a1 ;// Two 4-bit inputs
 
 input s;
 output [3:0] result;
 output cout, sign1, sign2, sign3;
 
 //assign s = 1'b1;
 
wire w1, w2, w3;
wire a10, a11, a12, a13;
 
 xor(a10, a1[0], s);
 xor(a11, a1[1], s);
 xor(a12, a1[2], s);
 xor(a13, a1[3], s);
   
 
 fulladder adder1(a0[0], a10, s, result[0], w1);
 fulladder adder2(a0[1], a11, w1, result[1], w2);
 fulladder adder3(a0[2], a12, w2, result[2], w3);
 fulladder adder4(a0[3], a13, w3, result[3], cout);
 
adddecoder(s, cout, sign1, sign2, sign3);

 
 
endmodule
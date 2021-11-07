//7 SEGMENT DECODER MODULE
module decoder(a,e);

input [3:0] a;
output [6:0] e;

//0
assign e[6] =(~a[3]&~a[2]&~a[1]&a[0])|(~a[3]&a[2]&~a[1]&~a[0])|(a[3]&~a[2]&a[1]&a[0])|(a[3]&a[2]&~a[1]&a[0]);
//1
assign e[5] = (~a[3]&a[2]&~a[1]&a[0])|(a[2]&a[1]&~a[0])|(a[3]&a[2]&~a[0])|(a[3]&a[1]&a[0]);
//2
assign e[4]= (~a[3]&~a[2]&a[1]&~a[0])|(a[3]&a[2]&~a[0])|(a[3]&a[2]&a[1]);
//3
assign e[3]= (~a[3]&~a[2]&~a[1]&a[0])|(~a[3]&a[2]&~a[1]&~a[0])|(a[3]&~a[2]&a[1]&~a[0])|(a[2]&a[1]&a[0]);
//4
assign e[2]= (~a[2]&~a[1]&a[0])|(~a[3]&a[2]&~a[1])|(~a[3]&a[0]);
//5
assign e[1]= (a[3]&a[2]&~a[1]&a[0])|(~a[3]&~a[2]&a[0])|(~a[3]&~a[2]&a[1])|(~a[3]&a[1]&a[0]);
//6
assign e[0]= (~a[3]&a[2]&a[1]&a[0])|(a[3]&a[2]&~a[1]&~a[0])|(~a[3]&~a[2]&~a[1]);

endmodule


//FULL ADDER

module fulladder(a0bit, a1bit, cin, s, cout);

 input wire a0bit, a1bit, cin;
 output reg s, cout;


 always @(a0bit or a1bit or cin)
  begin 
   s = a0bit ^ a1bit ^ cin; 
   cout = a0bit & a1bit | (a1bit^a0bit) & cin; 
  end
  
endmodule


//RIPPLE CARRY ADDER
 
module ripple_adder(a0, a1, s, cout);
 input [3:0] a0, a1 ;// Two 4-bit inputs
 output [3:0] s;
 output cout;
 
 decoder input1(a0, e);
 decoder input2(a1, f);
 
wire w1, w2, w3;
 
 
 fulladder adder1(a0[0], a1[0], 1'b0, s[0], w1);
 fulladder adder2(a0[1], a1[1], w1, s[1], w2);
 fulladder adder3(a0[2], a1[2], w2, s[2], w3);
 fulladder adder4(a0[3], a1[3], w3, s[3], cout);
 
 decoder output1(s, g);
 
endmodule


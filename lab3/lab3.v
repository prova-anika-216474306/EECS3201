
//Top Level Entry
 
module lab3(a0, a1, s, light1, light2, outputlight, coe, cof, cog);
 
input [3:0] a0, a1;
input s;
output [6:0] light1, light2, outputlight;
output coe, cof, cog;

//if adding
wire [3:0] result1;
//if subtracting
wire [3:0] result2;
//multiplex result
wire [3:0] result_final;

wire cout;

 
 
 
decoder input1(a0, light1);
decoder input2(a1, light2);
 
//when s=0
ripplecarry rc(a0, a1, s, result1, cout, coe1, cof1, cog1);
//when s=1
rcsubtractor rs(a0, a1, s, result2, cout, coe2, cof2, cog2);

multiplexer m1(result2, result1, s, result_final);

multiplexer m2(coe2, coe1, s, coe);

multiplexer m3(cof2, cof1, s, cof);

multiplexer m4(cog2, cog1, s, cog);


decoder output1(result_final, outputlight);




 

 
endmodule


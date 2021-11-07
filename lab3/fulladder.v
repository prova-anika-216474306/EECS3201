//FULL ADDER

module fulladder(a0bit, a1bit, cin, r, cout);

 input wire a0bit, a1bit, cin;
 output reg r, cout;


 always @(a0bit or a1bit or cin)
  begin 
   r = a0bit ^ a1bit ^ cin; 
   cout = (a0bit & a1bit) | (a1bit^a0bit) & cin; 
	
  end
  
endmodule
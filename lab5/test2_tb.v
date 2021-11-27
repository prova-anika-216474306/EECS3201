
`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps

module test2_tb;

wire [3:0] r;

reg clk,a;


test2 t2(clk, a, r);

always 
begin


a = 0;

#100;

a = 1;

#200;
 
a = 0;


 $stop;
  
end


 
always 
	 
	 begin
	 
	 clk = 1'b1; 
    #10; 

    clk = 1'b0;
    #10; 
	 
	 
	 

	 
end 

always @(r)
begin
if(r == 4'd0)
					begin
					$display("All outputs are zero");
					end
	 
end



 

endmodule
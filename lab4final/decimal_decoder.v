module decimal_decoder(hex, segment);

input [3:0] hex;
output reg[6:0] segment;


always @ (*)
   case (hex) 
		0: segment = 7'b0000001;
		1: segment = 7'b1001111;
		2: segment = 7'b0010010;
		3: segment = 7'b0000110;
		4: segment = 7'b1001100;
		5: segment = 7'b0100100;
		6: segment = 7'b0100000;
		7: segment = 7'b0001101;
		8: segment = 7'b0000000;
		9: segment = 7'b0000100;
      
   endcase	

    
endmodule
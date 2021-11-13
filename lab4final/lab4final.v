module lab4final(clock, reset, pause, switch, light1, light2);

input clock;
input reset;
input pause;
input switch;

output[6:0] light1;
output[6:0] light2;


//insert inbuilt clock to get 1Hz clock
ClockDivider(clock,cout);
wire cout;
reg p;
//record of 0

reg[3:0] digit1 = 4'd4;
reg[3:0] digit2 =4'd2;

reg b =1;


always @(negedge pause)
begin
	b=~b;
end

//always @(switch)
//begin
//if (switch == 1)
//			begin
//			digit1 = 4'd0;
//			digit2 = 4'd3; 
//			end
//else if(switch ==0)
//			begin
//			digit1 = 4'd4;
//			digit2 = 4'd2; 
//			end
//end


always @(posedge cout & b) //counter logic
begin


if (reset == 0) //reset is 0 means button pushed 
	begin
			if (switch == 1)
			begin
			digit1 = 4'd0;
			digit2 = 4'd3; 
			end
			else if(switch ==0)
			begin
			digit1 = 4'd4;
			digit2 = 4'd2; 
			end
		
	end
	
else if(b == 0)
	begin
		digit1 <= digit1;
		digit2 <= digit2;
	end
	
else if (reset != 0)
	begin
			if(digit1 == 0 && digit2 == 0)
			begin
				digit1 <=0;
				digit2 <=0;
			end
			else if(digit1 == 0) 
                 begin
                     digit1 <= 9; //assign count0 to 0 
                     digit2 <= digit2 - 1;
						end
			else
                 begin
                    digit1 <= digit1 - 1;
                 end
	end

end

decimal_decoder d1(digit1, light1);
decimal_decoder d2(digit2, light2);

endmodule
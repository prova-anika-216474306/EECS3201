//
//
//`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps
//
//module test1_tb;
//
//    
//reg a, b, c;
//    wire x, y;
//    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
//    //localparam period = 20;  
//
//    test1 t1(a, b, c, x, y);
//	 
//	 
//    
//    initial // initial block executes only once
//        begin
//            // values for a and b
//            assign a = 0;
//            assign b = 0;
//				assign c = 0;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20; // wait for period 
//
//            assign a = 0;
//            assign b = 0;
//				assign c = 1;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20;
//
//				assign a = 0;
//            assign b = 1;
//				assign c = 0;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20;
//			
//				assign a = 0;
//            assign b = 1;
//				assign c = 1;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20;
//				
//				assign a = 1;
//            assign b = 0;
//				assign c = 0;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20; // wait for period 
//				
//
//            assign a = 1;
//            assign b = 0;
//				assign c = 1;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20;
//
//            assign a = 1;
//            assign b = 1;
//				assign c = 0;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//            #20;
//
//            assign a = 1;
//            assign b = 1;
//				assign c = 1;
//				if(x==0 && y==0)
//					begin
//					$display("All outputs are zero");
//					end 
//				#20;
//            
//				
//				
//
//        end
////		  
////		  always @(x&y)
////				begin
////					if(x==0 && y==0)
////					begin
////					$display("All outputs are zero");
////					end 
////				end
//		  
//		  
//		  
//endmodule




`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps

module test1_tb;

    
reg a, b, c;
    wire x, y;
    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    //localparam period = 20;  

    test1 t1(a, b, c, x, y);
	 
	 initial // initial block executes only once
        begin
            // values for a, b, c
            a = 0;
            b = 0;
				c = 0;
				
            #20; // wait for period 

            a = 0;
            b = 0;
				c = 1;
				
            #20;

				a = 0;
            b = 1;
				c = 0;
				
            #20;
			
				a = 0;
            b = 1;
				c = 1;
				
            #20;
				
				a = 1;
            b = 0;
				c = 0;
				
            #20; // wait for period 
				

            a = 1;
            b = 0;
				c = 1;
				
            #20;

            a = 1;
            b = 1;
				c = 0;
				
            #20;

            a = 1;
            b = 1;
				c = 1;
				
				#20;
				
        end
	  
		  always @(x or y)
				begin
					if(x==0 && y==0)
					begin
					$display("All outputs are zero");
					end 
				end
		  
		  
		  
endmodule
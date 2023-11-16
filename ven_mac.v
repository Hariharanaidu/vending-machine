module ven_mac(
	input clk,
	input rst,
	input [1:0] coin,
	output reg product,
	output reg change
	);
	
	reg [1:0] ps, ns; // ps = present state, ns = next state
	parameter s0 = 2'b00, s1=2'b01 , s2=2'b10; //define states
	parameter one = 2'b01, two = 2'b10;        //define rupees
	
	//present state logic
	always@(posedge clk)
	begin
	if(rst)
		ps <= s0;
		else 
		ps <= ns;
		end
		
	//next state logic
	
	always@(*)
	begin
	ns = s0;
	case(ps)
	s0 : begin
			if(coin==one)
				begin
				ns = s1;
				product = 0;
				change = 0;
				end
			else if(coin==two)
				begin
				ns = s2;
				product =0;
				change=0;
				end
			else
				begin
				ns = s0;
				product=0;
				change=0;
				end
			end	
	s1 : begin
			if(coin==one)
				begin
				ns = s2;
				product=0;
				change=0;
				end
			else if(coin==two)
				begin
				ns = s0;
				product=1;
				change=0;
				end
			else
				begin
				ns = s1;
				product=0;
				change = 0;
				end
			end
			
	s2 : begin
			if(coin==one)
				begin
				ns = s0;
				product=1;
				change=0;
				end
			else if(coin==two)
				begin
				ns = s0;
				product = 1;
				change = 1;
				end
			else
				begin
				ns = s2;
				product = 0;
				change = 0;
				end
			end
	default : begin
				 ns=s0;
				 product=0;
				 change=0;
				 end
				 
		endcase
	end
endmodule
		
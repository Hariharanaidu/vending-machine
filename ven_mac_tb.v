`timescale 1ns/1ps

module ven_mac_tb;

		reg clk;
		reg rst;
		reg [1:0] coin;
		wire product;
		wire change;
		
		//instantiate the dut
		
		ven_mac dut( .clk(clk), .rst(rst), .coin(coin), .product(product), .change(change) );
		
		parameter one = 2'b01, two = 2'b10; //define rupees
		
		always
		#5 clk = ~clk;	//clock generation
		
		initial
			begin
			clk=0;
			rst=1;
			coin=2'b00;
			
			#50 rst = 0;
			
			#100 coin = one;
			#50  coin = two;
			
			#100 coin = two;
			#50 coin=two;
			
			#100 coin=one;
			#50 coin= one;
		
		end
		

		
endmodule
			
		
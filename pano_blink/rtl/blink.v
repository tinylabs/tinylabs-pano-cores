
module top(
	input SYSCLK,
	output LED_RED,
	output LED_BLUE,
	output LED_GREEN
	);

	reg [2:0] led_reg;
	reg [32:0] counter;

	assign LED_RED = led_reg[0];
	assign LED_BLUE = led_reg[1];
	assign LED_GREEN = led_reg[2];

	always @(posedge SYSCLK) begin
       
       if (counter > 6250000)
         begin
            led_reg <= led_reg + 1;
            counter <= 0;
         end
       else
		 counter <= counter + 1;
	end
endmodule // top

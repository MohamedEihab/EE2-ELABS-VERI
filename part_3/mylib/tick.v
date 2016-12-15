module tick(clk50, out);

input clk50;
output reg out;


reg[15:0] count;

initial count = 16'b1001110000111;

always @ (posedge clk50)
	begin 
	if(count == 0)
		begin
			count <= 16'b1001110000111;
			out <= 1'b1;
		end
		else 
			begin
			count <= count - 1'b1;
			out <= 1'b0;
		end
	end
endmodule

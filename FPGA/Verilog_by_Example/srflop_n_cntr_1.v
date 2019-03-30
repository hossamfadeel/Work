module sr_flop_n_cntr(clk, reset, start, stop, count);

	input clk, reset, start, stop;
	output [3:0] count;

	reg [3:0] count;
	reg cnt_en, stop_d1, stop_d2;

// SR-Flop
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
			begin
				cnt_en <= 1'b0;
				stop_d1 <= 1'b0;
				stop_d2 <= 1'b0;
				count <= 4'h0;
			end
		else
			begin
				if(start)
					cnt_en <= 1'b1;
				else if (stop)
					cnt_en <= 1'b0;
				
				if(cnt_en && count == 4'd13)
					count <= 4'h0;
				else
					count <= count + 1;
				
				stop_d1 <= stop;
				stop_d2 <= stop_d1;
			end
	end

endmodule

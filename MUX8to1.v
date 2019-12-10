module MUX8to1 (
	input s0,
	input s1, 
	input s2,
	input a,
	input b,
	input c,
	input d,
	input e,
	input f,
	input g,
	input h,
	output y
);

reg y;

always @(s1 or s2) 
begin 
	case ({s0, s1, s2})

		3'b000 : begin 
					 assign y = a;
				  end

		3'b001 : begin 
					 assign y = b;
				  end

		3'b010 : begin 
					 assign y = c;
				  end

		3'b011 : begin 
					 assign y = d;
				  end

		3'b100 : begin 
					 assign y = e;
				  end

		3'b101 : begin 
					 assign y = f;
				  end

		3'b110 : begin 
					 assign y = g;
				  end

		3'b111 : begin 
					 assign y = h;
				  end
	
		default : assign y = 1'b0;
	endcase
end

endmodule
`timescale 1s/100ms
`include "MUX8to1.v"

module MUX8to1_tb();
	reg s0;
	reg s1;
	reg s2;
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;
	reg g;
	reg h;
	wire y;

	MUX8to1 myMUX(s0, s1, s2, a, b, c, d, e, f, g, h, y);

	initial
	begin 
		a = 1;
		b = 0;
		c = 1;
		d = 0;
		e = 1;
		f = 0;
		g = 1;
		h = 0;
		$monitor("s0 = %b, s1 = %b, s2 = %b, y = %b", s0, s1, s2, y);
		$dumpfile ("MUX8to1.vcd");
		$dumpvars (0, MUX8to1_tb);
		s0 = 0; s1 = 0; s2 = 0; #1;
		s0 = 0; s1 = 0; s2 = 1; #1;
		s0 = 0; s1 = 1; s2 = 0; #1;
		s0 = 0; s1 = 1; s2 = 1; #1;
		s0 = 1; s1 = 0; s2 = 0; #1;
		s0 = 1; s1 = 0; s2 = 1; #1;
		s0 = 1; s1 = 1; s2 = 0; #1;
		s0 = 1; s1 = 1; s2 = 1; #1;
		$finish;
	end
endmodule
module fir4( 
			input signed [7:0] A,B,C,D,
			output wire signed [8:0] avs
			);
			
wire signed [8:0] a1;			
wire signed [8:0] a2;
wire signed [8:0] a3,b1;
wire signed [8:0] b0;
wire signed [8:0] c0;

assign a1=A+D;
assign a2=B+C;
assign a3=(a2<<2);
assign b1=a2+a3;
assign c0=b1-a1;

assign avs=c0;

endmodule
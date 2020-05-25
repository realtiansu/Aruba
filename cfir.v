module cfir( 
			input wire [7:0] A,B,C,D,E,F
			//----------------------------
			);
			
wire signed [8:0] a0,a1,a2;
wire signed [8:0] a3,b1;
wire signed [8:0] b0;
wire signed [8:0] c0;
wire signed [8:0] c1;
wire signed [8:0] avs;
wire signed [8:0] h264;

assign a0=A+F;
assign a1=B+E;
assign a2=C+D;
assign a3=(a2<<2);
assign b1=a2+a3;
assign b0=a0-a1;
assign c0=b1-a1;
assign c1=(c0<<2);
assign avs=c0;
assign h264=c1+b0;

//---------------多路选择---------------------

endmodule
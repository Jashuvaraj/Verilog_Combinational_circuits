module Two_four_decoder(s0,s1,y0,y1,y2,y3);
input s0,s1;
output y0,y1,y2,y3;
assign y0=~(s0)&~(s1);
assign y1=~(s0)&s1;
assign y2=s0&~(s1);
assign y3=s0&s1;
endmodule

module Two_four_decoder_tb;
reg s0,s1;
wire y0,y1,y2,y3;
Two_four_decoder dut(s0,s1,y0,y1,y2,y3);
initial begin
#10 s0=0;s1=0;
#10 s0=0;s1=1;
#10 s0=1;s1=0;
#10 s0=1;s1=1;
end
endmodule

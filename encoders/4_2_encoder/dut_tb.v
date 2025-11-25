module Four_two_encoder(d3,d2,d1,d0,y0,y1);
input d3,d2,d1,d0;
output y0,y1;
assign y0=d1|d3;
assign y1=d2|d3;
endmodule

module Four_two_encoder_tb;
reg d3,d2,d1,d0;
wire y0,y1;
Four_two_encoder dut(d3,d2,d1,d0,y0,y1);
initial begin
#10 d3=0;d2=0;d1=0;d0=1;
#10 d3=0;d2=0;d1=1;d0=0;
#10 d3=0;d2=1;d1=0;d0=0;
#10 d3=1;d2=0;d1=0;d0=0;
end
endmodule

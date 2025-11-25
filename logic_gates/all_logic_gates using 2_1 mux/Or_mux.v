module Or_mux(a,b,y);
input a,b;
output y;
assign y=a?1:b;
endmodule

module Or_mux_tb;
reg a,b;
wire y;
Or_mux dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end 
endmodule

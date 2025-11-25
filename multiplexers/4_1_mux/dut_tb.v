module Four_mux(a,b,d0,d1,d2,d3,y);
input a,b;
input d0,d1,d2,d3;
output y;
assign y=a?b?d3:d2:b?d1:d0;
endmodule

module Four_mux_tb;
reg a,b;
reg d0,d1,d2,d3;
wire y;
Four_mux dut(a,b,d0,d1,d2,d3,y);
initial begin
{d0,d1,d2,d3}=4'b0100;
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule

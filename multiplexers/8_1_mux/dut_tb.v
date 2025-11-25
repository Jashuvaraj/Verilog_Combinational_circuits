module Eight_mux(s0,s1,s2,y,a,b,c,d,e,f,g,h);
input s0,s1,s2;
input a,b,c,d,e,f,g,h;
output y;
assign y=s0?s1?s2?h:g:s2?f:e:s1?s2?d:c:s2?b:a;
endmodule

module Eight_mux_tb;
reg s0,s1,s2;
reg a,b,c,d,e,f,g,h;
wire y;
Eight_mux dut(s0,s1,s2,y,a,b,c,d,e,f,g,h);
initial begin
{a,b,c,d,e,f,g,h}=8'b10101010;
#10 s0=0;s1=0;s2=0;
#10 s0=0;s1=0;s2=1;
#10 s0=0;s1=1;s2=0;
#10 s0=0;s1=1;s2=1;
#10 s0=1;s1=0;s2=0;
#10 s0=1;s1=0;s2=1;
#10 s0=1;s1=1;s2=0;
#10 s0=1;s1=1;s2=1;
end
endmodule

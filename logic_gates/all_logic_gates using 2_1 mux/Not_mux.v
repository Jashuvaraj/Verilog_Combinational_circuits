module Not_mux(a,y);
input a;
output y;
assign y=a?0:1;
endmodule

module Not_mux_tb;
reg a;
wire y;
Not_mux dut (a,y);
initial begin 
#10 a=0;
#10 a=1;
end 
endmodule



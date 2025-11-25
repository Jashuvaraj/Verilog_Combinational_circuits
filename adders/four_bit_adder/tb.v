module four_bit_tb;
reg [3:0]a,b;
reg  c0;
wire [3:0]s;
wire c4;
four_bit_adder dut(a,b,c0,s,c4);
initial begin
#10 
#10 a=4'b0000;b=4'b0000;c0=1'b0; 
#10 a=4'b0001;b=4'b0001;
#10 a=4'b0010;b=4'b0010;
#10 a=4'b0011;b=4'b0011;
end
initial
$monitor("@time=[%0t],a=%0b,b=%0b,c0=%0b,s=%0b,c4=%0b",$time,a,b,c0,s,c4);
endmodule

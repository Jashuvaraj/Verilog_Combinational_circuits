module demux(y,s,a);
input y;
input [1:0]s;
output [3:0]a;
assign a[0]=~(s[1])&(~s[0])&y;
assign a[1]=~(s[1])&s[0]&y;
assign a[2]=s[1]&(~s[0])&y;
assign a[3]=s[1]&s[0]&y;


endmodule

module demux_tb;
reg y;
reg [1:0]s;
wire [3:0]a;
demux dut(y,s,a);
initial begin
y=0;
#10 s=2'b00;
y=1;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
end
initial begin
$monitor("y=%0d,\ts=%0d,\ta=%0d",y,s,a);
#50 $finish;
end
endmodule

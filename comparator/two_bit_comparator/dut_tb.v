module two_bit(a,b,g,l,e);
input [1:0]a;
input [1:0]b;
output g,l,e;
reg g,l,e;
always @(*)
begin
if(a>b)
begin
g=1;l=0;e=0;
end
else if(a<b)
begin
l=1;g=0;e=0;
end
else if(a==b)
begin
e=1;g=0;l=0;
end
end
endmodule

//Test bench
module two_bit_tb;
reg [1:0]a;
reg [1:0]b;
wire g,l,e;
two_bit dut (a,b,g,l,e);
initial begin
#10 a[1]=0;a[0]=0;b[1]=0;b[0]=0;
#10 a[1]=0;a[0]=0;b[1]=0;b[0]=1;
#10 a[1]=0;a[0]=0;b[1]=1;b[0]=0;
#10 a[1]=0;a[0]=0;b[1]=1;b[0]=1;
#10 a[1]=0;a[0]=1;b[1]=0;b[0]=0;
#10 a[1]=0;a[0]=1;b[1]=0;b[0]=1;
#10 a[1]=0;a[0]=1;b[1]=1;b[0]=0;
#10 a[1]=0;a[0]=1;b[1]=1;b[0]=1;
#10 a[1]=1;a[0]=0;b[1]=0;b[0]=0;
end
initial
$monitor("@time=[%0t],a=%0b,b=%0b,g=%0b,l=%0b,e=%0b",$time,a,b,g,l,e);
endmodule

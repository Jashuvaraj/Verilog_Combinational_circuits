`include "dut.v"
module two_mux_tb;
reg s;
reg a,b;
wire z;
two_mux dut(z,s,a,b);
initial begin
{a,b} =2'b01;
#10 s=0;
#10 s=1;
end
initial 
$monitor("@time=[%0t],s=%0b,a=%0b,b=%0b,z=%0b",$time,s,a,b,z);
endmodule

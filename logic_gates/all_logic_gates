//AND GATE
module and_g(a,b,y);
input a,b;
output y;
assign y=a&b;
endmodule

module and_tb();
reg a,b;
wire y;
and_g dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0; 
#10 a=1;b=1;
end
endmodule

// OR GATE

module or_gate (a,b,y);
input a,b;
output y;
assign y=a|b;
endmodule

module or_tb;
reg a,b;
wire y;
or_gate dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end

//NOT GATE
module Not_gate(a,y);
input a;
output y;
assign y=~(a);
endmodule

module Not_gate_tb;
reg a;
wire y;
Not_gate dut(a,y);
initial begin
#10 a=0;
#10 a=1;
end
endmodule

//NAND GATE

module Nand_gate (a,b,y);
input a,b;
output y;
assign y=~(a&b);
endmodule

module Nand_tb;
reg a,b;
wire y;
Nand_gate dut(a,b,y);
initial begin
#10 a=0;b=0;
 #10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end 
endmodule

// NOR GATE

module Nor_gate(a,b,y);
input a,b;
output y;
assign y=~(a|b);
endmodule

module Nor_tb;
reg a,b;
wire y;
Nor_gate dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule

// XOR GATE

module xor_gate(a,b,y);
input a,b;
output y;
assign y=a^b;
endmodule

module xor_tb;
reg a,b;
wire y;
xor_gate dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule


// XNOR GATE

module xnor_gate(a,b,y);
input a,b;
output y;
assign y=~(a^b);
endmodule

module xnor_gate_tb;
reg a,b;
wire y;
xnor_gate dut(a,b,y);
initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule

endmodule

# 1-to-4 Demultiplexer in Verilog

This module implements a 1-to-4 demultiplexer using combinational logic in Verilog. The demux takes a single data input `y` and routes it to one of four output lines based on the select input `s`.

## Files Included:
- `dut_tb.v` — RTL implementation of the demultiplexer and Testbench for simulation and verification

---

## Design Description

The demultiplexer logic:

a[0] = ~s[1] & ~s[0] & y
a[1] = ~s[1] & s[0] & y
a[2] = s[1] & ~s[0] & y
a[3] = s[1] & s[0] & y



Truth Table Mapping:

| s1 | s0 | Output |
|----|----|--------|
| 0  | 0  | a[0] = y |
| 0  | 1  | a[1] = y |
| 1  | 0  | a[2] = y |
| 1  | 1  | a[3] = y |

Only *one* output receives data `y` based on the select lines.

---

## Testbench Overview

- `y` declared as `reg` (input data)
- `s` declared as `reg [1:0]` (select bits)
- `a` declared as `wire [3:0]` (demux outputs)
- DUT instantiated as:

demux dut(y,s,a);



Applied stimulus:

y=0;
#10 s=2'b00; y=1;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;

 
The testbench also uses `$monitor`:

$monitor("y=%0d, s=%0d, a=%0d", y, s, a);

This continuously prints input/output values during simulation.

---

## Key Concepts Demonstrated

✔ Demultiplexer logic  
✔ One-hot data routing  
✔ Boolean AND logic with select lines  
✔ Testbench-based functional verification  
✔ Continuous output monitoring  

---

## Simulation Tools

This design can be verified using:
- QuestaSim  

# 4-to-2 Encoder in Verilog

This module implements a 4-to-2 binary encoder using combinational logic. Among the four input lines (`d0–d3`), only one should be active at a time, and the encoder outputs the corresponding 2-bit binary code.

## Files Included:
- `Four_two_encoder.v` — RTL implementation of encoder logic and Testbench for functional verification

---

## Design Description

The encoding logic:

y0 = d1 OR d3
y1 = d2 OR d3


Mapping:

| Input (active) | Output (y1 y0) |
|----------------|----------------|
| d0 = 1         | 00 |
| d1 = 1         | 01 |
| d2 = 1         | 10 |
| d3 = 1         | 11 |

This demonstrates priority-free basic encoder logic.

---

## Testbench Overview

- Inputs `d3,d2,d1,d0` declared as `reg`
- Outputs `y1,y0` declared as `wire`
- DUT instantiation:

Four_two_encoder dut(d3,d2,d1,d0,y0,y1);



Testbench applies:

#10 d3=0;d2=0;d1=0;d0=1; // Output = 00
#10 d3=0;d2=0;d1=1;d0=0; // Output = 01
#10 d3=0;d2=1;d1=0;d0=0; // Output = 10
#10 d3=1;d2=0;d1=0;d0=0; // Output = 11



Ensuring correct binary encoding representation.

---

## Key Concepts Demonstrated

✔ Encoder fundamentals  
✔ Combinational logic using OR gates  
✔ Binary priority encoding  
✔ Testbench-driven verification  

---

## Simulation Tools

This design can be simulated using:
- QuestaSim
- ModelSim
- Vivado
- EDA Playground

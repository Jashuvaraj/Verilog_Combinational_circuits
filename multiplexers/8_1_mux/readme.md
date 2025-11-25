# 8:1 Multiplexer (Behavioral / Conditional Operator Modeling)

This design implements an 8:1 multiplexer using nested conditional operators in Verilog. The output selects one of eight inputs based on three select lines (`s0`, `s1`, `s2`).

## Files Included:
- `dut_tb.v` — RTL implementation using conditional operators and Testbench for validation

---

## Design Description

The output selection logic is implemented as:

y = s0 ? (s1 ? (s2 ? h : g) : (s2 ? f : e))
: (s1 ? (s2 ? d : c) : (s2 ? b : a));



Truth Table:

| s0 | s1 | s2 | Output |
|----|----|----|--------|
| 0  | 0  | 0  | a |
| 0  | 0  | 1  | b |
| 0  | 1  | 0  | c |
| 0  | 1  | 1  | d |
| 1  | 0  | 0  | e |
| 1  | 0  | 1  | f |
| 1  | 1  | 0  | g |
| 1  | 1  | 1  | h |

---

## Testbench Overview

- `s0, s1, s2` are select lines (reg)
- `a–h` are data inputs (reg)
- `y` is output (wire)
- DUT instance:

Eight_mux dut(s0,s1,s2,y,a,b,c,d,e,f,g,h);


Example stimulus:

{a,b,c,d,e,f,g,h} = 8'b10101010;
#10 s0=0; s1=0; s2=0;
#10 s0=0; s1=0; s2=1;
...
#10 s0=1; s1=1; s2=1;

Testbench ensures correct selection for all combinations.

---

## Key Concepts Demonstrated

✔ Behavioral modeling using nested `?:` operators  
✔ Multi-level selective routing  
✔ Understanding 3-bit selection logic  
✔ Systematic testbench generation  

---

## Simulation Tools

This design can be simulated using:
- QuestaSim
- ModelSim
- Vivado
- EDA Playground

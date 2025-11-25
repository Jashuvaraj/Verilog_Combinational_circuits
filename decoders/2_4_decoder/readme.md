# 2-to-4 Decoder in Verilog

This module implements a 2-to-4 decoder using combinational logic. The two select inputs (`s0`, `s1`) determine which one of the four outputs (`y0–y3`) becomes active.

## Files Included:
- `dut_tb.v` — RTL implementation of decoder logic and Testbench for verification

---

## Design Description

The decoder logic:

y0 = ~s0 & ~s1
y1 = ~s0 & s1
y2 = s0 & ~s1
y3 = s0 & s1


Output Behavior:

| s0 | s1 | Active Output |
|----|----|----------------|
| 0  | 0  | y0 = 1 |
| 0  | 1  | y1 = 1 |
| 1  | 0  | y2 = 1 |
| 1  | 1  | y3 = 1 |

Only one output is HIGH at a time — standard decoder functionality.

---

## Testbench Overview

- `s0, s1` declared as `reg`
- `y0–y3` declared as `wire`
- DUT instantiated as:

Two_four_decoder dut(s0,s1,y0,y1,y2,y3);


Applied stimulus:

#10 s0=0; s1=0;
#10 s0=0; s1=1;
#10 s0=1; s1=0;
#10 s0=1; s1=1;



Verifies correct one-hot output selection.

---

## Key Concepts Demonstrated

✔ Decoder logic implementation  
✔ One-hot output encoding  
✔ Boolean logic expressions using AND / NOT  
✔ Testbench stimulus generation  

---

## Simulation Tools

Designed and validated using:
- QuestaSim

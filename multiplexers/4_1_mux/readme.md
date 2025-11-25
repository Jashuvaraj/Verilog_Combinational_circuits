 4:1 Multiplexer (Conditional / Behavioral Modeling)

This module implements a 4:1 multiplexer using conditional (ternary) operator style in Verilog. The output selects one of four data inputs based on two select lines (`a` and `b`).

## Files Included:
- `dut_tb.v` — RTL design using conditional operator and Testbench for verification

---

## Design Description

The design uses nested conditional operators to select output:

y = a ? (b ? d3 : d2) : (b ? d1 : d0);


Selection Logic:

| a | b | Output |
|---|---|--------|
| 0 | 0 | d0     |
| 0 | 1 | d1     |
| 1 | 0 | d2     |
| 1 | 1 | d3     |

---

## Testbench Details

- Inputs `a, b, d0–d3` are declared as `reg`
- Output `y` is declared as `wire`
- DUT is instantiated using:

Four_mux dut(a,b,d0,d1,d2,d3,y);


Testbench applies:
- static data inputs
- variable select combinations

Stimulus example:
{d0,d1,d2,d3} = 4'b0100;
#10 a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;



---

## Key Concepts Demonstrated

✔ Behavioral modeling using `?:` operators  
✔ Multi-input selection logic  
✔ Testbench-based validation  
✔ Compact implementation of multiplexing logic  

---

## Simulation Tools

Designed and verified using:
- QuestaSim
- ModelSim
- Vivado
- EDA Playground

# 2:1 Multiplexer (Gate-Level Modeling with Logic Primitives)

This implementation of a 2:1 multiplexer is written using gate-level modeling by instantiating basic logic gates (AND, OR, NOT). Intermediate wire connections are used to logically construct the output from fundamental gates.

## Files Included:
- `dut.v` — RTL design using logic gate instantiations
- `tb.v` — Testbench verifying behavior

---

## Design Description

The multiplexer selects between two inputs `a` and `b` based on the select line `s`.

Gate-level structure:

w1 = NOT(s)
w2 = w1 AND a
w3 = s AND b
z = w2 OR w3


Truth Table:

| s | z |
|---|---|
| 0 | a |
| 1 | b |

---

## Testbench Details

- Uses `reg` for inputs: `s, a, b`
- Uses `wire` for output: `z`
- Applies timed input changes
- Displays output on console using `$monitor`

Sample simulation output:
@time=10, s=0, a=0, b=1, z=0
@time=20, s=1, a=0, b=1, z=1



The testbench verifies correct selection behavior of the multiplexer.

---

## Key Concepts Demonstrated
✔ Gate-level modeling  
✔ Digital circuit construction using basic gates  
✔ Explicit wire-based logic realization  
✔ Testbench stimulus & monitoring  
✔ HDL structural design principles  

---

## Simulation Tools
This code can be successfully simulated using:
- QuestaSim
- ModelSim
- Vivado
- EDA Playground

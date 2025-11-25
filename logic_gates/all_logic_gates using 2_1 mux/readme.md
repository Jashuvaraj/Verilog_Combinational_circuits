# Logic Gate Implementations using 2:1 Multiplexer

This folder contains Verilog implementations of all basic logic gates by constructing them using only a 2:1 MUX. Each design integrates both DUT and testbench within the same file.

## Files Included:
- `And_mux.v` — AND gate using 2:1 MUX  
- `Or_mux.v` — OR gate using 2:1 MUX  
- `Nand_mux.v` — NAND gate using 2:1 MUX  
- `Nor_mux.v` — NOR gate using 2:1 MUX  
- `Ex_or_mux.v` — XOR gate using 2:1 MUX  
- `Ex_nor_mux.v` — XNOR gate using 2:1 MUX  
- `Not_mux.v` — NOT gate using 2:1 MUX  

Each file contains:
✔ Logic implementation using MUX  
✔ Testbench for functional verification  
✔ Simulation-ready structure  

---

## Concept

A 2:1 multiplexer implements:
y = sel ? I1 : I0


Using Boolean substitutions and proper selection inputs, ANY logic function can be mapped into a MUX.

Example Applications:
- AND implementation  
- OR using selection mapping  
- Inversion using tied inputs  
- XNOR as double selection cascade  

---

## Example: AND Gate using MUX

y = s ? b : a


with selection logic configured to implement `a & b`.

---

## Testbench Method

Each file uses:
- `initial begin` stimulus block  
- Delay-based testing  
- Inline monitoring using `$monitor` or `$display`  
- Manual vector testing for correctness  

---

## Key Concepts Demonstrated:

✔ MUX-based realization of logic  
✔ Function decomposition  
✔ Digital logic mapping  
✔ Structural abstraction  
✔ Reconfigurable computing using simple components  

---

## Motivation

Designing logic gates using multiplexers is beneficial for:
- FPGA & LUT-based implementations  
- Understanding universal logic functions  
- Optimizing logic synthesis  
- Demonstrating MUX as fundamental building block  

---

## Simulation

All files are verified using:
- QuestaSim  

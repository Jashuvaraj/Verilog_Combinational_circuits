# 4-Bit Ripple Carry Adder (Structural Modeling)

This design implements a 4-bit adder using structural Verilog by instantiating four 1-bit full adders. The output consists of a 4-bit sum and a final carry-out.

### Files included:
- `dut.v` — RTL design using structural modeling
- `tb.v` — Testbench for functional verification

### Design Overview:
The 4-bit adder is built by connecting four 1-bit full adder modules in series:
- Carry-out from each stage feeds into next stage's carry-in
- This creates a ripple-carry architecture

### Advantages:
- Simple implementation
- Good demonstration of modular hierarchical RTL design

### Full Adder Role:
Each full adder takes:
- a single bit from input A
- a single bit from input B
- carry-in
And produces:
- sum bit
- carry-out

### Simulation:
Testbench verifies:
- multiple combinations of A + B
- intermediate carry propagation
- final Cout correctness

Verified using QuestaSim.


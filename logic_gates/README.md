# Basic Logic Gates in Verilog

This folder contains the implementation and testbenches of the fundamental combinational logic gates in Verilog HDL.

## Gates Included:
- AND Gate
- OR Gate
- NOT Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

Each gate has:
- RTL module implementing the logic
- Testbench file to verify input/output behavior

---

## Logic Functions

| Gate | Expression | Description |
|------|------------|-------------|
| AND  | y = a & b      | High only when both a and b are high |
| OR   | y = a \| b     | High when either input is high |
| NOT  | y = ~a         | Inverts the input |
| NAND | y = ~(a & b)   | Inverse of AND gate |
| NOR  | y = ~(a \| b)  | Inverse of OR gate |
| XOR  | y = a ^ b      | High when inputs differ |
| XNOR | y = ~(a ^ b)   | High when inputs are equal |

---

## Testbench Methodology

All testbenches:
- Declare reg inputs and wire outputs
- Instantiate DUT (Design Under Test)
- Apply all possible combinations of inputs
- Use simple time delay for observing output responses

Example:
#10 a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;


## Purpose

This collection demonstrates:
- Basic combinational logic implementation
- Modular Verilog coding practice
- Testbench development and simulation
- Foundation for building more complex digital systems


## Simulation

These designs and testbenches can be simulated using:
- QuestaSim
- ModelSim
- Vivado
- EDA Playground

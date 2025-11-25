# 2-bit Comparator in Verilog

This module compares two 2-bit binary numbers (`a` and `b`) and outputs flags indicating whether:
- `g = 1` → a > b
- `l = 1` → a < b
- `e = 1` → a == b

## Files Included
- `dut_tb.v` — Comparator implementation Testbench to verify output behavior

---

## Design Explanation

The logic is written using an `always @(*)` block:

if (a > b) g=1, l=0, e=0
else if (a < b) l=1, g=0, e=0
else e=1, g=0, l=0




Meaning:
- If `a` is greater, set g=1  
- If `a` is smaller, set l=1  
- If equal, set e=1  

Only **one output is HIGH at any time**.

---

## Testbench Summary

- Inputs: `a` and `b` (2-bit)
- Outputs: `g`, `l`, `e`
- Testbench changes `a` and `b` over time
- `$monitor` prints values at each step

Example output format:

@time=10, a=00, b=01, g=0, l=1, e=0


This helps observe which condition is active.

---

## Key Concepts Demonstrated

✔ Behavioral modeling  
✔ Comparison logic  
✔ Use of `always @(*)`  
✔ Multiple output flags  
✔ Practical digital design building block  

---

## Applications

This comparator concept is used in:
- ALUs
- Sorting circuits
- Digital decision logic
- Priority selection hardware

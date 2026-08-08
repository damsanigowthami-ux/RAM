# RAM (Random Access Memory) using Verilog

## Overview

This project implements a simple 16×8 RAM using Verilog HDL. The RAM supports synchronous write and read operations using a clock signal. Data is written when the write enable (`we`) signal is high and read when it is low.

## Features

- 16 memory locations
- 8-bit data width
- 4-bit address bus
- Synchronous write operation
- Read operation
- Verilog HDL implementation
- Testbench for verification

## Files

- `ram.v` – RAM design
- `ram_tb.v` – Testbench
- `waveform.vcd` – Simulation waveform
- `simulation/output.txt` – Console output
- `simulation/simulation.png` – Waveform screenshot

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

## Simulation

Compile:

```bash
iverilog -o ram ram.v ram_tb.v
```

Run:

```bash
vvp ram
```

View waveform:

```bash
gtkwave waveform.vcd
```

# HDL-Foundry
A structured collection of Verilog HDL projects including combinational circuits ,basic sequential logic. Each design includes simulation testbenches and clear documentation.

**📌 Overview**

This repository provides a structured environment for developing and simulating Verilog HDL designs using:

- VS Code – Code editing

- Icarus Verilog (iverilog) – Compilation

- vvp – Simulation execution

- GTKWave – Waveform visualization

It supports simulation of:

-Combinational circuits

-Sequential circuits

-FSMs

-Counters

-Flip-flops

-Arithmetic modules


**
⚙️ Installation
1️⃣ Install Icarus Verilog**

Download:
https://bleyer.org/icarus/

Verify installation:

iverilog -v

2️⃣ Install GTKWave

Download:
https://gtkwave.sourceforge.net/

Verify installation:
gtkwave(type in cmd)

▶️ Running the Simulation
Step 1: Compile
iverilog -o sim/sim.out src/*.v tb/*.v

Step 2: Run
vvp sim/sim.out


This generates:

wave.vcd

Step 3: View Waveform
gtkwave wave.vcd

🔄 Simulation Flow
Design File
     ↓
Testbench
     ↓
iverilog (Compilation)
     ↓
vvp (Execution)
     ↓
VCD File Generation
     ↓
GTKWave (Waveform Visualization)

📊 Working with GTKWave

Add signals from the left panel.

Zoom out if signals appear constant.

Adjust time range to nanoseconds if using 1ns timescale.

Expand multi-bit buses to inspect values.

🧩 Key Concepts

Module instantiation

reg vs wire

Clock generation

Delay operator #

$dumpfile and $dumpvars

Timescale directive

**❗ Common Issues**
Issue	Solution
iverilog not recognized	Add to system PATH
No waveform generated	Ensure $dumpfile and $dumpvars are present
Signals not changing	Zoom out in GTKWave
Compilation errors	Check module names and port mapping

📌 Purpose

This repository serves as:

A reusable Verilog simulation template

A learning resource for HDL development

A foundation for FPGA/ASIC design workflows

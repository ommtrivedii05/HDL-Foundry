# HDL-Foundry
A structured collection of Verilog HDL projects including combinational circuits ,basic sequential logic. Each design includes simulation testbenches and clear documentation.

📌 Overview

This repository provides a structured environment for developing and simulating Verilog HDL designs using:

VS Code – Code editing

Icarus Verilog (iverilog) – Compilation

vvp – Simulation execution

GTKWave – Waveform visualization

It supports simulation of:

Combinational circuits

Sequential circuits

FSMs

Counters

Flip-flops

Arithmetic modules

Any synthesizable Verilog design

🛠️ Toolchain
Tool	Role
VS Code	Code development
Icarus Verilog	Verilog compiler
vvp	Simulation runtime
GTKWave	Waveform viewer
📂 Project Structure
.
├── src/                 # Verilog design files
│   └── design.v
│
├── tb/                  # Testbench files
│   └── tb_design.v
│
├── sim/                 # Simulation outputs (generated)
│   ├── sim.out
│   └── wave.vcd
│
└── README.md

⚙️ Installation
1️⃣ Install Icarus Verilog

Download:
https://bleyer.org/icarus/

Verify installation:

iverilog -v

2️⃣ Install GTKWave

Download:
https://gtkwave.sourceforge.net/

Verify installation:

gtkwave

🧠 Design Template
module design_name (
    input  wire clk,
    input  wire rst,
    input  wire in1,
    input  wire in2,
    output wire out1
);

// Design logic

endmodule

🧪 Testbench Template
`timescale 1ns/1ps
module tb_design;

reg clk;
reg rst;
reg in1, in2;
wire out1;

design_name uut (
    .clk(clk),
    .rst(rst),
    .in1(in1),
    .in2(in2),
    .out1(out1)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_design);

    rst = 1; #10;
    rst = 0;

    in1 = 0; in2 = 0; #10;
    in1 = 1; in2 = 0; #10;
    in1 = 0; in2 = 1; #10;
    in1 = 1; in2 = 1; #10;

    $finish;
end

endmodule

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

❗ Common Issues
Issue	Solution
iverilog not recognized	Add to system PATH
No waveform generated	Ensure $dumpfile and $dumpvars are present
Signals not changing	Zoom out in GTKWave
Compilation errors	Check module names and port mapping
🚀 Possible Enhancements

Add Makefile for automation

Add CI/CD for automatic simulation

Add waveform screenshots

Add parameterized modules

Add regression test scripts

📌 Purpose

This repository serves as:

A reusable Verilog simulation template

A learning resource for HDL development

A foundation for FPGA/ASIC design workflows

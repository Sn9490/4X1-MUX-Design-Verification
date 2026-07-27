![Verilog](https://img.shields.io/badge/Verilog-RTL-blue)
![SystemVerilog](https://img.shields.io/badge/SystemVerilog-HVL-green)
![UVM](https://img.shields.io/badge/UVM-Verification-orange)
![MUX](https://img.shields.io/badge/4x1-MUX-red)
![QuestaSim](https://img.shields.io/badge/QuestaSim-Simulator-blue)

# 4x1 MUX RTL Design & UVM Verification

## Project Overview

This project implements a **4x1 Multiplexer (MUX)** using **Verilog HDL** and verifies its functionality using **SystemVerilog** and the **Universal Verification Methodology (UVM)**. A reusable UVM verification environment was developed to validate all possible input selection scenarios and ensure correct combinational logic functionality.

---

# HDL / HVL

- **HDL:** Verilog
- **HVL:** SystemVerilog
- **Verification Methodology:** UVM
- **EDA Tool:** QuestaSim

---

# Description

A **4x1 Multiplexer** is a combinational circuit that selects one of four input signals and routes it to a single output based on two select lines.

The RTL was implemented in Verilog HDL, and functional verification was carried out using a reusable UVM testbench to validate all input selection combinations and output correctness.

---

# Responsibilities

- Architected the block-level structure for the 4x1 Multiplexer.

- Implemented the RTL design using Verilog HDL.

- Developed a reusable UVM verification environment.

- Implemented UVM components including:
  - Sequence Item
  - Sequence
  - Sequencer
  - Driver
  - Monitor
  - Agent
  - Scoreboard
  - Environment
  - Test

- Developed directed and constrained-random testcases.

- Verified all input selection combinations.

- Generated functional and code coverage for verification sign-off.

- Performed simulation and waveform debugging using QuestaSim.

---

# Multiplexer Operation

| S1 | S0 | Output |
|:--:|:--:|:------:|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

---

# Features Verified

### Functional Verification

- Input I0 Selection

- Input I1 Selection

- Input I2 Selection

- Input I3 Selection

- Consecutive Selection Changes

- Random Input Combinations

### Data Validation

- Output Correctness

- Select Line Validation

- Expected vs Actual Data Comparison

---

# Verification Methodology

- UVM

- Constrained Random Verification

- Functional Verification

- Scoreboarding

- Regression Testing

- Functional Coverage

- Code Coverage

---

# Results

- Successfully implemented the 4x1 Multiplexer RTL using Verilog.

- Developed a reusable UVM verification environment.

- Verified all select-line combinations.

- Achieved functional and code coverage for verification sign-off.

- Validated output correctness through simulation and waveform analysis.

---

# Tools Used

- Verilog HDL

- SystemVerilog

- UVM

- QuestaSim

- Git

- Linux

---

# Repository Structure

```text
MUX_4x1_Design_Verification/
│
├── Comps/
├── DUT/
├── Interface/
├── Objects/
├── Packages/
├── Sim/
└── Top/
```

---

# Directory Description

### DUT

Contains the Verilog RTL implementation of the 4x1 Multiplexer.

### Interface

SystemVerilog interface connecting the DUT with the UVM environment.

### Objects

Sequence items (transaction objects) used for stimulus generation.

### Comps

UVM components including Driver, Monitor, Sequencer, Agent, Scoreboard, Environment, and Test.

### Packages

Shared packages containing transaction classes, parameters, and common definitions.

### Top

Top-level UVM testbench and DUT integration.

### Sim

Compilation scripts, simulation commands, and execution files.

---

# Future Enhancements

- Assertion-Based Verification (SVA)

- Parameterized N:1 Multiplexer Design

- Functional Coverage Crosses

- Constrained-Random Test Enhancements

---

# Author

**Guru Naveen Reddy Siddu**

📧 Email: gurunaveenreddys@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/siddu-guru-naveen-reddy-93b597282

💻 GitHub: https://github.com/Sn9490

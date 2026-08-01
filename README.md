<div align="center">

# 🔀 4x1 MUX — Design & Verification

### Combinational Logic RTL | Class-Based UVM Verification

![Verilog](https://img.shields.io/badge/HDL-Verilog-0088CE?style=for-the-badge)
![SystemVerilog](https://img.shields.io/badge/HVL-SystemVerilog-1E88E5?style=for-the-badge)
![UVM](https://img.shields.io/badge/Methodology-UVM-FF6F00?style=for-the-badge)
![QuestaSim](https://img.shields.io/badge/Tool-QuestaSim-005A9C?style=for-the-badge)

</div>

---

## 📖 Overview

This project implements and verifies a **4-to-1 Multiplexer (MUX)** — a combinational circuit that selects one of four input lines and routes it to a single output line based on 2-bit select lines.

## 🔧 Design

| Select Lines (`s1 s0`) | Output |
|---|---|
| `00` | `in0` |
| `01` | `in1` |
| `10` | `in2` |
| `11` | `in3` |

- Implemented as a purely combinational block in **Verilog HDL**
- Block-level structure defined before RTL implementation

## 🏗️ Verification Environment

- Architected a **class-based UVM verification environment**
- Verified the RTL module using **SystemVerilog**

```
uvm_test
 └── uvm_env
      ├── agent
      │    ├── sequencer
      │    ├── driver
      │    └── monitor
      ├── scoreboard
      └── coverage collector
```

## 🔧 Responsibilities

- Architected the block-level structure for the design
- Implemented RTL using Verilog HDL
- Verified the RTL module using SystemVerilog
- Architected the class-based UVM verification environment
- Generated functional and code coverage for RTL verification sign-off

## ✅ Results

| Metric | Result |
|---|---|
| Functional Coverage | ✅ Achieved |
| Code Coverage | ✅ Achieved |
| Verification Sign-off | ✅ Achieved |
| Simulation Tool | QuestaSim |

## 🛠️ Tools & Technologies

- **HDL:** Verilog
- **HVL:** SystemVerilog
- **Methodology:** UVM (Universal Verification Methodology)
- **Simulator:** QuestaSim
- **Version Control:** Git

## 📂 Repository Structure

```
├── rtl/
│   └── mux4x1.v
├── tb/               # UVM testbench (agent, sequences, scoreboard, env, tests)
├── sim/              # Simulation scripts
├── docs/             # Coverage reports
└── README.md
```
<!-- Update this structure to match your actual repo layout -->

## 🚀 How to Run

```bash
# Example QuestaSim flow — update commands to match your scripts
vlib work
vlog -f filelist.f
vsim -c work.tb_top -do "run -all"
```
<!-- Replace with your actual simulation commands / Makefile targets -->

## 👤 Author

**Guru Naveen Reddy** — ASIC Design Verification Engineer
[LinkedIn](https://www.linkedin.com/in/siddu-guru-naveen-reddy-93b597282) · [GitHub](https://github.com/Sn9490) · gurunaveenreddys@gmail.com

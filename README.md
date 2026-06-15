![Verilog](https://img.shields.io/badge/Verilog-RTL-blue)
![SystemVerilog](https://img.shields.io/badge/SystemVerilog-Verification-green)
![MUX](https://img.shields.io/badge/MUX-CombinationalLogic-orange)
![Digital\_Design](https://img.shields.io/badge/Digital-Design-red)
![QuestaSim](https://img.shields.io/badge/QuestaSim-Simulator-blue)

# MUX_4x1_Design_Verification

## Overview

Designed and verified a 4x1 Multiplexer using Verilog HDL. Developed a SystemVerilog class-based verification environment to validate functional correctness, input selection logic, and output behavior for all possible select line combinations.

---

## Multiplexer Theory

A Multiplexer (MUX) is a combinational circuit that selects one of several input signals and forwards the selected input to a single output line.

The selection lines determine which input is connected to the output.

---

## Design Features

### Inputs

* I0
* I1
* I2
* I3
* S1
* S0

### Output

* Y

### Selection Logic

| S1 | S0 | Output |
| -- | -- | ------ |
| 0  | 0  | I0     |
| 0  | 1  | I1     |
| 1  | 0  | I2     |
| 1  | 1  | I3     |

---

## RTL Design

Implemented the 4x1 Multiplexer using Verilog HDL.

### Functionality

* Input Selection
* Combinational Data Routing
* Output Generation Based on Select Lines

---

## Verification Environment

A reusable SystemVerilog verification environment was developed to validate MUX functionality.

### Components

* Generator
* Driver
* Monitor
* Scoreboard
* Environment
* Testcases

### Interface

SystemVerilog interface used for DUT communication.

### Transaction Objects

Transaction-level objects used for stimulus generation.

### Packages

Reusable packages containing common definitions and transaction classes.

---

## Features Verified

### Functional Verification

* Input I0 Selection
* Input I1 Selection
* Input I2 Selection
* Input I3 Selection

### Data Validation

* Output Correctness Verification
* Select Line Validation
* Expected vs Actual Data Comparison

---

## Test Scenarios

* All Select Line Combinations
* Random Input Values
* Random Select Values
* Consecutive Selection Changes

---

## Results

* Successfully implemented a 4x1 Multiplexer using Verilog HDL.
* Developed a reusable verification environment using SystemVerilog.
* Verified all possible select line combinations.
* Validated output correctness using scoreboard-based checking.
* Debugged and analyzed simulation results using waveform analysis.

---

## Tools Used

* Verilog
* SystemVerilog
* QuestaSim
* Git
* Linux

---

## Project Structure

```text
MUX_4x1_Design_Verification
│
├── Comps/
├── DUT/
├── Interface/
├── Objects/
├── Packages/
├── Sim/
└── Top/
```

### Directory Description

#### DUT

Contains RTL implementation of the 4x1 Multiplexer.

#### Interface

SystemVerilog interfaces connecting DUT and verification components.

#### Objects

Transaction classes used for stimulus generation.

#### Comps

Verification components such as Driver, Monitor, Scoreboard, and Environment.

#### Packages

Common packages and shared definitions.

#### Top

Top-level testbench integration files.

#### Sim

Simulation scripts and execution files.

---

## Future Enhancements

* Functional Coverage Collection
* Assertion-Based Verification (SVA)
* Parameterized N:1 Multiplexer Design
* UVM-Based Verification Environment

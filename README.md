# SystemVerilog Scheduling Semantics — Examples

This repository contains example SystemVerilog source files from the paper **“SystemVerilog Scheduling Semantics”**.

[![Zenodo record](https://img.shields.io/badge/Zenodo-17359865-blue?logo=zenodo\&style=flat)](https://zenodo.org/records/17359865) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17359865.svg)](https://doi.org/10.5281/zenodo.17359865)

**Paper:** [SystemVerilog Scheduling Semantics — Zenodo record 17359865](https://zenodo.org/records/17359865)

**Abstract**

> SystemVerilog simulation tools use a stratified event scheduler. Determining when signal updates and observations occur depends on how procedural and continuous assignments are ordered across the simulation time slot regions. This paper shows an overview of these regions and clarifies their roles, which helps avoid race conditions and ensures predictable interactions between design and testbench components.

The examples illustrate how SystemVerilog simulation regions execute in a time slot and how `program` blocks differ from `module` blocks in event scheduling.

---

## Repository Structure

```
├── Examples/
│   ├── mini_regions.sv      # Sample 1 — region visibility example (ACTIVE, INACTIVE, POSTPONED)
│   └── apb4_tb.sv           # Sample 2 — program-block testbench
│
├── scripts/
│   ├── list.f               # file list
│   ├── run.bat              # Windows batch script to compile & run examples
│   ├── run.sh               # POSIX shell script to compile & run examples (Linux)
│   └── run.tcl              # TCL script for simulator runs (tool dependent)
│
├── waves/
│   ├── run_waves.bat        # Windows batch script that runs simulation and produces waves (Windows)
│   ├── run.tcl              # TCL script to run waveform capture / viewer (tool dependent)
│   └── waves.vcd            # Example VCD waveform output
│
└── README.md                # (this file)

```

---

## Samples

**Sample 1 — `mini_regions.sv`**

Demonstrates visibility across scheduler regions (`ACTIVE`, `INACTIVE`, and `POSTPONED`) using `$display` and `$strobe`.
Used in **Section III: Illustrative Example** of the paper.

**Sample 2 — `apb4_tb.sv`**

Implements a simple `program`-block testbench that runs in the **reactive region**, generates a mock clock, and calls a placeholder task `send_apb4_packet`.
Used in **Section IV: Program Blocks vs. Module Blocks in Testbench Scheduling**.

---

## How to Run

**On Linux**

Run the shell script:

```bash
chmod +x scripts/run.sh
./scripts/run.sh
```

**On Windows**

Double-click or run the batch script:

```bash
scripts\\run.bat
```

---
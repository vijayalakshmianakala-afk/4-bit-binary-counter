# 4-Bit Binary Counter Using Verilog

## Description

A **4-bit binary counter** is a sequential digital circuit that counts from `0000` to `1111` in binary. The counter increments its value by one on every rising edge of the clock and returns to `0000` after reaching `1111`.

This project implements a synchronous 4-bit binary up counter using Verilog HDL. A reset input is provided to initialize the counter to zero.

## Features

* 4-bit binary up counter
* Counts from 0 to 15
* Positive-edge clock operation
* Synchronous active-high reset
* Verilog HDL implementation
* Testbench for functional verification
* Simulation waveform generation

## Inputs and Outputs

| Signal  | Direction | Description         |
| ------- | --------- | ------------------- |
| `clk`   | Input     | Clock signal        |
| `reset` | Input     | Synchronous reset   |
| `count` | Output    | 4-bit counter value |

## Working Principle

The counter increments by one at every rising edge of the clock.

The counting sequence is:

```text
0000 → 0001 → 0010 → 0011 → 0100
  ↓
0101 → 0110 → 0111 → 1000 → 1001
  ↓
1010 → 1011 → 1100 → 1101 → 1110
  ↓
1111 → 0000
```

When `reset = 1`, the counter is cleared to `0000`.

## Truth Table / Counting Sequence

| Decimal | Binary |
| ------: | :----: |
|       0 | `0000` |
|       1 | `0001` |
|       2 | `0010` |
|       3 | `0011` |
|       4 | `0100` |
|       5 | `0101` |
|       6 | `0110` |
|       7 | `0111` |
|       8 | `1000` |
|       9 | `1001` |
|      10 | `1010` |
|      11 | `1011` |
|      12 | `1100` |
|      13 | `1101` |
|      14 | `1110` |
|      15 | `1111` |

After `1111`, the counter wraps around to `0000`.

## Applications

Binary counters are used in:

* Digital clocks
* Frequency counters
* Timers
* Event counters
* Digital control systems
* Address generation
* Frequency division circuits
* Microprocessor and digital systems

## Files

* `README.md` – Project documentation.
* `binary_counter_4bit.v` – 4-bit binary counter design.
* `binary_counter_4bit_tb.v` – Testbench.
* `simulation_output.txt` – Expected simulation results.

## Tools Used

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado
* GTKWave
* GitHub

## How to Run

Compile the design and testbench:

```bash
iverilog -o counter_sim binary_counter_4bit.v binary_counter_4bit_tb.v
```

Run the simulation:

```bash
vvp counter_sim
```

View the waveform:

```bash
gtkwave binary_counter_4bit.vcd
```

## Expected Result

The counter should start at `0000` after reset and increment by one at every rising edge of the clock until it reaches `1111`. The next clock edge should make the counter wrap around to `0000`.

## Conclusion

The 4-bit binary counter successfully demonstrates sequential logic and clock-based counting using Verilog HDL. The simulation verifies all 16 possible counter states.

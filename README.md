# VHDL Generic Counter Overflow Issue

This repository demonstrates a common error in VHDL when using generics to define the width of a counter.  The original code (`counter.vhdl`) suffers from integer overflow when the generic `N` is large, leading to incorrect counter behavior.  The fixed version (`counter_fixed.vhdl`) uses unsigned integers to resolve this.

## Problem

The `counter.vhdl` example uses a standard integer type for the counter.  When `N` is large enough, incrementing `internal_count` can cause integer overflow, resulting in unexpected counter behavior, potentially wrapping around to negative values or producing unpredictable results. 

## Solution

The `counter_fixed.vhdl` uses an `unsigned` type for the internal counter. This prevents overflow issues by saturating at the maximum value, instead of wrapping around.

## Usage

1.  Synthesize and simulate both VHDL files.  Observe the behavior for different values of `N`, particularly for larger values that might cause an overflow with the standard integer type.  You can easily modify the generic value for N.
2.  Test with different synthesis tools to see if the different tools handle overflow differently.
3.  Compare the simulation results for both versions, demonstrating the correctness of the corrected version.

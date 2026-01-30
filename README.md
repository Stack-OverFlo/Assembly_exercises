# Assembly Language Exercises

This repository contains a collection of assembly language exercises completed during my academic coursework.

The programs were written as part of my studies to practice low-level programming concepts such as memory manipulation, control flow, and arithmetic operations using assembly language.

These exercises are preserved for reference and documentation purposes.

---

## Exercise 1: ASCII Case Conversion

**File:** `ascii_case_toggle.asm`

### Description

This program iterates over a string of ASCII characters stored in memory starting at address `C0`.

For each character:
- uppercase letters (`'A'` to `'Z'`) are converted to lowercase
- lowercase letters (`'a'` to `'z'`) are converted to uppercase
- non-alphabetic characters remain unchanged

The conversion is performed directly in memory by manipulating ASCII values.  
The program stops after processing the last character of the string.

---

## Exercise 2: Prime Number Detection

**File:** `prime_number.asm`

### Description

This program checks whether a given integer stored in register `AL` is a prime number.

The algorithm tests divisibility starting from 2 and uses a modulo operation to detect non-prime numbers.  
If a divisor is found, the number is marked as not prime; otherwise, it is considered prime.

The result is returned in register `AL`:
- `AL = 1` → prime number  
- `AL = 0` → not a prime number

---

## Notes

- These programs reflect the constraints and instruction set used during my coursework.
- The focus is on correctness and clarity rather than performance or hardware-specific optimizations.

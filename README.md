# Assembly Language Exercises

This repository contains small educational assembly language programs focused on low-level logic, ASCII manipulation, and basic algorithms.

The goal of these exercises is to practice:
- memory addressing
- conditional jumps
- ASCII character handling
- arithmetic and logical operations
- loop construction in assembly language

---

## Exercise 1: ASCII Case Conversion

**File:** `ascii_case_toggle.asm`

### Description

This program processes a string of ASCII characters stored in memory starting at address `C0`.

For each character in the string:
- uppercase letters (`'A'` to `'Z'`) are converted to lowercase
- lowercase letters (`'a'` to `'z'`) are converted to uppercase
- non-alphabetic characters are left unchanged

The conversion is performed directly in memory using ASCII value manipulation.  
The program stops after processing the last character of the string.

### Concepts covered
- ASCII encoding
- Unsigned comparisons
- Conditional jumps (`JB`, `JA`)
- In-place memory modification
- Looping over memory addresses

---

## Exercise 2: Prime Number Detection

**File:** `prime_number.asm`

### Description

This program determines whether a given integer stored in register `AL` is a prime number.

The algorithm works by:
- testing divisibility starting from 2
- computing the modulo of the number by each divisor
- stopping early if a divisor is found
- concluding the number is prime if no divisor exists before reaching the limit

The result is stored in `AL`:
- `AL = 1` → the number is prime
- `AL = 0` → the number is not prime

### Concepts covered
- Loops and counters
- Modulo operation
- Conditional branching
- Basic number theory in assembly
- Program flow control

---

## Notes

These programs are written for educational purposes and prioritize clarity and understanding over hardware-specific optimizations.

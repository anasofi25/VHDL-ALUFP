# 🖥️ VHDL ALU - Floating Point Subtraction & Division 🔢  

The **VHDL ALU (Arithmetic Logic Unit)** for **floating-point subtraction** and **division** is a custom design project that allows efficient and accurate mathematical operations on floating-point numbers. This ALU leverages VHDL (VHSIC Hardware Description Language) to perform high-level arithmetic computations suitable for a wide range of applications in digital systems.

## 📌 Table of Contents  

1. [Introduction](#introduction)  
2. [Features](#features)  
3. [🚀 Getting Started](#getting-started)  
4. [🧑‍💻 ALU Operations](#alu-operations)  
   - [Floating Point Subtraction](#floating-point-subtraction)  
   - [Floating Point Division](#floating-point-division)  
5. [🔧 Implementation Details](#implementation-details)  
   - [VHDL Code](#vhdl-code)  
   - [Testbench](#testbench)  
6. [📝 To-Do](#to-do)  
7. [📷 Screenshots](#screenshots)  

---

## 🌟 Introduction  

This **VHDL ALU** project provides an efficient way to handle **floating-point arithmetic** operations, specifically **subtraction** and **division**. The design focuses on supporting **IEEE 754 standard** for floating-point representation, ensuring compatibility with most systems. It can be integrated into larger digital systems, such as processors and embedded devices, to perform high-speed calculations.

---

## 🚀 Features  

✅ **Floating Point Subtraction:** Perform subtraction of two floating-point numbers.  
✅ **Floating Point Division:** Perform division of two floating-point numbers.  
✅ **IEEE 754 Standard Compliance:** Ensures accurate floating-point operations.  
✅ **VHDL Code:** Optimized VHDL code for hardware implementation.  
✅ **Testbench:** Complete testbench for validating operations.  

---

## 🧑‍💻 ALU Operations  

### 🔹 Floating Point Subtraction  
- This operation subtracts two **floating-point numbers** based on their **mantissas** and **exponents**.  
- Handles both **positive and negative numbers** with proper rounding and error handling.  

### 🔹 Floating Point Division  
- The division operation divides two **floating-point numbers** by aligning the exponents and adjusting the mantissas.  
- It also handles special cases such as **divide by zero** and results like **infinity** or **NaN** (Not a Number).

---

## 🔧 Implementation Details  

### 🔹 VHDL Code  
The ALU is implemented using **VHDL** code that defines entities and architectures to perform both subtraction and division. The code leverages the following modules:  
- **Subtraction Module:** Performs bitwise subtraction based on floating-point representation.  
- **Division Module:** Implements the division algorithm with exception handling for edge cases.  

### 🔹 Testbench  
A **testbench** is included to validate the functionality of the ALU. It checks for correct subtraction and division results across multiple test cases, ensuring the ALU handles corner cases (like zero division) and performs accurate operations.

---

## 📝 To-Do  

🔹 **Optimize performance** for larger data sets.  
🔹 **Add additional floating-point operations**, such as multiplication and addition.  
🔹 **Improve test coverage** with more edge cases.  

---


🚀 **Start optimizing your floating-point operations with the VHDL ALU today!** Happy Designing! 🖥️💡

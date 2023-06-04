# CS293C-MIPS_VM-taanya

Building a custom VM for MIPS architecture.

# Steps to execute
- For converting C++ programs to Assembly files
### python highlevel_to_assembly.py
- For converting assembly file to bytecode
### python assembly_to_bytecode.py tests/easy/auto_integers_basic.asm
- For executing bytecode
### python3 bytecode_execution.py -file tests/easy/auto_integers_basic_io.asm -inputs 8 20 -5
- Example assert statement
### assert run_vm("tests/easy/auto_integers_basic_io.asm", [8, 20, -5]) == [8, 20, -5]

# Conversion from Assembly Code to Byte Code
- [x] Arithmetic & Logical Instructions
- [x] Branch and Jump Instructions
- [x] Functions
- [x] Data Segment
- [ ] Floats
- [x] Arrays
- [ ] String
- [x] Print Statements

# Execution of Byte Code
- [x] Arithmetic & Logical Instructions
- [x] Branch and Jump Instructions
- [x] Unsigned & Negative Numbers
- [x] Functions
- [x] Data Segment
- [ ] Floats
- [x] Arrays
- [ ] String
- [x] Print Statements

# Possible ways to go about the next work

- [ ] Support Floats
- [ ] Support boolean and characters (YES)
- [ ] Support strings (YES)
- [x] Support print statements (YES)
- [x] Support input (YES)
- [ ] Implement a tool to be able to visualize the existing work
- [ ] Optimize the code and focus on performance

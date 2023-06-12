# CS293C-MIPS_VM-taanya

Building a custom VM for MIPS architecture.

# Requirements
- Python version 3
- Clang

# Steps to execute
- To ensure clang has the required extensions (this is not needed when running only asm files)
```
make
```
- To ensure the code is working properly through tests
```
make test
```
- For converting C++ programs to Assembly files
```
python highlevel_to_assembly.py
```
- For converting assembly file to bytecode
```
python assembly_to_bytecode.py tests/easy/auto_integers_basic.asm
```
- For executing bytecode
```
python bytecode_execution.py --asm tests/demo/auto_binary_search.asm
python bytecode_execution.py --source examples/demo/reverse_string.cpp
```
- Example of an assert statement
```
assert run_vm("tests/easy/auto_integers_basic_io.asm", [8, 20, -5]) == [8, 20, -5]
```

# References
- [Main Instruction Reference](https://phoenix.goucher.edu/~kelliher/f2009/cs220/mipsir.html)
- [Load/Save Instructions](https://courses.cs.duke.edu/fall02/cps104/homework/lwswlr.html)
- [Instruction Summary](http://alumni.cs.ucr.edu/~vladimir/cs161/mips.html)

# Conversion from Assembly Code to Byte Code
- [x] Arithmetic & Logical Instructions
- [x] Branch and Jump Instructions
- [x] Functions
- [x] Data Segment
- [ ] Floats
- [x] Arrays
- [x] String
- [x] Print Statements

# Execution of Byte Code
- [x] Arithmetic & Logical Instructions
- [x] Branch and Jump Instructions
- [x] Unsigned & Negative Numbers
- [x] Functions
- [x] Data Segment
- [ ] Floats
- [x] Arrays
- [x] String
- [x] Print Statements

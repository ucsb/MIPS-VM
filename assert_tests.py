from bytecode_execution import *

"""
Assert statments on the asm files stored under tests with inputs and expected outputs.
run_vm() function assembles the file and executes the corresponding bytecode.
"""

# easy
assert run_vm("tests/easy/auto_integers_arithmetic.asm", [4, 5, 6]) == [0, 10, 5]
assert run_vm("tests/easy/auto_integers_basic.asm", [1, 2, 3]) == [1, 2, 3]
assert run_vm("tests/easy/auto_integers_basic_io.asm", [1, 2, 30]) == [1, 2, 30]
assert run_vm("tests/easy/auto_integers_global_value.asm", []) == [5]
assert run_vm("tests/easy/auto_integers_conditionals.asm", [5, 10]) == [5, 10, 15]
assert run_vm("tests/easy/auto_integers_logical.asm", [8, 10]) == [8, 27]
assert run_vm("tests/easy/auto_integers_nested_conditions.asm", [4, 5, -8]) == [
    5,
    1,
    -10,
]
assert run_vm("tests/easy/auto_integers_shift.asm", [10, 20]) == [10, 20, 2, 80]
assert run_vm(
    "tests/easy/auto_integers_signed.asm", [2, -5, -3, 4, 5, 2, -5, 2, 5, -5, -10]
) == [-3, 1, 0, 2, 7, -5, 20, -20, -3]
assert run_vm("tests/easy/auto_integers_switch.asm", [2, 0]) == [5]
assert run_vm("tests/easy/auto_integers_while_loop.asm", [10, 0]) == [0, 5]

# medium
assert run_vm("tests/medium/auto_fibonacci.asm", [5, 10]) == [5, 55, -50]
assert run_vm("tests/medium/auto_integers_for_loop.asm", [0, 5]) == [15]
assert run_vm("tests/medium/auto_integers_nested_loops.asm", [5, 7, 0]) == [35]
assert run_vm("tests/medium/auto_integers_pass_by_ref_funcs.asm", [5, 10]) == [15, 5]
assert run_vm("tests/medium/auto_integers_pass_by_val_funcs.asm", [5, 10]) == [
    5,
    10,
    15,
]
assert run_vm("tests/medium/auto_multiple_calls_functions.asm", [0, 10]) == [60]
assert run_vm("tests/medium/auto_integers_mult.asm", [5, 3]) == [15]
assert run_vm("tests/medium/auto_integers_div.asm", [3, 5]) == [1, 2]

# hard
assert run_vm(
    "tests/hard/auto_array_integers_basic.asm",
    [7, -3, -2, -1, 0, 1, 2, 3, 2, 3, 1, 2, 3, 2],
) == [-3, -2, 9, 0, 1, 2, 3, 1, 2, 8]
assert run_vm("tests/hard/auto_merge_sort.asm", [5, 2, 4, 3, 1, 5]) == [1, 2, 3, 4, 5]
assert run_vm("tests/hard/auto_print_basic.asm", [5, 10, 15]) == [5, 10, 15]
assert run_vm("tests/hard/auto_pointers_integers_basic.asm", []) == [25, 50, 75, 100]
assert run_vm("tests/hard/auto_arrays_dynamic_integers.asm", [4, 5, 2, -3, 1]) == [
    25,
    4,
    9,
    1,
]
assert run_vm("tests/hard/auto_print_arrays_integers.asm", [4, 5, 2, -3, 1]) == [
    25,
    4,
    9,
    1,
]
assert run_vm(
    "tests/hard/auto_strings_input.asm",
    [14, "H", "e", "l", "l", "o", ",", " ", "W", "o", "r", "l", "d", "!", "\0"],
) == [
    "Enter the string to be stored:\n",
    "The entered string is:\n",
    "Hello, World!",
    "\n",
]

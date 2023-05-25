from bytecode_execution import *

#easy
assert run_vm('tests/easy/auto_integers_basic_io.asm', [1, 2, 30])==[1,2,30]
assert run_vm('tests/easy/auto_integers_arithmetic.asm', [4, 5, 6])==[0,10,5]
assert run_vm('tests/easy/auto_integers_basic.asm', [1, 2, 3])==[1,2,3]
assert run_vm('tests/easy/auto_integers_conditionals.asm', [5, 10])==[5,10,15]
assert run_vm('tests/easy/auto_integers_logical.asm', [8,10])==[8, 27]
assert run_vm('tests/easy/auto_integers_nested_conditionals.asm', [4, 5, -8])==[5, 1, -10]
assert run_vm('tests/easy/auto_integers_shift.asm', [10, 20])==[2, 80]
assert run_vm('tests/easy/auto_integers_signed.asm', [2, -5, -3, 4, 5, 2, -5, 2, 5, -5, -10])==[-3, 1, 0, 2, 7, -5, 20, -20, -2]
assert run_vm('tests/easy/auto_integers_switch.asm', [2,0])==[5]
assert run_vm('tests/easy/auto_integers_while_loop.asm', [10, 0])==[0,5]

#medium
assert run_vm('tests/medium/auto_fibonacci.asm',[5, 10]) == [5, 55, -50]
assert run_vm('tests/medium/auto_integers_for_loop.asm',[0, 5]) == [15]
assert run_vm('tests/medium/auto_integers_nested_loop.asm',[5, 7, 0 ]) == [35]
assert run_vm('tests/medium/auto_integers_pass_by_ref_funcs.asm',[5, 10]) == [15, 5]
assert run_vm('tests/medium/auto_integers_pass_by_val_funcs.asm',[5, 10]) == [5, 10, 15]
assert run_vm('tests/medium/auto_multiple_calls_functions.asm',[0,10 ]) == [60]

#hard
assert run_vm('tests/hard/auto_array_integers_basic.asm',[7, -3, -2, -1, 0, 1, 2, 3, 2, 3, 1, 2, 3, 2]) == [-3,-2,9,0,1,2,3,1,2,8]
assert run_vm('tests/hard/auto_merge_sort.asm',[5, 2, 4, 3, 1, 5]) == [1, 2, 3, 4, 5]
assert run_vm('tests/hard/auto_print_basic.asm',[5, 10, 15]) == [5, 10, 15]
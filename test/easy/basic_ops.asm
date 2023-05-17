add $t0, $t1, $t2
add $t1, $0, $t3
add $a3, $a2, $0

addi $s1, $0, 9
addi $s2, $t1, 5

and $s1, $t1, $t2
and $s1, $s1, $s2
and $t3, $t1, $t2
and $t1, $t1, $t2
and $a3, $a1, $a2

andi $t2, $t1, 5 
andi $s2, $s1, 0 
andi $t2, $t1, 13

jr $t5
jr $t6
jr $a3
jr $a2

lw $t5, 4($t1)
lw $t5, 4($s1)
lw $t5, 8($s5)
lw $t5, 12($s3)


xor $t1, $t8, $t9
xor $t1, $t8, $t8

or $t2, $t7, $t9
or $t2, $t7, $t7

ori $t2, $t7, 7
ori $t2, $t7, 0

sw $t5, 4($t1)
sw $s2, 8($t5)
sw $s3, 12($t6)


slt $t4, $t5, $t6
slt $t4, $t5, $t5


slti $t5, $t6, 5
slti $t5, $t5, 0
slti $t5, $t5, 6 


sll $t6 $t4 $t5
sll $s3 $s2 $s1
sll $t6 $t4 $0

sub $s1, $t1, $t2
sub $s1, $s1, $s2
sub $t3, $t1, $t2
sub $t1, $t1, $t2
sub $a3, $a1, $a2
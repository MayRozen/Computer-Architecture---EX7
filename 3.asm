lui $s0, 0x1001
ori $s0, 0x1020
addi $s1, $s0, 1
xor $s2, $s2, $s2
addi $t1, $s0, 31

insert:
sw $s1, 0($s0)
addi $s0, $s0, 4
addi $s1, $s1, 2
addi $s2, $s2, 1
bne $s1, $t1, insert
j done 

done:
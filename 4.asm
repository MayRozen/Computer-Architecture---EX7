
addi $t0,$t0,0
addi $t1,$t1,0

loop:
beq $t1,$s2,End
lw $t4,0($s1)
mult $t4,$t4
mfhi $t5
add $s1,$s1,$t1
bne $t5,$0,ELSE
addi $t1,$t1,1
j loop

ELSE:
addi $t1,$t1,1
addi $t0,$t0,1
sub $t5,$t5,$t5
j loop

End:


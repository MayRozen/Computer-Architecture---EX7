
fib:
bgt $a1,1,recurse
add $v0,$a1,$0
jr $ra

recurse:
addi $sp,$sp,-12
sw $ra,0($sp)
sw $a1,4($sp)

addi $a1,$a1,-1
jal fib
sw $v0,8($sp) 

lw $a1, 4($sp)
addi $a1,$a1,-2 
jal fib

lw $t0,8($sp)
add $v0,$v0,$t0
lw $ra,0($sp) 
addi $sp,$sp,12
jr $ra
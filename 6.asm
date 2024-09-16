# $s0 - sum
# $s1 - j
# $s2 - addr
# $s3 - i

StarngeSum:
addi $s0,$0,0 # sum
addi $s1,$0,0 # j
li $t1,3

loop:
ble $s1,$s3,next
lw $t2,0($s2)
mul $t2,$t2,$t1
add $s0,$s0,$t2
subi $s1,$s1,1 # j--
addi $s1,$s1,3 # j+3 
add $s2,$s2,$s1
j loop

next:
jal multi
j done

multi:
li $t3,12
mul $s0,$s0,$t3
jr $ra

done:

Addi $a0,$0,1
Addi $a1,$0,-1
Addi $a2,$0,512
Addi $s5,$0,0
Addi $s0,$0,10

loop:
beq $s0,$0,End
mul $t0,$a0,$a1
mul $t1,$t0,$a2
li $t2, 4  
mul $a0,$a0,$t2
li $t3, -1  
mul $a1,$a1,$t3
li $t4, 2  
div $a2,$a2,$t4
Add $s5,$s5,$t1
Add $s0,$s0,$t3
J loop

End:
 

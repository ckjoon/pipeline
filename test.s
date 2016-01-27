	addi $a3,$zero,10		
loop:	addi $a1,$a1,1
	beq $a1,$a3, next_loop
	beq $a1, $a1, loop
next_loop:	addi $a2, $a2, 1
		sw $a2,0x0($zero)
		beq $a2,$a3, halt
		beq $zero,$zero,next_loop

halt: beq $zero, $zero, halt

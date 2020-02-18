addi	$a0, $0,  8		# Set N
addi	$v1, $0,  1		# Set return to at least 1		

addi	$a3, $0,  1			# 	Constant of 1
beq		$a0, $0,  end		#  !0 = 1, jump to end
beq		$a0, $a3, end		#  !1 = 1, jump to end

loop:
	add		$v0, $0, $0		# Set return to 0 
	add		$a2, $0, $a0	# Set second operand to iteration variable
							# First operatond is previous factorial part
			
	mult_loop:
		beq		$a2, $0, loop_end
		add 	$v0, $v0, $v1 
		addi	$a2, $a2, -1
	beq		$0,  $0, mult_loop

loop_end:

add		$v1, $0, $v0		# add result of multiplication to v1
addi	$a0, $a0, -1		# i--
beq		$a0, $0, end		# i = 0 -> escape

beq		$0,  $0,  loop		# jump back to loop

end: 	beq $0, $0, end
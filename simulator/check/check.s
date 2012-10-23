	addu	$r1, $r2, $r3
	subu	$r1, $r2, $r3
	addi	$r1, $r2, 3
	lw	$r1, 3($r2)
	sw	$r1, 3($r2)
	lui	$r1, 2
	slt	$r1, $r2, $r3
	sll	$r1, $r2, 3
	sra	$r1, $r2, 3
	beq	$r1, $r2, .label
	bne	$r1, $r2, .label
	j	.label
	jr	$r1
	jal	.label
	lwcl	$f1, 3($r2)
	swcl	$f1, 3($r2)
	input	$r1
	output	$r1
	ori	$r1, $r2, 3
	add.s	$f1, $f2, $f3
	sub.s	$f1, $f2, $f3
	mul.s	$f1, $f2, $f3
	div.s	$f1, $f2, $f3
	c.eq.s	$f1, $f2
	c.le.s	$f1, $f2
	bclt	.label
	bclf	.label
	lfh	$f1, 2
	lfl	$f1, 2
	fmove	$f1, $f2
	fneg	$f1, $f2
	la	$r1, .label
	bgt	$r1, $r2, .label
	blt	$r1, $r2, .label
	bge	$r1, $r2, .label
	ble	$r1, $r2, .label
.label:
	halt
	
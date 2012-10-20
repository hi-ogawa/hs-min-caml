	j	min_caml_start
mul_sub.464:
	addi	$r4, $r0, 0
	bne	$r3, $r4, beq_else.1094
	addi	$r2, $r0, 0
	jr	$r31
beq_else.1094:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, beq_else.1095
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.464	! calldir-tail
beq_else.1095:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	mul_sub.464	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.467:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, ble_else.1096
	j	mul_sub.464	! calldir-tail
ble_else.1096:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	j	mul_sub.464	! calldir-tail
div_binary_search.470:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r4, -16($r29)
	lw	$r5, -20($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, ble_else.1097
	addi	$r2, $r4, 0
	jr	$r31
ble_else.1097:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, ble_else.1098
	bne	$r2, $r3, beq_else.1099
	lw	$r2, -8($r29)
	jr	$r31
beq_else.1099:
	lw	$r2, -4($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	div_binary_search.470	! calldir-tail
ble_else.1098:
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	div_binary_search.470	! calldir-tail
print_int.482:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, ble_else.1100
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bgt	$r4, $r3, ble_else.1101
	addi	$r2, $r0, 0
	j	ble_cont.1102
ble_else.1101:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1102:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	sw	$r2, -24($r29)
	bgt	$r4, $r3, ble_else.1103
	addi	$r3, $r0, 0
	lw	$r5, -16($r29)
	bne	$r5, $r3, beq_else.1105
	addi	$r2, $r0, 0
	j	beq_cont.1106
beq_else.1105:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1106:
	j	ble_cont.1104
ble_else.1103:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1104:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -24($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	sw	$r2, -36($r29)
	bgt	$r4, $r3, ble_else.1107
	addi	$r3, $r0, 0
	lw	$r5, -28($r29)
	bne	$r5, $r3, beq_else.1109
	addi	$r2, $r0, 0
	j	beq_cont.1110
beq_else.1109:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1110:
	j	ble_cont.1108
ble_else.1107:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1108:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -36($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -44($r29)
	sw	$r2, -48($r29)
	bgt	$r4, $r3, ble_else.1111
	addi	$r3, $r0, 0
	lw	$r5, -40($r29)
	bne	$r5, $r3, beq_else.1113
	addi	$r2, $r0, 0
	j	beq_cont.1114
beq_else.1113:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1114:
	j	ble_cont.1112
ble_else.1111:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1112:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 10000
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -48($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -56($r29)
	sw	$r2, -60($r29)
	bgt	$r4, $r3, ble_else.1115
	addi	$r3, $r0, 0
	lw	$r5, -52($r29)
	bne	$r5, $r3, beq_else.1117
	addi	$r2, $r0, 0
	j	beq_cont.1118
beq_else.1117:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1118:
	j	ble_cont.1116
ble_else.1115:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1116:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -60($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1000
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -60($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -68($r29)
	sw	$r2, -72($r29)
	bgt	$r4, $r3, ble_else.1119
	addi	$r3, $r0, 0
	lw	$r5, -64($r29)
	bne	$r5, $r3, beq_else.1121
	addi	$r2, $r0, 0
	j	beq_cont.1122
beq_else.1121:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1122:
	j	ble_cont.1120
ble_else.1119:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1120:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -72($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 100
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -72($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, ble_else.1123
	addi	$r3, $r0, 0
	lw	$r5, -76($r29)
	bne	$r5, $r3, beq_else.1125
	addi	$r2, $r0, 0
	j	beq_cont.1126
beq_else.1125:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1126:
	j	ble_cont.1124
ble_else.1123:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1124:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	div_binary_search.470	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r0, 10
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	mul.467	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -92($r29)
	sw	$r2, -96($r29)
	bgt	$r4, $r3, ble_else.1127
	addi	$r3, $r0, 0
	lw	$r5, -88($r29)
	bne	$r5, $r3, beq_else.1129
	addi	$r2, $r0, 0
	j	beq_cont.1130
beq_else.1129:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.1130:
	j	ble_cont.1128
ble_else.1127:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.1128:
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
ble_else.1100:
	addi	$r3, $r0, 45
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -4($r29)
	subu	$r2, $r0, $r2
	j	print_int.482	! calldir-tail
print_newline.486:
	addi	$r2, $r0, 10
	output	$r2
	jr	$r31
dbl.488:
	add.s	$f0, $f0, $f0
	jr	$r31
iloop.505:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.1131
	addi	$r2, $r0, 1
	j	print_int.482	! calldir-tail
beq_else.1131:
	sub.s	$f4, $f4, $f6
	add.s	$f4, $f4, $f8
	swcl	$f8, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f4, -12($r29)
	swcl	$f10, -16($r29)
	swcl	$f2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	dbl.488	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f10, -16($r29)
	add.s	$f2, $f0, $f10
	lwcl	$f0, -12($r29)
	mul.s	$f4, $f0, $f0
	mul.s	$f6, $f2, $f2
	add.s	$f8, $f4, $f6
	lfh	$f12, 16512
	lfl	$f12, 0
	c.le.s	$f8, $f12
	bclf	bclt_else.1132
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lwcl	$f8, -4($r29)
	j	iloop.505	! calldir-tail
bclt_else.1132:
	addi	$r2, $r0, 0
	j	print_int.482	! calldir-tail
xloop.494:
	addi	$r4, $r0, 400
	bgt	$r2, $r4, ble_else.1133
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	dbl.488	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lfh	$f2, 17352
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lfh	$f2, 16320
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	dbl.488	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lfh	$f2, 17352
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f10, $f0, $f2
	addi	$r2, $r0, 1000
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f2, 0
	lfl	$f2, 0
	lfh	$f4, 0
	lfl	$f4, 0
	lfh	$f6, 0
	lfl	$f6, 0
	lwcl	$f8, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	iloop.505	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	j	xloop.494	! calldir-tail
ble_else.1133:
	j	print_newline.486	! calldir-tail
yloop.490:
	addi	$r3, $r0, 400
	bgt	$r2, $r3, ble_else.1134
	addi	$r3, $r0, 0
	sw	$r2, -4($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	xloop.494	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	yloop.490	! calldir-tail
ble_else.1134:
	jr	$r31
min_caml_start:
	lui	$r29, 64	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 1
	addi	$r3, $r0, 1
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	yloop.490	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	halt
min_caml_create_array:		! (引数) r2: size, r3: init elem
	addi	$r4, $r2, 0	! r4にサイズ
	ori	$r5, $r0, 0	! r5はindex <- sizeとの比較用に使うだけ
	addi	$r2, $r30, 0	! 配列の先頭のアドレスを返り値にする
CREATE_ARRAY_LOOP:
	blt	$r5, $r4, CREATE_ARRAY_CONTINUE
	jr	$r31
CREATE_ARRAY_CONTINUE:
	sw	$r3, 0($r30)	! hpに要素を入れる
	addi	$r30, $r30, 4	! hpを１要素分だけ伸ばす
	addi	$r5, $r5, 1	! indexをずらす
	j	CREATE_ARRAY_LOOP
! * create_float_array
min_caml_create_float_array:	! (引数) r2: size, f0: init elem(float)
	addi	$r4, $r2, 0
	ori	$r5, $r0, 0
	addi	$r2, $r30, 0
CREATE_FLOAT_ARRAY_LOOP:
	blt	$r5, $r4, CREATE_FLOAT_ARRAY_CONTINUE
	jr	$r31
CREATE_FLOAT_ARRAY_CONTINUE:
	swcl	$f0, 0($r30)	! hpに要素(float)を入れる
	addi	$r30, $r30, 4
	addi	$r5, $r5, 1	
	j CREATE_FLOAT_ARRAY_LOOP

	
! * floor		$f0 + MAGICF - MAGICF
min_caml_floor:
	fmove	$f1, $f0			! ??
	! $f4 <- 0.0
	! fset $f4, 0.0
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0			! if ($f4 <= $f0) goto FLOOR_POSITIVE
	bclf	FLOOR_NEGATIVE			! 偽だったらジャンプ
FLOOR_POSITIVE:
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	FLOOR_POSITIVE_RET		! 8388608.0 < argv[0] なら return
FLOOR_POSITIVE_MAIN:
	fmove	$f1, $f0			! ??
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r30)
	lw	$r3, 0($r30)			! なんでr3に入れる??
	sub.s	$f0, $f0, $f2
	swcl	$f0, 0($r30)
	lw	$r3, 0($r30)
	c.le.s	$f0, $f1			! 
	bclf	FLOOR_POSITIVE_RET
	jr $r31
FLOOR_POSITIVE_RET:
	! $f3 <- 1.0
	! fset $f3, 1.0
	lfh	$f3, 16256
	lfl	$f3, 0
	sub.s	$f0, $f0, $f3
	jr	$r31
FLOOR_NEGATIVE:
	fneg	$f0, $f0
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	FLOOR_NEGATIVE_RET
FLOOR_NEGATIVE_MAIN:
	add.s	$f0, $f0, $f2
	sub.s	$f0, $f0, $f2
	fneg	$f1, $f1
	c.le.s	$f1, $f0
	bclf	FLOOR_NEGATIVE_PRE_RET
	j	FLOOR_NEGATIVE_RET
FLOOR_NEGATIVE_PRE_RET:
	add.s	$f0, $f0, $f2
	! $f3 <- 1.0
	! fset $f3, 1.0
	lfh	$f3, 16256
	lfl	$f3, 0
	add.s	$f0, $f0, $f3
	sub.s	$f0, $f0, $f2
FLOOR_NEGATIVE_RET:
	fneg	$f0, $f0
	jr	$r31
	
min_caml_ceil:
	fneg	$f0, $f0
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	min_caml_floor
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	fneg	$f0, $f0
	jr	$r31

! * float_of_int
min_caml_float_of_int:
	blt $r2, $r0, ITOF_NEGATIVE_MAIN		! if ($r0 <= $r2) goto ITOF_MAIN
ITOF_MAIN:
	! $f1 <- 8388608.0(0x4b000000)	2**23
	lfh	$f1, 19200
	lfl	$f1, 0
	! $r3 <- 0x4b000000
	lui	$r3, 19200
	ori	$r3, $r3, 0
	! $r4 <- 0x00800000		! r4 <- 2**23
	lui	$r4, 128
	ori	$r4, $r4, 0
	blt	$r2, $r4, ITOF_SMALL	! argv[0] と 2**23の比較
ITOF_BIG:
	! $f2 <- 0.0
	lfh	$f2, 0
	lfl	$f2, 0
ITOF_LOOP:
	subu	$r2, $r2, $r4		! argv[0] から 2**23を引いてく
	add.s	$f2, $f2, $f1		! loop毎に (float)2**23を加算
	blt	$r2, $r4, ITOF_RET
	j	ITOF_LOOP
ITOF_RET:
	addu	$r2, $r2, $r3
	sw	$r2, 0($r30)		! heap上で変換
	lwcl	$f0, 0($r30)
	sub.s	$f0, $f0, $f1
	add.s	$f0, $f0, $f2
	jr $r31
ITOF_SMALL:
	addu	$r2, $r2, $r3		! r2 <- argv[0] + 0x4b000000
	sw	$r2, 0($r30)		! heap上で r から fへ
	lwcl	$f0, 0($r30)		! 
	sub.s	$f0, $f0, $f1		! (float)2**23で引く
	jr	$r31
ITOF_NEGATIVE_MAIN:
	subu	$r2, $r0, $r2
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	ITOF_MAIN
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	fneg	$f0, $f0
	jr	$r31

! * int_of_float	(ftoi)
min_caml_int_of_float:
	! $f1 <- 0.0
	! fset $f1, 0.0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0		! if (0.0 <= argv[0])
	bclf	FTOI_NEGATIVE_MAIN	! 偽だったら飛ぶ
FTOI_POSITIVE_MAIN:
	sw	$r31, -4($r29)		
	addi	$r29, $r29, -4		
	jal	min_caml_floor		! ??floorする必要はあるの(とりあえずつける)
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)		
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	! $r3 <- 0x4b000000	! floatの 2**23
	lui	$r3, 19200
	ori	$r3, $r3, 0
	c.le.s	$f2, $f0	! if (0x4b000000 <= argv[0](floored?))
	bclf	FTOI_SMALL	! 偽だったら飛ぶ
	! $r4 <- 0x00800000	! intの 2**23
	lui	$r4, 128
	ori	$r4, $r4, 0
	ori	$r2, $r0, 0	! r2 <- 0
FTOI_LOOP:
	sub.s	$f0, $f0, $f2	! f0 <- argv[0] -. (0x4b000000)
	addu	$r2, $r2, $r4	! r2 に 2**23を足していく
	c.le.s	$f2, $f0	! if (0x4b000000 <= f0)
	bclf	FTOI_RET	
	j	FTOI_LOOP	! 真だったらloop
FTOI_RET:
	add.s	$f0, $f0, $f2	! FTOI_SMALLと同じ流れ
	swcl	$f0, 0($r30)
	lw	$r4, 0($r30)
	subu	$r4, $r4, $r3
	addu	$r2, $r2, $r4	! loop中に重ねた[r2]とsmallで求めた[r4]を加算
	jr	$r31
FTOI_SMALL:
	add.s	$f0, $f0, $f2	! f0 <- argv[0] +. (2**23)
	swcl	$f0, 0($r30)	! heap上で変換(??)
	lw	$r2, 0($r30)	! heap上で変換(??)
	subu	$r2, $r2, $r3	! r2 <- (int)f0 - (2**23)
	jr	$r31
FTOI_NEGATIVE_MAIN:
	fneg	$f0, $f0
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	FTOI_POSITIVE_MAIN
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	subu	$r2, $r0, $r2
	jr	$r31
	
! * truncate
min_caml_truncate:
	j	min_caml_int_of_float

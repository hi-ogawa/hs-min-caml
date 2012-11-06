	j	.min_caml_start
.f.5:
	addi	$r2, $r2, 123
	jr	$r31
.g.7:
	lw	$r2, 4($r28)
	jr	$r31
.min_caml_start:
	lui	$r29, 64	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r30, 0
	addi	$r30, $r30, 4
	la	$r3, .f.5
	sw	$r3, 0($r2)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 8
	la	$r3, .g.7
	sw	$r3, 0($r28)
	sw	$r2, 4($r28)
	addi	$r2, $r0, 456
	sw	$r31, -4($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -4	! callcls
	jal	.mendoi2.20	! callcls
	j	.mendoi1.19	! callcls
.mendoi2.20:	! callcls
	jr	$r27	! callcls
.mendoi1.19:	! callcls
	addi	$r29, $r29, 4	! callcls
	lw	$r31, -4($r29)	! callcls
	addi	$r28, $r2, 0	! callcls
	addi	$r2, $r0, 789
	sw	$r31, -4($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -4	! callcls
	jal	.mendoi2.22	! callcls
	j	.mendoi1.21	! callcls
.mendoi2.22:	! callcls
	jr	$r27	! callcls
.mendoi1.21:	! callcls
	addi	$r29, $r29, 4	! callcls
	lw	$r31, -4($r29)	! callcls
	halt

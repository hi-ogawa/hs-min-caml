	j	.min_caml_start
.adder.11:
	lw	$r3, 4($r28)
	addu	$r2, $r3, $r2
	jr	$r31
.make_adder.5:
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	la	$r4, .adder.11
	sw	$r4, 0($r3)
	sw	$r2, 4($r3)
	addi	$r2, $r3, 0
	jr	$r31
.min_caml_start:
	lui	$r29, 64	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r0, 3
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.make_adder.5	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r28, $r2, 0	! calldir
	addi	$r2, $r0, 7
	sw	$r31, -4($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -4	! callcls
	jal	.mendoi2.18	! callcls
	j	.mendoi1.17	! callcls
.mendoi2.18:	! callcls
	jr	$r27	! callcls
.mendoi1.17:	! callcls
	addi	$r29, $r29, 4	! callcls
	lw	$r31, -4($r29)	! callcls
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_print_int	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	halt

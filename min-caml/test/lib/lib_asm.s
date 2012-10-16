!----------------------------------------------------------------------
!
! lib_asm.s
!
!----------------------------------------------------------------------
! * create_array
min_caml_create_array:
	add $r4, $r2, $r28
	mov $r2, $r28
CREATE_ARRAY_LOOP:
	blt  $r28, $r4, CREATE_ARRAY_CONTINUE
	jr $r31
CREATE_ARRAY_CONTINUE:
	sti $r3, $r28, 0	
	addi $r28, $r28, 1	
	j CREATE_ARRAY_LOOP
! * create_float_array
min_caml_create_float_array:
	add $r3, $r2, $r28
	mov $r2, $r28
CREATE_FLOAT_ARRAY_LOOP:
	blt $r28, $r3, CREATE_FLOAT_ARRAY_CONTINUE
	jr $r31
CREATE_FLOAT_ARRAY_CONTINUE:
	fsti $f0, $r28, 0
	addi $r28, $r28, 1
	j CREATE_FLOAT_ARRAY_LOOP

! * floor		$f0 + MAGICF - MAGICF
min_caml_floor:
	fmov $f1, $f0
	! $f4 <- 0.0
	! fset $f4, 0.0
	mvhi $r27, 0
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f4, $r1, 0

	fblt $f0, $f4, FLOOR_NEGATIVE	! if ($f4 <= $f0) goto FLOOR_PISITIVE
FLOOR_POSITIVE:
	! $f2 <- 8388608.0(0x4b000000)
	mvhi $r27, 19200
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f2, $r1, 0

	fblt $f2, $f0, FLOOR_POSITIVE_RET
FLOOR_POSITIVE_MAIN:
	fmov $f1, $f0
	fadd $f0, $f0, $f2
	fsti $f0, $r1, 0
	ldi $r3, $r1, 0
	fsub $f0, $f0, $f2
	fsti $f0, $r1, 0
	ldi $r3, $r1, 0
	fblt $f1, $f0, FLOOR_POSITIVE_RET
	jr $r31
FLOOR_POSITIVE_RET:
	! $f3 <- 1.0
	! fset $f3, 1.0
	mvhi $r27, 16256
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f3, $r1, 0

	fsub $f0, $f0, $f3
	jr $r31
FLOOR_NEGATIVE:
	fneg $f0, $f0
	! $f2 <- 8388608.0(0x4b000000)
	mvhi $r27, 19200
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f2, $r1, 0

	fblt $f2, $f0, FLOOR_NEGATIVE_RET
FLOOR_NEGATIVE_MAIN:
	fadd $f0, $f0, $f2
	fsub $f0, $f0, $f2
	fneg $f1, $f1
	fblt $f0, $f1, FLOOR_NEGATIVE_PRE_RET
	j FLOOR_NEGATIVE_RET
FLOOR_NEGATIVE_PRE_RET:
	fadd $f0, $f0, $f2
	! $f3 <- 1.0
	! fset $f3, 1.0
	mvhi $r27, 16256
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f3, $r1, 0

	fadd $f0, $f0, $f3
	fsub $f0, $f0, $f2
FLOOR_NEGATIVE_RET:
	fneg $f0, $f0
	jr $r31
	
min_caml_ceil:
	fneg $f0, $f0
	sti $r31, $r1, 0
	addi $r1, $r1, -1
	jal min_caml_floor
	addi $r1, $r1, 1
	ldi $r31, $r1, 0
	fneg $f0, $f0
	jr $r31

! * float_of_int
min_caml_float_of_int:
	blt $r2, $r0, ITOF_NEGATIVE_MAIN		! if ($r0 <= $r2) goto ITOF_MAIN
ITOF_MAIN:
	! $f1 <- 8388608.0(0x4b000000)
	mvhi $r27, 19200
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f1, $r1, 0

	! $r3 <- 0x4b000000
	mvhi $r3, 19200
	mvlo $r3, 0
	! $r4 <- 0x00800000
	mvhi $r4, 128
	mvlo $r4, 0
	blt $r2, $r4, ITOF_SMALL
ITOF_BIG:
	! $f2 <- 0.0
	! fset $f2, 0.0
	mvhi $r27, 0
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f2, $r1, 0

ITOF_LOOP:
	sub $r2, $r2, $r4
	fadd $f2, $f2, $f1
	blt $r2, $r4, ITOF_RET
	j ITOF_LOOP
ITOF_RET:
	add $r2, $r2, $r3
	sti $r2, $r1, 0
	fldi $f0, $r1, 0
	fsub $f0, $f0, $f1
	fadd $f0, $f0, $f2
	jr $r31
ITOF_SMALL:
	add $r2, $r2, $r3
	sti $r2, $r1, 0
	fldi $f0, $r1, 0
	fsub $f0, $f0, $f1
	jr $r31
ITOF_NEGATIVE_MAIN:
	sub $r2, $r0, $r2
	sti $r31, $r1, 0
	addi $r1, $r1, -1
	jal ITOF_MAIN
	addi $r1, $r1, 1
	ldi $r31, $r1, 0
	fneg $f0, $f0
	jr $r31

! * int_of_float	(ftoi)
min_caml_int_of_float:
	! $f1 <- 0.0
	! fset $f1, 0.0
	mvhi $r27, 0
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f1, $r1, 0

	fblt $f0, $f1, FTOI_NEGATIVE_MAIN			! if (0.0 <= $f0) goto FTOI_MAIN
FTOI_POSITIVE_MAIN:
	sti $r31, $r1, 0
	addi $r1, $r1, -1
	jal min_caml_floor
	addi $r1, $r1, 1
	ldi $r31, $r1, 0
	! $f2 <- 8388608.0(0x4b000000)
	mvhi $r27, 19200
	mvlo $r27, 0
	sti $r27, $r1, 0
	fldi $f2, $r1, 0

	! $r3 <- 0x4b000000
	mvhi $r3, 19200
	mvlo $r3, 0
	fblt $f0, $f2, FTOI_SMALL		! if (MAGICF <= $f0) goto FTOI_BIG
	! $r4 <- 0x00800000
	mvhi $r4, 128
	mvlo $r4, 0
	mov $r2, $r0
FTOI_LOOP:
	fsub $f0, $f0, $f2
	add $r2, $r2, $r4
	fblt $f0, $f2, FTOI_RET
	j FTOI_LOOP
FTOI_RET:
	fadd $f0, $f0, $f2
	fsti $f0, $r1, 0
	ldi $r4, $r1, 0
	sub $r4, $r4, $r3
	add $r2, $r4, $r2
	jr $r31
FTOI_SMALL:
	fadd $f0, $f0, $f2
	fsti $f0, $r1, 0
	ldi $r2, $r1, 0
	sub $r2, $r2, $r3
	jr $r31
FTOI_NEGATIVE_MAIN:
	fneg $f0, $f0
	sti $r31, $r1, 0
	addi $r1, $r1, -1
	jal FTOI_POSITIVE_MAIN
	addi $r1, $r1, 1
	ldi $r31, $r1, 0
	sub $r2, $r0, $r2
	jr $r31
	
! * truncate
min_caml_truncate:
	j min_caml_int_of_float
	
! ビッグエンディアン
min_caml_read_int:
	add $r2, $r0, $r0
	! 24 - 31
	inputb $r3
	add $r2, $r2, $r3
	slli $r2, $r2, 8
	! 16 - 23
	inputb $r3
	add $r2, $r2, $r3
	slli $r2, $r2, 8
	! 8 - 15
	inputb $r3
	add $r2, $r2, $r3
	slli $r2, $r2, 8
	! 0 - 7
	inputb $r3
	add $r2, $r2, $r3
	jr $r31

min_caml_read_float:
	sti $r31, $r1, 0
	addi $r1, $r1, -1
	jal min_caml_read_int
	addi $r1, $r1, 1
	ldi $r31, $r1, 0
	sti $r2, $r1, 0
	fldi $f0, $r1, 0
	jr $r31
!----------------------------------------------------------------------
!
! lib_asm.s
!
!----------------------------------------------------------------------

	lfh	$f30, 0
	lfl	$f30, 0
	lfh	$f31, 16256
	lfl	$f31, 0
	lfh	$f29, 49024
	lfl	$f29, 0
	lfh	$f26, 15395
	lfl	$f26, 55050
	lfh	$f27, 48716
	lfl	$f27, 52429
	lfh	$f28, 48588
	lfl	$f28, 52429
	j	min_caml_start
atan_sub.2405:
	lfh	$f3, 16128
	c.le.s	$f3, $f0
	bclf	bclf.22364
	sub.s	$f3, $f0, $f31
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f31
	add.s	$f0, $f0, $f2
	div.s	$f2, $f4, $f0
	fmove	$f0, $f3
	j	atan_sub.2405
bclf.22364:
	fmove	$f0, $f2
	jr	$r31
atan.2419:
	c.le.s	$f0, $f31
	bclf	bclf.22366
	c.le.s	$f29, $f0
	bclf	bclf.22368
	addi	$r2, $r0, 0
	j	cont.22365     ! elimjump
bclf.22368:
	addi	$r2, $r0, -1
cont.22367:
	j	cont.22365
bclf.22366:
	addi	$r2, $r0, 1
cont.22365:
	bnei	$r2, 0, bnei.22370
	j	cont.22369
bnei.22370:
	div.s	$f0, $f31, $f0
cont.22369:
	lfh	$f1, 16688
	mul.s	$f2, $f0, $f0
	fmove	$f3, $f30
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -4($r29)
	bgti	$r2, 0, bgti.22372
	blti	$r2, 0, blti.22374
	jr	$r31
blti.22374:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
bgti.22372:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
tan_sub.2445:
	lfh	$f3, 16416
	c.le.s	$f3, $f0
	bclf	bclf.22376
	lfh	$f3, 16384
	sub.s	$f3, $f0, $f3
	sub.s	$f0, $f0, $f2
	div.s	$f2, $f1, $f0
	fmove	$f0, $f3
	j	tan_sub.2445
bclf.22376:
	fmove	$f0, $f2
	jr	$r31
tan.2443:
	lfh	$f1, 16656
	mul.s	$f2, $f0, $f0
	fmove	$f3, $f30
	swcl	$f0, -4($r29)
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	tan_sub.2445
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	sub.s	$f0, $f31, $f0
	lwcl	$f1, -4($r29)
	div.s	$f0, $f1, $f0
	jr	$r31
sin_sub.2460:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.22378
	c.le.s	$f30, $f0
	bclf	bclf.22380
	jr	$r31
bclf.22380:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.22378:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
sin.2467:
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.22382
	addi	$r2, $r0, 0
	j	cont.22381
bclf.22382:
	addi	$r2, $r0, 1
cont.22381:
	fabs	$f4, $f0
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f1, -20($r29)
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f1, -20($r29)
	c.le.s	$f0, $f1
	bclf	bclf.22384
	lw	$r2, -16($r29)
	j	cont.22383
bclf.22384:
	lwcl	$f2, -12($r29)
	c.le.s	$f2, $f30
	bclf	bclf.22386
	addi	$r2, $r0, 1
	j	cont.22385
bclf.22386:
	addi	$r2, $r0, 0
cont.22385:
cont.22383:
	c.le.s	$f0, $f1
	bclf	bclf.22388
	j	cont.22387
bclf.22388:
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
cont.22387:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.22390
	j	cont.22389
bclf.22390:
	sub.s	$f0, $f1, $f0
cont.22389:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	tan.2443
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	lw	$r2, -24($r29)
	bnei	$r2, 1, bnei.22392
	jr	$r31
bnei.22392:
	fneg	$f0, $f0
	jr	$r31
read_int_token.2507:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r3, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.22394
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.22396
	addi	$r2, $r0, 0
	j	cont.22393     ! elimjump
bgt.22396:
	addi	$r2, $r0, 1
cont.22395:
	j	cont.22393
bgt.22394:
	addi	$r2, $r0, 1
cont.22393:
	bnei	$r2, 1, bnei.22398
	lw	$r2, -20($r29)
	bnei	$r2, 1, bnei.22400
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	bnei	$r2, 1, bnei.22402
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
bnei.22402:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.22400:
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22398:
	lw	$r2, -16($r29)
	lw	$r4, 0($r2)
	bnei	$r4, 0, bnei.22404
	addi	$r4, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r4, bne.22406
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	cont.22403     ! elimjump
bne.22406:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
cont.22405:
	j	cont.22403
bnei.22404:
cont.22403:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r5, $r3, -48
	addu	$r4, $r4, $r5
	sw	$r4, 0($r2)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)
	jr	$r27
read_int.2543:
	lw	$r2, 12($r28)
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	sw	$r5, 0($r4)
	addi	$r4, $r0, 0
	sw	$r4, 0($r3)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r28, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	lw	$r27, 0($r28)
	jr	$r27
read_float_token1.2565:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r28, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.22408
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.22410
	addi	$r3, $r0, 0
	j	cont.22407     ! elimjump
bgt.22410:
	addi	$r3, $r0, 1
cont.22409:
	j	cont.22407
bgt.22408:
	addi	$r3, $r0, 1
cont.22407:
	bnei	$r3, 1, bnei.22412
	lw	$r3, -20($r29)
	bnei	$r3, 1, bnei.22414
	jr	$r31
bnei.22414:
	addi	$r3, $r0, 0
	lw	$r28, -16($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.22412:
	lw	$r3, -12($r29)
	lw	$r4, 0($r3)
	bnei	$r4, 0, bnei.22416
	addi	$r4, $r0, 45
	lw	$r5, -8($r29)
	bne	$r5, $r4, bne.22418
	addi	$r4, $r0, -1
	sw	$r4, 0($r3)
	j	cont.22415     ! elimjump
bne.22418:
	addi	$r4, $r0, 1
	sw	$r4, 0($r3)
cont.22417:
	j	cont.22415
bnei.22416:
cont.22415:
	lw	$r3, -4($r29)
	lw	$r4, 0($r3)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r5, $r2, -48
	addu	$r4, $r4, $r5
	sw	$r4, 0($r3)
	addi	$r3, $r0, 1
	lw	$r28, -16($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	lw	$r27, 0($r28)
	jr	$r27
read_float_token2.2595:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.22420
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.22422
	addi	$r3, $r0, 0
	j	cont.22419     ! elimjump
bgt.22422:
	addi	$r3, $r0, 1
cont.22421:
	j	cont.22419
bgt.22420:
	addi	$r3, $r0, 1
cont.22419:
	bnei	$r3, 1, bnei.22424
	lw	$r2, -16($r29)
	bnei	$r2, 1, bnei.22426
	jr	$r31
bnei.22426:
	addi	$r2, $r0, 0
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22424:
	lw	$r3, -8($r29)
	lw	$r4, 0($r3)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r2, $r2, -48
	addu	$r2, $r4, $r2
	sw	$r2, 0($r3)
	lw	$r2, -4($r29)
	lw	$r3, 0($r2)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	sw	$r3, 0($r2)
	addi	$r2, $r0, 1
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
read_float.2619:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r5)
	addi	$r8, $r0, 0
	sw	$r8, 0($r6)
	addi	$r8, $r0, 1
	sw	$r8, 0($r7)
	addi	$r8, $r0, 0
	sw	$r8, 0($r4)
	addi	$r8, $r0, 0
	addi	$r9, $r0, 32
	sw	$r4, -4($r29)
	sw	$r7, -8($r29)
	sw	$r6, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	addi	$r28, $r3, 0
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22428
	j	lab1.22427
lab2.22428:
	jr	$r27
lab1.22427:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.22430
	addi	$r2, $r0, 0
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22432
	j	lab1.22431
lab2.22432:
	jr	$r27
lab1.22431:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -24($r29)
	add.s	$f0, $f1, $f0
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	bnei	$r2, 1, bnei.22434
	jr	$r31
bnei.22434:
	fneg	$f0, $f0
	jr	$r31
bne.22430:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	bnei	$r2, 1, bnei.22436
	jr	$r31
bnei.22436:
	fneg	$f0, $f0
	jr	$r31
mul_sub.2655:
	bnei	$r3, 0, bnei.22438
	addi	$r2, $r0, 0
	jr	$r31
bnei.22438:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.22440
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.22440:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
div_binary_search.2674:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	blti	$r3, 0, blti.22442
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r5, -20($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.22444
	addi	$r2, $r4, 0
	jr	$r31
bgti.22444:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.22446
	bne	$r2, $r3, bne.22448
	lw	$r2, -8($r29)
	jr	$r31
bne.22448:
	lw	$r2, -4($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.22446:
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
blti.22442:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r5, -20($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.22450
	addi	$r2, $r4, 0
	jr	$r31
bgti.22450:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.22452
	bne	$r2, $r3, bne.22454
	lw	$r2, -8($r29)
	jr	$r31
bne.22454:
	lw	$r2, -4($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.22452:
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
print_int.2704:
	blti	$r2, 0, blti.22456
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bgti	$r3, 0, bgti.22458
	addi	$r2, $r0, 0
	j	cont.22457
bgti.22458:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22457:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	sw	$r2, -24($r29)
	bgti	$r3, 0, bgti.22460
	lw	$r4, -16($r29)
	bnei	$r4, 1, bnei.22462
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22459     ! elimjump
bnei.22462:
	addi	$r2, $r0, 0
cont.22461:
	j	cont.22459
bgti.22460:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22459:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -24($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -32($r29)
	sw	$r2, -36($r29)
	bgti	$r3, 0, bgti.22464
	lw	$r4, -28($r29)
	bnei	$r4, 1, bnei.22466
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22463     ! elimjump
bnei.22466:
	addi	$r2, $r0, 0
cont.22465:
	j	cont.22463
bgti.22464:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22463:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -36($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -44($r29)
	sw	$r2, -48($r29)
	bgti	$r3, 0, bgti.22468
	lw	$r4, -40($r29)
	bnei	$r4, 1, bnei.22470
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22467     ! elimjump
bnei.22470:
	addi	$r2, $r0, 0
cont.22469:
	j	cont.22467
bgti.22468:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22467:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 10000
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -48($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -56($r29)
	sw	$r2, -60($r29)
	bgti	$r3, 0, bgti.22472
	lw	$r4, -52($r29)
	bnei	$r4, 1, bnei.22474
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22471     ! elimjump
bnei.22474:
	addi	$r2, $r0, 0
cont.22473:
	j	cont.22471
bgti.22472:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22471:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -60($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r0, 1000
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -60($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -68($r29)
	sw	$r2, -72($r29)
	bgti	$r3, 0, bgti.22476
	lw	$r4, -64($r29)
	bnei	$r4, 1, bnei.22478
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22475     ! elimjump
bnei.22478:
	addi	$r2, $r0, 0
cont.22477:
	j	cont.22475
bgti.22476:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22475:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -72($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 100
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -72($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -80($r29)
	sw	$r2, -84($r29)
	bgti	$r3, 0, bgti.22480
	lw	$r4, -76($r29)
	bnei	$r4, 1, bnei.22482
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.22479     ! elimjump
bnei.22482:
	addi	$r2, $r0, 0
cont.22481:
	j	cont.22479
bgti.22480:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r2, $r0, 1
cont.22479:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r6, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r0, 10
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -92($r29)
	bgti	$r3, 0, bgti.22484
	lw	$r4, -88($r29)
	bnei	$r4, 1, bnei.22486
	addi	$r3, $r3, 48
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
bnei.22486:
	addi	$r2, $r2, 48
	j	min_caml_print_char
bgti.22484:
	addi	$r3, $r3, 48
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
blti.22456:
	addi	$r3, $r0, 45
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r2, -4($r29)
	subu	$r2, $r0, $r2
	j	print_int.2704
read_screen_settings.3664:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r28, 4($r28)
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r6, -24($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22488
	j	lab1.22487
lab2.22488:
	jr	$r27
lab1.22487:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22490
	j	lab1.22489
lab2.22490:
	jr	$r27
lab1.22489:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22492
	j	lab1.22491
lab2.22492:
	jr	$r27
lab1.22491:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22494
	j	lab1.22493
lab2.22494:
	jr	$r27
lab1.22493:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -28($r29)
	fmove	$f0, $f1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r28, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22496
	j	lab1.22495
lab2.22496:
	jr	$r27
lab1.22495:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -40($r29)
	fmove	$f0, $f1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lwcl	$f1, -40($r29)
	swcl	$f0, -44($r29)
	fmove	$f0, $f1
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f1, -32($r29)
	mul.s	$f2, $f1, $f0
	lfh	$f3, 17224
	mul.s	$f2, $f2, $f3
	lw	$r2, -16($r29)
	swcl	$f2, 0($r2)
	lfh	$f2, 49992
	lwcl	$f3, -36($r29)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 4($r2)
	lwcl	$f2, -44($r29)
	mul.s	$f4, $f1, $f2
	lfh	$f5, 17224
	mul.s	$f4, $f4, $f5
	swcl	$f4, 8($r2)
	lw	$r3, -12($r29)
	swcl	$f2, 0($r3)
	fmove	$f4, $f30
	swcl	$f4, 4($r3)
	fneg	$f4, $f0
	swcl	$f4, 8($r3)
	fneg	$f4, $f3
	mul.s	$f0, $f4, $f0
	lw	$r3, -8($r29)
	swcl	$f0, 0($r3)
	fneg	$f0, $f1
	swcl	$f0, 4($r3)
	fneg	$f0, $f3
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r3)
	lw	$r3, -24($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 0($r2)
	sub.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	lwcl	$f1, 4($r2)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	lwcl	$f1, 8($r2)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r4)
	jr	$r31
read_light.3742:
	lw	$r2, 16($r28)
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r2, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22498
	j	lab1.22497
lab2.22498:
	jr	$r27
lab1.22497:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r28, -12($r29)
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22500
	j	lab1.22499
lab2.22500:
	jr	$r27
lab1.22499:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	fneg	$f0, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22502
	j	lab1.22501
lab2.22502:
	jr	$r27
lab1.22501:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -16($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f1, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -20($r29)
	sub.s	$f0, $f0, $f2
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22504
	j	lab1.22503
lab2.22504:
	jr	$r27
lab1.22503:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	jr	$r31
rotate_quadratic_matrix.3768:
	lwcl	$f0, 0($r3)
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 0($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -24($r29)
	fmove	$f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -20($r29)
	lwcl	$f2, -28($r29)
	mul.s	$f3, $f1, $f2
	lwcl	$f4, -16($r29)
	lwcl	$f5, -24($r29)
	mul.s	$f6, $f4, $f5
	mul.s	$f6, $f6, $f2
	lwcl	$f7, -12($r29)
	mul.s	$f8, $f7, $f0
	sub.s	$f6, $f6, $f8
	mul.s	$f8, $f7, $f5
	mul.s	$f8, $f8, $f2
	mul.s	$f9, $f4, $f0
	add.s	$f8, $f8, $f9
	mul.s	$f9, $f1, $f0
	mul.s	$f10, $f4, $f5
	mul.s	$f10, $f10, $f0
	mul.s	$f11, $f7, $f2
	add.s	$f10, $f10, $f11
	mul.s	$f11, $f7, $f5
	mul.s	$f0, $f11, $f0
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	fneg	$f2, $f5
	mul.s	$f4, $f4, $f1
	mul.s	$f1, $f7, $f1
	lw	$r2, -4($r29)
	lwcl	$f5, 0($r2)
	lwcl	$f7, 4($r2)
	lwcl	$f11, 8($r2)
	mul.s	$f12, $f3, $f3
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f9, $f9
	mul.s	$f13, $f7, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f2, $f2
	mul.s	$f13, $f11, $f13
	add.s	$f12, $f12, $f13
	swcl	$f12, 0($r2)
	mul.s	$f12, $f6, $f6
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f10, $f10
	mul.s	$f13, $f7, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f4, $f4
	mul.s	$f13, $f11, $f13
	add.s	$f12, $f12, $f13
	swcl	$f12, 4($r2)
	mul.s	$f12, $f8, $f8
	mul.s	$f12, $f5, $f12
	mul.s	$f13, $f0, $f0
	mul.s	$f13, $f7, $f13
	add.s	$f12, $f12, $f13
	mul.s	$f13, $f1, $f1
	mul.s	$f13, $f11, $f13
	add.s	$f12, $f12, $f13
	swcl	$f12, 8($r2)
	lfh	$f12, 16384
	mul.s	$f13, $f5, $f6
	mul.s	$f13, $f13, $f8
	mul.s	$f14, $f7, $f10
	mul.s	$f14, $f14, $f0
	add.s	$f13, $f13, $f14
	mul.s	$f14, $f11, $f4
	mul.s	$f14, $f14, $f1
	add.s	$f13, $f13, $f14
	mul.s	$f12, $f12, $f13
	lw	$r2, -8($r29)
	swcl	$f12, 0($r2)
	lfh	$f12, 16384
	mul.s	$f13, $f5, $f3
	mul.s	$f8, $f13, $f8
	mul.s	$f13, $f7, $f9
	mul.s	$f0, $f13, $f0
	add.s	$f0, $f8, $f0
	mul.s	$f8, $f11, $f2
	mul.s	$f1, $f8, $f1
	add.s	$f0, $f0, $f1
	mul.s	$f0, $f12, $f0
	swcl	$f0, 4($r2)
	lfh	$f0, 16384
	mul.s	$f1, $f5, $f3
	mul.s	$f1, $f1, $f6
	mul.s	$f3, $f7, $f9
	mul.s	$f3, $f3, $f10
	add.s	$f1, $f1, $f3
	mul.s	$f2, $f11, $f2
	mul.s	$f2, $f2, $f4
	add.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f1
	swcl	$f0, 8($r2)
	jr	$r31
read_nth_object.3881:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r5, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	addi	$r28, $r3, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22506
	j	lab1.22505
lab2.22506:
	jr	$r27
lab1.22505:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	bnei	$r2, -1, bnei.22508
	addi	$r2, $r0, 0
	jr	$r31
bnei.22508:
	lw	$r28, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22510
	j	lab1.22509
lab2.22510:
	jr	$r27
lab1.22509:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r28, -16($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22512
	j	lab1.22511
lab2.22512:
	jr	$r27
lab1.22511:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r28, -16($r29)
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.22514
	j	lab1.22513
lab2.22514:
	jr	$r27
lab1.22513:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r28, -12($r29)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22516
	j	lab1.22515
lab2.22516:
	jr	$r27
lab1.22515:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22518
	j	lab1.22517
lab2.22518:
	jr	$r27
lab1.22517:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22520
	j	lab1.22519
lab2.22520:
	jr	$r27
lab1.22519:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r28, -12($r29)
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -44
	jal	lab2.22522
	j	lab1.22521
lab2.22522:
	jr	$r27
lab1.22521:
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-cls
	lw	$r2, -40($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -44
	jal	lab2.22524
	j	lab1.22523
lab2.22524:
	jr	$r27
lab1.22523:
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-cls
	lw	$r2, -40($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -44
	jal	lab2.22526
	j	lab1.22525
lab2.22526:
	jr	$r27
lab1.22525:
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-cls
	lw	$r2, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -44
	jal	lab2.22528
	j	lab1.22527
lab2.22528:
	jr	$r27
lab1.22527:
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-cls
	c.le.s	$f30, $f0
	bclf	bclf.22530
	addi	$r2, $r0, 0
	j	cont.22529
bclf.22530:
	addi	$r2, $r0, 1
cont.22529:
	addi	$r3, $r0, 2
	fmove	$f1, $f30
	swcl	$f0, -44($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f1
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r28, -12($r29)
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -56
	jal	lab2.22532
	j	lab1.22531
lab2.22532:
	jr	$r27
lab1.22531:
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-cls
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -56($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -56
	jal	lab2.22534
	j	lab1.22533
lab2.22534:
	jr	$r27
lab1.22533:
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-cls
	lw	$r2, -52($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r28, -12($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22536
	j	lab1.22535
lab2.22536:
	jr	$r27
lab1.22535:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	lw	$r2, -56($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22538
	j	lab1.22537
lab2.22538:
	jr	$r27
lab1.22537:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	lw	$r2, -56($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22540
	j	lab1.22539
lab2.22540:
	jr	$r27
lab1.22539:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	lw	$r2, -56($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -32($r29)
	bnei	$r3, 0, bnei.22542
	j	cont.22541
bnei.22542:
	lw	$r28, -12($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.22544
	j	lab1.22543
lab2.22544:
	jr	$r27
lab1.22543:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -60($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.22546
	j	lab1.22545
lab2.22546:
	jr	$r27
lab1.22545:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -60($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.22548
	j	lab1.22547
lab2.22548:
	jr	$r27
lab1.22547:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -60($r29)
	swcl	$f0, 8($r2)
cont.22541:
	lw	$r3, -24($r29)
	bnei	$r3, 2, bnei.22550
	addi	$r4, $r0, 1
	j	cont.22549
bnei.22550:
	lw	$r4, -48($r29)
cont.22549:
	addi	$r5, $r0, 4
	fmove	$f0, $f30
	sw	$r4, -64($r29)
	sw	$r2, -60($r29)
	addi	$r2, $r5, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -60($r29)
	sw	$r2, 36($r3)
	lw	$r4, -56($r29)
	sw	$r4, 32($r3)
	lw	$r4, -52($r29)
	sw	$r4, 28($r3)
	lw	$r4, -64($r29)
	sw	$r4, 24($r3)
	lw	$r4, -40($r29)
	sw	$r4, 20($r3)
	lw	$r4, -36($r29)
	sw	$r4, 16($r3)
	lw	$r5, -32($r29)
	sw	$r5, 12($r3)
	lw	$r6, -28($r29)
	sw	$r6, 8($r3)
	lw	$r6, -24($r29)
	sw	$r6, 4($r3)
	lw	$r7, -20($r29)
	sw	$r7, 0($r3)
	lw	$r7, -8($r29)
	sll	$r7, $r7, 2
	lw	$r8, -4($r29)
	swr	$r3, $r7($r8)	!st var
	bnei	$r6, 3, bnei.22552
	lwcl	$f0, 0($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.22554
	fmove	$f0, $f30
	j	cont.22553
bclf.22554:
	c.eq.s	$f0, $f30
	bclf	bclf.22556
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	j	cont.22555
bclf.22556:
	c.le.s	$f0, $f30
	bclf	bclf.22558
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	j	cont.22557
bclf.22558:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
cont.22557:
cont.22555:
cont.22553:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.22560
	fmove	$f0, $f30
	j	cont.22559
bclf.22560:
	c.eq.s	$f0, $f30
	bclf	bclf.22562
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	j	cont.22561
bclf.22562:
	c.le.s	$f0, $f30
	bclf	bclf.22564
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	j	cont.22563
bclf.22564:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
cont.22563:
cont.22561:
cont.22559:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.22566
	fmove	$f0, $f30
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.22568
	addi	$r2, $r0, 1
	jr	$r31
bnei.22568:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.22566:
	c.eq.s	$f0, $f30
	bclf	bclf.22570
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.22572
	addi	$r2, $r0, 1
	jr	$r31
bnei.22572:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.22570:
	c.le.s	$f0, $f30
	bclf	bclf.22574
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.22576
	addi	$r2, $r0, 1
	jr	$r31
bnei.22576:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.22574:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.22578
	addi	$r2, $r0, 1
	jr	$r31
bnei.22578:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bnei.22552:
	bnei	$r6, 2, bnei.22580
	lwcl	$f0, -44($r29)
	c.le.s	$f30, $f0
	bclf	bclf.22582
	addi	$r3, $r0, 1
	j	cont.22581
bclf.22582:
	addi	$r3, $r0, 0
cont.22581:
	lwcl	$f0, 0($r4)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r4)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.22584
	fmove	$f0, $f31
	j	cont.22583
bclf.22584:
	bnei	$r3, 1, bnei.22586
	div.s	$f0, $f29, $f0
	j	cont.22585
bnei.22586:
	div.s	$f0, $f31, $f0
cont.22585:
cont.22583:
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.22588
	addi	$r2, $r0, 1
	jr	$r31
bnei.22588:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bnei.22580:
	bnei	$r5, 0, bnei.22590
	addi	$r2, $r0, 1
	jr	$r31
bnei.22590:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
read_object.4009:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 60
	bgt	$r5, $r2, bgt.22592
	jr	$r31
bgt.22592:
	sw	$r4, -4($r29)
	sw	$r28, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22594
	j	lab1.22593
lab2.22594:
	jr	$r27
lab1.22593:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	bnei	$r2, 1, bnei.22596
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22596:
	lw	$r2, -12($r29)
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
read_net_item.4020:
	lw	$r3, 4($r28)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r28, $r3, 0
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.22598
	j	lab1.22597
lab2.22598:
	jr	$r27
lab1.22597:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	bnei	$r2, -1, bnei.22600
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bnei.22600:
	lw	$r3, -8($r29)
	addi	$r4, $r3, 1
	lw	$r28, -4($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22602
	j	lab1.22601
lab2.22602:
	jr	$r27
lab1.22601:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
read_or_network.4034:
	lw	$r3, 4($r28)
	addi	$r4, $r0, 0
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r28, $r3, 0
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.22604
	j	lab1.22603
lab2.22604:
	jr	$r27
lab1.22603:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	addi	$r3, $r2, 0	!call-cls
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.22606
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bnei.22606:
	lw	$r2, -8($r29)
	addi	$r4, $r2, 1
	lw	$r28, -4($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22608
	j	lab1.22607
lab2.22608:
	jr	$r27
lab1.22607:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
read_and_network.4048:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22610
	j	lab1.22609
lab2.22610:
	jr	$r27
lab1.22609:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.22612
	jr	$r31
bnei.22612:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
read_parameter.4059:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	sw	$r7, -4($r29)
	sw	$r3, -8($r29)
	sw	$r6, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	addi	$r28, $r2, 0
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22614
	j	lab1.22613
lab2.22614:
	jr	$r27
lab1.22613:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22616
	j	lab1.22615
lab2.22616:
	jr	$r27
lab1.22615:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	addi	$r2, $r0, 0
	lw	$r28, -16($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22618
	j	lab1.22617
lab2.22618:
	jr	$r27
lab1.22617:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	addi	$r2, $r0, 0
	lw	$r28, -12($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22620
	j	lab1.22619
lab2.22620:
	jr	$r27
lab1.22619:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.22622
	j	lab1.22621
lab2.22622:
	jr	$r27
lab1.22621:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
solver_rect.4106:
	lw	$r4, 4($r28)
	lwcl	$f3, 0($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.22624
	addi	$r5, $r0, 0
	j	cont.22623
bclf.22624:
	lw	$r5, 16($r2)
	lw	$r6, 24($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f30, $f3
	bclf	bclf.22626
	addi	$r7, $r0, 0
	j	cont.22625
bclf.22626:
	addi	$r7, $r0, 1
cont.22625:
	lwcl	$f3, 0($r5)
	bne	$r6, $r7, bne.22628
	fneg	$f3, $f3
	j	cont.22627
bne.22628:
cont.22627:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r5)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22630
	addi	$r5, $r0, 0
	j	cont.22629
bclf.22630:
	lwcl	$f4, 8($r5)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22632
	addi	$r5, $r0, 0
	j	cont.22631
bclf.22632:
	swcl	$f3, 0($r4)
	addi	$r5, $r0, 1
cont.22631:
cont.22629:
cont.22623:
	bnei	$r5, 1, bnei.22634
	addi	$r2, $r0, 1
	jr	$r31
bnei.22634:
	lwcl	$f3, 4($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.22636
	addi	$r5, $r0, 0
	j	cont.22635
bclf.22636:
	lw	$r5, 16($r2)
	lw	$r6, 24($r2)
	lwcl	$f3, 4($r3)
	c.le.s	$f30, $f3
	bclf	bclf.22638
	addi	$r7, $r0, 0
	j	cont.22637
bclf.22638:
	addi	$r7, $r0, 1
cont.22637:
	lwcl	$f3, 4($r5)
	bne	$r6, $r7, bne.22640
	fneg	$f3, $f3
	j	cont.22639
bne.22640:
cont.22639:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22642
	addi	$r5, $r0, 0
	j	cont.22641
bclf.22642:
	lwcl	$f4, 0($r5)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22644
	addi	$r5, $r0, 0
	j	cont.22643
bclf.22644:
	swcl	$f3, 0($r4)
	addi	$r5, $r0, 1
cont.22643:
cont.22641:
cont.22635:
	bnei	$r5, 1, bnei.22646
	addi	$r2, $r0, 2
	jr	$r31
bnei.22646:
	lwcl	$f3, 8($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.22648
	addi	$r2, $r0, 0
	jr	$r31
bclf.22648:
	lw	$r5, 16($r2)
	lw	$r2, 24($r2)
	lwcl	$f3, 8($r3)
	c.le.s	$f30, $f3
	bclf	bclf.22650
	addi	$r6, $r0, 0
	j	cont.22649
bclf.22650:
	addi	$r6, $r0, 1
cont.22649:
	lwcl	$f3, 8($r5)
	bne	$r2, $r6, bne.22652
	fneg	$f3, $f3
	j	cont.22651
bne.22652:
cont.22651:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r3)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r5)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.22654
	addi	$r2, $r0, 0
	jr	$r31
bclf.22654:
	lwcl	$f0, 4($r5)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.22656
	addi	$r2, $r0, 0
	jr	$r31
bclf.22656:
	swcl	$f2, 0($r4)
	addi	$r2, $r0, 3
	jr	$r31
solver_second.4209:
	lw	$r4, 4($r28)
	lwcl	$f3, 0($r3)
	lwcl	$f4, 4($r3)
	lwcl	$f5, 8($r3)
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r2)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r2)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r2)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r2)
	bnei	$r5, 0, bnei.22658
	fmove	$f3, $f6
	j	cont.22657
bnei.22658:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r2)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r2)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r2)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.22657:
	c.eq.s	$f3, $f30
	bclf	bclf.22660
	addi	$r2, $r0, 0
	jr	$r31
bclf.22660:
	lwcl	$f4, 0($r3)
	lwcl	$f5, 4($r3)
	lwcl	$f6, 8($r3)
	mul.s	$f7, $f4, $f0
	lw	$r3, 16($r2)
	lwcl	$f8, 0($r3)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$r3, 16($r2)
	lwcl	$f9, 4($r3)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$r3, 16($r2)
	lwcl	$f9, 8($r3)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.22662
	fmove	$f4, $f7
	j	cont.22661
bnei.22662:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$r3, 36($r2)
	lwcl	$f9, 0($r3)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$r3, 36($r2)
	lwcl	$f9, 4($r3)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$r3, 36($r2)
	lwcl	$f5, 8($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
cont.22661:
	mul.s	$f5, $f0, $f0
	lw	$r3, 16($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r3, 16($r2)
	lwcl	$f7, 4($r3)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r3, 16($r2)
	lwcl	$f7, 8($r3)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.22664
	fmove	$f0, $f5
	j	cont.22663
bnei.22664:
	mul.s	$f6, $f1, $f2
	lw	$r3, 36($r2)
	lwcl	$f7, 0($r3)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r3, 36($r2)
	lwcl	$f6, 4($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r3, 36($r2)
	lwcl	$f1, 8($r3)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.22663:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.22666
	sub.s	$f0, $f0, $f31
	j	cont.22665
bnei.22666:
cont.22665:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.22668
	addi	$r2, $r0, 0
	jr	$r31
bclf.22668:
	sqrt	$f0, $f0
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22670
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 0($r4)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22670:
	fneg	$f0, $f0
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 0($r4)
	addi	$r2, $r0, 1
	jr	$r31
solver.4247:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r8)	!ld var
	lwcl	$f0, 0($r4)
	lw	$r8, 20($r2)
	lwcl	$f1, 0($r8)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 4($r4)
	lw	$r8, 20($r2)
	lwcl	$f2, 4($r8)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lw	$r4, 20($r2)
	lwcl	$f3, 8($r4)
	sub.s	$f2, $f2, $f3
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.22672
	addi	$r28, $r6, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.22672:
	bnei	$r4, 2, bnei.22674
	lw	$r2, 16($r2)
	lwcl	$f3, 0($r3)
	lwcl	$f4, 0($r2)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r3)
	lwcl	$f5, 4($r2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r3)
	lwcl	$f5, 8($r2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.le.s	$f3, $f30
	bclf	bclf.22676
	addi	$r2, $r0, 0
	jr	$r31
bclf.22676:
	lwcl	$f4, 0($r2)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 4($r2)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	div.s	$f0, $f0, $f3
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22674:
	addi	$r28, $r5, 0
	lw	$r27, 0($r28)
	jr	$r27
solver_rect_fast.4267:
	lw	$r5, 4($r28)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r4)
	mul.s	$f3, $f3, $f4
	lw	$r6, 16($r2)
	lwcl	$f4, 4($r6)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22678
	addi	$r6, $r0, 0
	j	cont.22677
bclf.22678:
	lw	$r6, 16($r2)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22680
	addi	$r6, $r0, 0
	j	cont.22679
bclf.22680:
	lwcl	$f4, 4($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.22682
	addi	$r6, $r0, 0
	j	cont.22681
bclf.22682:
	addi	$r6, $r0, 1
cont.22681:
cont.22679:
cont.22677:
	bnei	$r6, 1, bnei.22684
	swcl	$f3, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22684:
	lwcl	$f3, 8($r4)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r4)
	mul.s	$f3, $f3, $f4
	lw	$r6, 16($r2)
	lwcl	$f4, 0($r6)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22686
	addi	$r6, $r0, 0
	j	cont.22685
bclf.22686:
	lw	$r6, 16($r2)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.22688
	addi	$r6, $r0, 0
	j	cont.22687
bclf.22688:
	lwcl	$f4, 12($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.22690
	addi	$r6, $r0, 0
	j	cont.22689
bclf.22690:
	addi	$r6, $r0, 1
cont.22689:
cont.22687:
cont.22685:
	bnei	$r6, 1, bnei.22692
	swcl	$f3, 0($r5)
	addi	$r2, $r0, 2
	jr	$r31
bnei.22692:
	lwcl	$f3, 16($r4)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r4)
	mul.s	$f2, $f2, $f3
	lw	$r6, 16($r2)
	lwcl	$f3, 0($r6)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.22694
	addi	$r2, $r0, 0
	jr	$r31
bclf.22694:
	lw	$r2, 16($r2)
	lwcl	$f0, 4($r2)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.22696
	addi	$r2, $r0, 0
	jr	$r31
bclf.22696:
	lwcl	$f0, 20($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.22698
	addi	$r2, $r0, 0
	jr	$r31
bclf.22698:
	swcl	$f2, 0($r5)
	addi	$r2, $r0, 3
	jr	$r31
solver_second_fast.4371:
	lw	$r4, 4($r28)
	lwcl	$f3, 0($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.22700
	addi	$r2, $r0, 0
	jr	$r31
bclf.22700:
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r3)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r5, 16($r2)
	lwcl	$f6, 0($r5)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r5, 16($r2)
	lwcl	$f7, 4($r5)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r5, 16($r2)
	lwcl	$f7, 8($r5)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r5, 12($r2)
	bnei	$r5, 0, bnei.22702
	fmove	$f0, $f5
	j	cont.22701
bnei.22702:
	mul.s	$f6, $f1, $f2
	lw	$r5, 36($r2)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r5, 36($r2)
	lwcl	$f6, 4($r5)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r5, 36($r2)
	lwcl	$f1, 8($r5)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.22701:
	lw	$r5, 4($r2)
	bnei	$r5, 3, bnei.22704
	sub.s	$f0, $f0, $f31
	j	cont.22703
bnei.22704:
cont.22703:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.22706
	addi	$r2, $r0, 0
	jr	$r31
bclf.22706:
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22708
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 0($r4)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22708:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 0($r4)
	addi	$r2, $r0, 1
	jr	$r31
solver_fast.4415:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	lwr	$r8, $r9($r8)	!ld var
	lwcl	$f0, 0($r4)
	lw	$r9, 20($r8)
	lwcl	$f1, 0($r9)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 4($r4)
	lw	$r9, 20($r8)
	lwcl	$f2, 4($r9)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lw	$r4, 20($r8)
	lwcl	$f3, 8($r4)
	sub.s	$f2, $f2, $f3
	lw	$r4, 4($r3)
	sll	$r2, $r2, 2
	lwr	$r4, $r2($r4)	!ld var
	lw	$r2, 4($r8)
	bnei	$r2, 1, bnei.22710
	lw	$r3, 0($r3)
	addi	$r28, $r6, 0
	addi	$r2, $r8, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.22710:
	bnei	$r2, 2, bnei.22712
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.22714
	addi	$r2, $r0, 0
	jr	$r31
bclf.22714:
	lwcl	$f3, 4($r4)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r4)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22712:
	addi	$r28, $r5, 0
	addi	$r2, $r8, 0
	addi	$r3, $r4, 0
	lw	$r27, 0($r28)
	jr	$r27
solver_fast2.4497:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	lwr	$r6, $r7($r6)	!ld var
	lw	$r7, 40($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lw	$r8, 4($r3)
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r8)	!ld var
	lw	$r8, 4($r6)
	bnei	$r8, 1, bnei.22716
	lw	$r3, 0($r3)
	addi	$r28, $r4, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.22716:
	bnei	$r8, 2, bnei.22718
	lwcl	$f0, 0($r2)
	c.le.s	$f30, $f0
	bclf	bclf.22720
	addi	$r2, $r0, 0
	jr	$r31
bclf.22720:
	lwcl	$f0, 0($r2)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22718:
	lwcl	$f3, 0($r2)
	c.eq.s	$f3, $f30
	bclf	bclf.22722
	addi	$r2, $r0, 0
	jr	$r31
bclf.22722:
	lwcl	$f4, 4($r2)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r2)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r7)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.22724
	addi	$r2, $r0, 0
	jr	$r31
bclf.22724:
	lw	$r3, 24($r6)
	bnei	$r3, 1, bnei.22726
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r2)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
bnei.22726:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r2)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
setup_rect_table.4514:
	addi	$r4, $r0, 6
	fmove	$f0, $f30
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.22728
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.22727
bclf.22728:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.22730
	addi	$r6, $r0, 0
	j	cont.22729
bclf.22730:
	addi	$r6, $r0, 1
cont.22729:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.22732
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.22731
bne.22732:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.22731:
cont.22727:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.22734
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.22733
bclf.22734:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.22736
	addi	$r6, $r0, 0
	j	cont.22735
bclf.22736:
	addi	$r6, $r0, 1
cont.22735:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.22738
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.22737
bne.22738:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.22737:
cont.22733:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.22740
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	jr	$r31
bclf.22740:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.22742
	addi	$r6, $r0, 0
	j	cont.22741
bclf.22742:
	addi	$r6, $r0, 1
cont.22741:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.22744
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	jr	$r31
bne.22744:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	jr	$r31
setup_surface_table.4583:
	addi	$r4, $r0, 4
	fmove	$f0, $f30
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -4($r29)
	lw	$r5, 16($r4)
	lwcl	$f1, 0($r5)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lw	$r5, 16($r4)
	lwcl	$f2, 4($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lw	$r3, 16($r4)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f0, $f30
	bclf	bclf.22746
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	jr	$r31
bclf.22746:
	div.s	$f1, $f29, $f0
	swcl	$f1, 0($r2)
	lw	$r3, 16($r4)
	lwcl	$f1, 0($r3)
	div.s	$f1, $f1, $f0
	fneg	$f1, $f1
	swcl	$f1, 4($r2)
	lw	$r3, 16($r4)
	lwcl	$f1, 4($r3)
	div.s	$f1, $f1, $f0
	fneg	$f1, $f1
	swcl	$f1, 8($r2)
	lw	$r3, 16($r4)
	lwcl	$f1, 8($r3)
	div.s	$f0, $f1, $f0
	fneg	$f0, $f0
	swcl	$f0, 12($r2)
	jr	$r31
setup_second_table.4626:
	addi	$r4, $r0, 5
	fmove	$f0, $f30
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -4($r29)
	lw	$r5, 16($r4)
	lwcl	$f4, 0($r5)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r5, 16($r4)
	lwcl	$f5, 4($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r5, 16($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.22748
	fmove	$f0, $f3
	j	cont.22747
bnei.22748:
	mul.s	$f4, $f1, $f2
	lw	$r5, 36($r4)
	lwcl	$f5, 0($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r5, 36($r4)
	lwcl	$f4, 4($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r5, 36($r4)
	lwcl	$f1, 8($r5)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.22747:
	lwcl	$f1, 0($r3)
	lw	$r5, 16($r4)
	lwcl	$f2, 0($r5)
	mul.s	$f1, $f1, $f2
	fneg	$f1, $f1
	lwcl	$f2, 4($r3)
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	mul.s	$f2, $f2, $f3
	fneg	$f2, $f2
	lwcl	$f3, 8($r3)
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	fneg	$f3, $f3
	swcl	$f0, 0($r2)
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.22750
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.22752
	jr	$r31
bclf.22752:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	jr	$r31
bnei.22750:
	lwcl	$f4, 8($r3)
	lw	$r5, 36($r4)
	lwcl	$f5, 4($r5)
	mul.s	$f4, $f4, $f5
	lwcl	$f5, 4($r3)
	lw	$r5, 36($r4)
	lwcl	$f6, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	sub.s	$f1, $f1, $f4
	swcl	$f1, 4($r2)
	lwcl	$f1, 8($r3)
	lw	$r5, 36($r4)
	lwcl	$f4, 0($r5)
	mul.s	$f1, $f1, $f4
	lwcl	$f4, 0($r3)
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f1, $f1, $f4
	lfh	$f4, 16128
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f2, $f1
	swcl	$f1, 8($r2)
	lwcl	$f1, 4($r3)
	lw	$r5, 36($r4)
	lwcl	$f2, 0($r5)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 0($r3)
	lw	$r3, 36($r4)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f1, $f1, $f2
	lfh	$f2, 16128
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $f3, $f1
	swcl	$f1, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.22754
	jr	$r31
bclf.22754:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	jr	$r31
iter_setup_dirvec_constants.4707:
	lw	$r4, 4($r28)
	blti	$r3, 0, blti.22756
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	bnei	$r7, 1, bnei.22758
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	setup_rect_table.4514
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r28, -8($r29)
	lw	$r2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22758:
	bnei	$r7, 2, bnei.22760
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	setup_surface_table.4583
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r28, -8($r29)
	lw	$r2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22760:
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r28, -8($r29)
	lw	$r2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.22756:
	jr	$r31
setup_startp_constants.4729:
	lw	$r4, 4($r28)
	blti	$r3, 0, blti.22762
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	lw	$r5, 40($r4)
	lw	$r6, 4($r4)
	lwcl	$f0, 0($r2)
	lw	$r7, 20($r4)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r2)
	lw	$r7, 20($r4)
	lwcl	$f1, 4($r7)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r2)
	lw	$r7, 20($r4)
	lwcl	$f1, 8($r7)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r5)
	bnei	$r6, 2, bnei.22764
	lw	$r4, 16($r4)
	lwcl	$f0, 0($r5)
	lwcl	$f1, 4($r5)
	lwcl	$f2, 8($r5)
	lwcl	$f3, 0($r4)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r4)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
bnei.22764:
	bgti	$r6, 2, bgti.22766
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
bgti.22766:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 4($r5)
	lwcl	$f2, 8($r5)
	mul.s	$f3, $f0, $f0
	lw	$r7, 16($r4)
	lwcl	$f4, 0($r7)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r7, 16($r4)
	lwcl	$f5, 4($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r7, 16($r4)
	lwcl	$f5, 8($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r7, 12($r4)
	bnei	$r7, 0, bnei.22768
	bnei	$r6, 3, bnei.22770
	sub.s	$f0, $f3, $f31
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
bnei.22770:
	swcl	$f3, 12($r5)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
bnei.22768:
	mul.s	$f4, $f1, $f2
	lw	$r7, 36($r4)
	lwcl	$f5, 0($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r4)
	lwcl	$f4, 4($r7)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r4, 36($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
	bnei	$r6, 3, bnei.22772
	sub.s	$f0, $f0, $f31
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
bnei.22772:
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)
	jr	$r27
blti.22762:
	jr	$r31
setup_startp.4779:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	lwcl	$f0, 0($r2)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r3)
	lw	$r3, 0($r5)
	addi	$r3, $r3, -1
	addi	$r28, $r4, 0
	lw	$r27, 0($r28)
	jr	$r27
is_second_outside.4811:
	mul.s	$f3, $f0, $f0
	lw	$r3, 16($r2)
	lwcl	$f4, 0($r3)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r3, 16($r2)
	lwcl	$f5, 4($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r3, 16($r2)
	lwcl	$f5, 8($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.22774
	fmove	$f0, $f3
	j	cont.22773
bnei.22774:
	mul.s	$f4, $f1, $f2
	lw	$r3, 36($r2)
	lwcl	$f5, 0($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r3, 36($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r3, 36($r2)
	lwcl	$f1, 8($r3)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.22773:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.22776
	sub.s	$f0, $f0, $f31
	lw	$r2, 24($r2)
	c.le.s	$f30, $f0
	bclf	bclf.22778
	bnei	$r2, 0, bnei.22780
	addi	$r2, $r0, 1
	jr	$r31
bnei.22780:
	addi	$r2, $r0, 0
	jr	$r31
bclf.22778:
	bnei	$r2, 1, bnei.22782
	addi	$r2, $r0, 1
	jr	$r31
bnei.22782:
	addi	$r2, $r0, 0
	jr	$r31
bnei.22776:
	lw	$r2, 24($r2)
	c.le.s	$f30, $f0
	bclf	bclf.22784
	bnei	$r2, 0, bnei.22786
	addi	$r2, $r0, 1
	jr	$r31
bnei.22786:
	addi	$r2, $r0, 0
	jr	$r31
bclf.22784:
	bnei	$r2, 1, bnei.22788
	addi	$r2, $r0, 1
	jr	$r31
bnei.22788:
	addi	$r2, $r0, 0
	jr	$r31
is_outside.4824:
	lw	$r3, 20($r2)
	lwcl	$f3, 0($r3)
	sub.s	$f0, $f0, $f3
	lw	$r3, 20($r2)
	lwcl	$f3, 4($r3)
	sub.s	$f1, $f1, $f3
	lw	$r3, 20($r2)
	lwcl	$f3, 8($r3)
	sub.s	$f2, $f2, $f3
	lw	$r3, 4($r2)
	bnei	$r3, 1, bnei.22790
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.22792
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22794
	addi	$r2, $r0, 0
	jr	$r31
bnei.22794:
	addi	$r2, $r0, 1
	jr	$r31
bclf.22792:
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.22796
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22798
	addi	$r2, $r0, 0
	jr	$r31
bnei.22798:
	addi	$r2, $r0, 1
	jr	$r31
bclf.22796:
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fabs	$f1, $f2
	c.le.s	$f0, $f1
	bclf	bclf.22800
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22802
	addi	$r2, $r0, 0
	jr	$r31
bnei.22802:
	addi	$r2, $r0, 1
	jr	$r31
bclf.22800:
	lw	$r2, 24($r2)
	jr	$r31
bnei.22790:
	bnei	$r3, 2, is_second_outside.4811     ! elimjump
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r3)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$r2, 24($r2)
	c.le.s	$f30, $f0
	bclf	bclf.22806
	bnei	$r2, 0, bnei.22808
	addi	$r2, $r0, 1
	jr	$r31
bnei.22808:
	addi	$r2, $r0, 0
	jr	$r31
bclf.22806:
	bnei	$r2, 1, bnei.22810
	addi	$r2, $r0, 1
	jr	$r31
bnei.22810:
	addi	$r2, $r0, 0
	jr	$r31
bnei.22804:
	j	is_second_outside.4811
check_all_inside.4838:
	lw	$r4, 4($r28)
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.22812
	addi	$r2, $r0, 1
	jr	$r31
bnei.22812:
	sll	$r5, $r5, 2
	lwr	$r4, $r5($r4)	!ld var
	swcl	$f2, -4($r29)
	swcl	$f1, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.22814
	addi	$r2, $r0, 0
	jr	$r31
bnei.22814:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lwcl	$f0, -12($r29)
	lwcl	$f1, -8($r29)
	lwcl	$f2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
shadow_check_and_group.4852:
	lw	$r4, 28($r28)
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	sll	$r11, $r2, 2
	lwr	$r11, $r11($r3)	!ld var
	bnei	$r11, -1, bnei.22816
	addi	$r2, $r0, 0
	jr	$r31
bnei.22816:
	sll	$r11, $r2, 2
	lwr	$r11, $r11($r3)	!ld var
	sw	$r6, -4($r29)
	sw	$r11, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	sw	$r10, -24($r29)
	sw	$r9, -28($r29)
	sw	$r8, -32($r29)
	sw	$r5, -36($r29)
	addi	$r28, $r4, 0
	addi	$r2, $r11, 0
	addi	$r3, $r7, 0
	addi	$r4, $r9, 0
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22818
	j	lab1.22817
lab2.22818:
	jr	$r27
lab1.22817:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	bnei	$r2, 0, bnei.22820
	addi	$r2, $r0, 0
	j	cont.22819
bnei.22820:
	c.le.s	$f27, $f0
	bclf	bclf.22822
	addi	$r2, $r0, 0
	j	cont.22821
bclf.22822:
	addi	$r2, $r0, 1
cont.22821:
cont.22819:
	bnei	$r2, 1, bnei.22824
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lw	$r2, -32($r29)
	lwcl	$f1, 0($r2)
	mul.s	$f1, $f1, $f0
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 4($r3)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r2)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r3)
	add.s	$f0, $f0, $f3
	addi	$r2, $r0, 0
	lw	$r28, -24($r29)
	lw	$r3, -20($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.22826
	j	lab1.22825
lab2.22826:
	jr	$r27
lab1.22825:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	bnei	$r2, 1, bnei.22828
	addi	$r2, $r0, 1
	jr	$r31
bnei.22828:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22824:
	lw	$r2, -8($r29)
	sll	$r2, $r2, 2
	lw	$r3, -4($r29)
	lwr	$r2, $r2($r3)	!ld var
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22830
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22830:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.4897:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sll	$r6, $r2, 2
	lwr	$r6, $r6($r3)	!ld var
	bnei	$r6, -1, bnei.22832
	addi	$r2, $r0, 0
	jr	$r31
bnei.22832:
	sll	$r6, $r6, 2
	lwr	$r5, $r6($r5)	!ld var
	addi	$r6, $r0, 0
	sw	$r3, -4($r29)
	sw	$r28, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r4, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.22834
	j	lab1.22833
lab2.22834:
	jr	$r27
lab1.22833:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	bnei	$r2, 1, bnei.22836
	addi	$r2, $r0, 1
	jr	$r31
bnei.22836:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -8($r29)
	lw	$r3, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
shadow_check_one_or_matrix.4909:
	lw	$r4, 20($r28)
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r3)	!ld var
	lw	$r10, 0($r9)
	bnei	$r10, -1, bnei.22838
	addi	$r2, $r0, 0
	jr	$r31
bnei.22838:
	addi	$r11, $r0, 99
	sw	$r3, -4($r29)
	sw	$r28, -8($r29)
	sw	$r2, -12($r29)
	sw	$r9, -16($r29)
	sw	$r6, -20($r29)
	bne	$r10, $r11, bne.22840
	addi	$r2, $r0, 1
	j	cont.22839
bne.22840:
	sw	$r5, -24($r29)
	addi	$r28, $r4, 0
	addi	$r2, $r10, 0
	addi	$r3, $r7, 0
	addi	$r4, $r8, 0
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22842
	j	lab1.22841
lab2.22842:
	jr	$r27
lab1.22841:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	bnei	$r2, 0, bnei.22844
	addi	$r2, $r0, 0
	j	cont.22843
bnei.22844:
	lw	$r2, -24($r29)
	lwcl	$f0, 0($r2)
	c.le.s	$f28, $f0
	bclf	bclf.22846
	addi	$r2, $r0, 0
	j	cont.22845
bclf.22846:
	addi	$r2, $r0, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22848
	j	lab1.22847
lab2.22848:
	jr	$r27
lab1.22847:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	bnei	$r2, 1, bnei.22850
	addi	$r2, $r0, 1
	j	cont.22849
bnei.22850:
	addi	$r2, $r0, 0
cont.22849:
cont.22845:
cont.22843:
cont.22839:
	bnei	$r2, 1, bnei.22852
	addi	$r2, $r0, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.22854
	j	lab1.22853
lab2.22854:
	jr	$r27
lab1.22853:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	bnei	$r2, 1, bnei.22856
	addi	$r2, $r0, 1
	jr	$r31
bnei.22856:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -8($r29)
	lw	$r3, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22852:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -8($r29)
	lw	$r3, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
solve_each_element.4936:
	lw	$r5, 36($r28)
	lw	$r6, 32($r28)
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	sll	$r14, $r2, 2
	lwr	$r14, $r14($r3)	!ld var
	bnei	$r14, -1, bnei.22858
	jr	$r31
bnei.22858:
	sw	$r10, -4($r29)
	sw	$r12, -8($r29)
	sw	$r11, -12($r29)
	sw	$r13, -16($r29)
	sw	$r6, -20($r29)
	sw	$r5, -24($r29)
	sw	$r7, -28($r29)
	sw	$r4, -32($r29)
	sw	$r3, -36($r29)
	sw	$r28, -40($r29)
	sw	$r2, -44($r29)
	sw	$r9, -48($r29)
	sw	$r14, -52($r29)
	addi	$r28, $r8, 0
	addi	$r2, $r14, 0
	addi	$r3, $r4, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -56
	jal	lab2.22860
	j	lab1.22859
lab2.22860:
	jr	$r27
lab1.22859:
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-cls
	bnei	$r2, 0, bnei.22862
	lw	$r2, -52($r29)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	lwr	$r2, $r2($r3)	!ld var
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22864
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r28, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22864:
	jr	$r31
bnei.22862:
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	c.le.s	$f0, $f30
	bclf	bclf.22866
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r28, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22866:
	lw	$r3, -24($r29)
	lwcl	$f1, 0($r3)
	c.le.s	$f1, $f0
	bclf	bclf.22868
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r28, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22868:
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lw	$r4, -32($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lw	$r5, -20($r29)
	lwcl	$f2, 0($r5)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 4($r5)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 8($r5)
	add.s	$f3, $f3, $f4
	addi	$r5, $r0, 0
	lw	$r28, -16($r29)
	lw	$r6, -36($r29)
	sw	$r2, -56($r29)
	swcl	$f3, -60($r29)
	swcl	$f2, -64($r29)
	swcl	$f1, -68($r29)
	swcl	$f0, -72($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -76($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -76
	jal	lab2.22870
	j	lab1.22869
lab2.22870:
	jr	$r27
lab1.22869:
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-cls
	bnei	$r2, 1, bnei.22872
	lwcl	$f0, -72($r29)
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -68($r29)
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -64($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -60($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -52($r29)
	lw	$r3, -8($r29)
	sw	$r2, 0($r3)
	lw	$r2, -56($r29)
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r28, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22872:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r28, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r27, 0($r28)
	jr	$r27
solve_one_or_network.4987:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r3)	!ld var
	bnei	$r7, -1, bnei.22874
	jr	$r31
bnei.22874:
	sll	$r7, $r7, 2
	lwr	$r6, $r7($r6)	!ld var
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r5, 0
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22876
	j	lab1.22875
lab2.22876:
	jr	$r27
lab1.22875:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
trace_or_matrix.4999:
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r3)	!ld var
	lw	$r11, 0($r10)
	bnei	$r11, -1, bnei.22878
	jr	$r31
bnei.22878:
	addi	$r12, $r0, 99
	bne	$r11, $r12, bne.22880
	addi	$r5, $r0, 1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r9, 0
	addi	$r2, $r5, 0
	addi	$r3, $r10, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22882
	j	lab1.22881
lab2.22882:
	jr	$r27
lab1.22881:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bne.22880:
	sw	$r10, -20($r29)
	sw	$r9, -24($r29)
	sw	$r5, -28($r29)
	sw	$r7, -32($r29)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r8, 0
	addi	$r2, $r11, 0
	addi	$r3, $r4, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.22884
	j	lab1.22883
lab2.22884:
	jr	$r27
lab1.22883:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	bnei	$r2, 0, bnei.22886
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22886:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f1, 0($r2)
	c.le.s	$f1, $f0
	bclf	bclf.22888
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22888:
	addi	$r2, $r0, 1
	lw	$r28, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.22890
	j	lab1.22889
lab2.22890:
	jr	$r27
lab1.22889:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
judge_intersection.5020:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	addi	$r6, $r0, 0
	lw	$r5, 0($r5)
	sw	$r4, -4($r29)
	addi	$r28, $r3, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -8($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -8
	jal	lab2.22892
	j	lab1.22891
lab2.22892:
	jr	$r27
lab1.22891:
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-cls
	lw	$r2, -4($r29)
	lwcl	$f0, 0($r2)
	c.le.s	$f0, $f28
	bclf	bclf.22894
	addi	$r2, $r0, 0
	jr	$r31
bclf.22894:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.22896
	addi	$r2, $r0, 0
	jr	$r31
bclf.22896:
	addi	$r2, $r0, 1
	jr	$r31
solve_each_element_fast.5034:
	lw	$r5, 36($r28)
	lw	$r6, 32($r28)
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	lw	$r14, 0($r4)
	sll	$r15, $r2, 2
	lwr	$r15, $r15($r3)	!ld var
	bnei	$r15, -1, bnei.22898
	jr	$r31
bnei.22898:
	sw	$r10, -4($r29)
	sw	$r12, -8($r29)
	sw	$r11, -12($r29)
	sw	$r13, -16($r29)
	sw	$r6, -20($r29)
	sw	$r14, -24($r29)
	sw	$r5, -28($r29)
	sw	$r8, -32($r29)
	sw	$r4, -36($r29)
	sw	$r3, -40($r29)
	sw	$r28, -44($r29)
	sw	$r2, -48($r29)
	sw	$r9, -52($r29)
	sw	$r15, -56($r29)
	addi	$r28, $r7, 0
	addi	$r2, $r15, 0
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22900
	j	lab1.22899
lab2.22900:
	jr	$r27
lab1.22899:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	bnei	$r2, 0, bnei.22902
	lw	$r2, -56($r29)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	lwr	$r2, $r2($r3)	!ld var
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.22904
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r28, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22904:
	jr	$r31
bnei.22902:
	lw	$r3, -32($r29)
	lwcl	$f0, 0($r3)
	c.le.s	$f0, $f30
	bclf	bclf.22906
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r28, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22906:
	lw	$r3, -28($r29)
	lwcl	$f1, 0($r3)
	c.le.s	$f1, $f0
	bclf	bclf.22908
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r28, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22908:
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lw	$r4, -24($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lw	$r5, -20($r29)
	lwcl	$f2, 0($r5)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 4($r5)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 8($r5)
	add.s	$f3, $f3, $f4
	addi	$r4, $r0, 0
	lw	$r28, -16($r29)
	lw	$r5, -40($r29)
	sw	$r2, -60($r29)
	swcl	$f3, -64($r29)
	swcl	$f2, -68($r29)
	swcl	$f1, -72($r29)
	swcl	$f0, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -80($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -80
	jal	lab2.22910
	j	lab1.22909
lab2.22910:
	jr	$r27
lab1.22909:
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-cls
	bnei	$r2, 1, bnei.22912
	lwcl	$f0, -76($r29)
	lw	$r2, -28($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -72($r29)
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -68($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -64($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -56($r29)
	lw	$r3, -8($r29)
	sw	$r2, 0($r3)
	lw	$r2, -60($r29)
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r28, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22912:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r28, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r27, 0($r28)
	jr	$r27
solve_one_or_network_fast.5086:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r3)	!ld var
	bnei	$r7, -1, bnei.22914
	jr	$r31
bnei.22914:
	sll	$r7, $r7, 2
	lwr	$r6, $r7($r6)	!ld var
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r5, 0
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22916
	j	lab1.22915
lab2.22916:
	jr	$r27
lab1.22915:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
trace_or_matrix_fast.5098:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r3)	!ld var
	lw	$r10, 0($r9)
	bnei	$r10, -1, bnei.22918
	jr	$r31
bnei.22918:
	addi	$r11, $r0, 99
	bne	$r10, $r11, bne.22920
	addi	$r5, $r0, 1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r8, 0
	addi	$r2, $r5, 0
	addi	$r3, $r9, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.22922
	j	lab1.22921
lab2.22922:
	jr	$r27
lab1.22921:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bne.22920:
	sw	$r9, -20($r29)
	sw	$r8, -24($r29)
	sw	$r5, -28($r29)
	sw	$r7, -32($r29)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r6, 0
	addi	$r2, $r10, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.22924
	j	lab1.22923
lab2.22924:
	jr	$r27
lab1.22923:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	bnei	$r2, 0, bnei.22926
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22926:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f1, 0($r2)
	c.le.s	$f1, $f0
	bclf	bclf.22928
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.22928:
	addi	$r2, $r0, 1
	lw	$r28, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.22930
	j	lab1.22929
lab2.22930:
	jr	$r27
lab1.22929:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r28, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
judge_intersection_fast.5119:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	addi	$r6, $r0, 0
	lw	$r5, 0($r5)
	sw	$r4, -4($r29)
	addi	$r28, $r3, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -8($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -8
	jal	lab2.22932
	j	lab1.22931
lab2.22932:
	jr	$r27
lab1.22931:
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-cls
	lw	$r2, -4($r29)
	lwcl	$f0, 0($r2)
	c.le.s	$f0, $f28
	bclf	bclf.22934
	addi	$r2, $r0, 0
	jr	$r31
bclf.22934:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.22936
	addi	$r2, $r0, 0
	jr	$r31
bclf.22936:
	addi	$r2, $r0, 1
	jr	$r31
get_nvector_second.5158:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lwcl	$f0, 0($r4)
	lw	$r5, 20($r2)
	lwcl	$f1, 0($r5)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 4($r4)
	lw	$r5, 20($r2)
	lwcl	$f2, 4($r5)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lw	$r4, 20($r2)
	lwcl	$f3, 8($r4)
	sub.s	$f2, $f2, $f3
	lw	$r4, 16($r2)
	lwcl	$f3, 0($r4)
	mul.s	$f3, $f0, $f3
	lw	$r4, 16($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f1, $f4
	lw	$r4, 16($r2)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f2, $f5
	lw	$r4, 12($r2)
	bnei	$r4, 0, bnei.22938
	swcl	$f3, 0($r3)
	swcl	$f4, 4($r3)
	swcl	$f5, 8($r3)
	lw	$r2, 24($r2)
	lwcl	$f0, 0($r3)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 4($r3)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.22940
	fmove	$f0, $f31
	j	cont.22939
bclf.22940:
	bnei	$r2, 1, bnei.22942
	div.s	$f0, $f29, $f0
	j	cont.22941
bnei.22942:
	div.s	$f0, $f31, $f0
cont.22941:
cont.22939:
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r3)
	lwcl	$f1, 4($r3)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r3)
	lwcl	$f1, 8($r3)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r3)
	jr	$r31
bnei.22938:
	lw	$r4, 36($r2)
	lwcl	$f6, 8($r4)
	mul.s	$f6, $f1, $f6
	lw	$r4, 36($r2)
	lwcl	$f7, 4($r4)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	lfh	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swcl	$f3, 0($r3)
	lw	$r4, 36($r2)
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f0, $f3
	lw	$r4, 36($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swcl	$f2, 4($r3)
	lw	$r4, 36($r2)
	lwcl	$f2, 4($r4)
	mul.s	$f0, $f0, $f2
	lw	$r4, 36($r2)
	lwcl	$f2, 0($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swcl	$f0, 8($r3)
	lw	$r2, 24($r2)
	lwcl	$f0, 0($r3)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 4($r3)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.22944
	fmove	$f0, $f31
	j	cont.22943
bclf.22944:
	bnei	$r2, 1, bnei.22946
	div.s	$f0, $f29, $f0
	j	cont.22945
bnei.22946:
	div.s	$f0, $f31, $f0
cont.22945:
cont.22943:
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r3)
	lwcl	$f1, 4($r3)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r3)
	lwcl	$f1, 8($r3)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r3)
	jr	$r31
get_nvector.5213:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r28, 4($r28)
	lw	$r6, 4($r2)
	bnei	$r6, 1, bnei.22948
	lw	$r2, 0($r5)
	fmove	$f0, $f30
	swcl	$f0, 0($r4)
	swcl	$f0, 4($r4)
	swcl	$f0, 8($r4)
	addi	$r5, $r2, -1
	addi	$r2, $r2, -1
	sll	$r2, $r2, 2
	lwclr	$f0, $r2($r3)	!ldf var
	c.eq.s	$f0, $f30
	bclf	bclf.22950
	fmove	$f0, $f30
	sll	$r2, $r5, 2
	swclr	$f0, $r2($r4)	!stf var
	jr	$r31
bclf.22950:
	c.le.s	$f0, $f30
	bclf	bclf.22952
	fmove	$f0, $f31
	sll	$r2, $r5, 2
	swclr	$f0, $r2($r4)	!stf var
	jr	$r31
bclf.22952:
	fmove	$f0, $f29
	sll	$r2, $r5, 2
	swclr	$f0, $r2($r4)	!stf var
	jr	$r31
bnei.22948:
	bnei	$r6, 2, bnei.22954
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	swcl	$f0, 0($r4)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	swcl	$f0, 4($r4)
	lw	$r2, 16($r2)
	lwcl	$f0, 8($r2)
	fneg	$f0, $f0
	swcl	$f0, 8($r4)
	jr	$r31
bnei.22954:
	lw	$r27, 0($r28)
	jr	$r27
utexture.5219:
	lw	$r4, 4($r28)
	lw	$r5, 0($r2)
	lw	$r6, 32($r2)
	lwcl	$f0, 0($r6)
	swcl	$f0, 0($r4)
	lw	$r6, 32($r2)
	lwcl	$f0, 4($r6)
	swcl	$f0, 4($r4)
	lw	$r6, 32($r2)
	lwcl	$f0, 8($r6)
	swcl	$f0, 8($r4)
	bnei	$r5, 1, bnei.22956
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f1, 0($r5)
	sub.s	$f0, $f0, $f1
	lfh	$f1, 15692
	lfl	$f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lfh	$f1, 16800
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16672
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -8($r29)
	lw	$r2, 20($r2)
	lwcl	$f3, 8($r2)
	sub.s	$f2, $f2, $f3
	lfh	$f3, 15692
	lfl	$f3, 52429
	mul.s	$f3, $f2, $f3
	swcl	$f0, -20($r29)
	swcl	$f1, -24($r29)
	swcl	$f2, -28($r29)
	fmove	$f0, $f3
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lfh	$f1, 16800
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16672
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	lwcl	$f3, -20($r29)
	c.le.s	$f2, $f3
	bclf	bclf.22958
	c.le.s	$f1, $f0
	bclf	bclf.22960
	lfh	$f0, 17279
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
bclf.22960:
	fmove	$f0, $f30
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
bclf.22958:
	c.le.s	$f1, $f0
	bclf	bclf.22962
	fmove	$f0, $f30
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
bclf.22962:
	lfh	$f0, 17279
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
bnei.22956:
	bnei	$r5, 2, bnei.22964
	lwcl	$f0, 4($r3)
	lfh	$f1, 16000
	mul.s	$f0, $f0, $f1
	sw	$r4, -4($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	lw	$r2, -4($r29)
	swcl	$f1, 0($r2)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 4($r2)
	jr	$r31
bnei.22964:
	bnei	$r5, 3, bnei.22966
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f1, 0($r5)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lw	$r2, 20($r2)
	lwcl	$f2, 8($r2)
	sub.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f0
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	lfh	$f1, 16672
	div.s	$f0, $f0, $f1
	sw	$r4, -4($r29)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16457
	lfl	$f1, 4059
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f0, $f1
	lw	$r2, -4($r29)
	swcl	$f1, 4($r2)
	sub.s	$f0, $f31, $f0
	lfh	$f1, 17279
	mul.s	$f0, $f0, $f1
	swcl	$f0, 8($r2)
	jr	$r31
bnei.22966:
	bnei	$r5, 4, bnei.22968
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f1, 0($r5)
	sub.s	$f0, $f0, $f1
	lw	$r5, 16($r2)
	lwcl	$f1, 0($r5)
	sqrt	$f1, $f1
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 8($r5)
	sub.s	$f1, $f1, $f2
	lw	$r5, 16($r2)
	lwcl	$f2, 8($r5)
	sqrt	$f2, $f2
	mul.s	$f1, $f1, $f2
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	lfh	$f3, 14545
	lfl	$f3, 46871
	fabs	$f4, $f0
	sw	$r4, -4($r29)
	swcl	$f2, -36($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	c.le.s	$f3, $f4
	bclf	bclf.22970
	div.s	$f0, $f1, $f0
	fabs	$f0, $f0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.22969
bclf.22970:
	lfh	$f0, 16752
cont.22969:
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lwcl	$f1, -40($r29)
	sub.s	$f0, $f1, $f0
	lw	$r2, -12($r29)
	lwcl	$f1, 4($r2)
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	lw	$r2, 16($r2)
	lwcl	$f2, 4($r2)
	sqrt	$f2, $f2
	mul.s	$f1, $f1, $f2
	lfh	$f2, 14545
	lfl	$f2, 46871
	lwcl	$f3, -36($r29)
	fabs	$f4, $f3
	swcl	$f0, -44($r29)
	c.le.s	$f2, $f4
	bclf	bclf.22972
	div.s	$f1, $f1, $f3
	fabs	$f1, $f1
	fmove	$f0, $f1
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.22971
bclf.22972:
	lfh	$f0, 16752
cont.22971:
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f1, -48($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 15897
	lfl	$f1, 39322
	lfh	$f2, 16128
	lwcl	$f3, -44($r29)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f30, $f0
	bclf	bclf.22974
	lfh	$f1, 17279
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
	jr	$r31
bclf.22974:
	fmove	$f0, $f30
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
	jr	$r31
bnei.22968:
	jr	$r31
trace_reflections.5395:
	lw	$r4, 36($r28)
	lw	$r5, 32($r28)
	lw	$r6, 28($r28)
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	blti	$r2, 0, blti.22976
	sll	$r13, $r2, 2
	lwr	$r7, $r13($r7)	!ld var
	lw	$r13, 4($r7)
	sw	$r4, -4($r29)
	sw	$r6, -8($r29)
	sw	$r9, -12($r29)
	sw	$r13, -16($r29)
	swcl	$f1, -20($r29)
	swcl	$f0, -24($r29)
	sw	$r3, -28($r29)
	sw	$r28, -32($r29)
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	sw	$r8, -44($r29)
	sw	$r7, -48($r29)
	sw	$r11, -52($r29)
	sw	$r12, -56($r29)
	addi	$r28, $r10, 0
	addi	$r2, $r13, 0
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22978
	j	lab1.22977
lab2.22978:
	jr	$r27
lab1.22977:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	bnei	$r2, 1, bnei.22980
	lw	$r2, -56($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.22982
	addi	$r2, $r0, 0
	lw	$r4, -44($r29)
	lw	$r4, 0($r4)
	lw	$r28, -40($r29)
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.22984
	j	lab1.22983
lab2.22984:
	jr	$r27
lab1.22983:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	bnei	$r2, 1, bnei.22986
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	lw	$r3, -28($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22986:
	lw	$r2, -16($r29)
	lw	$r3, 0($r2)
	lw	$r4, -12($r29)
	lwcl	$f0, 0($r4)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r4)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r4)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$r3, -48($r29)
	lwcl	$f1, 8($r3)
	lwcl	$f2, -24($r29)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$r2, 0($r2)
	lw	$r3, -28($r29)
	lwcl	$f3, 0($r3)
	lwcl	$f4, 0($r2)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r3)
	lwcl	$f5, 4($r2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r3)
	lwcl	$f5, 8($r2)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f1, $f1, $f3
	c.le.s	$f0, $f30
	bclf	bclf.22988
	j	cont.22987
bclf.22988:
	lw	$r2, -8($r29)
	lwcl	$f3, 0($r2)
	lw	$r4, -4($r29)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 0($r2)
	lwcl	$f3, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 4($r2)
	lwcl	$f3, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 8($r2)
cont.22987:
	c.le.s	$f1, $f30
	bclf	bclf.22990
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	lwcl	$f1, -20($r29)
	fmove	$f0, $f2
	lw	$r27, 0($r28)
	jr	$r27
bclf.22990:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -8($r29)
	lwcl	$f3, 0($r2)
	add.s	$f3, $f3, $f0
	swcl	$f3, 0($r2)
	lwcl	$f3, 4($r2)
	add.s	$f3, $f3, $f0
	swcl	$f3, 4($r2)
	lwcl	$f3, 8($r2)
	add.s	$f0, $f3, $f0
	swcl	$f0, 8($r2)
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	fmove	$f0, $f2
	lw	$r27, 0($r28)
	jr	$r27
bne.22982:
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	lw	$r3, -28($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.22980:
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	lw	$r3, -28($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.22976:
	jr	$r31
trace_ray.5428:
	lw	$r5, 76($r28)
	lw	$r6, 72($r28)
	lw	$r7, 68($r28)
	lw	$r8, 64($r28)
	lw	$r9, 60($r28)
	lw	$r10, 56($r28)
	lw	$r11, 52($r28)
	lw	$r12, 48($r28)
	lw	$r13, 44($r28)
	lw	$r14, 40($r28)
	lw	$r15, 36($r28)
	lw	$r16, 32($r28)
	lw	$r17, 28($r28)
	lw	$r18, 24($r28)
	lw	$r19, 20($r28)
	lw	$r20, 16($r28)
	lw	$r21, 12($r28)
	lw	$r22, 8($r28)
	lw	$r23, 4($r28)
	bgti	$r2, 4, bgti.22992
	lw	$r24, 8($r4)
	sw	$r23, -4($r29)
	sw	$r28, -8($r29)
	swcl	$f1, -12($r29)
	sw	$r7, -16($r29)
	sw	$r6, -20($r29)
	sw	$r16, -24($r29)
	sw	$r11, -28($r29)
	sw	$r12, -32($r29)
	sw	$r17, -36($r29)
	sw	$r10, -40($r29)
	sw	$r13, -44($r29)
	sw	$r15, -48($r29)
	sw	$r8, -52($r29)
	sw	$r4, -56($r29)
	sw	$r24, -60($r29)
	sw	$r2, -64($r29)
	sw	$r19, -68($r29)
	sw	$r5, -72($r29)
	sw	$r9, -76($r29)
	sw	$r20, -80($r29)
	sw	$r3, -84($r29)
	sw	$r22, -88($r29)
	swcl	$f0, -92($r29)
	sw	$r14, -96($r29)
	sw	$r21, -100($r29)
	addi	$r28, $r18, 0
	addi	$r2, $r3, 0
	sw	$r31, -104($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -104
	jal	lab2.22994
	j	lab1.22993
lab2.22994:
	jr	$r27
lab1.22993:
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-cls
	bnei	$r2, 1, bnei.22996
	lw	$r2, -100($r29)
	lw	$r2, 0($r2)
	sll	$r3, $r2, 2
	lw	$r4, -96($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r4, 8($r3)
	lw	$r5, 28($r3)
	lwcl	$f0, 0($r5)
	lwcl	$f1, -92($r29)
	mul.s	$f0, $f0, $f1
	lw	$r28, -88($r29)
	lw	$r5, -84($r29)
	sw	$r4, -104($r29)
	swcl	$f0, -108($r29)
	sw	$r2, -112($r29)
	sw	$r3, -116($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -120($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -120
	jal	lab2.22998
	j	lab1.22997
lab2.22998:
	jr	$r27
lab1.22997:
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-cls
	lw	$r3, -80($r29)
	lwcl	$f0, 0($r3)
	lw	$r2, -76($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r2)
	lw	$r28, -72($r29)
	lw	$r2, -116($r29)
	sw	$r31, -120($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -120
	jal	lab2.23000
	j	lab1.22999
lab2.23000:
	jr	$r27
lab1.22999:
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-cls
	lw	$r2, -112($r29)
	sll	$r2, $r2, 2
	lw	$r3, -68($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -60($r29)
	swr	$r2, $r4($r5)	!st var
	lw	$r2, -56($r29)
	lw	$r4, 4($r2)
	sll	$r6, $r3, 2
	lwr	$r4, $r6($r4)	!ld var
	lw	$r6, -80($r29)
	lwcl	$f0, 0($r6)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r6)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r6)
	swcl	$f0, 8($r4)
	lw	$r4, 12($r2)
	lfh	$f0, 16128
	lw	$r7, -116($r29)
	lw	$r8, 28($r7)
	lwcl	$f1, 0($r8)
	c.le.s	$f0, $f1
	bclf	bclf.23002
	addi	$r8, $r0, 1
	sll	$r9, $r3, 2
	swr	$r8, $r9($r4)	!st var
	lw	$r4, 16($r2)
	sll	$r8, $r3, 2
	lwr	$r8, $r8($r4)	!ld var
	lw	$r9, -52($r29)
	lwcl	$f0, 0($r9)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r9)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r9)
	swcl	$f0, 8($r8)
	sll	$r8, $r3, 2
	lwr	$r4, $r8($r4)	!ld var
	lfh	$f0, 15232
	lwcl	$f1, -108($r29)
	mul.s	$f0, $f0, $f1
	lwcl	$f2, 0($r4)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 0($r4)
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 4($r4)
	lwcl	$f2, 8($r4)
	mul.s	$f0, $f2, $f0
	swcl	$f0, 8($r4)
	lw	$r4, 28($r2)
	sll	$r8, $r3, 2
	lwr	$r4, $r8($r4)	!ld var
	lw	$r8, -48($r29)
	lwcl	$f0, 0($r8)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r8)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r8)
	swcl	$f0, 8($r4)
	j	cont.23001
bclf.23002:
	addi	$r8, $r0, 0
	sll	$r9, $r3, 2
	swr	$r8, $r9($r4)	!st var
cont.23001:
	lfh	$f0, 49152
	lw	$r4, -84($r29)
	lwcl	$f1, 0($r4)
	lw	$r8, -48($r29)
	lwcl	$f2, 0($r8)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	lwcl	$f3, 4($r8)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lwcl	$f3, 8($r8)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 0($r4)
	lwcl	$f2, 0($r8)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	lwcl	$f2, 4($r8)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	lwcl	$f2, 8($r8)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	lw	$r9, 28($r7)
	lwcl	$f0, 4($r9)
	lwcl	$f1, -92($r29)
	mul.s	$f0, $f1, $f0
	addi	$r9, $r0, 0
	lw	$r10, -44($r29)
	lw	$r10, 0($r10)
	lw	$r28, -40($r29)
	swcl	$f0, -120($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r10, 0
	sw	$r31, -124($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -124
	jal	lab2.23004
	j	lab1.23003
lab2.23004:
	jr	$r27
lab1.23003:
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-cls
	bnei	$r2, 1, bnei.23006
	j	cont.23005
bnei.23006:
	lw	$r2, -48($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -36($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lwcl	$f1, -108($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -84($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f2, $f2, $f3
	lwcl	$f3, 4($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r2)
	lwcl	$f4, 8($r3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	fneg	$f2, $f2
	c.le.s	$f0, $f30
	bclf	bclf.23008
	j	cont.23007
bclf.23008:
	lw	$r3, -32($r29)
	lwcl	$f3, 0($r3)
	lw	$r4, -52($r29)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 0($r3)
	lwcl	$f3, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 4($r3)
	lwcl	$f3, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 8($r3)
cont.23007:
	c.le.s	$f2, $f30
	bclf	bclf.23010
	j	cont.23009
bclf.23010:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -120($r29)
	mul.s	$f0, $f0, $f2
	lw	$r3, -32($r29)
	lwcl	$f3, 0($r3)
	add.s	$f3, $f3, $f0
	swcl	$f3, 0($r3)
	lwcl	$f3, 4($r3)
	add.s	$f3, $f3, $f0
	swcl	$f3, 4($r3)
	lwcl	$f3, 8($r3)
	add.s	$f0, $f3, $f0
	swcl	$f0, 8($r3)
cont.23009:
cont.23005:
	lw	$r28, -28($r29)
	lw	$r2, -80($r29)
	sw	$r31, -124($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -124
	jal	lab2.23012
	j	lab1.23011
lab2.23012:
	jr	$r27
lab1.23011:
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-cls
	lw	$r2, -24($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r28, -20($r29)
	lw	$r3, -84($r29)
	lwcl	$f0, -108($r29)
	lwcl	$f1, -120($r29)
	sw	$r31, -124($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -124
	jal	lab2.23014
	j	lab1.23013
lab2.23014:
	jr	$r27
lab1.23013:
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-cls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f1, -92($r29)
	c.le.s	$f1, $f0
	bclf	bclf.23016
	jr	$r31
bclf.23016:
	lw	$r2, -64($r29)
	blti	$r2, 4, blti.23018
	j	cont.23017
blti.23018:
	addi	$r3, $r2, 1
	addi	$r4, $r0, -1
	sll	$r3, $r3, 2
	lw	$r5, -60($r29)
	swr	$r4, $r3($r5)	!st var
cont.23017:
	lw	$r3, -104($r29)
	bnei	$r3, 2, bnei.23020
	lw	$r3, -116($r29)
	lw	$r3, 28($r3)
	lwcl	$f0, 0($r3)
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lwcl	$f1, 0($r3)
	lwcl	$f2, -12($r29)
	add.s	$f1, $f2, $f1
	lw	$r28, -8($r29)
	lw	$r3, -84($r29)
	lw	$r4, -56($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23020:
	jr	$r31
bnei.22996:
	addi	$r2, $r0, -1
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -60($r29)
	swr	$r2, $r4($r5)	!st var
	bnei	$r3, 0, bnei.23022
	jr	$r31
bnei.23022:
	lw	$r2, -84($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -36($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.23024
	jr	$r31
bclf.23024:
	mul.s	$f1, $f0, $f0
	mul.s	$f0, $f1, $f0
	lwcl	$f1, -92($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -4($r29)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	lw	$r2, -32($r29)
	lwcl	$f1, 0($r2)
	add.s	$f1, $f1, $f0
	swcl	$f1, 0($r2)
	lwcl	$f1, 4($r2)
	add.s	$f1, $f1, $f0
	swcl	$f1, 4($r2)
	lwcl	$f1, 8($r2)
	add.s	$f0, $f1, $f0
	swcl	$f0, 8($r2)
	jr	$r31
bgti.22992:
	jr	$r31
trace_diffuse_ray.5541:
	lw	$r3, 48($r28)
	lw	$r4, 44($r28)
	lw	$r5, 40($r28)
	lw	$r6, 36($r28)
	lw	$r7, 32($r28)
	lw	$r8, 28($r28)
	lw	$r9, 24($r28)
	lw	$r10, 20($r28)
	lw	$r11, 16($r28)
	lw	$r12, 12($r28)
	lw	$r13, 8($r28)
	lw	$r14, 4($r28)
	sw	$r4, -4($r29)
	sw	$r14, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r9, -16($r29)
	sw	$r8, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r11, -32($r29)
	sw	$r3, -36($r29)
	sw	$r13, -40($r29)
	sw	$r2, -44($r29)
	sw	$r7, -48($r29)
	sw	$r12, -52($r29)
	addi	$r28, $r10, 0
	sw	$r31, -56($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -56
	jal	lab2.23026
	j	lab1.23025
lab2.23026:
	jr	$r27
lab1.23025:
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-cls
	bnei	$r2, 1, bnei.23028
	lw	$r2, -52($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	lwr	$r2, $r2($r3)	!ld var
	lw	$r3, -44($r29)
	lw	$r3, 0($r3)
	lw	$r28, -40($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.23030
	j	lab1.23029
lab2.23030:
	jr	$r27
lab1.23029:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	lw	$r28, -36($r29)
	lw	$r2, -56($r29)
	lw	$r3, -32($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.23032
	j	lab1.23031
lab2.23032:
	jr	$r27
lab1.23031:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	lw	$r3, 0($r3)
	lw	$r28, -24($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.23034
	j	lab1.23033
lab2.23034:
	jr	$r27
lab1.23033:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	bnei	$r2, 1, bnei.23036
	jr	$r31
bnei.23036:
	lw	$r2, -20($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -16($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.23038
	fmove	$f0, $f30
	j	cont.23037
bclf.23038:
cont.23037:
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -56($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	lw	$r2, -8($r29)
	lwcl	$f1, 0($r2)
	lw	$r3, -4($r29)
	lwcl	$f2, 0($r3)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 0($r2)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 4($r2)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r3)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 8($r2)
	jr	$r31
bnei.23028:
	jr	$r31
iter_trace_diffuse_rays.5564:
	lw	$r6, 4($r28)
	blti	$r5, 0, blti.23040
	sll	$r7, $r5, 2
	lwr	$r7, $r7($r2)	!ld var
	lw	$r7, 0($r7)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r7)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r7)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.23042
	sll	$r7, $r5, 2
	lwr	$r7, $r7($r2)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r28, -16($r29)
	sw	$r5, -20($r29)
	addi	$r28, $r6, 0
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.23044
	j	lab1.23043
lab2.23044:
	jr	$r27
lab1.23043:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r2, -20($r29)
	addi	$r5, $r2, -2
	lw	$r28, -16($r29)
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bclf.23042:
	addi	$r7, $r5, 1
	sll	$r7, $r7, 2
	lwr	$r7, $r7($r2)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r28, -16($r29)
	sw	$r5, -20($r29)
	addi	$r28, $r6, 0
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.23046
	j	lab1.23045
lab2.23046:
	jr	$r27
lab1.23045:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r2, -20($r29)
	addi	$r5, $r2, -2
	lw	$r28, -16($r29)
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23040:
	jr	$r31
trace_diffuse_ray_80percent.5592:
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	sw	$r7, -20($r29)
	sw	$r2, -24($r29)
	bnei	$r2, 0, bnei.23048
	j	cont.23047
bnei.23048:
	lw	$r8, 0($r7)
	sw	$r8, -28($r29)
	addi	$r28, $r5, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23050
	j	lab1.23049
lab2.23050:
	jr	$r27
lab1.23049:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -28($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23052
	j	lab1.23051
lab2.23052:
	jr	$r27
lab1.23051:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
cont.23047:
	lw	$r2, -24($r29)
	bnei	$r2, 1, bnei.23054
	j	cont.23053
bnei.23054:
	lw	$r3, -20($r29)
	lw	$r4, 4($r3)
	lw	$r28, -16($r29)
	lw	$r5, -12($r29)
	sw	$r4, -32($r29)
	addi	$r2, $r5, 0
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.23056
	j	lab1.23055
lab2.23056:
	jr	$r27
lab1.23055:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -32($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.23058
	j	lab1.23057
lab2.23058:
	jr	$r27
lab1.23057:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
cont.23053:
	lw	$r2, -24($r29)
	bnei	$r2, 2, bnei.23060
	j	cont.23059
bnei.23060:
	lw	$r3, -20($r29)
	lw	$r4, 8($r3)
	lw	$r28, -16($r29)
	lw	$r5, -12($r29)
	sw	$r4, -36($r29)
	addi	$r2, $r5, 0
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.23062
	j	lab1.23061
lab2.23062:
	jr	$r27
lab1.23061:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -36($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.23064
	j	lab1.23063
lab2.23064:
	jr	$r27
lab1.23063:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
cont.23059:
	lw	$r2, -24($r29)
	bnei	$r2, 3, bnei.23066
	bnei	$r2, 4, bnei.23068
	jr	$r31
bnei.23068:
	lw	$r2, -20($r29)
	lw	$r2, 16($r2)
	lw	$r28, -16($r29)
	lw	$r3, -12($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -44
	jal	lab2.23070
	j	lab1.23069
lab2.23070:
	jr	$r27
lab1.23069:
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -40($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23066:
	lw	$r3, -20($r29)
	lw	$r4, 12($r3)
	lw	$r28, -16($r29)
	lw	$r5, -12($r29)
	sw	$r4, -44($r29)
	addi	$r2, $r5, 0
	sw	$r31, -48($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -48
	jal	lab2.23072
	j	lab1.23071
lab2.23072:
	jr	$r27
lab1.23071:
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -44($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	sw	$r31, -48($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -48
	jal	lab2.23074
	j	lab1.23073
lab2.23074:
	jr	$r27
lab1.23073:
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-cls
	lw	$r2, -24($r29)
	bnei	$r2, 4, bnei.23076
	jr	$r31
bnei.23076:
	lw	$r2, -20($r29)
	lw	$r2, 16($r2)
	lw	$r28, -16($r29)
	lw	$r3, -12($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -48
	jal	lab2.23078
	j	lab1.23077
lab2.23078:
	jr	$r27
lab1.23077:
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -8($r29)
	lw	$r2, -40($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
calc_diffuse_using_1point.5615:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	lw	$r7, 20($r2)
	lw	$r8, 28($r2)
	lw	$r9, 4($r2)
	lw	$r10, 16($r2)
	sll	$r11, $r3, 2
	lwr	$r7, $r11($r7)	!ld var
	lwcl	$f0, 0($r7)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r7)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r7)
	swcl	$f0, 8($r6)
	lw	$r2, 24($r2)
	lw	$r2, 0($r2)
	sll	$r7, $r3, 2
	lwr	$r7, $r7($r8)	!ld var
	sll	$r8, $r3, 2
	lwr	$r8, $r8($r9)	!ld var
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r10, -12($r29)
	sw	$r3, -16($r29)
	addi	$r28, $r4, 0
	addi	$r3, $r7, 0
	addi	$r4, $r8, 0
	sw	$r31, -20($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -20
	jal	lab2.23080
	j	lab1.23079
lab2.23080:
	jr	$r27
lab1.23079:
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-cls
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -12($r29)
	lwr	$r2, $r2($r3)	!ld var
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 0($r2)
	lw	$r4, -4($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r3)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r3)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r3)
	jr	$r31
calc_diffuse_using_5points.5629:
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	lwr	$r3, $r9($r3)	!ld var
	lw	$r3, 20($r3)
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r4)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 20($r10)
	addi	$r11, $r2, 1
	sll	$r11, $r11, 2
	lwr	$r11, $r11($r4)	!ld var
	lw	$r11, 20($r11)
	sll	$r12, $r2, 2
	lwr	$r5, $r12($r5)	!ld var
	lw	$r5, 20($r5)
	sll	$r12, $r6, 2
	lwr	$r3, $r12($r3)	!ld var
	lwcl	$f0, 0($r3)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r9)	!ld var
	lwcl	$f0, 0($r8)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r10)	!ld var
	lwcl	$f0, 0($r8)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r11)	!ld var
	lwcl	$f0, 0($r8)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r5)	!ld var
	lwcl	$f0, 0($r8)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r8)
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r4)	!ld var
	lw	$r2, 16($r2)
	sll	$r3, $r6, 2
	lwr	$r2, $r3($r2)	!ld var
	lwcl	$f0, 0($r7)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 0($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 4($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r7)
	lwcl	$f0, 8($r7)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 8($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r7)
	jr	$r31
do_without_neighbors.5662:
	lw	$r4, 4($r28)
	bgti	$r3, 4, bgti.23082
	lw	$r5, 8($r2)
	sll	$r6, $r3, 2
	lwr	$r5, $r6($r5)	!ld var
	blti	$r5, 0, blti.23084
	lw	$r5, 12($r2)
	sll	$r6, $r3, 2
	lwr	$r5, $r6($r5)	!ld var
	bnei	$r5, 1, bnei.23086
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r4, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.23088
	j	lab1.23087
lab2.23088:
	jr	$r27
lab1.23087:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r2, -12($r29)
	addi	$r3, $r2, 1
	lw	$r28, -8($r29)
	lw	$r2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23086:
	addi	$r3, $r3, 1
	lw	$r27, 0($r28)
	jr	$r27
blti.23084:
	jr	$r31
bgti.23082:
	jr	$r31
try_exploit_neighbors.5713:
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r5)	!ld var
	bgti	$r7, 4, bgti.23090
	lw	$r11, 8($r10)
	sll	$r12, $r7, 2
	lwr	$r11, $r12($r11)	!ld var
	blti	$r11, 0, blti.23092
	sll	$r11, $r2, 2
	lwr	$r11, $r11($r5)	!ld var
	lw	$r11, 8($r11)
	sll	$r12, $r7, 2
	lwr	$r11, $r12($r11)	!ld var
	sll	$r12, $r2, 2
	lwr	$r12, $r12($r4)	!ld var
	lw	$r12, 8($r12)
	sll	$r13, $r7, 2
	lwr	$r12, $r13($r12)	!ld var
	bne	$r12, $r11, bne.23094
	sll	$r12, $r2, 2
	lwr	$r12, $r12($r6)	!ld var
	lw	$r12, 8($r12)
	sll	$r13, $r7, 2
	lwr	$r12, $r13($r12)	!ld var
	bne	$r12, $r11, bne.23096
	addi	$r12, $r2, -1
	sll	$r12, $r12, 2
	lwr	$r12, $r12($r5)	!ld var
	lw	$r12, 8($r12)
	sll	$r13, $r7, 2
	lwr	$r12, $r13($r12)	!ld var
	bne	$r12, $r11, bne.23098
	addi	$r12, $r2, 1
	sll	$r12, $r12, 2
	lwr	$r12, $r12($r5)	!ld var
	lw	$r12, 8($r12)
	sll	$r13, $r7, 2
	lwr	$r12, $r13($r12)	!ld var
	bne	$r12, $r11, bne.23100
	addi	$r11, $r0, 1
	j	cont.23093     ! elimjump
bne.23100:
	addi	$r11, $r0, 0
cont.23099:
	j	cont.23093     ! elimjump
bne.23098:
	addi	$r11, $r0, 0
cont.23097:
	j	cont.23093     ! elimjump
bne.23096:
	addi	$r11, $r0, 0
cont.23095:
	j	cont.23093
bne.23094:
	addi	$r11, $r0, 0
cont.23093:
	bnei	$r11, 1, bnei.23102
	lw	$r8, 12($r10)
	sll	$r10, $r7, 2
	lwr	$r8, $r10($r8)	!ld var
	bnei	$r8, 1, bnei.23104
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r28, -24($r29)
	sw	$r7, -28($r29)
	addi	$r28, $r9, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	addi	$r5, $r6, 0
	addi	$r6, $r7, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23106
	j	lab1.23105
lab2.23106:
	jr	$r27
lab1.23105:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	lw	$r2, -28($r29)
	addi	$r7, $r2, 1
	lw	$r28, -24($r29)
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23104:
	addi	$r7, $r7, 1
	lw	$r27, 0($r28)
	jr	$r27
bnei.23102:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	addi	$r28, $r8, 0
	addi	$r3, $r7, 0
	lw	$r27, 0($r28)
	jr	$r27
blti.23092:
	jr	$r31
bgti.23090:
	jr	$r31
write_ppm_header.5733:
	lw	$r2, 4($r28)
	addi	$r3, $r0, 80
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 54
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r2, -4($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r2, -4($r29)
	lw	$r2, 4($r2)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 255
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r2, $r0, 10
	j	min_caml_print_char
pretrace_diffuse_rays.5772:
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	bgti	$r3, 4, bgti.23108
	lw	$r8, 8($r2)
	sll	$r9, $r3, 2
	lwr	$r8, $r9($r8)	!ld var
	blti	$r8, 0, blti.23110
	lw	$r8, 12($r2)
	sll	$r9, $r3, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.23112
	lw	$r8, 24($r2)
	lw	$r8, 0($r8)
	fmove	$f0, $f30
	swcl	$f0, 0($r7)
	swcl	$f0, 4($r7)
	swcl	$f0, 8($r7)
	lw	$r9, 28($r2)
	lw	$r10, 4($r2)
	sll	$r8, $r8, 2
	lwr	$r6, $r8($r6)	!ld var
	sll	$r8, $r3, 2
	lwr	$r8, $r8($r9)	!ld var
	sll	$r9, $r3, 2
	lwr	$r9, $r9($r10)	!ld var
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r9, -20($r29)
	sw	$r8, -24($r29)
	sw	$r6, -28($r29)
	sw	$r5, -32($r29)
	addi	$r28, $r4, 0
	addi	$r2, $r9, 0
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.23114
	j	lab1.23113
lab2.23114:
	jr	$r27
lab1.23113:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	addi	$r5, $r0, 118
	lw	$r28, -32($r29)
	lw	$r2, -28($r29)
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -36
	jal	lab2.23116
	j	lab1.23115
lab2.23116:
	jr	$r27
lab1.23115:
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-cls
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	lw	$r4, -12($r29)
	sll	$r5, $r4, 2
	lwr	$r3, $r5($r3)	!ld var
	lw	$r5, -8($r29)
	lwcl	$f0, 0($r5)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r3)
	addi	$r3, $r4, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23112:
	addi	$r3, $r3, 1
	lw	$r27, 0($r28)
	jr	$r27
blti.23110:
	jr	$r31
bgti.23108:
	jr	$r31
pretrace_pixels.5794:
	lw	$r5, 36($r28)
	lw	$r6, 32($r28)
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	blti	$r3, 0, blti.23118
	lwcl	$f3, 0($r9)
	lw	$r9, 0($r13)
	subu	$r9, $r3, $r9
	sw	$r28, -4($r29)
	sw	$r12, -8($r29)
	sw	$r4, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r7, -28($r29)
	sw	$r5, -32($r29)
	sw	$r10, -36($r29)
	swcl	$f2, -40($r29)
	swcl	$f1, -44($r29)
	sw	$r11, -48($r29)
	swcl	$f0, -52($r29)
	sw	$r8, -56($r29)
	swcl	$f3, -60($r29)
	addi	$r2, $r9, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f1, -60($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -56($r29)
	lwcl	$f1, 0($r2)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -52($r29)
	add.s	$f1, $f1, $f2
	lw	$r3, -48($r29)
	swcl	$f1, 0($r3)
	lwcl	$f1, 4($r2)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -44($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 4($r3)
	lwcl	$f1, 8($r2)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -40($r29)
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r3)
	lwcl	$f0, 0($r3)
	mul.s	$f0, $f0, $f0
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 8($r3)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.23120
	fmove	$f0, $f31
	j	cont.23119
bclf.23120:
	div.s	$f0, $f31, $f0
cont.23119:
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 0($r3)
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 4($r3)
	lwcl	$f4, 8($r3)
	mul.s	$f0, $f4, $f0
	swcl	$f0, 8($r3)
	fmove	$f0, $f30
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f0, 8($r2)
	lw	$r4, -32($r29)
	lwcl	$f0, 0($r4)
	lw	$r5, -28($r29)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r5)
	addi	$r4, $r0, 0
	fmove	$f0, $f31
	lw	$r5, -24($r29)
	sll	$r6, $r5, 2
	lw	$r7, -20($r29)
	lwr	$r6, $r6($r7)	!ld var
	fmove	$f4, $f30
	lw	$r28, -16($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r6, 0
	fmove	$f1, $f4
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.23122
	j	lab1.23121
lab2.23122:
	jr	$r27
lab1.23121:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 0($r3)
	lw	$r5, -36($r29)
	lwcl	$f0, 0($r5)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 24($r3)
	lw	$r5, -12($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	addi	$r6, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.23124
	j	lab1.23123
lab2.23124:
	jr	$r27
lab1.23123:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lw	$r2, -24($r29)
	addi	$r3, $r2, -1
	lw	$r2, -12($r29)
	addi	$r4, $r2, 1
	blti	$r4, 5, blti.23126
	addi	$r4, $r4, -5
	lw	$r28, -4($r29)
	lw	$r2, -20($r29)
	lwcl	$f0, -52($r29)
	lwcl	$f1, -44($r29)
	lwcl	$f2, -40($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23126:
	lw	$r28, -4($r29)
	lw	$r2, -20($r29)
	lwcl	$f0, -52($r29)
	lwcl	$f1, -44($r29)
	lwcl	$f2, -40($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23118:
	jr	$r31
pretrace_line.5848:
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	lwcl	$f0, 0($r7)
	lw	$r7, 4($r10)
	subu	$r3, $r3, $r7
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r8, -12($r29)
	sw	$r9, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	swcl	$f0, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -24($r29)
	lwcl	$f1, 0($r2)
	mul.s	$f1, $f0, $f1
	lw	$r3, -20($r29)
	lwcl	$f2, 0($r3)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f3, 4($r3)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r2)
	mul.s	$f0, $f0, $f3
	lwcl	$f3, 8($r3)
	add.s	$f0, $f0, $f3
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r28, -12($r29)
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	lw	$r27, 0($r28)
	jr	$r27
scan_pixel.5881:
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	lw	$r11, 0($r9)
	bgt	$r11, $r2, bgt.23128
	jr	$r31
bgt.23128:
	sll	$r11, $r2, 2
	lwr	$r11, $r11($r5)	!ld var
	lw	$r11, 0($r11)
	lwcl	$f0, 0($r11)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r11)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r11)
	swcl	$f0, 8($r8)
	lw	$r11, 4($r9)
	addi	$r12, $r3, 1
	bgt	$r11, $r12, bgt.23130
	addi	$r9, $r0, 0
	j	cont.23129
bgt.23130:
	bgti	$r3, 0, bgti.23132
	addi	$r9, $r0, 0
	j	cont.23131
bgti.23132:
	lw	$r9, 0($r9)
	addi	$r11, $r2, 1
	bgt	$r9, $r11, bgt.23134
	addi	$r9, $r0, 0
	j	cont.23133
bgt.23134:
	bgti	$r2, 0, bgti.23136
	addi	$r9, $r0, 0
	j	cont.23135
bgti.23136:
	addi	$r9, $r0, 1
cont.23135:
cont.23133:
cont.23131:
cont.23129:
	bnei	$r9, 1, bnei.23138
	addi	$r9, $r0, 0
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	sw	$r8, -28($r29)
	addi	$r28, $r7, 0
	addi	$r7, $r9, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23140
	j	lab1.23139
lab2.23140:
	jr	$r27
lab1.23139:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	lw	$r2, -28($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23142
	blti	$r2, 0, blti.23144
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.23141     ! elimjump
blti.23144:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.23143:
	j	cont.23141
bgt.23142:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.23141:
	lw	$r2, -28($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23146
	blti	$r2, 0, blti.23148
	j	cont.23147
blti.23148:
	addi	$r2, $r0, 0
cont.23147:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23150
	blti	$r2, 0, blti.23152
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23152:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23150:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23146:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23154
	blti	$r2, 0, blti.23156
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23156:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23154:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bnei.23138:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	addi	$r9, $r0, 0
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	sw	$r8, -28($r29)
	addi	$r28, $r10, 0
	addi	$r2, $r7, 0
	addi	$r3, $r9, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23158
	j	lab1.23157
lab2.23158:
	jr	$r27
lab1.23157:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	lw	$r2, -28($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23160
	blti	$r2, 0, blti.23162
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.23159     ! elimjump
blti.23162:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.23161:
	j	cont.23159
bgt.23160:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.23159:
	lw	$r2, -28($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23164
	blti	$r2, 0, blti.23166
	j	cont.23165
blti.23166:
	addi	$r2, $r0, 0
cont.23165:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23168
	blti	$r2, 0, blti.23170
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23170:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23168:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23164:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.23172
	blti	$r2, 0, blti.23174
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23174:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
bgt.23172:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
scan_line.5902:
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	lw	$r10, 4($r9)
	bgt	$r10, $r2, bgt.23176
	jr	$r31
bgt.23176:
	lw	$r9, 4($r9)
	addi	$r9, $r9, -1
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r7, -28($r29)
	bgt	$r9, $r2, bgt.23178
	j	cont.23177
bgt.23178:
	addi	$r9, $r2, 1
	addi	$r28, $r8, 0
	addi	$r2, $r5, 0
	addi	$r3, $r9, 0
	addi	$r4, $r6, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23180
	j	lab1.23179
lab2.23180:
	jr	$r27
lab1.23179:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
cont.23177:
	addi	$r2, $r0, 0
	lw	$r28, -28($r29)
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	lw	$r5, -16($r29)
	lw	$r6, -12($r29)
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23182
	j	lab1.23181
lab2.23182:
	jr	$r27
lab1.23181:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	addi	$r6, $r3, 2
	blti	$r6, 5, blti.23184
	addi	$r6, $r6, -5
	lw	$r28, -4($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23184:
	lw	$r28, -4($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
create_pixel.5950:
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -28($r29)
	sw	$r3, 24($r2)
	lw	$r3, -24($r29)
	sw	$r3, 20($r2)
	lw	$r3, -20($r29)
	sw	$r3, 16($r2)
	lw	$r3, -16($r29)
	sw	$r3, 12($r2)
	lw	$r3, -12($r29)
	sw	$r3, 8($r2)
	lw	$r3, -8($r29)
	sw	$r3, 4($r2)
	lw	$r3, -4($r29)
	sw	$r3, 0($r2)
	jr	$r31
init_line_elements.5972:
	blti	$r3, 0, blti.23186
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	init_line_elements.5972
blti.23186:
	jr	$r31
create_pixelline.5981:
	lw	$r2, 4($r28)
	lw	$r3, 0($r2)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -4($r29)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -2
	j	init_line_elements.5972
adjust_position.5996:
	mul.s	$f0, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f0, $f0, $f2
	sqrt	$f0, $f0
	div.s	$f2, $f31, $f0
	swcl	$f0, -4($r29)
	swcl	$f1, -8($r29)
	fmove	$f0, $f2
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lwcl	$f1, -8($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -12($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lwcl	$f1, -16($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	mul.s	$f0, $f0, $f1
	jr	$r31
calc_dirvec.6008:
	lw	$r5, 4($r28)
	blti	$r2, 5, blti.23188
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	add.s	$f2, $f2, $f31
	sqrt	$f2, $f2
	div.s	$f0, $f0, $f2
	div.s	$f1, $f1, $f2
	div.s	$f2, $f31, $f2
	sll	$r2, $r3, 2
	lwr	$r2, $r2($r5)	!ld var
	sll	$r3, $r4, 2
	lwr	$r3, $r3($r2)	!ld var
	lw	$r3, 0($r3)
	swcl	$f0, 0($r3)
	swcl	$f1, 4($r3)
	swcl	$f2, 8($r3)
	addi	$r3, $r4, 40
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r2)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f1
	swcl	$f0, 0($r3)
	swcl	$f2, 4($r3)
	swcl	$f3, 8($r3)
	addi	$r3, $r4, 80
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r2)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f1
	swcl	$f2, 0($r3)
	swcl	$f3, 4($r3)
	swcl	$f4, 8($r3)
	addi	$r3, $r4, 1
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r2)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f1
	fneg	$f5, $f2
	swcl	$f3, 0($r3)
	swcl	$f4, 4($r3)
	swcl	$f5, 8($r3)
	addi	$r3, $r4, 41
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r2)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f2
	swcl	$f3, 0($r3)
	swcl	$f4, 4($r3)
	swcl	$f1, 8($r3)
	addi	$r3, $r4, 81
	sll	$r3, $r3, 2
	lwr	$r2, $r3($r2)	!ld var
	lw	$r2, 0($r2)
	fneg	$f2, $f2
	swcl	$f2, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f1, 8($r2)
	jr	$r31
blti.23188:
	swcl	$f2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r28, -16($r29)
	swcl	$f3, -20($r29)
	sw	$r2, -24($r29)
	fmove	$f0, $f1
	fmove	$f1, $f2
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lwcl	$f1, -20($r29)
	swcl	$f0, -28($r29)
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r28, -16($r29)
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f2, -4($r29)
	lwcl	$f3, -20($r29)
	lw	$r27, 0($r28)
	jr	$r27
calc_dirvecs.6068:
	lw	$r5, 4($r28)
	blti	$r2, 0, blti.23190
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r5, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	fmove	$f1, $f30
	lw	$r28, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	lwcl	$f3, -12($r29)
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.23192
	j	lab1.23191
lab2.23192:
	jr	$r27
lab1.23191:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	fmove	$f1, $f30
	lw	$r3, -16($r29)
	addi	$r4, $r3, 2
	lw	$r28, -24($r29)
	lw	$r5, -20($r29)
	lwcl	$f3, -12($r29)
	addi	$r3, $r5, 0
	sw	$r31, -28($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -28
	jal	lab2.23194
	j	lab1.23193
lab2.23194:
	jr	$r27
lab1.23193:
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-cls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.23196
	addi	$r3, $r3, -5
	lw	$r28, -4($r29)
	lw	$r4, -16($r29)
	lwcl	$f0, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23196:
	lw	$r28, -4($r29)
	lw	$r4, -16($r29)
	lwcl	$f0, -12($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23190:
	jr	$r31
calc_dirvec_rows.6098:
	lw	$r5, 4($r28)
	blti	$r2, 0, blti.23198
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r28, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -24
	jal	lab2.23200
	j	lab1.23199
lab2.23200:
	jr	$r27
lab1.23199:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-cls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -16($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.23202
	addi	$r3, $r3, -5
	lw	$r4, -12($r29)
	addi	$r4, $r4, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23202:
	lw	$r4, -12($r29)
	addi	$r4, $r4, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23198:
	jr	$r31
create_dirvec_elements.6124:
	lw	$r4, 4($r28)
	blti	$r3, 0, blti.23204
	addi	$r5, $r0, 3
	fmove	$f0, $f30
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -20($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r28, -4($r29)
	addi	$r2, $r5, 0
	lw	$r27, 0($r28)
	jr	$r27
blti.23204:
	jr	$r31
create_dirvecs.6133:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	blti	$r2, 0, blti.23206
	addi	$r6, $r0, 120
	addi	$r7, $r0, 3
	fmove	$f0, $f30
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r6, -20($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -24($r29)
	lw	$r2, 0($r2)
	sw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -28($r29)
	sw	$r2, 0($r3)
	lw	$r2, -20($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	sll	$r2, $r3, 2
	lwr	$r2, $r2($r5)	!ld var
	addi	$r4, $r0, 118
	lw	$r28, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -32($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -32
	jal	lab2.23208
	j	lab1.23207
lab2.23208:
	jr	$r27
lab1.23207:
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-cls
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23206:
	jr	$r31
init_dirvec_constants.6146:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	blti	$r3, 0, blti.23210
	sll	$r6, $r3, 2
	lwr	$r6, $r6($r2)	!ld var
	lw	$r4, 0($r4)
	addi	$r4, $r4, -1
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r5, 0
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -16
	jal	lab2.23212
	j	lab1.23211
lab2.23212:
	jr	$r27
lab1.23211:
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-cls
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r28, -8($r29)
	lw	$r2, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23210:
	jr	$r31
init_vecset_constants.6154:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	blti	$r2, 0, blti.23214
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	addi	$r5, $r0, 119
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r28, $r3, 0
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.23216
	j	lab1.23215
lab2.23216:
	jr	$r27
lab1.23215:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
blti.23214:
	jr	$r31
init_dirvecs.6162:
	lw	$r2, 12($r28)
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 4
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	addi	$r28, $r3, 0
	addi	$r2, $r5, 0
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.23218
	j	lab1.23217
lab2.23218:
	jr	$r27
lab1.23217:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.23220
	j	lab1.23219
lab2.23220:
	jr	$r27
lab1.23219:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	addi	$r2, $r0, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)
	jr	$r27
add_reflection.6171:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 3
	fmove	$f4, $f30
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r6, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	sw	$r5, -36($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f4
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -36($r29)
	lw	$r4, 0($r2)
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -40($r29)
	sw	$r2, 0($r3)
	lwcl	$f0, -32($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -36($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r28, -20($r29)
	sw	$r3, -44($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -48($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -48
	jal	lab2.23222
	j	lab1.23221
lab2.23222:
	jr	$r27
lab1.23221:
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-cls
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -16($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -44($r29)
	sw	$r3, 4($r2)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -4($r29)
	swr	$r2, $r3($r4)	!st var
	jr	$r31
setup_rect_reflection.6184:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r28, 4($r28)
	sll	$r2, $r2, 2
	lw	$r6, 0($r4)
	lw	$r3, 28($r3)
	lwcl	$f0, 0($r3)
	sub.s	$f0, $f31, $f0
	lwcl	$f1, 0($r5)
	fneg	$f1, $f1
	lwcl	$f2, 4($r5)
	fneg	$f2, $f2
	lwcl	$f3, 8($r5)
	fneg	$f3, $f3
	addi	$r3, $r2, 1
	lwcl	$f4, 0($r5)
	sw	$r4, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f3, -12($r29)
	swcl	$f1, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r28, -24($r29)
	sw	$r5, -28($r29)
	sw	$r2, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r6, 0
	fmove	$f1, $f4
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.23224
	j	lab1.23223
lab2.23224:
	jr	$r27
lab1.23223:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	addi	$r3, $r2, 1
	lw	$r4, -32($r29)
	addi	$r5, $r4, 2
	lw	$r6, -28($r29)
	lwcl	$f2, 4($r6)
	lw	$r28, -24($r29)
	lwcl	$f0, -20($r29)
	lwcl	$f1, -16($r29)
	lwcl	$f3, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.23226
	j	lab1.23225
lab2.23226:
	jr	$r27
lab1.23225:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	addi	$r3, $r2, 2
	lw	$r4, -32($r29)
	addi	$r4, $r4, 3
	lw	$r5, -28($r29)
	lwcl	$f3, 8($r5)
	lw	$r28, -24($r29)
	lwcl	$f0, -20($r29)
	lwcl	$f1, -16($r29)
	lwcl	$f2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -40($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -40
	jal	lab2.23228
	j	lab1.23227
lab2.23228:
	jr	$r27
lab1.23227:
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-cls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 3
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
setup_surface_reflection.6224:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r28, 4($r28)
	sll	$r2, $r2, 2
	addi	$r2, $r2, 1
	lw	$r6, 0($r4)
	lw	$r7, 28($r3)
	lwcl	$f0, 0($r7)
	sub.s	$f0, $f31, $f0
	lw	$r7, 16($r3)
	lwcl	$f1, 0($r5)
	lwcl	$f2, 0($r7)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 4($r5)
	lwcl	$f3, 4($r7)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 8($r5)
	lwcl	$f3, 8($r7)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lfh	$f2, 16384
	lw	$r7, 16($r3)
	lwcl	$f3, 0($r7)
	mul.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f1
	lwcl	$f3, 0($r5)
	sub.s	$f2, $f2, $f3
	lfh	$f3, 16384
	lw	$r7, 16($r3)
	lwcl	$f4, 4($r7)
	mul.s	$f3, $f3, $f4
	mul.s	$f3, $f3, $f1
	lwcl	$f4, 4($r5)
	sub.s	$f3, $f3, $f4
	lfh	$f4, 16384
	lw	$r3, 16($r3)
	lwcl	$f5, 8($r3)
	mul.s	$f4, $f4, $f5
	mul.s	$f1, $f4, $f1
	lwcl	$f4, 8($r5)
	sub.s	$f1, $f1, $f4
	sw	$r4, -4($r29)
	sw	$r6, -8($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r6, 0
	fmove	$f20, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	fmove	$f3, $f20
	sw	$r31, -12($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -12
	jal	lab2.23230
	j	lab1.23229
lab2.23230:
	jr	$r27
lab1.23229:
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-cls
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
setup_reflections.6262:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	blti	$r2, 0, blti.23232
	sll	$r6, $r2, 2
	lwr	$r5, $r6($r5)	!ld var
	lw	$r6, 8($r5)
	bnei	$r6, 2, bnei.23234
	lw	$r6, 28($r5)
	lwcl	$f0, 0($r6)
	c.le.s	$f31, $f0
	bclf	bclf.23236
	jr	$r31
bclf.23236:
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.23238
	addi	$r28, $r4, 0
	addi	$r3, $r5, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.23238:
	bnei	$r6, 2, bnei.23240
	addi	$r28, $r3, 0
	addi	$r3, $r5, 0
	lw	$r27, 0($r28)
	jr	$r27
bnei.23240:
	jr	$r31
bnei.23234:
	jr	$r31
blti.23232:
	jr	$r31
rt.6273:
	lw	$r4, 60($r28)
	lw	$r5, 56($r28)
	lw	$r6, 52($r28)
	lw	$r7, 48($r28)
	lw	$r8, 44($r28)
	lw	$r9, 40($r28)
	lw	$r10, 36($r28)
	lw	$r11, 32($r28)
	lw	$r12, 28($r28)
	lw	$r13, 24($r28)
	lw	$r14, 20($r28)
	lw	$r15, 16($r28)
	lw	$r16, 12($r28)
	lw	$r17, 8($r28)
	lw	$r18, 4($r28)
	sw	$r2, 0($r16)
	sw	$r3, 4($r16)
	sra	$r16, $r2, 1
	sw	$r16, 0($r17)
	sra	$r3, $r3, 1
	sw	$r3, 4($r17)
	lfh	$f0, 17152
	sw	$r8, -4($r29)
	sw	$r10, -8($r29)
	sw	$r6, -12($r29)
	sw	$r12, -16($r29)
	sw	$r14, -20($r29)
	sw	$r11, -24($r29)
	sw	$r5, -28($r29)
	sw	$r13, -32($r29)
	sw	$r15, -36($r29)
	sw	$r4, -40($r29)
	sw	$r9, -44($r29)
	sw	$r18, -48($r29)
	sw	$r7, -52($r29)
	swcl	$f0, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f1, -56($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -48($r29)
	sw	$r31, -60($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -60
	jal	lab2.23242
	j	lab1.23241
lab2.23242:
	jr	$r27
lab1.23241:
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-cls
	lw	$r28, -48($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -64
	jal	lab2.23244
	j	lab1.23243
lab2.23244:
	jr	$r27
lab1.23243:
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-cls
	lw	$r28, -48($r29)
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -68
	jal	lab2.23246
	j	lab1.23245
lab2.23246:
	jr	$r27
lab1.23245:
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-cls
	lw	$r28, -44($r29)
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23248
	j	lab1.23247
lab2.23248:
	jr	$r27
lab1.23247:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	lw	$r28, -40($r29)
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23250
	j	lab1.23249
lab2.23250:
	jr	$r27
lab1.23249:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	lw	$r28, -36($r29)
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23252
	j	lab1.23251
lab2.23252:
	jr	$r27
lab1.23251:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -28($r29)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r3)
	lw	$r2, -24($r29)
	lw	$r3, 0($r2)
	addi	$r3, $r3, -1
	lw	$r28, -20($r29)
	lw	$r4, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23254
	j	lab1.23253
lab2.23254:
	jr	$r27
lab1.23253:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	lw	$r2, -24($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r28, -12($r29)
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23256
	j	lab1.23255
lab2.23256:
	jr	$r27
lab1.23255:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r28, -8($r29)
	lw	$r2, -64($r29)
	sw	$r31, -72($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -72
	jal	lab2.23258
	j	lab1.23257
lab2.23258:
	jr	$r27
lab1.23257:
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-cls
	addi	$r2, $r0, 0
	addi	$r6, $r0, 2
	lw	$r28, -4($r29)
	lw	$r3, -60($r29)
	lw	$r4, -64($r29)
	lw	$r5, -68($r29)
	lw	$r27, 0($r28)
	jr	$r27
min_caml_start:
	ori	$r30, $r0, 4
	lui	$r29, 64
	ori	$r29, $r29, 0
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, read_int_token.2507
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -4($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, read_int.2543
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r2, 8($r5)
	sw	$r4, 4($r5)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r5, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, read_float_token1.2565
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -12($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, read_float_token2.2595
	sw	$r6, 0($r5)
	lw	$r6, -16($r29)
	sw	$r6, 8($r5)
	lw	$r7, -20($r29)
	sw	$r7, 4($r5)
	addi	$r8, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, read_float.2619
	sw	$r9, 0($r8)
	sw	$r5, 24($r8)
	sw	$r3, 20($r8)
	sw	$r2, 16($r8)
	sw	$r4, 12($r8)
	sw	$r6, 8($r8)
	sw	$r7, 4($r8)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r8, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 0
	fmove	$f0, $f30
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 60
	addi	$r4, $r0, 0
	addi	$r5, $r0, 0
	addi	$r6, $r0, 0
	addi	$r7, $r0, 0
	addi	$r8, $r0, 0
	addi	$r9, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r9)
	sw	$r2, 36($r9)
	sw	$r2, 32($r9)
	sw	$r2, 28($r9)
	sw	$r8, 24($r9)
	sw	$r2, 20($r9)
	sw	$r2, 16($r9)
	sw	$r7, 12($r9)
	sw	$r6, 8($r9)
	sw	$r5, 4($r9)
	sw	$r4, 0($r9)
	addi	$r2, $r9, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r0, 1
	lfh	$f0, 17279
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r0, 50
	addi	$r4, $r0, 1
	addi	$r5, $r0, -1
	sw	$r2, -48($r29)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	lw	$r5, 0($r2)
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 1
	fmove	$f0, $f30
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 1
	fmove	$f0, $f30
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -120($r29)
	addi	$r2, $r3, 0
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 0
	fmove	$f0, $f30
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	sw	$r3, -140($r29)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r0, 0
	addi	$r4, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r4)
	lw	$r2, -140($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r4, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r0, 0
	fmove	$f0, $f30
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	addi	$r3, $r0, 60
	lw	$r4, -148($r29)
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -152($r29)
	sw	$r2, 0($r3)
	addi	$r4, $r0, 0
	fmove	$f0, $f30
	sw	$r3, -156($r29)
	addi	$r2, $r4, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	sw	$r3, -160($r29)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -160($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	addi	$r3, $r0, 180
	addi	$r4, $r0, 0
	fmove	$f0, $f30
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	swcl	$f0, 8($r5)
	sw	$r2, 4($r5)
	sw	$r4, 0($r5)
	addi	$r2, $r5, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -164($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r4, read_screen_settings.3664
	sw	$r4, 0($r3)
	lw	$r4, -40($r29)
	sw	$r4, 24($r3)
	lw	$r5, -132($r29)
	sw	$r5, 20($r3)
	lw	$r6, -128($r29)
	sw	$r6, 16($r3)
	lw	$r7, -124($r29)
	sw	$r7, 12($r3)
	lw	$r8, -36($r29)
	sw	$r8, 8($r3)
	lw	$r8, -24($r29)
	sw	$r8, 4($r3)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 20
	la	$r10, read_light.3742
	sw	$r10, 0($r9)
	lw	$r10, -8($r29)
	sw	$r10, 16($r9)
	sw	$r8, 12($r9)
	lw	$r11, -44($r29)
	sw	$r11, 8($r9)
	lw	$r12, -48($r29)
	sw	$r12, 4($r9)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, read_nth_object.3881
	sw	$r14, 0($r13)
	sw	$r10, 12($r13)
	sw	$r8, 8($r13)
	lw	$r8, -32($r29)
	sw	$r8, 4($r13)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, read_object.4009
	sw	$r15, 0($r14)
	sw	$r13, 8($r14)
	lw	$r13, -28($r29)
	sw	$r13, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, read_net_item.4020
	sw	$r16, 0($r15)
	sw	$r10, 4($r15)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, read_or_network.4034
	sw	$r16, 0($r10)
	sw	$r15, 4($r10)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, read_and_network.4048
	sw	$r17, 0($r16)
	sw	$r15, 8($r16)
	lw	$r15, -56($r29)
	sw	$r15, 4($r16)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 28
	la	$r18, read_parameter.4059
	sw	$r18, 0($r17)
	sw	$r3, 24($r17)
	sw	$r10, 20($r17)
	sw	$r14, 16($r17)
	sw	$r9, 12($r17)
	sw	$r16, 8($r17)
	lw	$r3, -64($r29)
	sw	$r3, 4($r17)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r10, solver_rect.4106
	sw	$r10, 0($r9)
	lw	$r10, -68($r29)
	sw	$r10, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, solver_second.4209
	sw	$r16, 0($r14)
	sw	$r10, 4($r14)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 20
	la	$r18, solver.4247
	sw	$r18, 0($r16)
	sw	$r14, 16($r16)
	sw	$r9, 12($r16)
	sw	$r10, 8($r16)
	sw	$r8, 4($r16)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, solver_rect_fast.4267
	sw	$r14, 0($r9)
	sw	$r10, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, solver_second_fast.4371
	sw	$r18, 0($r14)
	sw	$r10, 4($r14)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 20
	la	$r19, solver_fast.4415
	sw	$r19, 0($r18)
	sw	$r14, 16($r18)
	sw	$r9, 12($r18)
	sw	$r10, 8($r18)
	sw	$r8, 4($r18)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 16
	la	$r19, solver_fast2.4497
	sw	$r19, 0($r14)
	sw	$r9, 12($r14)
	sw	$r10, 8($r14)
	sw	$r8, 4($r14)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, iter_setup_dirvec_constants.4707
	sw	$r19, 0($r9)
	sw	$r8, 4($r9)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 8
	la	$r20, setup_startp_constants.4729
	sw	$r20, 0($r19)
	sw	$r8, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 16
	la	$r21, setup_startp.4779
	sw	$r21, 0($r20)
	lw	$r21, -120($r29)
	sw	$r21, 12($r20)
	sw	$r19, 8($r20)
	sw	$r13, 4($r20)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 8
	la	$r22, check_all_inside.4838
	sw	$r22, 0($r19)
	sw	$r8, 4($r19)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 32
	la	$r23, shadow_check_and_group.4852
	sw	$r23, 0($r22)
	sw	$r18, 28($r22)
	sw	$r10, 24($r22)
	sw	$r8, 20($r22)
	lw	$r23, -156($r29)
	sw	$r23, 16($r22)
	sw	$r11, 12($r22)
	lw	$r24, -80($r29)
	sw	$r24, 8($r22)
	sw	$r19, 4($r22)
	addi	$r25, $r30, 0
	addi	$r30, $r30, 12
	la	$r26, shadow_check_one_or_group.4897
	sw	$r26, 0($r25)
	sw	$r22, 8($r25)
	sw	$r15, 4($r25)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 24
	la	$r26, shadow_check_one_or_matrix.4909
	sw	$r26, 0($r22)
	sw	$r18, 20($r22)
	sw	$r10, 16($r22)
	sw	$r25, 12($r22)
	sw	$r23, 8($r22)
	sw	$r24, 4($r22)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 40
	la	$r25, solve_each_element.4936
	sw	$r25, 0($r18)
	lw	$r25, -76($r29)
	sw	$r25, 36($r18)
	lw	$r26, -116($r29)
	sw	$r26, 32($r18)
	sw	$r10, 28($r18)
	sw	$r16, 24($r18)
	sw	$r8, 20($r18)
	lw	$r27, -72($r29)
	sw	$r27, 16($r18)
	sw	$r24, 12($r18)
	lw	$r28, -84($r29)
	sw	$r28, 8($r18)
	sw	$r19, 4($r18)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 12
	sw	$r17, -168($r29)
	la	$r17, solve_one_or_network.4987
	sw	$r17, 0($r23)
	sw	$r18, 8($r23)
	sw	$r15, 4($r23)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 24
	la	$r18, trace_or_matrix.4999
	sw	$r18, 0($r17)
	sw	$r25, 20($r17)
	sw	$r26, 16($r17)
	sw	$r10, 12($r17)
	sw	$r16, 8($r17)
	sw	$r23, 4($r17)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, judge_intersection.5020
	sw	$r18, 0($r16)
	sw	$r17, 12($r16)
	sw	$r25, 8($r16)
	sw	$r3, 4($r16)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 40
	la	$r18, solve_each_element_fast.5034
	sw	$r18, 0($r17)
	sw	$r25, 36($r17)
	sw	$r21, 32($r17)
	sw	$r14, 28($r17)
	sw	$r10, 24($r17)
	sw	$r8, 20($r17)
	sw	$r27, 16($r17)
	sw	$r24, 12($r17)
	sw	$r28, 8($r17)
	sw	$r19, 4($r17)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 12
	la	$r19, solve_one_or_network_fast.5086
	sw	$r19, 0($r18)
	sw	$r17, 8($r18)
	sw	$r15, 4($r18)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 20
	la	$r17, trace_or_matrix_fast.5098
	sw	$r17, 0($r15)
	sw	$r25, 16($r15)
	sw	$r14, 12($r15)
	sw	$r10, 8($r15)
	sw	$r18, 4($r15)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, judge_intersection_fast.5119
	sw	$r14, 0($r10)
	sw	$r15, 12($r10)
	sw	$r25, 8($r10)
	sw	$r3, 4($r10)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, get_nvector_second.5158
	sw	$r15, 0($r14)
	lw	$r15, -88($r29)
	sw	$r15, 8($r14)
	sw	$r24, 4($r14)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, get_nvector.5213
	sw	$r18, 0($r17)
	sw	$r15, 12($r17)
	sw	$r27, 8($r17)
	sw	$r14, 4($r17)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, utexture.5219
	sw	$r18, 0($r14)
	lw	$r18, -92($r29)
	sw	$r18, 4($r14)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 40
	la	$r21, trace_reflections.5395
	sw	$r21, 0($r19)
	sw	$r18, 36($r19)
	sw	$r22, 32($r19)
	lw	$r21, -100($r29)
	sw	$r21, 28($r19)
	lw	$r23, -164($r29)
	sw	$r23, 24($r19)
	sw	$r3, 20($r19)
	sw	$r15, 16($r19)
	sw	$r10, 12($r19)
	sw	$r27, 8($r19)
	sw	$r28, 4($r19)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 80
	sw	$r9, -172($r29)
	la	$r9, trace_ray.5428
	sw	$r9, 0($r23)
	sw	$r14, 76($r23)
	sw	$r19, 72($r23)
	sw	$r25, 68($r23)
	sw	$r18, 64($r23)
	sw	$r26, 60($r23)
	sw	$r22, 56($r23)
	sw	$r20, 52($r23)
	sw	$r21, 48($r23)
	sw	$r3, 44($r23)
	sw	$r8, 40($r23)
	sw	$r15, 36($r23)
	sw	$r2, 32($r23)
	sw	$r11, 28($r23)
	sw	$r16, 24($r23)
	sw	$r27, 20($r23)
	sw	$r24, 16($r23)
	sw	$r28, 12($r23)
	sw	$r17, 8($r23)
	sw	$r12, 4($r23)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 52
	la	$r12, trace_diffuse_ray.5541
	sw	$r12, 0($r9)
	sw	$r14, 48($r9)
	sw	$r18, 44($r9)
	sw	$r22, 40($r9)
	sw	$r3, 36($r9)
	sw	$r8, 32($r9)
	sw	$r15, 28($r9)
	sw	$r11, 24($r9)
	sw	$r10, 20($r9)
	sw	$r24, 16($r9)
	sw	$r28, 12($r9)
	sw	$r17, 8($r9)
	lw	$r3, -96($r29)
	sw	$r3, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r12, iter_trace_diffuse_rays.5564
	sw	$r12, 0($r10)
	sw	$r9, 4($r10)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 16
	la	$r12, trace_diffuse_ray_80percent.5592
	sw	$r12, 0($r9)
	sw	$r20, 12($r9)
	sw	$r10, 8($r9)
	lw	$r12, -144($r29)
	sw	$r12, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, calc_diffuse_using_1point.5615
	sw	$r15, 0($r14)
	sw	$r9, 12($r14)
	sw	$r21, 8($r14)
	sw	$r3, 4($r14)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, calc_diffuse_using_5points.5629
	sw	$r15, 0($r9)
	sw	$r21, 8($r9)
	sw	$r3, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, do_without_neighbors.5662
	sw	$r16, 0($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r16, try_exploit_neighbors.5713
	sw	$r16, 0($r14)
	sw	$r15, 8($r14)
	sw	$r9, 4($r14)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, write_ppm_header.5733
	sw	$r16, 0($r9)
	lw	$r16, -104($r29)
	sw	$r16, 4($r9)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 20
	la	$r18, pretrace_diffuse_rays.5772
	sw	$r18, 0($r17)
	sw	$r20, 16($r17)
	sw	$r10, 12($r17)
	sw	$r12, 8($r17)
	sw	$r3, 4($r17)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 40
	la	$r10, pretrace_pixels.5794
	sw	$r10, 0($r3)
	sw	$r4, 36($r3)
	sw	$r23, 32($r3)
	sw	$r26, 28($r3)
	sw	$r7, 24($r3)
	lw	$r4, -112($r29)
	sw	$r4, 20($r3)
	sw	$r21, 16($r3)
	lw	$r7, -136($r29)
	sw	$r7, 12($r3)
	sw	$r17, 8($r3)
	lw	$r7, -108($r29)
	sw	$r7, 4($r3)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 28
	la	$r17, pretrace_line.5848
	sw	$r17, 0($r10)
	sw	$r5, 24($r10)
	sw	$r6, 20($r10)
	sw	$r4, 16($r10)
	sw	$r3, 12($r10)
	sw	$r16, 8($r10)
	sw	$r7, 4($r10)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 20
	la	$r5, scan_pixel.5881
	sw	$r5, 0($r3)
	sw	$r14, 16($r3)
	sw	$r21, 12($r3)
	sw	$r16, 8($r3)
	sw	$r15, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, scan_line.5902
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r10, 8($r5)
	sw	$r16, 4($r5)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	la	$r6, create_pixelline.5981
	sw	$r6, 0($r3)
	sw	$r16, 4($r3)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, calc_dirvec.6008
	sw	$r14, 0($r6)
	sw	$r12, 4($r6)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, calc_dirvecs.6068
	sw	$r15, 0($r14)
	sw	$r6, 4($r14)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, calc_dirvec_rows.6098
	sw	$r15, 0($r6)
	sw	$r14, 4($r6)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, create_dirvec_elements.6124
	sw	$r15, 0($r14)
	sw	$r13, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r17, create_dirvecs.6133
	sw	$r17, 0($r15)
	sw	$r13, 12($r15)
	sw	$r12, 8($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, init_dirvec_constants.6146
	sw	$r17, 0($r14)
	sw	$r13, 8($r14)
	lw	$r17, -172($r29)
	sw	$r17, 4($r14)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 12
	la	$r19, init_vecset_constants.6154
	sw	$r19, 0($r18)
	sw	$r14, 8($r18)
	sw	$r12, 4($r18)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, init_dirvecs.6162
	sw	$r14, 0($r12)
	sw	$r18, 12($r12)
	sw	$r15, 8($r12)
	sw	$r6, 4($r12)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, add_reflection.6171
	sw	$r14, 0($r6)
	lw	$r14, -164($r29)
	sw	$r14, 12($r6)
	sw	$r13, 8($r6)
	sw	$r17, 4($r6)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, setup_rect_reflection.6184
	sw	$r15, 0($r14)
	sw	$r2, 12($r14)
	sw	$r11, 8($r14)
	sw	$r6, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, setup_surface_reflection.6224
	sw	$r18, 0($r15)
	sw	$r2, 12($r15)
	sw	$r11, 8($r15)
	sw	$r6, 4($r15)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, setup_reflections.6262
	sw	$r6, 0($r2)
	sw	$r15, 12($r2)
	sw	$r14, 8($r2)
	sw	$r8, 4($r2)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 64
	la	$r6, rt.6273
	sw	$r6, 0($r28)
	sw	$r9, 60($r28)
	lw	$r6, -152($r29)
	sw	$r6, 56($r28)
	sw	$r2, 52($r28)
	sw	$r4, 48($r28)
	sw	$r5, 44($r28)
	lw	$r2, -168($r29)
	sw	$r2, 40($r28)
	sw	$r10, 36($r28)
	sw	$r13, 32($r28)
	lw	$r2, -156($r29)
	sw	$r2, 28($r28)
	sw	$r11, 24($r28)
	sw	$r17, 20($r28)
	sw	$r12, 16($r28)
	sw	$r16, 12($r28)
	sw	$r7, 8($r28)
	sw	$r3, 4($r28)
	addi	$r2, $r0, 128
	addi	$r3, $r0, 128
	sw	$r31, -176($r29)	!call-cls
	lw	$r27, 0($r28)	!call-cls
	addi	$r29, $r29, -176
	jal	lab2.23260
	j	lab1.23259
lab2.23260:
	jr	$r27
lab1.23259:
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-cls
	halt
min_caml_print_char:
	output	$r2
	jr	$r31
min_caml_input_char:	
	input	$r2
	jr	$r31	
min_caml_create_array:		! (引数) r2- size, r3- init elem
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
min_caml_create_float_array:	! (引数) r2- size, f0- init elem(float)
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
	j	CREATE_FLOAT_ARRAY_LOOP

	
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

! * sqrt (とりあえずこっちは使わない)
!min_caml_sqrt:		! 引数 $f0, (r2, f1, f2, f3, f4)
!	addi	$r2, $r0, 10
!	lfh	$f1, 16256	! $f1 初期値 1.0
!	lfl	$f1, 0
!	lfh	$f4, 16384	! $f4 定数 2.0
!	lfl	$f4, 0
!SQRT_SUB:		! ニュートン法10回, 初期値($f1 1.0)	x $f0, y $f1
!	mul.s	$f2, $f1, $f1
!	sub.s	$f2, $f2, $f0		! $f2 = y */ y -. x
!	mul.s	$f3, $f4, $f1		! $f3 = 2.0 *. y
!	div.s	$f2, $f2, $f3		! $f2 = (y */ y -. x) /. (2.0 *. y)
!	
!!	sw	$r2, -4($r29)
!!	swcl	$f0, -8($r29)
!!	swcl	$f1, -12($r29)
!!	swcl	$f2, -16($r29)
!!	swcl	$f3, -20($r29)
!!	swcl	$f4, -24($r29)
!!	sw	$r31, -28($r29)
!!	addi	$r29, $r29, -28
!!	fmove	$f0, $f3
!!	jal	min_caml_myfinv	! $f3 = 1.0 /. $f3
!!	fmove	$f3, $f0
!!	addi	$r29, $r29, 28
!!	lw	$r31, -28($r29)
!!	lwcl	$f4, -24($r29)
!!	lwcl	$f3, -20($r29)
!!	lwcl	$f2, -16($r29)
!!	lwcl	$f1, -12($r29)
!!	lwcl	$f0, -8($r29)
!!	lw	$r2, -4($r29)
!!	mul.s	$f2, $f2, $f3
!	
!	sub.s	$f1, $f1, $f2
!	addi	$r2, $r2, -1
!	bne	$r2, $r0, SQRT_SUB	! ループ
!	fmove	$f0, $f1
!	jr	$r31

! * finv
!min_caml_myfinv:		! 引数 $f0(a)
!	lui	$r5, 32640		! r5 = 0x7f800000 (指数マスク)
!	ori	$r5, $r5, 0
!	lui	$r6, 127		! r6 = 0x007fffff (仮数マスク)
!	ori	$r6, $r6, 65535
!	lui	$r7, 16256		! r7 = (float 1.0 のbit表示)
!	ori	$r7, $r7, 0
!	lfh	$f11, 16384		! $f11 = 2.0 定数
!	lfl	$f11, 0		
!	lfh	$f12, 16153		! $f12 初期値x =  0.6
!	lfl	$f12, 39322
!	addi	$r3, $r0, 15		! 反復回数
!	lfh	$f15, 0			! f15 = 0.0
!	lfl	$f15, 0
!	c.le.s	$f0, $f15		! if (argv[0] <= 0.0)
!	bclt	FINV_NEGATIVE		! 負だったらnegativeにジャンプ
!FINV_POSITIVE:
!	swcl	$f0, 0($r30)
!	lw	$r4, 0($r30)		! f0 を r4 に変換
!	
!	and	$r8, $r4, $r5		! expは別個に計算(r8(exp of r4) => f8)
!	sra	$r8, $r8, 23
!	subu	$r8, $r0, $r8
!	addi	$r8, $r8, 254
!	sll	$r8, $r8, 23
!	sw	$r8, 0($r30)
!	lwcl	$f8, 0($r30)
!	
!	and	$r9, $r4, $r6		! fracも別個に計算(r9(frac of r4) => f0)
!	addu	$r10, $r7, $r9		! r10(1.0〜2.0のfloat)
!	sw	$r10, 0($r30)
!	lwcl	$f0, 0($r30)		! f0 (1.0〜2.0のfloat)
!	sw	$r31, -4($r29)
!	jal	FINV_SUB		! ニュートン法
!	lw	$r31, -4($r29)
!
!	mul.s	$f0, $f0, $f8		! exp(inv) * frac(inv)
!	jr	$r31
!FINV_SUB:				! 1.0〜2.0 ==> 0.0〜1.0	
!	mul.s	$f13, $f11, $f12	! $f2 = 2.0 * x		($f11 * $f14)
!	mul.s	$f14, $f12, $f12	! $f3 = x * x		($f12 * $f12)
!	mul.s	$f14, $f14, $f0		! $f3 = x * x * a	($f14 * $f0)
!	sub.s	$f12, $f13, $f14	! $f1 = 2.0 * x - x * x * a
!	addi	$r3, $r3, -1
!	bne	$r3, $r0, FINV_SUB
!	fmove	$f0, $f12
!	jr	$r31
!FINV_NEGATIVE:
!	fneg	$f0, $f0
!	sw	$r31, -4($r29)
!	addi	$r29, $r29, -4
!	jal	FINV_POSITIVE
!	addi	$r29, $r29, 4
!	lw	$r31, -4($r29)
!	fneg	$f0, $f0
!	jr	$r31

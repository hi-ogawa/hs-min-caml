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
	bclf	bclf.88422
	sub.s	$f3, $f0, $f31
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f31
	add.s	$f0, $f0, $f2
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.88424
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.88426
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.88428
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	fmove	$f20, $f0
	fmove	$f0, $f2
	fmove	$f2, $f20
	j	atan_sub.2405
bclf.88428:
	jr	$r31
bclf.88426:
	jr	$r31
bclf.88424:
	jr	$r31
bclf.88422:
	fmove	$f0, $f2
	jr	$r31
sin_sub.2460:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88430
	c.le.s	$f30, $f0
	bclf	bclf.88432
	jr	$r31
bclf.88432:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88434
	c.le.s	$f30, $f0
	bclf	bclf.88436
	jr	$r31
bclf.88436:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88438
	c.le.s	$f30, $f0
	bclf	bclf.88440
	jr	$r31
bclf.88440:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88442
	c.le.s	$f30, $f0
	bclf	bclf.88444
	jr	$r31
bclf.88444:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88442:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88438:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88446
	c.le.s	$f30, $f0
	bclf	bclf.88448
	jr	$r31
bclf.88448:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88446:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88434:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88450
	c.le.s	$f30, $f0
	bclf	bclf.88452
	jr	$r31
bclf.88452:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88454
	c.le.s	$f30, $f0
	bclf	bclf.88456
	jr	$r31
bclf.88456:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88454:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88450:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88458
	c.le.s	$f30, $f0
	bclf	bclf.88460
	jr	$r31
bclf.88460:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88458:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88430:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88462
	c.le.s	$f30, $f0
	bclf	bclf.88464
	jr	$r31
bclf.88464:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88466
	c.le.s	$f30, $f0
	bclf	bclf.88468
	jr	$r31
bclf.88468:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88470
	c.le.s	$f30, $f0
	bclf	bclf.88472
	jr	$r31
bclf.88472:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88470:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88466:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88474
	c.le.s	$f30, $f0
	bclf	bclf.88476
	jr	$r31
bclf.88476:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88474:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88462:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88478
	c.le.s	$f30, $f0
	bclf	bclf.88480
	jr	$r31
bclf.88480:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88482
	c.le.s	$f30, $f0
	bclf	bclf.88484
	jr	$r31
bclf.88484:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88482:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88478:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88486
	c.le.s	$f30, $f0
	bclf	bclf.88488
	jr	$r31
bclf.88488:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88486:
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
	bclf	bclf.88490
	addi	$r2, $r0, 0
	j	cont.88489
bclf.88490:
	addi	$r2, $r0, 1
cont.88489:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f1, -20($r29)
	c.le.s	$f4, $f5
	bclf	bclf.88492
	c.le.s	$f30, $f4
	bclf	bclf.88494
	fmove	$f0, $f4
	j	cont.88491     ! elimjump
bclf.88494:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88496
	c.le.s	$f30, $f4
	bclf	bclf.88498
	fmove	$f0, $f4
	j	cont.88491     ! elimjump
bclf.88498:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88500
	c.le.s	$f30, $f4
	bclf	bclf.88502
	fmove	$f0, $f4
	j	cont.88491     ! elimjump
bclf.88502:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88501:
	j	cont.88491     ! elimjump
bclf.88500:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88499:
cont.88497:
	j	cont.88491     ! elimjump
bclf.88496:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88504
	c.le.s	$f30, $f4
	bclf	bclf.88506
	fmove	$f0, $f4
	j	cont.88491     ! elimjump
bclf.88506:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88505:
	j	cont.88491     ! elimjump
bclf.88504:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88503:
cont.88495:
cont.88493:
	j	cont.88491
bclf.88492:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88508
	c.le.s	$f30, $f4
	bclf	bclf.88510
	fmove	$f0, $f4
	j	cont.88507     ! elimjump
bclf.88510:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88512
	c.le.s	$f30, $f4
	bclf	bclf.88514
	fmove	$f0, $f4
	j	cont.88507     ! elimjump
bclf.88514:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88513:
	j	cont.88507     ! elimjump
bclf.88512:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88511:
cont.88509:
	j	cont.88507
bclf.88508:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88516
	c.le.s	$f30, $f4
	bclf	bclf.88518
	fmove	$f0, $f4
	j	cont.88515     ! elimjump
bclf.88518:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88517:
	j	cont.88515
bclf.88516:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88515:
cont.88507:
cont.88491:
	lwcl	$f1, -20($r29)
	c.le.s	$f0, $f1
	bclf	bclf.88520
	lw	$r2, -16($r29)
	j	cont.88519
bclf.88520:
	lwcl	$f2, -12($r29)
	c.le.s	$f2, $f30
	bclf	bclf.88522
	addi	$r2, $r0, 1
	j	cont.88521
bclf.88522:
	addi	$r2, $r0, 0
cont.88521:
cont.88519:
	c.le.s	$f0, $f1
	bclf	bclf.88524
	j	cont.88523
bclf.88524:
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
cont.88523:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.88526
	j	cont.88525
bclf.88526:
	sub.s	$f0, $f1, $f0
cont.88525:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.88528
	jr	$r31
bnei.88528:
	fneg	$f0, $f0
	jr	$r31
read_int_token.2507:
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88530
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88532
	addi	$r3, $r0, 0
	j	cont.88529     ! elimjump
bgt.88532:
	addi	$r3, $r0, 1
cont.88531:
	j	cont.88529
bgt.88530:
	addi	$r3, $r0, 1
cont.88529:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88534
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.88536
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.88538
	lw	$r2, 4($r0)
	jr	$r31
bnei.88538:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.88536:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88540
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88542
	addi	$r2, $r0, 0
	j	cont.88539     ! elimjump
bgt.88542:
	addi	$r2, $r0, 1
cont.88541:
	j	cont.88539
bgt.88540:
	addi	$r2, $r0, 1
cont.88539:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88544
	addi	$r2, $r0, 0
	j	read_int_token.2507
bnei.88544:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.88546
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88548
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	j	cont.88545     ! elimjump
bne.88548:
	sw	$r4, 8($r0)
cont.88547:
	j	cont.88545
bnei.88546:
cont.88545:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.88534:
	lw	$r3, 8($r0)
	bnei	$r3, 0, bnei.88550
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.88552
	addi	$r3, $r0, -1
	sw	$r3, 8($r0)
	j	cont.88549     ! elimjump
bne.88552:
	sw	$r4, 8($r0)
cont.88551:
	j	cont.88549
bnei.88550:
cont.88549:
	lw	$r3, 4($r0)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r4, $r2, -48
	addu	$r3, $r3, $r4
	sw	$r3, 4($r0)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88554
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88556
	addi	$r2, $r0, 0
	j	cont.88553     ! elimjump
bgt.88556:
	addi	$r2, $r0, 1
cont.88555:
	j	cont.88553
bgt.88554:
	addi	$r2, $r0, 1
cont.88553:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88558
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.88560
	lw	$r2, 4($r0)
	jr	$r31
bnei.88560:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.88558:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.88562
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88564
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	j	cont.88561     ! elimjump
bne.88564:
	sw	$r4, 8($r0)
cont.88563:
	j	cont.88561
bnei.88562:
cont.88561:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
read_float_token1.2565:
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88566
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88568
	addi	$r3, $r0, 0
	j	cont.88565     ! elimjump
bgt.88568:
	addi	$r3, $r0, 1
cont.88567:
	j	cont.88565
bgt.88566:
	addi	$r3, $r0, 1
cont.88565:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88570
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.88572
	jr	$r31
bnei.88572:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88574
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88576
	addi	$r2, $r0, 0
	j	cont.88573     ! elimjump
bgt.88576:
	addi	$r2, $r0, 1
cont.88575:
	j	cont.88573
bgt.88574:
	addi	$r2, $r0, 1
cont.88573:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88578
	addi	$r2, $r0, 0
	j	read_float_token1.2565
bnei.88578:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.88580
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88582
	addi	$r2, $r0, -1
	sw	$r2, 24($r0)
	j	cont.88579     ! elimjump
bne.88582:
	sw	$r4, 24($r0)
cont.88581:
	j	cont.88579
bnei.88580:
cont.88579:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	j	read_float_token1.2565
bnei.88570:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.88584
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.88586
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.88583     ! elimjump
bne.88586:
	sw	$r4, 24($r0)
cont.88585:
	j	cont.88583
bnei.88584:
cont.88583:
	lw	$r3, 12($r0)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r4, $r2, -48
	addu	$r3, $r3, $r4
	sw	$r3, 12($r0)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88588
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88590
	addi	$r3, $r0, 0
	j	cont.88587     ! elimjump
bgt.88590:
	addi	$r3, $r0, 1
cont.88589:
	j	cont.88587
bgt.88588:
	addi	$r3, $r0, 1
cont.88587:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88592
	jr	$r31
bnei.88592:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.88594
	addi	$r3, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r3, bne.88596
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.88593     ! elimjump
bne.88596:
	sw	$r4, 24($r0)
cont.88595:
	j	cont.88593
bnei.88594:
cont.88593:
	lw	$r3, 12($r0)
	sll	$r5, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r5, $r3
	addi	$r5, $r2, -48
	addu	$r3, $r3, $r5
	sw	$r3, 12($r0)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	j	read_float_token1.2565
read_float_token2.2595:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88598
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88600
	addi	$r3, $r0, 0
	j	cont.88597     ! elimjump
bgt.88600:
	addi	$r3, $r0, 1
cont.88599:
	j	cont.88597
bgt.88598:
	addi	$r3, $r0, 1
cont.88597:
	bnei	$r3, 1, bnei.88602
	lw	$r2, -4($r29)
	bnei	$r2, 1, bnei.88604
	jr	$r31
bnei.88604:
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88606
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88608
	addi	$r3, $r0, 0
	j	cont.88605     ! elimjump
bgt.88608:
	addi	$r3, $r0, 1
cont.88607:
	j	cont.88605
bgt.88606:
	addi	$r3, $r0, 1
cont.88605:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88610
	addi	$r2, $r0, 0
	j	read_float_token2.2595
bnei.88610:
	lw	$r3, 16($r0)
	sll	$r5, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r5, $r3
	addi	$r2, $r2, -48
	addu	$r2, $r3, $r2
	sw	$r2, 16($r0)
	lw	$r2, 20($r0)
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	sw	$r2, 20($r0)
	addi	$r2, $r4, 0
	j	read_float_token2.2595
bnei.88602:
	lw	$r3, 16($r0)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r2, $r2, -48
	addu	$r2, $r3, $r2
	sw	$r2, 16($r0)
	lw	$r2, 20($r0)
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	sw	$r2, 20($r0)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88612
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88614
	addi	$r3, $r0, 0
	j	cont.88611     ! elimjump
bgt.88614:
	addi	$r3, $r0, 1
cont.88613:
	j	cont.88611
bgt.88612:
	addi	$r3, $r0, 1
cont.88611:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88616
	jr	$r31
bnei.88616:
	lw	$r3, 16($r0)
	sll	$r5, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r5, $r3
	addi	$r2, $r2, -48
	addu	$r2, $r3, $r2
	sw	$r2, 16($r0)
	lw	$r2, 20($r0)
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	sw	$r2, 20($r0)
	addi	$r2, $r4, 0
	j	read_float_token2.2595
read_float.2619:
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88618
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88620
	addi	$r2, $r0, 0
	j	cont.88617     ! elimjump
bgt.88620:
	addi	$r2, $r0, 1
cont.88619:
	j	cont.88617
bgt.88618:
	addi	$r2, $r0, 1
cont.88617:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88622
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	j	cont.88621
bnei.88622:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.88624
	sw	$r4, 24($r0)
	j	cont.88623
bnei.88624:
cont.88623:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
cont.88621:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.88626
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88628
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88630
	addi	$r3, $r0, 0
	j	cont.88627     ! elimjump
bgt.88630:
	addi	$r3, $r0, 1
cont.88629:
	j	cont.88627
bgt.88628:
	addi	$r3, $r0, 1
cont.88627:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88632
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	j	cont.88631
bnei.88632:
	lw	$r3, 16($r0)
	sll	$r5, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r5, $r3
	addi	$r2, $r2, -48
	addu	$r2, $r3, $r2
	sw	$r2, 16($r0)
	lw	$r2, 20($r0)
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	sw	$r2, 20($r0)
	addi	$r2, $r4, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
cont.88631:
	lw	$r2, 12($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	add.s	$f0, $f1, $f0
	j	cont.88625
bne.88626:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.88625:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.88634
	jr	$r31
bnei.88634:
	fneg	$f0, $f0
	jr	$r31
mul_sub.2655:
	bnei	$r3, 0, bnei.88636
	addi	$r2, $r0, 0
	jr	$r31
bnei.88636:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88638
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88640
	addi	$r2, $r0, 0
	jr	$r31
bnei.88640:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88642
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88644
	addi	$r2, $r0, 0
	jr	$r31
bnei.88644:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88646
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88648
	addi	$r2, $r0, 0
	jr	$r31
bnei.88648:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88650
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.88650:
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
bnei.88646:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	bnei	$r3, 0, bnei.88652
	addi	$r2, $r0, 0
	j	cont.88651
bnei.88652:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88654
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.88653
bnei.88654:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
cont.88653:
cont.88651:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88642:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	bnei	$r3, 0, bnei.88656
	addi	$r2, $r0, 0
	j	cont.88655
bnei.88656:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88658
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88660
	addi	$r2, $r0, 0
	j	cont.88657     ! elimjump
bnei.88660:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88662
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.88657     ! elimjump
bnei.88662:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	addu	$r2, $r2, $r3
cont.88661:
cont.88659:
	j	cont.88657
bnei.88658:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -24($r29)
	bnei	$r3, 0, bnei.88664
	addi	$r2, $r0, 0
	j	cont.88663
bnei.88664:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88666
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.88665
bnei.88666:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
cont.88665:
cont.88663:
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
cont.88657:
cont.88655:
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88638:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	bnei	$r3, 0, bnei.88668
	addi	$r2, $r0, 0
	j	cont.88667
bnei.88668:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88670
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88672
	addi	$r2, $r0, 0
	j	cont.88669     ! elimjump
bnei.88672:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88674
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88676
	addi	$r2, $r0, 0
	j	cont.88669     ! elimjump
bnei.88676:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88678
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.88669     ! elimjump
bnei.88678:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -36($r29)
	addi	$r2, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
cont.88677:
cont.88675:
	j	cont.88669     ! elimjump
bnei.88674:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -40($r29)
	bnei	$r3, 0, bnei.88680
	addi	$r2, $r0, 0
	j	cont.88679
bnei.88680:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88682
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.88681
bnei.88682:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -44($r29)
	addi	$r2, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
cont.88681:
cont.88679:
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
cont.88673:
cont.88671:
	j	cont.88669
bnei.88670:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -48($r29)
	bnei	$r3, 0, bnei.88684
	addi	$r2, $r0, 0
	j	cont.88683
bnei.88684:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88686
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88688
	addi	$r2, $r0, 0
	j	cont.88685     ! elimjump
bnei.88688:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88690
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.88685     ! elimjump
bnei.88690:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -52($r29)
	addi	$r2, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
cont.88689:
cont.88687:
	j	cont.88685
bnei.88686:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -56($r29)
	bnei	$r3, 0, bnei.88692
	addi	$r2, $r0, 0
	j	cont.88691
bnei.88692:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.88694
	sll	$r6, $r6, 1
	sra	$r3, $r3, 1
	addi	$r2, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.88693
bnei.88694:
	sll	$r7, $r6, 1
	sra	$r3, $r3, 1
	sw	$r6, -60($r29)
	addi	$r2, $r7, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r3, -60($r29)
	addu	$r2, $r2, $r3
cont.88693:
cont.88691:
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
cont.88685:
cont.88683:
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
cont.88669:
cont.88667:
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2668:
	blti	$r3, 0, blti.88696
	bnei	$r3, 0, bnei.88698
	addi	$r2, $r0, 0
	jr	$r31
bnei.88698:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88700
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88702
	addi	$r2, $r0, 0
	jr	$r31
bnei.88702:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88704
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88706
	addi	$r2, $r0, 0
	jr	$r31
bnei.88706:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88708
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.88708:
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
bnei.88704:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	bnei	$r3, 0, bnei.88710
	addi	$r2, $r0, 0
	j	cont.88709
bnei.88710:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88712
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.88711
bnei.88712:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
cont.88711:
cont.88709:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88700:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	bnei	$r3, 0, bnei.88714
	addi	$r2, $r0, 0
	j	cont.88713
bnei.88714:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88716
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88718
	addi	$r2, $r0, 0
	j	cont.88715     ! elimjump
bnei.88718:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88720
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.88715     ! elimjump
bnei.88720:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	addu	$r2, $r2, $r3
cont.88719:
cont.88717:
	j	cont.88715
bnei.88716:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -24($r29)
	bnei	$r3, 0, bnei.88722
	addi	$r2, $r0, 0
	j	cont.88721
bnei.88722:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88724
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.88723
bnei.88724:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
cont.88723:
cont.88721:
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
cont.88715:
cont.88713:
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
blti.88696:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	bnei	$r3, 0, bnei.88726
	addi	$r2, $r0, 0
	jr	$r31
bnei.88726:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88728
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88730
	addi	$r2, $r0, 0
	jr	$r31
bnei.88730:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88732
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88734
	addi	$r2, $r0, 0
	jr	$r31
bnei.88734:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88736
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.88736:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88732:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -36($r29)
	bnei	$r3, 0, bnei.88738
	addi	$r2, $r0, 0
	j	cont.88737
bnei.88738:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88740
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.88739
bnei.88740:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -40($r29)
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
cont.88739:
cont.88737:
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88728:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	bnei	$r3, 0, bnei.88742
	addi	$r2, $r0, 0
	j	cont.88741
bnei.88742:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88744
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88746
	addi	$r2, $r0, 0
	j	cont.88743     ! elimjump
bnei.88746:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88748
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.88743     ! elimjump
bnei.88748:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -48($r29)
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
cont.88747:
cont.88745:
	j	cont.88743
bnei.88744:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -52($r29)
	bnei	$r3, 0, bnei.88750
	addi	$r2, $r0, 0
	j	cont.88749
bnei.88750:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88752
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.88751
bnei.88752:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -56($r29)
	addi	$r2, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
cont.88751:
cont.88749:
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
cont.88743:
cont.88741:
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
	jr	$r31
div_binary_search.2674:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	blti	$r3, 0, blti.88754
	bnei	$r3, 0, bnei.88756
	addi	$r2, $r0, 0
	j	cont.88753     ! elimjump
bnei.88756:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.88758
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.88760
	addi	$r2, $r0, 0
	j	cont.88753     ! elimjump
bnei.88760:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88762
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.88753     ! elimjump
bnei.88762:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -24($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
cont.88761:
cont.88759:
	j	cont.88753     ! elimjump
bnei.88758:
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.88764
	addi	$r2, $r0, 0
	j	cont.88763
bnei.88764:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88766
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.88765
bnei.88766:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -28($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
cont.88765:
cont.88763:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
cont.88757:
cont.88755:
	j	cont.88753
blti.88754:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	bnei	$r8, 0, bnei.88768
	addi	$r2, $r0, 0
	j	cont.88767
bnei.88768:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88770
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	bnei	$r8, 0, bnei.88772
	addi	$r2, $r0, 0
	j	cont.88769     ! elimjump
bnei.88772:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88774
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.88769     ! elimjump
bnei.88774:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -32($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
cont.88773:
cont.88771:
	j	cont.88769
bnei.88770:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -36($r29)
	bnei	$r8, 0, bnei.88776
	addi	$r2, $r0, 0
	j	cont.88775
bnei.88776:
	sra	$r10, $r8, 1
	sll	$r10, $r10, 1
	subu	$r10, $r8, $r10
	bnei	$r10, 0, bnei.88778
	sll	$r9, $r9, 1
	sra	$r8, $r8, 1
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.88777
bnei.88778:
	sll	$r10, $r9, 1
	sra	$r8, $r8, 1
	sw	$r9, -40($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r8, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
cont.88777:
cont.88775:
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
cont.88769:
cont.88767:
cont.88753:
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88780
	addi	$r2, $r4, 0
	jr	$r31
bgti.88780:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88782
	bne	$r2, $r5, bne.88784
	lw	$r2, -8($r29)
	jr	$r31
bne.88784:
	lw	$r2, -8($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -44($r29)
	blti	$r6, 0, blti.88786
	bnei	$r6, 0, bnei.88788
	addi	$r2, $r0, 0
	j	cont.88785     ! elimjump
bnei.88788:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.88790
	sll	$r7, $r3, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.88785     ! elimjump
bnei.88790:
	sll	$r7, $r3, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
cont.88789:
cont.88787:
	j	cont.88785
blti.88786:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.88792
	addi	$r2, $r0, 0
	j	cont.88791
bnei.88792:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88794
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.88793
bnei.88794:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -48($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
cont.88793:
cont.88791:
cont.88785:
	lw	$r3, -8($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88796
	addi	$r2, $r4, 0
	jr	$r31
bgti.88796:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88798
	bne	$r2, $r5, bne.88800
	lw	$r2, -44($r29)
	jr	$r31
bne.88800:
	lw	$r2, -44($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -52($r29)
	blti	$r6, 0, blti.88802
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.88801
blti.88802:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.88801:
	lw	$r3, -44($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88804
	addi	$r2, $r4, 0
	jr	$r31
bgti.88804:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88806
	bne	$r2, $r5, bne.88808
	lw	$r2, -52($r29)
	jr	$r31
bne.88808:
	lw	$r2, -52($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -56($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r5, -52($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88810
	addi	$r2, $r4, 0
	jr	$r31
bgti.88810:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88812
	bne	$r2, $r3, bne.88814
	lw	$r2, -56($r29)
	jr	$r31
bne.88814:
	lw	$r2, -4($r29)
	lw	$r5, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88812:
	lw	$r2, -4($r29)
	lw	$r4, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88806:
	lw	$r2, -52($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -60($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r5, -44($r29)
	lw	$r4, -52($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88816
	addi	$r2, $r4, 0
	jr	$r31
bgti.88816:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88818
	bne	$r2, $r3, bne.88820
	lw	$r2, -60($r29)
	jr	$r31
bne.88820:
	lw	$r2, -4($r29)
	lw	$r5, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88818:
	lw	$r2, -4($r29)
	lw	$r4, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88798:
	lw	$r2, -44($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -64($r29)
	blti	$r6, 0, blti.88822
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.88821
blti.88822:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.88821:
	lw	$r3, -8($r29)
	lw	$r4, -44($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88824
	addi	$r2, $r4, 0
	jr	$r31
bgti.88824:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88826
	bne	$r2, $r5, bne.88828
	lw	$r2, -64($r29)
	jr	$r31
bne.88828:
	lw	$r2, -64($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -68($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r5, -64($r29)
	lw	$r4, -44($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88830
	addi	$r2, $r4, 0
	jr	$r31
bgti.88830:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88832
	bne	$r2, $r3, bne.88834
	lw	$r2, -68($r29)
	jr	$r31
bne.88834:
	lw	$r2, -4($r29)
	lw	$r5, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88832:
	lw	$r2, -4($r29)
	lw	$r4, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88826:
	lw	$r2, -64($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -72($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r5, -8($r29)
	lw	$r4, -64($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88836
	addi	$r2, $r4, 0
	jr	$r31
bgti.88836:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88838
	bne	$r2, $r3, bne.88840
	lw	$r2, -72($r29)
	jr	$r31
bne.88840:
	lw	$r2, -4($r29)
	lw	$r5, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88838:
	lw	$r2, -4($r29)
	lw	$r4, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88782:
	lw	$r2, -8($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -76($r29)
	blti	$r6, 0, blti.88842
	bnei	$r6, 0, bnei.88844
	addi	$r2, $r0, 0
	j	cont.88841     ! elimjump
bnei.88844:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.88846
	sll	$r7, $r4, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.88841     ! elimjump
bnei.88846:
	sll	$r7, $r4, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	addu	$r2, $r2, $r3
cont.88845:
cont.88843:
	j	cont.88841
blti.88842:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.88848
	addi	$r2, $r0, 0
	j	cont.88847
bnei.88848:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88850
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.88849
bnei.88850:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -80($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -80($r29)
	addu	$r2, $r2, $r3
cont.88849:
cont.88847:
cont.88841:
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88852
	addi	$r2, $r4, 0
	jr	$r31
bgti.88852:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88854
	bne	$r2, $r5, bne.88856
	lw	$r2, -76($r29)
	jr	$r31
bne.88856:
	lw	$r2, -76($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -84($r29)
	blti	$r6, 0, blti.88858
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.88857
blti.88858:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.88857:
	lw	$r3, -76($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88860
	addi	$r2, $r4, 0
	jr	$r31
bgti.88860:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88862
	bne	$r2, $r5, bne.88864
	lw	$r2, -84($r29)
	jr	$r31
bne.88864:
	lw	$r2, -84($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -88($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r5, -84($r29)
	lw	$r4, -8($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88866
	addi	$r2, $r4, 0
	jr	$r31
bgti.88866:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88868
	bne	$r2, $r3, bne.88870
	lw	$r2, -88($r29)
	jr	$r31
bne.88870:
	lw	$r2, -4($r29)
	lw	$r5, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88868:
	lw	$r2, -4($r29)
	lw	$r4, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88862:
	lw	$r2, -84($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -92($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r5, -76($r29)
	lw	$r4, -84($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88872
	addi	$r2, $r4, 0
	jr	$r31
bgti.88872:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88874
	bne	$r2, $r3, bne.88876
	lw	$r2, -92($r29)
	jr	$r31
bne.88876:
	lw	$r2, -4($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88874:
	lw	$r2, -4($r29)
	lw	$r4, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88854:
	lw	$r2, -76($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -96($r29)
	blti	$r6, 0, blti.88878
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.88877
blti.88878:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.88877:
	lw	$r3, -20($r29)
	lw	$r4, -76($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88880
	addi	$r2, $r4, 0
	jr	$r31
bgti.88880:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88882
	bne	$r2, $r5, bne.88884
	lw	$r2, -96($r29)
	jr	$r31
bne.88884:
	lw	$r2, -96($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -100($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r5, -96($r29)
	lw	$r4, -76($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88886
	addi	$r2, $r4, 0
	jr	$r31
bgti.88886:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88888
	bne	$r2, $r3, bne.88890
	lw	$r2, -100($r29)
	jr	$r31
bne.88890:
	lw	$r2, -4($r29)
	lw	$r5, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88888:
	lw	$r2, -4($r29)
	lw	$r4, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88882:
	lw	$r2, -96($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -104($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r5, -20($r29)
	lw	$r4, -96($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.88892
	addi	$r2, $r4, 0
	jr	$r31
bgti.88892:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88894
	bne	$r2, $r3, bne.88896
	lw	$r2, -104($r29)
	jr	$r31
bne.88896:
	lw	$r2, -4($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88894:
	lw	$r2, -4($r29)
	lw	$r4, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
print_int.2704:
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.88898
	lui	$r4, 1525
	ori	$r4, $r4, 57600
	addi	$r5, $r0, 2
	lui	$r6, 762
	ori	$r6, $r6, 61568
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88900
	bne	$r2, $r3, bne.88902
	addi	$r2, $r0, 1
	j	cont.88899     ! elimjump
bne.88902:
	addi	$r2, $r0, 0
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 0
cont.88901:
	j	cont.88899
bgt.88900:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88904
	bne	$r2, $r3, bne.88906
	addi	$r2, $r0, 2
	j	cont.88903     ! elimjump
bne.88906:
	addi	$r2, $r0, 1
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88905:
	j	cont.88903
bgt.88904:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 2
cont.88903:
cont.88899:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	lui	$r4, 381
	ori	$r4, $r4, 30784
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -16($r29)
	sw	$r2, -20($r29)
	bgti	$r3, 0, bgti.88908
	addi	$r2, $r0, 0
	j	cont.88907
bgti.88908:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88907:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	lui	$r7, 76
	ori	$r7, $r7, 19264
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r5, -32($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88910
	bne	$r2, $r3, bne.88912
	addi	$r2, $r0, 5
	j	cont.88909     ! elimjump
bne.88912:
	addi	$r2, $r0, 2
	lw	$r4, -36($r29)
	sw	$r2, -40($r29)
	addi	$r3, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88914
	bne	$r2, $r3, bne.88916
	addi	$r2, $r0, 2
	j	cont.88909     ! elimjump
bne.88916:
	addi	$r2, $r0, 1
	lw	$r4, -36($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88918
	bne	$r2, $r3, bne.88920
	addi	$r2, $r0, 1
	j	cont.88909     ! elimjump
bne.88920:
	lw	$r2, -36($r29)
	lw	$r4, -4($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.88919:
	j	cont.88909     ! elimjump
bgt.88918:
	lw	$r2, -36($r29)
	lw	$r4, -44($r29)
	lw	$r5, -40($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.88917:
cont.88915:
	j	cont.88909     ! elimjump
bgt.88914:
	addi	$r2, $r0, 3
	lw	$r4, -36($r29)
	sw	$r2, -48($r29)
	addi	$r3, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88922
	bne	$r2, $r3, bne.88924
	addi	$r2, $r0, 3
	j	cont.88909     ! elimjump
bne.88924:
	lw	$r2, -36($r29)
	lw	$r4, -40($r29)
	lw	$r5, -48($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.88923:
	j	cont.88909     ! elimjump
bgt.88922:
	lw	$r2, -36($r29)
	lw	$r4, -48($r29)
	lw	$r5, -32($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.88921:
cont.88913:
cont.88911:
	j	cont.88909
bgt.88910:
	addi	$r2, $r0, 7
	lw	$r4, -36($r29)
	sw	$r2, -52($r29)
	addi	$r3, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88926
	bne	$r2, $r3, bne.88928
	addi	$r2, $r0, 7
	j	cont.88925     ! elimjump
bne.88928:
	addi	$r2, $r0, 6
	lw	$r4, -36($r29)
	sw	$r2, -56($r29)
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88930
	bne	$r2, $r3, bne.88932
	addi	$r2, $r0, 6
	j	cont.88925     ! elimjump
bne.88932:
	lw	$r2, -36($r29)
	lw	$r4, -32($r29)
	lw	$r5, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.88931:
	j	cont.88925     ! elimjump
bgt.88930:
	lw	$r2, -36($r29)
	lw	$r4, -56($r29)
	lw	$r5, -52($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.88929:
cont.88927:
	j	cont.88925
bgt.88926:
	addi	$r2, $r0, 8
	lw	$r4, -36($r29)
	sw	$r2, -60($r29)
	addi	$r3, $r4, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.88934
	bne	$r2, $r3, bne.88936
	addi	$r2, $r0, 8
	j	cont.88933     ! elimjump
bne.88936:
	lw	$r2, -36($r29)
	lw	$r4, -52($r29)
	lw	$r5, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.88935:
	j	cont.88933
bgt.88934:
	lw	$r2, -36($r29)
	lw	$r4, -60($r29)
	lw	$r5, -28($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.88933:
cont.88925:
cont.88909:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	lui	$r4, 38
	ori	$r4, $r4, 9632
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -20($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -64($r29)
	sw	$r2, -68($r29)
	bgti	$r3, 0, bgti.88938
	lw	$r4, -24($r29)
	bnei	$r4, 1, bnei.88940
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.88937     ! elimjump
bnei.88940:
	addi	$r2, $r0, 0
cont.88939:
	j	cont.88937
bgti.88938:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88937:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	lui	$r7, 7
	ori	$r7, $r7, 41248
	sw	$r2, -72($r29)
	sw	$r4, -76($r29)
	sw	$r5, -80($r29)
	sw	$r3, -84($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88942
	bne	$r2, $r3, bne.88944
	addi	$r2, $r0, 5
	j	cont.88941     ! elimjump
bne.88944:
	addi	$r2, $r0, 2
	lw	$r4, -84($r29)
	sw	$r2, -88($r29)
	addi	$r3, $r4, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88946
	bne	$r2, $r3, bne.88948
	addi	$r2, $r0, 2
	j	cont.88941     ! elimjump
bne.88948:
	addi	$r2, $r0, 1
	lw	$r4, -84($r29)
	sw	$r2, -92($r29)
	addi	$r3, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88950
	bne	$r2, $r3, bne.88952
	addi	$r2, $r0, 1
	j	cont.88941     ! elimjump
bne.88952:
	lw	$r2, -84($r29)
	lw	$r4, -4($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.88951:
	j	cont.88941     ! elimjump
bgt.88950:
	lw	$r2, -84($r29)
	lw	$r4, -92($r29)
	lw	$r5, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.88949:
cont.88947:
	j	cont.88941     ! elimjump
bgt.88946:
	addi	$r2, $r0, 3
	lw	$r4, -84($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88954
	bne	$r2, $r3, bne.88956
	addi	$r2, $r0, 3
	j	cont.88941     ! elimjump
bne.88956:
	lw	$r2, -84($r29)
	lw	$r4, -88($r29)
	lw	$r5, -96($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.88955:
	j	cont.88941     ! elimjump
bgt.88954:
	lw	$r2, -84($r29)
	lw	$r4, -96($r29)
	lw	$r5, -80($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.88953:
cont.88945:
cont.88943:
	j	cont.88941
bgt.88942:
	addi	$r2, $r0, 7
	lw	$r4, -84($r29)
	sw	$r2, -100($r29)
	addi	$r3, $r4, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88958
	bne	$r2, $r3, bne.88960
	addi	$r2, $r0, 7
	j	cont.88957     ! elimjump
bne.88960:
	addi	$r2, $r0, 6
	lw	$r4, -84($r29)
	sw	$r2, -104($r29)
	addi	$r3, $r4, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88962
	bne	$r2, $r3, bne.88964
	addi	$r2, $r0, 6
	j	cont.88957     ! elimjump
bne.88964:
	lw	$r2, -84($r29)
	lw	$r4, -80($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.88963:
	j	cont.88957     ! elimjump
bgt.88962:
	lw	$r2, -84($r29)
	lw	$r4, -104($r29)
	lw	$r5, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.88961:
cont.88959:
	j	cont.88957
bgt.88958:
	addi	$r2, $r0, 8
	lw	$r4, -84($r29)
	sw	$r2, -108($r29)
	addi	$r3, $r4, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r3, -68($r29)
	bgt	$r3, $r2, bgt.88966
	bne	$r2, $r3, bne.88968
	addi	$r2, $r0, 8
	j	cont.88965     ! elimjump
bne.88968:
	lw	$r2, -84($r29)
	lw	$r4, -100($r29)
	lw	$r5, -108($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.88967:
	j	cont.88965
bgt.88966:
	lw	$r2, -84($r29)
	lw	$r4, -108($r29)
	lw	$r5, -76($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.88965:
cont.88957:
cont.88941:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	lui	$r4, 3
	ori	$r4, $r4, 53392
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r3, -68($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -112($r29)
	sw	$r2, -116($r29)
	bgti	$r3, 0, bgti.88970
	lw	$r4, -72($r29)
	bnei	$r4, 1, bnei.88972
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.88969     ! elimjump
bnei.88972:
	addi	$r2, $r0, 0
cont.88971:
	j	cont.88969
bgti.88970:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88969:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	lui	$r7, 0
	ori	$r7, $r7, 50000
	sw	$r2, -120($r29)
	sw	$r4, -124($r29)
	sw	$r5, -128($r29)
	sw	$r3, -132($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88974
	bne	$r2, $r3, bne.88976
	addi	$r2, $r0, 5
	j	cont.88973     ! elimjump
bne.88976:
	addi	$r2, $r0, 2
	lw	$r4, -132($r29)
	sw	$r2, -136($r29)
	addi	$r3, $r4, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88978
	bne	$r2, $r3, bne.88980
	addi	$r2, $r0, 2
	j	cont.88973     ! elimjump
bne.88980:
	addi	$r2, $r0, 1
	lw	$r4, -132($r29)
	sw	$r2, -140($r29)
	addi	$r3, $r4, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88982
	bne	$r2, $r3, bne.88984
	addi	$r2, $r0, 1
	j	cont.88973     ! elimjump
bne.88984:
	lw	$r2, -132($r29)
	lw	$r4, -4($r29)
	lw	$r5, -140($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.88983:
	j	cont.88973     ! elimjump
bgt.88982:
	lw	$r2, -132($r29)
	lw	$r4, -140($r29)
	lw	$r5, -136($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.88981:
cont.88979:
	j	cont.88973     ! elimjump
bgt.88978:
	addi	$r2, $r0, 3
	lw	$r4, -132($r29)
	sw	$r2, -144($r29)
	addi	$r3, $r4, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88986
	bne	$r2, $r3, bne.88988
	addi	$r2, $r0, 3
	j	cont.88973     ! elimjump
bne.88988:
	lw	$r2, -132($r29)
	lw	$r4, -136($r29)
	lw	$r5, -144($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.88987:
	j	cont.88973     ! elimjump
bgt.88986:
	lw	$r2, -132($r29)
	lw	$r4, -144($r29)
	lw	$r5, -128($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.88985:
cont.88977:
cont.88975:
	j	cont.88973
bgt.88974:
	addi	$r2, $r0, 7
	lw	$r4, -132($r29)
	sw	$r2, -148($r29)
	addi	$r3, $r4, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88990
	bne	$r2, $r3, bne.88992
	addi	$r2, $r0, 7
	j	cont.88989     ! elimjump
bne.88992:
	addi	$r2, $r0, 6
	lw	$r4, -132($r29)
	sw	$r2, -152($r29)
	addi	$r3, $r4, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88994
	bne	$r2, $r3, bne.88996
	addi	$r2, $r0, 6
	j	cont.88989     ! elimjump
bne.88996:
	lw	$r2, -132($r29)
	lw	$r4, -128($r29)
	lw	$r5, -152($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.88995:
	j	cont.88989     ! elimjump
bgt.88994:
	lw	$r2, -132($r29)
	lw	$r4, -152($r29)
	lw	$r5, -148($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.88993:
cont.88991:
	j	cont.88989
bgt.88990:
	addi	$r2, $r0, 8
	lw	$r4, -132($r29)
	sw	$r2, -156($r29)
	addi	$r3, $r4, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, -116($r29)
	bgt	$r3, $r2, bgt.88998
	bne	$r2, $r3, bne.89000
	addi	$r2, $r0, 8
	j	cont.88997     ! elimjump
bne.89000:
	lw	$r2, -132($r29)
	lw	$r4, -148($r29)
	lw	$r5, -156($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
cont.88999:
	j	cont.88997
bgt.88998:
	lw	$r2, -132($r29)
	lw	$r4, -156($r29)
	lw	$r5, -124($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
cont.88997:
cont.88989:
cont.88973:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	addi	$r4, $r0, 25000
	sw	$r2, -160($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lw	$r3, -116($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -160($r29)
	sw	$r2, -164($r29)
	bgti	$r3, 0, bgti.89002
	lw	$r4, -120($r29)
	bnei	$r4, 1, bnei.89004
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89001     ! elimjump
bnei.89004:
	addi	$r2, $r0, 0
cont.89003:
	j	cont.89001
bgti.89002:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89001:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	addi	$r7, $r0, 5000
	sw	$r2, -168($r29)
	sw	$r4, -172($r29)
	sw	$r5, -176($r29)
	sw	$r3, -180($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89006
	bne	$r2, $r3, bne.89008
	addi	$r2, $r0, 5
	j	cont.89005     ! elimjump
bne.89008:
	addi	$r2, $r0, 2
	lw	$r4, -180($r29)
	sw	$r2, -184($r29)
	addi	$r3, $r4, 0
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89010
	bne	$r2, $r3, bne.89012
	addi	$r2, $r0, 2
	j	cont.89005     ! elimjump
bne.89012:
	addi	$r2, $r0, 1
	lw	$r4, -180($r29)
	sw	$r2, -188($r29)
	addi	$r3, $r4, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89014
	bne	$r2, $r3, bne.89016
	addi	$r2, $r0, 1
	j	cont.89005     ! elimjump
bne.89016:
	lw	$r2, -180($r29)
	lw	$r4, -4($r29)
	lw	$r5, -188($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.89015:
	j	cont.89005     ! elimjump
bgt.89014:
	lw	$r2, -180($r29)
	lw	$r4, -188($r29)
	lw	$r5, -184($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.89013:
cont.89011:
	j	cont.89005     ! elimjump
bgt.89010:
	addi	$r2, $r0, 3
	lw	$r4, -180($r29)
	sw	$r2, -192($r29)
	addi	$r3, $r4, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89018
	bne	$r2, $r3, bne.89020
	addi	$r2, $r0, 3
	j	cont.89005     ! elimjump
bne.89020:
	lw	$r2, -180($r29)
	lw	$r4, -184($r29)
	lw	$r5, -192($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
cont.89019:
	j	cont.89005     ! elimjump
bgt.89018:
	lw	$r2, -180($r29)
	lw	$r4, -192($r29)
	lw	$r5, -176($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
cont.89017:
cont.89009:
cont.89007:
	j	cont.89005
bgt.89006:
	addi	$r2, $r0, 7
	lw	$r4, -180($r29)
	sw	$r2, -196($r29)
	addi	$r3, $r4, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89022
	bne	$r2, $r3, bne.89024
	addi	$r2, $r0, 7
	j	cont.89021     ! elimjump
bne.89024:
	addi	$r2, $r0, 6
	lw	$r4, -180($r29)
	sw	$r2, -200($r29)
	addi	$r3, $r4, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89026
	bne	$r2, $r3, bne.89028
	addi	$r2, $r0, 6
	j	cont.89021     ! elimjump
bne.89028:
	lw	$r2, -180($r29)
	lw	$r4, -176($r29)
	lw	$r5, -200($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
cont.89027:
	j	cont.89021     ! elimjump
bgt.89026:
	lw	$r2, -180($r29)
	lw	$r4, -200($r29)
	lw	$r5, -196($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
cont.89025:
cont.89023:
	j	cont.89021
bgt.89022:
	addi	$r2, $r0, 8
	lw	$r4, -180($r29)
	sw	$r2, -204($r29)
	addi	$r3, $r4, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	lw	$r3, -164($r29)
	bgt	$r3, $r2, bgt.89030
	bne	$r2, $r3, bne.89032
	addi	$r2, $r0, 8
	j	cont.89029     ! elimjump
bne.89032:
	lw	$r2, -180($r29)
	lw	$r4, -196($r29)
	lw	$r5, -204($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
cont.89031:
	j	cont.89029
bgt.89030:
	lw	$r2, -180($r29)
	lw	$r4, -204($r29)
	lw	$r5, -172($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
cont.89029:
cont.89021:
cont.89005:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	addi	$r4, $r0, 2500
	sw	$r2, -208($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r3, -164($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -208($r29)
	sw	$r2, -212($r29)
	bgti	$r3, 0, bgti.89034
	lw	$r4, -168($r29)
	bnei	$r4, 1, bnei.89036
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89033     ! elimjump
bnei.89036:
	addi	$r2, $r0, 0
cont.89035:
	j	cont.89033
bgti.89034:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89033:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	addi	$r7, $r0, 500
	sw	$r2, -216($r29)
	sw	$r4, -220($r29)
	sw	$r5, -224($r29)
	sw	$r3, -228($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89038
	bne	$r2, $r3, bne.89040
	addi	$r2, $r0, 5
	j	cont.89037     ! elimjump
bne.89040:
	addi	$r2, $r0, 2
	lw	$r4, -228($r29)
	sw	$r2, -232($r29)
	addi	$r3, $r4, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89042
	bne	$r2, $r3, bne.89044
	addi	$r2, $r0, 2
	j	cont.89037     ! elimjump
bne.89044:
	addi	$r2, $r0, 1
	lw	$r4, -228($r29)
	sw	$r2, -236($r29)
	addi	$r3, $r4, 0
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89046
	bne	$r2, $r3, bne.89048
	addi	$r2, $r0, 1
	j	cont.89037     ! elimjump
bne.89048:
	lw	$r2, -228($r29)
	lw	$r4, -4($r29)
	lw	$r5, -236($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
cont.89047:
	j	cont.89037     ! elimjump
bgt.89046:
	lw	$r2, -228($r29)
	lw	$r4, -236($r29)
	lw	$r5, -232($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
cont.89045:
cont.89043:
	j	cont.89037     ! elimjump
bgt.89042:
	addi	$r2, $r0, 3
	lw	$r4, -228($r29)
	sw	$r2, -240($r29)
	addi	$r3, $r4, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89050
	bne	$r2, $r3, bne.89052
	addi	$r2, $r0, 3
	j	cont.89037     ! elimjump
bne.89052:
	lw	$r2, -228($r29)
	lw	$r4, -232($r29)
	lw	$r5, -240($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
cont.89051:
	j	cont.89037     ! elimjump
bgt.89050:
	lw	$r2, -228($r29)
	lw	$r4, -240($r29)
	lw	$r5, -224($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
cont.89049:
cont.89041:
cont.89039:
	j	cont.89037
bgt.89038:
	addi	$r2, $r0, 7
	lw	$r4, -228($r29)
	sw	$r2, -244($r29)
	addi	$r3, $r4, 0
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89054
	bne	$r2, $r3, bne.89056
	addi	$r2, $r0, 7
	j	cont.89053     ! elimjump
bne.89056:
	addi	$r2, $r0, 6
	lw	$r4, -228($r29)
	sw	$r2, -248($r29)
	addi	$r3, $r4, 0
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89058
	bne	$r2, $r3, bne.89060
	addi	$r2, $r0, 6
	j	cont.89053     ! elimjump
bne.89060:
	lw	$r2, -228($r29)
	lw	$r4, -224($r29)
	lw	$r5, -248($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
cont.89059:
	j	cont.89053     ! elimjump
bgt.89058:
	lw	$r2, -228($r29)
	lw	$r4, -248($r29)
	lw	$r5, -244($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
cont.89057:
cont.89055:
	j	cont.89053
bgt.89054:
	addi	$r2, $r0, 8
	lw	$r4, -228($r29)
	sw	$r2, -252($r29)
	addi	$r3, $r4, 0
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	lw	$r3, -212($r29)
	bgt	$r3, $r2, bgt.89062
	bne	$r2, $r3, bne.89064
	addi	$r2, $r0, 8
	j	cont.89061     ! elimjump
bne.89064:
	lw	$r2, -228($r29)
	lw	$r4, -244($r29)
	lw	$r5, -252($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
cont.89063:
	j	cont.89061
bgt.89062:
	lw	$r2, -228($r29)
	lw	$r4, -252($r29)
	lw	$r5, -220($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
cont.89061:
cont.89053:
cont.89037:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	addi	$r4, $r0, 250
	sw	$r2, -256($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	lw	$r3, -212($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -256($r29)
	sw	$r2, -260($r29)
	bgti	$r3, 0, bgti.89066
	lw	$r4, -216($r29)
	bnei	$r4, 1, bnei.89068
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89065     ! elimjump
bnei.89068:
	addi	$r2, $r0, 0
cont.89067:
	j	cont.89065
bgti.89066:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89065:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 10
	addi	$r5, $r0, 5
	addi	$r6, $r0, 10
	addi	$r7, $r0, 50
	sw	$r2, -264($r29)
	sw	$r4, -268($r29)
	sw	$r5, -272($r29)
	sw	$r3, -276($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89070
	bne	$r2, $r3, bne.89072
	addi	$r2, $r0, 5
	j	cont.89069     ! elimjump
bne.89072:
	addi	$r2, $r0, 2
	lw	$r4, -276($r29)
	sw	$r2, -280($r29)
	addi	$r3, $r4, 0
	sw	$r31, -284($r29)	!call-dir
	addi	$r29, $r29, -284	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 284
	lw	$r31, -284($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89074
	bne	$r2, $r3, bne.89076
	addi	$r2, $r0, 2
	j	cont.89069     ! elimjump
bne.89076:
	addi	$r2, $r0, 1
	lw	$r4, -276($r29)
	sw	$r2, -284($r29)
	addi	$r3, $r4, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89078
	bne	$r2, $r3, bne.89080
	addi	$r2, $r0, 1
	j	cont.89069     ! elimjump
bne.89080:
	lw	$r2, -276($r29)
	lw	$r4, -4($r29)
	lw	$r5, -284($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
cont.89079:
	j	cont.89069     ! elimjump
bgt.89078:
	lw	$r2, -276($r29)
	lw	$r4, -284($r29)
	lw	$r5, -280($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
cont.89077:
cont.89075:
	j	cont.89069     ! elimjump
bgt.89074:
	addi	$r2, $r0, 3
	lw	$r4, -276($r29)
	sw	$r2, -288($r29)
	addi	$r3, $r4, 0
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89082
	bne	$r2, $r3, bne.89084
	addi	$r2, $r0, 3
	j	cont.89069     ! elimjump
bne.89084:
	lw	$r2, -276($r29)
	lw	$r4, -280($r29)
	lw	$r5, -288($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
cont.89083:
	j	cont.89069     ! elimjump
bgt.89082:
	lw	$r2, -276($r29)
	lw	$r4, -288($r29)
	lw	$r5, -272($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
cont.89081:
cont.89073:
cont.89071:
	j	cont.89069
bgt.89070:
	addi	$r2, $r0, 7
	lw	$r4, -276($r29)
	sw	$r2, -292($r29)
	addi	$r3, $r4, 0
	sw	$r31, -296($r29)	!call-dir
	addi	$r29, $r29, -296	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 296
	lw	$r31, -296($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89086
	bne	$r2, $r3, bne.89088
	addi	$r2, $r0, 7
	j	cont.89085     ! elimjump
bne.89088:
	addi	$r2, $r0, 6
	lw	$r4, -276($r29)
	sw	$r2, -296($r29)
	addi	$r3, $r4, 0
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89090
	bne	$r2, $r3, bne.89092
	addi	$r2, $r0, 6
	j	cont.89085     ! elimjump
bne.89092:
	lw	$r2, -276($r29)
	lw	$r4, -272($r29)
	lw	$r5, -296($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
cont.89091:
	j	cont.89085     ! elimjump
bgt.89090:
	lw	$r2, -276($r29)
	lw	$r4, -296($r29)
	lw	$r5, -292($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
cont.89089:
cont.89087:
	j	cont.89085
bgt.89086:
	addi	$r2, $r0, 8
	lw	$r4, -276($r29)
	sw	$r2, -300($r29)
	addi	$r3, $r4, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	lw	$r3, -260($r29)
	bgt	$r3, $r2, bgt.89094
	bne	$r2, $r3, bne.89096
	addi	$r2, $r0, 8
	j	cont.89093     ! elimjump
bne.89096:
	lw	$r2, -276($r29)
	lw	$r4, -292($r29)
	lw	$r5, -300($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
cont.89095:
	j	cont.89093
bgt.89094:
	lw	$r2, -276($r29)
	lw	$r4, -300($r29)
	lw	$r5, -268($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
cont.89093:
cont.89085:
cont.89069:
	sll	$r3, $r2, 1
	sll	$r3, $r3, 1
	addi	$r4, $r0, 25
	sw	$r2, -304($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -260($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -304($r29)
	sw	$r2, -308($r29)
	bgti	$r3, 0, bgti.89098
	lw	$r4, -264($r29)
	bnei	$r4, 1, bnei.89100
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89097     ! elimjump
bnei.89100:
	addi	$r2, $r0, 0
cont.89099:
	j	cont.89097
bgti.89098:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89097:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 5
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -312($r29)
	sw	$r4, -316($r29)
	sw	$r3, -320($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89102
	bne	$r2, $r3, bne.89104
	addi	$r2, $r0, 5
	j	cont.89101     ! elimjump
bne.89104:
	addi	$r2, $r0, 2
	lw	$r4, -320($r29)
	sw	$r2, -324($r29)
	addi	$r3, $r4, 0
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89106
	bne	$r2, $r3, bne.89108
	addi	$r2, $r0, 2
	j	cont.89101     ! elimjump
bne.89108:
	addi	$r2, $r0, 1
	lw	$r4, -320($r29)
	sw	$r2, -328($r29)
	addi	$r3, $r4, 0
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89110
	bne	$r2, $r3, bne.89112
	addi	$r2, $r0, 1
	j	cont.89101     ! elimjump
bne.89112:
	lw	$r2, -320($r29)
	lw	$r4, -4($r29)
	lw	$r5, -328($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
cont.89111:
	j	cont.89101     ! elimjump
bgt.89110:
	lw	$r2, -320($r29)
	lw	$r4, -328($r29)
	lw	$r5, -324($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
cont.89109:
cont.89107:
	j	cont.89101     ! elimjump
bgt.89106:
	addi	$r2, $r0, 3
	lw	$r4, -320($r29)
	sw	$r2, -332($r29)
	addi	$r3, $r4, 0
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89114
	bne	$r2, $r3, bne.89116
	addi	$r2, $r0, 3
	j	cont.89101     ! elimjump
bne.89116:
	lw	$r2, -320($r29)
	lw	$r4, -324($r29)
	lw	$r5, -332($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
cont.89115:
	j	cont.89101     ! elimjump
bgt.89114:
	lw	$r2, -320($r29)
	lw	$r4, -332($r29)
	lw	$r5, -316($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
cont.89113:
cont.89105:
cont.89103:
	j	cont.89101
bgt.89102:
	addi	$r2, $r0, 7
	lw	$r4, -320($r29)
	sw	$r2, -336($r29)
	addi	$r3, $r4, 0
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89118
	bne	$r2, $r3, bne.89120
	addi	$r2, $r0, 7
	j	cont.89117     ! elimjump
bne.89120:
	addi	$r2, $r0, 6
	lw	$r4, -320($r29)
	sw	$r2, -340($r29)
	addi	$r3, $r4, 0
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89122
	bne	$r2, $r3, bne.89124
	addi	$r2, $r0, 6
	j	cont.89117     ! elimjump
bne.89124:
	lw	$r2, -320($r29)
	lw	$r4, -316($r29)
	lw	$r5, -340($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
cont.89123:
	j	cont.89117     ! elimjump
bgt.89122:
	lw	$r2, -320($r29)
	lw	$r4, -340($r29)
	lw	$r5, -336($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
cont.89121:
cont.89119:
	j	cont.89117
bgt.89118:
	addi	$r2, $r0, 8
	lw	$r4, -320($r29)
	sw	$r2, -344($r29)
	addi	$r3, $r4, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
	lw	$r3, -308($r29)
	bgt	$r3, $r2, bgt.89126
	bne	$r2, $r3, bne.89128
	addi	$r2, $r0, 8
	j	cont.89125     ! elimjump
bne.89128:
	lw	$r2, -320($r29)
	lw	$r4, -336($r29)
	lw	$r5, -344($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
cont.89127:
	j	cont.89125
bgt.89126:
	lw	$r5, -320($r29)
	lw	$r4, -344($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
cont.89125:
cont.89117:
cont.89101:
	sll	$r3, $r2, 1
	sll	$r4, $r3, 1
	addi	$r5, $r0, 2
	sw	$r2, -348($r29)
	sw	$r3, -352($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -356($r29)	!call-dir
	addi	$r29, $r29, -356	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 356
	lw	$r31, -356($r29)	!call-dir
	lw	$r3, -352($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -308($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -348($r29)
	sw	$r2, -356($r29)
	bgti	$r3, 0, bgti.89130
	lw	$r4, -312($r29)
	bnei	$r4, 1, bnei.89132
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89129     ! elimjump
bnei.89132:
	addi	$r2, $r0, 0
cont.89131:
	j	cont.89129
bgti.89130:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89129:
	lw	$r2, -356($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
blti.88898:
	addi	$r3, $r0, 45
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	lw	$r2, -12($r29)
	subu	$r2, $r0, $r2
	j	print_int.2704
read_screen_settings.3664:
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89134
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	add.s	$f0, $f1, $f0
	j	cont.89133
bne.89134:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.89133:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89136
	j	cont.89135
bnei.89136:
	fneg	$f0, $f0
cont.89135:
	swcl	$f0, 320($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89138
	addi	$r2, $r0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lwcl	$f1, -16($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -12($r29)
	add.s	$f0, $f1, $f0
	j	cont.89137
bne.89138:
	lw	$r2, 12($r0)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.89137:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89140
	j	cont.89139
bnei.89140:
	fneg	$f0, $f0
cont.89139:
	swcl	$f0, 324($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89142
	addi	$r2, $r0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -20($r29)
	add.s	$f0, $f1, $f0
	j	cont.89141
bne.89142:
	lw	$r2, 12($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.89141:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89144
	j	cont.89143
bnei.89144:
	fneg	$f0, $f0
cont.89143:
	swcl	$f0, 328($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89146
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -28($r29)
	add.s	$f0, $f1, $f0
	j	cont.89145
bne.89146:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89145:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89148
	j	cont.89147
bnei.89148:
	fneg	$f0, $f0
cont.89147:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -36($r29)
	fmove	$f0, $f1
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -36($r29)
	c.le.s	$f4, $f30
	bclf	bclf.89150
	addi	$r2, $r0, 0
	j	cont.89149
bclf.89150:
	addi	$r2, $r0, 1
cont.89149:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -40($r29)
	swcl	$f3, -44($r29)
	swcl	$f2, -48($r29)
	sw	$r2, -52($r29)
	swcl	$f1, -56($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89152
	c.le.s	$f30, $f5
	bclf	bclf.89154
	fmove	$f0, $f5
	j	cont.89151     ! elimjump
bclf.89154:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89156
	c.le.s	$f30, $f5
	bclf	bclf.89158
	fmove	$f0, $f5
	j	cont.89151     ! elimjump
bclf.89158:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89157:
	j	cont.89151     ! elimjump
bclf.89156:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89155:
cont.89153:
	j	cont.89151
bclf.89152:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89160
	c.le.s	$f30, $f5
	bclf	bclf.89162
	fmove	$f0, $f5
	j	cont.89159     ! elimjump
bclf.89162:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89161:
	j	cont.89159
bclf.89160:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89159:
cont.89151:
	lwcl	$f1, -56($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89164
	lw	$r2, -52($r29)
	j	cont.89163
bclf.89164:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89166
	addi	$r2, $r0, 1
	j	cont.89165
bclf.89166:
	addi	$r2, $r0, 0
cont.89165:
cont.89163:
	c.le.s	$f0, $f1
	bclf	bclf.89168
	j	cont.89167
bclf.89168:
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
cont.89167:
	lwcl	$f2, -44($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89170
	j	cont.89169
bclf.89170:
	sub.s	$f0, $f1, $f0
cont.89169:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89172
	j	cont.89171
bnei.89172:
	fneg	$f0, $f0
cont.89171:
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89174
	addi	$r2, $r0, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lwcl	$f1, -68($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -64($r29)
	add.s	$f0, $f1, $f0
	j	cont.89173
bne.89174:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.89173:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89176
	j	cont.89175
bnei.89176:
	fneg	$f0, $f0
cont.89175:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -72($r29)
	fmove	$f0, $f1
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -72($r29)
	c.le.s	$f4, $f30
	bclf	bclf.89178
	addi	$r2, $r0, 0
	j	cont.89177
bclf.89178:
	addi	$r2, $r0, 1
cont.89177:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -76($r29)
	swcl	$f3, -80($r29)
	swcl	$f2, -84($r29)
	sw	$r2, -88($r29)
	swcl	$f1, -92($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89180
	c.le.s	$f30, $f5
	bclf	bclf.89182
	fmove	$f0, $f5
	j	cont.89179     ! elimjump
bclf.89182:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89184
	c.le.s	$f30, $f5
	bclf	bclf.89186
	fmove	$f0, $f5
	j	cont.89179     ! elimjump
bclf.89186:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89185:
	j	cont.89179     ! elimjump
bclf.89184:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89183:
cont.89181:
	j	cont.89179
bclf.89180:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89188
	c.le.s	$f30, $f5
	bclf	bclf.89190
	fmove	$f0, $f5
	j	cont.89187     ! elimjump
bclf.89190:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89189:
	j	cont.89187
bclf.89188:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89187:
cont.89179:
	lwcl	$f1, -92($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89192
	lw	$r2, -88($r29)
	j	cont.89191
bclf.89192:
	lwcl	$f2, -72($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89194
	addi	$r2, $r0, 1
	j	cont.89193
bclf.89194:
	addi	$r2, $r0, 0
cont.89193:
cont.89191:
	c.le.s	$f0, $f1
	bclf	bclf.89196
	j	cont.89195
bclf.89196:
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
cont.89195:
	lwcl	$f2, -80($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89198
	j	cont.89197
bclf.89198:
	sub.s	$f0, $f1, $f0
cont.89197:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89200
	j	cont.89199
bnei.89200:
	fneg	$f0, $f0
cont.89199:
	lwcl	$f1, -40($r29)
	mul.s	$f2, $f1, $f0
	lfh	$f3, 17224
	mul.s	$f2, $f2, $f3
	swcl	$f2, 720($r0)
	lfh	$f2, 49992
	lwcl	$f3, -60($r29)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 724($r0)
	lwcl	$f2, -76($r29)
	mul.s	$f4, $f1, $f2
	lfh	$f5, 17224
	mul.s	$f4, $f4, $f5
	swcl	$f4, 728($r0)
	swcl	$f2, 696($r0)
	fmove	$f4, $f30
	swcl	$f4, 700($r0)
	fneg	$f4, $f0
	swcl	$f4, 704($r0)
	fneg	$f4, $f3
	mul.s	$f0, $f4, $f0
	swcl	$f0, 708($r0)
	fneg	$f0, $f1
	swcl	$f0, 712($r0)
	fneg	$f0, $f3
	mul.s	$f0, $f0, $f2
	swcl	$f0, 716($r0)
	lwcl	$f0, 320($r0)
	lwcl	$f1, 720($r0)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 332($r0)
	lwcl	$f0, 324($r0)
	lwcl	$f1, 724($r0)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 336($r0)
	lwcl	$f0, 328($r0)
	lwcl	$f1, 728($r0)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 340($r0)
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
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.89202
	addi	$r3, $r0, 0
	j	cont.89201
bclf.89202:
	addi	$r3, $r0, 1
cont.89201:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -12($r29)
	swcl	$f4, -16($r29)
	swcl	$f3, -20($r29)
	swcl	$f1, -24($r29)
	sw	$r3, -28($r29)
	swcl	$f2, -32($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89204
	c.le.s	$f30, $f5
	bclf	bclf.89206
	fmove	$f0, $f5
	j	cont.89203     ! elimjump
bclf.89206:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89208
	c.le.s	$f30, $f5
	bclf	bclf.89210
	fmove	$f0, $f5
	j	cont.89203     ! elimjump
bclf.89210:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89209:
	j	cont.89203     ! elimjump
bclf.89208:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89207:
cont.89205:
	j	cont.89203
bclf.89204:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89212
	c.le.s	$f30, $f5
	bclf	bclf.89214
	fmove	$f0, $f5
	j	cont.89211     ! elimjump
bclf.89214:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89213:
	j	cont.89211
bclf.89212:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89211:
cont.89203:
	lwcl	$f1, -32($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89216
	lw	$r2, -28($r29)
	j	cont.89215
bclf.89216:
	lwcl	$f2, -24($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89218
	addi	$r2, $r0, 1
	j	cont.89217
bclf.89218:
	addi	$r2, $r0, 0
cont.89217:
cont.89215:
	c.le.s	$f0, $f1
	bclf	bclf.89220
	j	cont.89219
bclf.89220:
	lwcl	$f2, -20($r29)
	sub.s	$f0, $f2, $f0
cont.89219:
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89222
	j	cont.89221
bclf.89222:
	sub.s	$f0, $f1, $f0
cont.89221:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89224
	j	cont.89223
bnei.89224:
	fneg	$f0, $f0
cont.89223:
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -36($r29)
	fmove	$f0, $f1
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.89226
	addi	$r3, $r0, 0
	j	cont.89225
bclf.89226:
	addi	$r3, $r0, 1
cont.89225:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -40($r29)
	swcl	$f4, -44($r29)
	swcl	$f3, -48($r29)
	swcl	$f1, -52($r29)
	sw	$r3, -56($r29)
	swcl	$f2, -60($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89228
	c.le.s	$f30, $f5
	bclf	bclf.89230
	fmove	$f0, $f5
	j	cont.89227     ! elimjump
bclf.89230:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89232
	c.le.s	$f30, $f5
	bclf	bclf.89234
	fmove	$f0, $f5
	j	cont.89227     ! elimjump
bclf.89234:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89233:
	j	cont.89227     ! elimjump
bclf.89232:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89231:
cont.89229:
	j	cont.89227
bclf.89228:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89236
	c.le.s	$f30, $f5
	bclf	bclf.89238
	fmove	$f0, $f5
	j	cont.89235     ! elimjump
bclf.89238:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89237:
	j	cont.89235
bclf.89236:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89235:
cont.89227:
	lwcl	$f1, -60($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89240
	lw	$r2, -56($r29)
	j	cont.89239
bclf.89240:
	lwcl	$f2, -52($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89242
	addi	$r2, $r0, 1
	j	cont.89241
bclf.89242:
	addi	$r2, $r0, 0
cont.89241:
cont.89239:
	c.le.s	$f0, $f1
	bclf	bclf.89244
	j	cont.89243
bclf.89244:
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
cont.89243:
	lwcl	$f2, -44($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89246
	j	cont.89245
bclf.89246:
	sub.s	$f0, $f1, $f0
cont.89245:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89248
	j	cont.89247
bnei.89248:
	fneg	$f0, $f0
cont.89247:
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -64($r29)
	fmove	$f0, $f1
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.89250
	addi	$r3, $r0, 0
	j	cont.89249
bclf.89250:
	addi	$r3, $r0, 1
cont.89249:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -68($r29)
	swcl	$f4, -72($r29)
	swcl	$f3, -76($r29)
	swcl	$f1, -80($r29)
	sw	$r3, -84($r29)
	swcl	$f2, -88($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89252
	c.le.s	$f30, $f5
	bclf	bclf.89254
	fmove	$f0, $f5
	j	cont.89251     ! elimjump
bclf.89254:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89256
	c.le.s	$f30, $f5
	bclf	bclf.89258
	fmove	$f0, $f5
	j	cont.89251     ! elimjump
bclf.89258:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89257:
	j	cont.89251     ! elimjump
bclf.89256:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89255:
cont.89253:
	j	cont.89251
bclf.89252:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89260
	c.le.s	$f30, $f5
	bclf	bclf.89262
	fmove	$f0, $f5
	j	cont.89259     ! elimjump
bclf.89262:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89261:
	j	cont.89259
bclf.89260:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89259:
cont.89251:
	lwcl	$f1, -88($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89264
	lw	$r2, -84($r29)
	j	cont.89263
bclf.89264:
	lwcl	$f2, -80($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89266
	addi	$r2, $r0, 1
	j	cont.89265
bclf.89266:
	addi	$r2, $r0, 0
cont.89265:
cont.89263:
	c.le.s	$f0, $f1
	bclf	bclf.89268
	j	cont.89267
bclf.89268:
	lwcl	$f2, -76($r29)
	sub.s	$f0, $f2, $f0
cont.89267:
	lwcl	$f2, -72($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89270
	j	cont.89269
bclf.89270:
	sub.s	$f0, $f1, $f0
cont.89269:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89272
	j	cont.89271
bnei.89272:
	fneg	$f0, $f0
cont.89271:
	lwcl	$f1, -40($r29)
	lwcl	$f2, -68($r29)
	mul.s	$f3, $f1, $f2
	lwcl	$f4, -36($r29)
	lwcl	$f5, -64($r29)
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
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, -1, bnei.89274
	addi	$r2, $r0, 0
	jr	$r31
bnei.89274:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_int_token.2507
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
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89276
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -28($r29)
	add.s	$f0, $f1, $f0
	j	cont.89275
bne.89276:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89275:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89278
	j	cont.89277
bnei.89278:
	fneg	$f0, $f0
cont.89277:
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89280
	addi	$r2, $r0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lwcl	$f1, -40($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -36($r29)
	add.s	$f0, $f1, $f0
	j	cont.89279
bne.89280:
	lw	$r2, 12($r0)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.89279:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89282
	j	cont.89281
bnei.89282:
	fneg	$f0, $f0
cont.89281:
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89284
	addi	$r2, $r0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f1, -48($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -44($r29)
	add.s	$f0, $f1, $f0
	j	cont.89283
bne.89284:
	lw	$r2, 12($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.89283:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89286
	j	cont.89285
bnei.89286:
	fneg	$f0, $f0
cont.89285:
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89288
	addi	$r2, $r0, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f1, -60($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -56($r29)
	add.s	$f0, $f1, $f0
	j	cont.89287
bne.89288:
	lw	$r2, 12($r0)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89287:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89290
	j	cont.89289
bnei.89290:
	fneg	$f0, $f0
cont.89289:
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89292
	addi	$r2, $r0, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lwcl	$f1, -68($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -64($r29)
	add.s	$f0, $f1, $f0
	j	cont.89291
bne.89292:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.89291:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89294
	j	cont.89293
bnei.89294:
	fneg	$f0, $f0
cont.89293:
	lw	$r2, -52($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89296
	addi	$r2, $r0, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -72($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lwcl	$f1, -76($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -72($r29)
	add.s	$f0, $f1, $f0
	j	cont.89295
bne.89296:
	lw	$r2, 12($r0)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.89295:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89298
	j	cont.89297
bnei.89298:
	fneg	$f0, $f0
cont.89297:
	lw	$r2, -52($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89300
	addi	$r2, $r0, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lwcl	$f1, -84($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -80($r29)
	add.s	$f0, $f1, $f0
	j	cont.89299
bne.89300:
	lw	$r2, 12($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.89299:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89302
	j	cont.89301
bnei.89302:
	fneg	$f0, $f0
cont.89301:
	c.le.s	$f30, $f0
	bclf	bclf.89304
	addi	$r2, $r0, 0
	j	cont.89303
bclf.89304:
	addi	$r2, $r0, 1
cont.89303:
	addi	$r3, $r0, 2
	fmove	$f1, $f30
	swcl	$f0, -88($r29)
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f1
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89306
	addi	$r2, $r0, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -100($r29)
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -104($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lwcl	$f1, -104($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -100($r29)
	add.s	$f0, $f1, $f0
	j	cont.89305
bne.89306:
	lw	$r2, 12($r0)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.89305:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89308
	j	cont.89307
bnei.89308:
	fneg	$f0, $f0
cont.89307:
	lw	$r2, -96($r29)
	swcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89310
	addi	$r2, $r0, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -108($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -112($r29)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lwcl	$f1, -112($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -108($r29)
	add.s	$f0, $f1, $f0
	j	cont.89309
bne.89310:
	lw	$r2, 12($r0)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
cont.89309:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89312
	j	cont.89311
bnei.89312:
	fneg	$f0, $f0
cont.89311:
	lw	$r2, -96($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89314
	addi	$r2, $r0, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -120($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -124($r29)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lwcl	$f1, -124($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -120($r29)
	add.s	$f0, $f1, $f0
	j	cont.89313
bne.89314:
	lw	$r2, 12($r0)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.89313:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89316
	j	cont.89315
bnei.89316:
	fneg	$f0, $f0
cont.89315:
	lw	$r2, -116($r29)
	swcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89318
	addi	$r2, $r0, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -128($r29)
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -132($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lwcl	$f1, -132($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -128($r29)
	add.s	$f0, $f1, $f0
	j	cont.89317
bne.89318:
	lw	$r2, 12($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.89317:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89320
	j	cont.89319
bnei.89320:
	fneg	$f0, $f0
cont.89319:
	lw	$r2, -116($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89322
	addi	$r2, $r0, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -136($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -140($r29)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lwcl	$f1, -140($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -136($r29)
	add.s	$f0, $f1, $f0
	j	cont.89321
bne.89322:
	lw	$r2, 12($r0)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.89321:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89324
	j	cont.89323
bnei.89324:
	fneg	$f0, $f0
cont.89323:
	lw	$r2, -116($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -20($r29)
	bnei	$r3, 0, bnei.89326
	j	cont.89325
bnei.89326:
	addi	$r4, $r0, 0
	sw	$r4, 12($r0)
	addi	$r4, $r0, 0
	sw	$r4, 16($r0)
	addi	$r4, $r0, 1
	sw	$r4, 20($r0)
	addi	$r4, $r0, 0
	sw	$r4, 24($r0)
	addi	$r4, $r0, 0
	addi	$r5, $r0, 32
	sw	$r2, -144($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89328
	addi	$r2, $r0, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -148($r29)
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -152($r29)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lwcl	$f1, -152($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -148($r29)
	add.s	$f0, $f1, $f0
	j	cont.89327
bne.89328:
	lw	$r2, 12($r0)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.89327:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89330
	j	cont.89329
bnei.89330:
	fneg	$f0, $f0
cont.89329:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89332
	addi	$r2, $r0, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -156($r29)
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -160($r29)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lwcl	$f1, -160($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -156($r29)
	add.s	$f0, $f1, $f0
	j	cont.89331
bne.89332:
	lw	$r2, 12($r0)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.89331:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89334
	j	cont.89333
bnei.89334:
	fneg	$f0, $f0
cont.89333:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 0
	sw	$r3, 12($r0)
	addi	$r3, $r0, 0
	sw	$r3, 16($r0)
	addi	$r3, $r0, 1
	sw	$r3, 20($r0)
	addi	$r3, $r0, 0
	sw	$r3, 24($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89336
	addi	$r2, $r0, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -164($r29)
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -168($r29)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lwcl	$f1, -168($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -164($r29)
	add.s	$f0, $f1, $f0
	j	cont.89335
bne.89336:
	lw	$r2, 12($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
cont.89335:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89338
	j	cont.89337
bnei.89338:
	fneg	$f0, $f0
cont.89337:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
cont.89325:
	lw	$r3, -12($r29)
	bnei	$r3, 2, bnei.89340
	addi	$r4, $r0, 1
	j	cont.89339
bnei.89340:
	lw	$r4, -92($r29)
cont.89339:
	addi	$r5, $r0, 4
	fmove	$f0, $f30
	sw	$r4, -172($r29)
	sw	$r2, -144($r29)
	addi	$r2, $r5, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -144($r29)
	sw	$r2, 36($r3)
	lw	$r4, -116($r29)
	sw	$r4, 32($r3)
	lw	$r4, -96($r29)
	sw	$r4, 28($r3)
	lw	$r4, -172($r29)
	sw	$r4, 24($r3)
	lw	$r4, -52($r29)
	sw	$r4, 20($r3)
	lw	$r4, -24($r29)
	sw	$r4, 16($r3)
	lw	$r5, -20($r29)
	sw	$r5, 12($r3)
	lw	$r6, -16($r29)
	sw	$r6, 8($r3)
	lw	$r6, -12($r29)
	sw	$r6, 4($r3)
	lw	$r7, -8($r29)
	sw	$r7, 0($r3)
	lw	$r7, -4($r29)
	sll	$r7, $r7, 2
	sw	$r3, 80($r7)
	bnei	$r6, 3, bnei.89342
	lwcl	$f0, 0($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89344
	fmove	$f0, $f30
	j	cont.89343
bclf.89344:
	c.eq.s	$f0, $f30
	bclf	bclf.89346
	fmove	$f1, $f30
	j	cont.89345
bclf.89346:
	c.le.s	$f0, $f30
	bclf	bclf.89348
	fmove	$f1, $f29
	j	cont.89347
bclf.89348:
	fmove	$f1, $f31
cont.89347:
cont.89345:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.89343:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89350
	fmove	$f0, $f30
	j	cont.89349
bclf.89350:
	c.eq.s	$f0, $f30
	bclf	bclf.89352
	fmove	$f1, $f30
	j	cont.89351
bclf.89352:
	c.le.s	$f0, $f30
	bclf	bclf.89354
	fmove	$f1, $f29
	j	cont.89353
bclf.89354:
	fmove	$f1, $f31
cont.89353:
cont.89351:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.89349:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89356
	fmove	$f0, $f30
	j	cont.89355
bclf.89356:
	c.eq.s	$f0, $f30
	bclf	bclf.89358
	fmove	$f1, $f30
	j	cont.89357
bclf.89358:
	c.le.s	$f0, $f30
	bclf	bclf.89360
	fmove	$f1, $f29
	j	cont.89359
bclf.89360:
	fmove	$f1, $f31
cont.89359:
cont.89357:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.89355:
	swcl	$f0, 8($r4)
	j	cont.89341
bnei.89342:
	bnei	$r6, 2, bnei.89362
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
	bclf	bclf.89364
	fmove	$f0, $f31
	j	cont.89363
bclf.89364:
	lwcl	$f1, -88($r29)
	c.le.s	$f30, $f1
	bclf	bclf.89366
	div.s	$f0, $f29, $f0
	j	cont.89365
bclf.89366:
	div.s	$f0, $f31, $f0
cont.89365:
cont.89363:
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	j	cont.89361
bnei.89362:
cont.89361:
cont.89341:
	bnei	$r5, 0, bnei.89368
	j	cont.89367
bnei.89368:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
cont.89367:
	addi	$r2, $r0, 1
	jr	$r31
read_object.4009:
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89370
	jr	$r31
bgt.89370:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, 1, bnei.89372
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89374
	jr	$r31
bgt.89374:
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, 1, bnei.89376
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89378
	jr	$r31
bgt.89378:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.89380
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89382
	jr	$r31
bgt.89382:
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	bnei	$r2, 1, bnei.89384
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89386
	jr	$r31
bgt.89386:
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.89388
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89390
	jr	$r31
bgt.89390:
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.89392
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89394
	jr	$r31
bgt.89394:
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.89396
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89398
	jr	$r31
bgt.89398:
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.89400
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	j	read_object.4009
bnei.89400:
	lw	$r2, -32($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89396:
	lw	$r2, -28($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89392:
	lw	$r2, -24($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89388:
	lw	$r2, -20($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89384:
	lw	$r2, -16($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89380:
	lw	$r2, -12($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89376:
	lw	$r2, -8($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89372:
	lw	$r2, -4($r29)
	sw	$r2, 28($r0)
	jr	$r31
read_net_item.4020:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, -1, bnei.89402
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bnei.89402:
	lw	$r3, -4($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89404
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89406
	addi	$r2, $r0, 0
	j	cont.89403     ! elimjump
bgt.89406:
	addi	$r2, $r0, 1
cont.89405:
	j	cont.89403
bgt.89404:
	addi	$r2, $r0, 1
cont.89403:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89408
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89407
bnei.89408:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89410
	sw	$r4, 8($r0)
	j	cont.89409
bnei.89410:
cont.89409:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.89407:
	bnei	$r2, -1, bnei.89412
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89411
bnei.89412:
	lw	$r3, -12($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, -1, bnei.89414
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.89413
bnei.89414:
	lw	$r3, -20($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89416
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89418
	addi	$r2, $r0, 0
	j	cont.89415     ! elimjump
bgt.89418:
	addi	$r2, $r0, 1
cont.89417:
	j	cont.89415
bgt.89416:
	addi	$r2, $r0, 1
cont.89415:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89420
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.89419
bnei.89420:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89422
	sw	$r4, 8($r0)
	j	cont.89421
bnei.89422:
cont.89421:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89419:
	bnei	$r2, -1, bnei.89424
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.89423
bnei.89424:
	lw	$r3, -28($r29)
	addi	$r4, $r3, 1
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -28($r29)
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	swr	$r4, $r3($r2)	!st var
cont.89423:
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	lw	$r4, -24($r29)
	swr	$r4, $r3($r2)	!st var
cont.89413:
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
cont.89411:
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -8($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
read_or_network.4034:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89426
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89428
	addi	$r2, $r0, 0
	j	cont.89425     ! elimjump
bgt.89428:
	addi	$r2, $r0, 1
cont.89427:
	j	cont.89425
bgt.89426:
	addi	$r2, $r0, 1
cont.89425:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89430
	addi	$r2, $r0, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89429
bnei.89430:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89432
	sw	$r4, 8($r0)
	j	cont.89431
bnei.89432:
cont.89431:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
cont.89429:
	bnei	$r2, -1, bnei.89434
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89433
bnei.89434:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, -1, bnei.89436
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.89435
bnei.89436:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89438
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89440
	addi	$r2, $r0, 0
	j	cont.89437     ! elimjump
bgt.89440:
	addi	$r2, $r0, 1
cont.89439:
	j	cont.89437
bgt.89438:
	addi	$r2, $r0, 1
cont.89437:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89442
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89441
bnei.89442:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89444
	sw	$r4, 8($r0)
	j	cont.89443
bnei.89444:
cont.89443:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.89441:
	bnei	$r2, -1, bnei.89446
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89445
bnei.89446:
	addi	$r3, $r0, 3
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sw	$r3, 8($r2)
cont.89445:
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
cont.89435:
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89433:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89448
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bnei.89448:
	lw	$r2, -4($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r3, -20($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, -1, bnei.89450
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89449
bnei.89450:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89452
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89454
	addi	$r2, $r0, 0
	j	cont.89451     ! elimjump
bgt.89454:
	addi	$r2, $r0, 1
cont.89453:
	j	cont.89451
bgt.89452:
	addi	$r2, $r0, 1
cont.89451:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89456
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.89455
bnei.89456:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89458
	sw	$r4, 8($r0)
	j	cont.89457
bnei.89458:
cont.89457:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89455:
	bnei	$r2, -1, bnei.89460
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.89459
bnei.89460:
	addi	$r3, $r0, 2
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
cont.89459:
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89449:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89462
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.89461
bnei.89462:
	lw	$r2, -24($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	sw	$r3, -36($r29)
	sw	$r4, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89464
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89466
	addi	$r2, $r0, 0
	j	cont.89463     ! elimjump
bgt.89466:
	addi	$r2, $r0, 1
cont.89465:
	j	cont.89463
bgt.89464:
	addi	$r2, $r0, 1
cont.89463:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89468
	addi	$r2, $r0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.89467
bnei.89468:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89470
	sw	$r4, 8($r0)
	j	cont.89469
bnei.89470:
cont.89469:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.89467:
	bnei	$r2, -1, bnei.89472
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89471
bnei.89472:
	addi	$r3, $r0, 1
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89471:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89474
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.89473
bnei.89474:
	lw	$r2, -40($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r3, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89476
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.89475
bnei.89476:
	lw	$r2, -52($r29)
	addi	$r4, $r2, 1
	sw	$r3, -56($r29)
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -52($r29)
	sll	$r3, $r3, 2
	lw	$r4, -56($r29)
	swr	$r4, $r3($r2)	!st var
cont.89475:
	lw	$r3, -40($r29)
	sll	$r3, $r3, 2
	lw	$r4, -48($r29)
	swr	$r4, $r3($r2)	!st var
cont.89473:
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	swr	$r4, $r3($r2)	!st var
cont.89461:
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
read_and_network.4048:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89478
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89480
	addi	$r2, $r0, 0
	j	cont.89477     ! elimjump
bgt.89480:
	addi	$r2, $r0, 1
cont.89479:
	j	cont.89477
bgt.89478:
	addi	$r2, $r0, 1
cont.89477:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89482
	addi	$r2, $r0, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89481
bnei.89482:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89484
	sw	$r4, 8($r0)
	j	cont.89483
bnei.89484:
cont.89483:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
cont.89481:
	bnei	$r2, -1, bnei.89486
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89485
bnei.89486:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, -1, bnei.89488
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.89487
bnei.89488:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89490
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89492
	addi	$r2, $r0, 0
	j	cont.89489     ! elimjump
bgt.89492:
	addi	$r2, $r0, 1
cont.89491:
	j	cont.89489
bgt.89490:
	addi	$r2, $r0, 1
cont.89489:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89494
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89493
bnei.89494:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89496
	sw	$r4, 8($r0)
	j	cont.89495
bnei.89496:
cont.89495:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.89493:
	bnei	$r2, -1, bnei.89498
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89497
bnei.89498:
	addi	$r3, $r0, 3
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sw	$r3, 8($r2)
cont.89497:
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
cont.89487:
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
cont.89485:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89500
	jr	$r31
bnei.89500:
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, -1, bnei.89502
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.89501
bnei.89502:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89504
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89506
	addi	$r2, $r0, 0
	j	cont.89503     ! elimjump
bgt.89506:
	addi	$r2, $r0, 1
cont.89505:
	j	cont.89503
bgt.89504:
	addi	$r2, $r0, 1
cont.89503:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89508
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.89507
bnei.89508:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89510
	sw	$r4, 8($r0)
	j	cont.89509
bnei.89510:
cont.89509:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.89507:
	bnei	$r2, -1, bnei.89512
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.89511
bnei.89512:
	addi	$r3, $r0, 2
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	sw	$r3, 4($r2)
cont.89511:
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
cont.89501:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89514
	jr	$r31
bnei.89514:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89516
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89518
	addi	$r2, $r0, 0
	j	cont.89515     ! elimjump
bgt.89518:
	addi	$r2, $r0, 1
cont.89517:
	j	cont.89515
bgt.89516:
	addi	$r2, $r0, 1
cont.89515:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89520
	addi	$r2, $r0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.89519
bnei.89520:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89522
	sw	$r4, 8($r0)
	j	cont.89521
bnei.89522:
cont.89521:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89519:
	bnei	$r2, -1, bnei.89524
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.89523
bnei.89524:
	addi	$r3, $r0, 1
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	sw	$r3, 0($r2)
cont.89523:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89526
	jr	$r31
bnei.89526:
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89528
	jr	$r31
bnei.89528:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	j	read_and_network.4048
read_parameter.4059:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_screen_settings.3664
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89530
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89532
	addi	$r2, $r0, 0
	j	cont.89529     ! elimjump
bgt.89532:
	addi	$r2, $r0, 1
cont.89531:
	j	cont.89529
bgt.89530:
	addi	$r2, $r0, 1
cont.89529:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89534
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	j	cont.89533
bnei.89534:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89536
	sw	$r4, 8($r0)
	j	cont.89535
bnei.89536:
cont.89535:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
cont.89533:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	fneg	$f0, $f0
	swcl	$f0, 348($r0)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -4($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.89538
	addi	$r2, $r0, 0
	j	cont.89537
bclf.89538:
	addi	$r2, $r0, 1
cont.89537:
	fabs	$f5, $f1
	swcl	$f0, -8($r29)
	swcl	$f4, -12($r29)
	swcl	$f3, -16($r29)
	swcl	$f1, -20($r29)
	sw	$r2, -24($r29)
	swcl	$f2, -28($r29)
	fmove	$f0, $f5
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89540
	lw	$r2, -24($r29)
	j	cont.89539
bclf.89540:
	lwcl	$f2, -20($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89542
	addi	$r2, $r0, 1
	j	cont.89541
bclf.89542:
	addi	$r2, $r0, 0
cont.89541:
cont.89539:
	c.le.s	$f0, $f1
	bclf	bclf.89544
	j	cont.89543
bclf.89544:
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
cont.89543:
	lwcl	$f2, -12($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89546
	j	cont.89545
bclf.89546:
	sub.s	$f0, $f1, $f0
cont.89545:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89548
	j	cont.89547
bnei.89548:
	fneg	$f0, $f0
cont.89547:
	lwcl	$f1, -8($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 344($r0)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.89550
	addi	$r2, $r0, 0
	j	cont.89549
bclf.89550:
	addi	$r2, $r0, 1
cont.89549:
	fabs	$f5, $f0
	swcl	$f4, -36($r29)
	swcl	$f3, -40($r29)
	swcl	$f0, -44($r29)
	sw	$r2, -48($r29)
	swcl	$f2, -52($r29)
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f1, -52($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89552
	lw	$r2, -48($r29)
	j	cont.89551
bclf.89552:
	lwcl	$f2, -44($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89554
	addi	$r2, $r0, 1
	j	cont.89553
bclf.89554:
	addi	$r2, $r0, 0
cont.89553:
cont.89551:
	c.le.s	$f0, $f1
	bclf	bclf.89556
	j	cont.89555
bclf.89556:
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
cont.89555:
	lwcl	$f2, -36($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89558
	j	cont.89557
bclf.89558:
	sub.s	$f0, $f1, $f0
cont.89557:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.89560
	j	cont.89559
bnei.89560:
	fneg	$f0, $f0
cont.89559:
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 352($r0)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	swcl	$f0, 356($r0)
	addi	$r2, $r0, 0
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.89562
	addi	$r2, $r0, 1
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	bnei	$r2, 1, bnei.89564
	addi	$r2, $r0, 2
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	bnei	$r2, 1, bnei.89566
	addi	$r2, $r0, 3
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	bnei	$r2, 1, bnei.89568
	addi	$r2, $r0, 4
	sw	$r2, -72($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	bnei	$r2, 1, bnei.89570
	addi	$r2, $r0, 5
	sw	$r2, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.89572
	addi	$r2, $r0, 6
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_object.4009
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.89561     ! elimjump
bnei.89572:
	lw	$r2, -76($r29)
	sw	$r2, 28($r0)
cont.89571:
	j	cont.89561     ! elimjump
bnei.89570:
	lw	$r2, -72($r29)
	sw	$r2, 28($r0)
cont.89569:
	j	cont.89561     ! elimjump
bnei.89568:
	lw	$r2, -68($r29)
	sw	$r2, 28($r0)
cont.89567:
	j	cont.89561     ! elimjump
bnei.89566:
	lw	$r2, -64($r29)
	sw	$r2, 28($r0)
cont.89565:
	j	cont.89561     ! elimjump
bnei.89564:
	lw	$r2, -60($r29)
	sw	$r2, 28($r0)
cont.89563:
	j	cont.89561
bnei.89562:
	lw	$r2, -56($r29)
	sw	$r2, 28($r0)
cont.89561:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, -1, bnei.89574
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.89573
bnei.89574:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89576
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89578
	addi	$r2, $r0, 0
	j	cont.89575     ! elimjump
bgt.89578:
	addi	$r2, $r0, 1
cont.89577:
	j	cont.89575
bgt.89576:
	addi	$r2, $r0, 1
cont.89575:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89580
	addi	$r2, $r0, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.89579
bnei.89580:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89582
	sw	$r4, 8($r0)
	j	cont.89581
bnei.89582:
cont.89581:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.89579:
	bnei	$r2, -1, bnei.89584
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.89583
bnei.89584:
	addi	$r3, $r0, 2
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -84($r29)
	sw	$r3, 4($r2)
cont.89583:
	lw	$r3, -80($r29)
	sw	$r3, 0($r2)
cont.89573:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89586
	j	cont.89585
bnei.89586:
	sw	$r2, 364($r0)
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89588
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89590
	addi	$r2, $r0, 0
	j	cont.89587     ! elimjump
bgt.89590:
	addi	$r2, $r0, 1
cont.89589:
	j	cont.89587
bgt.89588:
	addi	$r2, $r0, 1
cont.89587:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89592
	addi	$r2, $r0, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.89591
bnei.89592:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89594
	sw	$r4, 8($r0)
	j	cont.89593
bnei.89594:
cont.89593:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.89591:
	bnei	$r2, -1, bnei.89596
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.89595
bnei.89596:
	addi	$r3, $r0, 1
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r3, 0($r2)
cont.89595:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89598
	j	cont.89597
bnei.89598:
	sw	$r2, 368($r0)
	addi	$r2, $r0, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89600
	j	cont.89599
bnei.89600:
	sw	$r2, 372($r0)
	addi	$r2, $r0, 3
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	read_and_network.4048
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89599:
cont.89597:
cont.89585:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	bnei	$r2, -1, bnei.89602
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89601
bnei.89602:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89604
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89606
	addi	$r2, $r0, 0
	j	cont.89603     ! elimjump
bgt.89606:
	addi	$r2, $r0, 1
cont.89605:
	j	cont.89603
bgt.89604:
	addi	$r2, $r0, 1
cont.89603:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89608
	addi	$r2, $r0, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	j	cont.89607
bnei.89608:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89610
	sw	$r4, 8($r0)
	j	cont.89609
bnei.89610:
cont.89609:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89607:
	bnei	$r2, -1, bnei.89612
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	j	cont.89611
bnei.89612:
	addi	$r3, $r0, 2
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -96($r29)
	sw	$r3, 4($r2)
cont.89611:
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89601:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89614
	addi	$r2, $r0, 1
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.89613
bnei.89614:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r3, -100($r29)
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.89616
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89618
	addi	$r2, $r0, 0
	j	cont.89615     ! elimjump
bgt.89618:
	addi	$r2, $r0, 1
cont.89617:
	j	cont.89615
bgt.89616:
	addi	$r2, $r0, 1
cont.89615:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89620
	addi	$r2, $r0, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	j	cont.89619
bnei.89620:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89622
	sw	$r4, 8($r0)
	j	cont.89621
bnei.89622:
cont.89621:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
cont.89619:
	bnei	$r2, -1, bnei.89624
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89623
bnei.89624:
	addi	$r3, $r0, 1
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89623:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89626
	addi	$r2, $r0, 2
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	j	cont.89625
bnei.89626:
	addi	$r2, $r0, 0
	sw	$r3, -108($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89628
	addi	$r2, $r0, 3
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	j	cont.89627
bnei.89628:
	addi	$r2, $r0, 3
	sw	$r3, -112($r29)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r3, -112($r29)
	sw	$r3, 8($r2)
cont.89627:
	lw	$r3, -108($r29)
	sw	$r3, 4($r2)
cont.89625:
	lw	$r3, -100($r29)
	sw	$r3, 0($r2)
cont.89613:
	sw	$r2, 572($r0)
	jr	$r31
iter_setup_dirvec_constants.4707:
	blti	$r3, 0, blti.89630
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.89632
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89634
	swcl	$f1, 4($r2)
	j	cont.89633
bclf.89634:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89636
	addi	$r6, $r0, 0
	j	cont.89635
bclf.89636:
	addi	$r6, $r0, 1
cont.89635:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89638
	fneg	$f0, $f0
	j	cont.89637
bne.89638:
cont.89637:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89633:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89640
	swcl	$f1, 12($r2)
	j	cont.89639
bclf.89640:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89642
	addi	$r6, $r0, 0
	j	cont.89641
bclf.89642:
	addi	$r6, $r0, 1
cont.89641:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89644
	fneg	$f0, $f0
	j	cont.89643
bne.89644:
cont.89643:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89639:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89646
	swcl	$f1, 20($r2)
	j	cont.89645
bclf.89646:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89648
	addi	$r6, $r0, 0
	j	cont.89647
bclf.89648:
	addi	$r6, $r0, 1
cont.89647:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89650
	fneg	$f0, $f0
	j	cont.89649
bne.89650:
cont.89649:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89645:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89631
bnei.89632:
	bnei	$r7, 2, bnei.89652
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -16($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89654
	swcl	$f1, 0($r2)
	j	cont.89653
bclf.89654:
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
cont.89653:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89651
bnei.89652:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -16($r29)
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
	bnei	$r5, 0, bnei.89656
	fmove	$f0, $f3
	j	cont.89655
bnei.89656:
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
cont.89655:
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
	bnei	$r5, 0, bnei.89658
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89657
bnei.89658:
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
cont.89657:
	c.eq.s	$f0, $f30
	bclf	bclf.89660
	j	cont.89659
bclf.89660:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89659:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89651:
cont.89631:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89662
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89664
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89666
	swcl	$f1, 4($r2)
	j	cont.89665
bclf.89666:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89668
	addi	$r6, $r0, 0
	j	cont.89667
bclf.89668:
	addi	$r6, $r0, 1
cont.89667:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89670
	fneg	$f0, $f0
	j	cont.89669
bne.89670:
cont.89669:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89665:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89672
	swcl	$f1, 12($r2)
	j	cont.89671
bclf.89672:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89674
	addi	$r6, $r0, 0
	j	cont.89673
bclf.89674:
	addi	$r6, $r0, 1
cont.89673:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89676
	fneg	$f0, $f0
	j	cont.89675
bne.89676:
cont.89675:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89671:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89678
	swcl	$f1, 20($r2)
	j	cont.89677
bclf.89678:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89680
	addi	$r6, $r0, 0
	j	cont.89679
bclf.89680:
	addi	$r6, $r0, 1
cont.89679:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89682
	fneg	$f0, $f0
	j	cont.89681
bne.89682:
cont.89681:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89677:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89663
bnei.89664:
	bnei	$r7, 2, bnei.89684
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -32($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89686
	swcl	$f1, 0($r2)
	j	cont.89685
bclf.89686:
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
cont.89685:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89683
bnei.89684:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -32($r29)
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
	bnei	$r5, 0, bnei.89688
	fmove	$f0, $f3
	j	cont.89687
bnei.89688:
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
cont.89687:
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
	bnei	$r5, 0, bnei.89690
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89689
bnei.89690:
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
cont.89689:
	c.eq.s	$f0, $f30
	bclf	bclf.89692
	j	cont.89691
bclf.89692:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89691:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
cont.89683:
cont.89663:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89694
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89696
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89698
	swcl	$f1, 4($r2)
	j	cont.89697
bclf.89698:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89700
	addi	$r6, $r0, 0
	j	cont.89699
bclf.89700:
	addi	$r6, $r0, 1
cont.89699:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89702
	fneg	$f0, $f0
	j	cont.89701
bne.89702:
cont.89701:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89697:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89704
	swcl	$f1, 12($r2)
	j	cont.89703
bclf.89704:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89706
	addi	$r6, $r0, 0
	j	cont.89705
bclf.89706:
	addi	$r6, $r0, 1
cont.89705:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89708
	fneg	$f0, $f0
	j	cont.89707
bne.89708:
cont.89707:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89703:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89710
	swcl	$f1, 20($r2)
	j	cont.89709
bclf.89710:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89712
	addi	$r6, $r0, 0
	j	cont.89711
bclf.89712:
	addi	$r6, $r0, 1
cont.89711:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89714
	fneg	$f0, $f0
	j	cont.89713
bne.89714:
cont.89713:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89709:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89695
bnei.89696:
	bnei	$r7, 2, bnei.89716
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -48($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89718
	swcl	$f1, 0($r2)
	j	cont.89717
bclf.89718:
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
cont.89717:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89715
bnei.89716:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -48($r29)
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
	bnei	$r5, 0, bnei.89720
	fmove	$f0, $f3
	j	cont.89719
bnei.89720:
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
cont.89719:
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
	bnei	$r5, 0, bnei.89722
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89721
bnei.89722:
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
cont.89721:
	c.eq.s	$f0, $f30
	bclf	bclf.89724
	j	cont.89723
bclf.89724:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89723:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
cont.89715:
cont.89695:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89726
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89728
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -56($r29)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	sw	$r6, -68($r29)
	addi	$r2, $r7, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89730
	swcl	$f1, 4($r2)
	j	cont.89729
bclf.89730:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89732
	addi	$r6, $r0, 0
	j	cont.89731
bclf.89732:
	addi	$r6, $r0, 1
cont.89731:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89734
	fneg	$f0, $f0
	j	cont.89733
bne.89734:
cont.89733:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89729:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89736
	swcl	$f1, 12($r2)
	j	cont.89735
bclf.89736:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89738
	addi	$r6, $r0, 0
	j	cont.89737
bclf.89738:
	addi	$r6, $r0, 1
cont.89737:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89740
	fneg	$f0, $f0
	j	cont.89739
bne.89740:
cont.89739:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89735:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89742
	swcl	$f1, 20($r2)
	j	cont.89741
bclf.89742:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89744
	addi	$r6, $r0, 0
	j	cont.89743
bclf.89744:
	addi	$r6, $r0, 1
cont.89743:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89746
	fneg	$f0, $f0
	j	cont.89745
bne.89746:
cont.89745:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89741:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89727
bnei.89728:
	bnei	$r7, 2, bnei.89748
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -56($r29)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	sw	$r6, -68($r29)
	addi	$r2, $r7, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -64($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89750
	swcl	$f1, 0($r2)
	j	cont.89749
bclf.89750:
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
cont.89749:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89747
bnei.89748:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -56($r29)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	sw	$r6, -68($r29)
	addi	$r2, $r7, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -64($r29)
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
	bnei	$r5, 0, bnei.89752
	fmove	$f0, $f3
	j	cont.89751
bnei.89752:
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
cont.89751:
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
	bnei	$r5, 0, bnei.89754
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89753
bnei.89754:
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
cont.89753:
	c.eq.s	$f0, $f30
	bclf	bclf.89756
	j	cont.89755
bclf.89756:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89755:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
cont.89747:
cont.89727:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.89726:
	jr	$r31
blti.89694:
	jr	$r31
blti.89662:
	jr	$r31
blti.89630:
	jr	$r31
setup_dirvec_constants.4723:
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.89758
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.89760
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89762
	swcl	$f1, 4($r2)
	j	cont.89761
bclf.89762:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89764
	addi	$r6, $r0, 0
	j	cont.89763
bclf.89764:
	addi	$r6, $r0, 1
cont.89763:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89766
	fneg	$f0, $f0
	j	cont.89765
bne.89766:
cont.89765:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89761:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89768
	swcl	$f1, 12($r2)
	j	cont.89767
bclf.89768:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89770
	addi	$r6, $r0, 0
	j	cont.89769
bclf.89770:
	addi	$r6, $r0, 1
cont.89769:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89772
	fneg	$f0, $f0
	j	cont.89771
bne.89772:
cont.89771:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89767:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89774
	swcl	$f1, 20($r2)
	j	cont.89773
bclf.89774:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89776
	addi	$r6, $r0, 0
	j	cont.89775
bclf.89776:
	addi	$r6, $r0, 1
cont.89775:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89778
	fneg	$f0, $f0
	j	cont.89777
bne.89778:
cont.89777:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89773:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89759
bnei.89760:
	bnei	$r7, 2, bnei.89780
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -16($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89782
	swcl	$f1, 0($r2)
	j	cont.89781
bclf.89782:
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
cont.89781:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89779
bnei.89780:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -16($r29)
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
	bnei	$r5, 0, bnei.89784
	fmove	$f0, $f3
	j	cont.89783
bnei.89784:
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
cont.89783:
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
	bnei	$r5, 0, bnei.89786
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89785
bnei.89786:
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
cont.89785:
	c.eq.s	$f0, $f30
	bclf	bclf.89788
	j	cont.89787
bclf.89788:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89787:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89779:
cont.89759:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89790
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89792
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89794
	swcl	$f1, 4($r2)
	j	cont.89793
bclf.89794:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89796
	addi	$r6, $r0, 0
	j	cont.89795
bclf.89796:
	addi	$r6, $r0, 1
cont.89795:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89798
	fneg	$f0, $f0
	j	cont.89797
bne.89798:
cont.89797:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89793:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89800
	swcl	$f1, 12($r2)
	j	cont.89799
bclf.89800:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89802
	addi	$r6, $r0, 0
	j	cont.89801
bclf.89802:
	addi	$r6, $r0, 1
cont.89801:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89804
	fneg	$f0, $f0
	j	cont.89803
bne.89804:
cont.89803:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89799:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89806
	swcl	$f1, 20($r2)
	j	cont.89805
bclf.89806:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89808
	addi	$r6, $r0, 0
	j	cont.89807
bclf.89808:
	addi	$r6, $r0, 1
cont.89807:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89810
	fneg	$f0, $f0
	j	cont.89809
bne.89810:
cont.89809:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89805:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89791
bnei.89792:
	bnei	$r7, 2, bnei.89812
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -32($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89814
	swcl	$f1, 0($r2)
	j	cont.89813
bclf.89814:
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
cont.89813:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89811
bnei.89812:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -32($r29)
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
	bnei	$r5, 0, bnei.89816
	fmove	$f0, $f3
	j	cont.89815
bnei.89816:
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
cont.89815:
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
	bnei	$r5, 0, bnei.89818
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89817
bnei.89818:
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
cont.89817:
	c.eq.s	$f0, $f30
	bclf	bclf.89820
	j	cont.89819
bclf.89820:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89819:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
cont.89811:
cont.89791:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89822
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89824
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89826
	swcl	$f1, 4($r2)
	j	cont.89825
bclf.89826:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89828
	addi	$r6, $r0, 0
	j	cont.89827
bclf.89828:
	addi	$r6, $r0, 1
cont.89827:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89830
	fneg	$f0, $f0
	j	cont.89829
bne.89830:
cont.89829:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89825:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89832
	swcl	$f1, 12($r2)
	j	cont.89831
bclf.89832:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89834
	addi	$r6, $r0, 0
	j	cont.89833
bclf.89834:
	addi	$r6, $r0, 1
cont.89833:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89836
	fneg	$f0, $f0
	j	cont.89835
bne.89836:
cont.89835:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89831:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89838
	swcl	$f1, 20($r2)
	j	cont.89837
bclf.89838:
	lw	$r4, -48($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89840
	addi	$r6, $r0, 0
	j	cont.89839
bclf.89840:
	addi	$r6, $r0, 1
cont.89839:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89842
	fneg	$f0, $f0
	j	cont.89841
bne.89842:
cont.89841:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.89837:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89823
bnei.89824:
	bnei	$r7, 2, bnei.89844
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -48($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.89846
	swcl	$f1, 0($r2)
	j	cont.89845
bclf.89846:
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
cont.89845:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89843
bnei.89844:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -40($r29)
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -48($r29)
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
	bnei	$r5, 0, bnei.89848
	fmove	$f0, $f3
	j	cont.89847
bnei.89848:
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
cont.89847:
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
	bnei	$r5, 0, bnei.89850
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.89849
bnei.89850:
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
cont.89849:
	c.eq.s	$f0, $f30
	bclf	bclf.89852
	j	cont.89851
bclf.89852:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.89851:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	swr	$r2, $r4($r5)	!st var
cont.89843:
cont.89823:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.89822:
	jr	$r31
blti.89790:
	jr	$r31
blti.89758:
	jr	$r31
setup_startp_constants.4729:
	blti	$r3, 0, blti.89854
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
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
	bnei	$r6, 2, bnei.89856
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
	j	cont.89855
bnei.89856:
	bgti	$r6, 2, bgti.89858
	j	cont.89857
bgti.89858:
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
	bnei	$r7, 0, bnei.89860
	fmove	$f0, $f3
	j	cont.89859
bnei.89860:
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
cont.89859:
	bnei	$r6, 3, bnei.89862
	sub.s	$f0, $f0, $f31
	j	cont.89861
bnei.89862:
cont.89861:
	swcl	$f0, 12($r5)
cont.89857:
cont.89855:
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
blti.89854:
	jr	$r31
check_all_inside.4838:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89864
	addi	$r2, $r0, 1
	jr	$r31
bnei.89864:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f0, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.89866
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89868
	addi	$r5, $r0, 0
	j	cont.89867
bclf.89868:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89870
	addi	$r5, $r0, 0
	j	cont.89869
bclf.89870:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89872
	addi	$r5, $r0, 0
	j	cont.89871
bclf.89872:
	addi	$r5, $r0, 1
cont.89871:
cont.89869:
cont.89867:
	bnei	$r5, 1, bnei.89874
	lw	$r4, 24($r4)
	j	cont.89865     ! elimjump
bnei.89874:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89876
	addi	$r4, $r0, 0
	j	cont.89865     ! elimjump
bnei.89876:
	addi	$r4, $r0, 1
cont.89875:
cont.89873:
	j	cont.89865
bnei.89866:
	bnei	$r5, 2, bnei.89878
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89880
	addi	$r5, $r0, 0
	j	cont.89879
bclf.89880:
	addi	$r5, $r0, 1
cont.89879:
	bne	$r4, $r5, bne.89882
	addi	$r4, $r0, 1
	j	cont.89877     ! elimjump
bne.89882:
	addi	$r4, $r0, 0
cont.89881:
	j	cont.89877
bnei.89878:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.89884
	fmove	$f3, $f6
	j	cont.89883
bnei.89884:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.89883:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89886
	sub.s	$f3, $f3, $f31
	j	cont.89885
bnei.89886:
cont.89885:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89888
	addi	$r5, $r0, 0
	j	cont.89887
bclf.89888:
	addi	$r5, $r0, 1
cont.89887:
	bne	$r4, $r5, bne.89890
	addi	$r4, $r0, 1
	j	cont.89889
bne.89890:
	addi	$r4, $r0, 0
cont.89889:
cont.89877:
cont.89865:
	bnei	$r4, 1, bnei.89892
	addi	$r2, $r0, 0
	jr	$r31
bnei.89892:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89894
	addi	$r2, $r0, 1
	jr	$r31
bnei.89894:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f0, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.89896
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89898
	addi	$r5, $r0, 0
	j	cont.89897
bclf.89898:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89900
	addi	$r5, $r0, 0
	j	cont.89899
bclf.89900:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89902
	addi	$r5, $r0, 0
	j	cont.89901
bclf.89902:
	addi	$r5, $r0, 1
cont.89901:
cont.89899:
cont.89897:
	bnei	$r5, 1, bnei.89904
	lw	$r4, 24($r4)
	j	cont.89895     ! elimjump
bnei.89904:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89906
	addi	$r4, $r0, 0
	j	cont.89895     ! elimjump
bnei.89906:
	addi	$r4, $r0, 1
cont.89905:
cont.89903:
	j	cont.89895
bnei.89896:
	bnei	$r5, 2, bnei.89908
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89910
	addi	$r5, $r0, 0
	j	cont.89909
bclf.89910:
	addi	$r5, $r0, 1
cont.89909:
	bne	$r4, $r5, bne.89912
	addi	$r4, $r0, 1
	j	cont.89907     ! elimjump
bne.89912:
	addi	$r4, $r0, 0
cont.89911:
	j	cont.89907
bnei.89908:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.89914
	fmove	$f3, $f6
	j	cont.89913
bnei.89914:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.89913:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89916
	sub.s	$f3, $f3, $f31
	j	cont.89915
bnei.89916:
cont.89915:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89918
	addi	$r5, $r0, 0
	j	cont.89917
bclf.89918:
	addi	$r5, $r0, 1
cont.89917:
	bne	$r4, $r5, bne.89920
	addi	$r4, $r0, 1
	j	cont.89919
bne.89920:
	addi	$r4, $r0, 0
cont.89919:
cont.89907:
cont.89895:
	bnei	$r4, 1, bnei.89922
	addi	$r2, $r0, 0
	jr	$r31
bnei.89922:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89924
	addi	$r2, $r0, 1
	jr	$r31
bnei.89924:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f0, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.89926
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89928
	addi	$r5, $r0, 0
	j	cont.89927
bclf.89928:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89930
	addi	$r5, $r0, 0
	j	cont.89929
bclf.89930:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89932
	addi	$r5, $r0, 0
	j	cont.89931
bclf.89932:
	addi	$r5, $r0, 1
cont.89931:
cont.89929:
cont.89927:
	bnei	$r5, 1, bnei.89934
	lw	$r4, 24($r4)
	j	cont.89925     ! elimjump
bnei.89934:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89936
	addi	$r4, $r0, 0
	j	cont.89925     ! elimjump
bnei.89936:
	addi	$r4, $r0, 1
cont.89935:
cont.89933:
	j	cont.89925
bnei.89926:
	bnei	$r5, 2, bnei.89938
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89940
	addi	$r5, $r0, 0
	j	cont.89939
bclf.89940:
	addi	$r5, $r0, 1
cont.89939:
	bne	$r4, $r5, bne.89942
	addi	$r4, $r0, 1
	j	cont.89937     ! elimjump
bne.89942:
	addi	$r4, $r0, 0
cont.89941:
	j	cont.89937
bnei.89938:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.89944
	fmove	$f3, $f6
	j	cont.89943
bnei.89944:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.89943:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89946
	sub.s	$f3, $f3, $f31
	j	cont.89945
bnei.89946:
cont.89945:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89948
	addi	$r5, $r0, 0
	j	cont.89947
bclf.89948:
	addi	$r5, $r0, 1
cont.89947:
	bne	$r4, $r5, bne.89950
	addi	$r4, $r0, 1
	j	cont.89949
bne.89950:
	addi	$r4, $r0, 0
cont.89949:
cont.89937:
cont.89925:
	bnei	$r4, 1, bnei.89952
	addi	$r2, $r0, 0
	jr	$r31
bnei.89952:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89954
	addi	$r2, $r0, 1
	jr	$r31
bnei.89954:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f0, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.89956
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89958
	addi	$r5, $r0, 0
	j	cont.89957
bclf.89958:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89960
	addi	$r5, $r0, 0
	j	cont.89959
bclf.89960:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89962
	addi	$r5, $r0, 0
	j	cont.89961
bclf.89962:
	addi	$r5, $r0, 1
cont.89961:
cont.89959:
cont.89957:
	bnei	$r5, 1, bnei.89964
	lw	$r4, 24($r4)
	j	cont.89955     ! elimjump
bnei.89964:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89966
	addi	$r4, $r0, 0
	j	cont.89955     ! elimjump
bnei.89966:
	addi	$r4, $r0, 1
cont.89965:
cont.89963:
	j	cont.89955
bnei.89956:
	bnei	$r5, 2, bnei.89968
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89970
	addi	$r5, $r0, 0
	j	cont.89969
bclf.89970:
	addi	$r5, $r0, 1
cont.89969:
	bne	$r4, $r5, bne.89972
	addi	$r4, $r0, 1
	j	cont.89967     ! elimjump
bne.89972:
	addi	$r4, $r0, 0
cont.89971:
	j	cont.89967
bnei.89968:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.89974
	fmove	$f3, $f6
	j	cont.89973
bnei.89974:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.89973:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89976
	sub.s	$f3, $f3, $f31
	j	cont.89975
bnei.89976:
cont.89975:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89978
	addi	$r5, $r0, 0
	j	cont.89977
bclf.89978:
	addi	$r5, $r0, 1
cont.89977:
	bne	$r4, $r5, bne.89980
	addi	$r4, $r0, 1
	j	cont.89979
bne.89980:
	addi	$r4, $r0, 0
cont.89979:
cont.89967:
cont.89955:
	bnei	$r4, 1, bnei.89982
	addi	$r2, $r0, 0
	jr	$r31
bnei.89982:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
shadow_check_and_group.4852:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89984
	addi	$r2, $r0, 0
	jr	$r31
bnei.89984:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lwcl	$f0, 588($r0)
	lw	$r6, 20($r5)
	lwcl	$f1, 0($r6)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r6, 20($r5)
	lwcl	$f2, 4($r6)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r6, 20($r5)
	lwcl	$f3, 8($r6)
	sub.s	$f2, $f2, $f3
	sll	$r6, $r4, 2
	lw	$r6, 800($r6)
	lw	$r7, 4($r5)
	bnei	$r7, 1, bnei.89986
	lwcl	$f3, 0($r6)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r6)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r5)
	lwcl	$f4, 4($r7)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89988
	addi	$r7, $r0, 0
	j	cont.89987
bclf.89988:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89990
	addi	$r7, $r0, 0
	j	cont.89989
bclf.89990:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.89992
	addi	$r7, $r0, 0
	j	cont.89991
bclf.89992:
	addi	$r7, $r0, 1
cont.89991:
cont.89989:
cont.89987:
	bnei	$r7, 1, bnei.89994
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.89985     ! elimjump
bnei.89994:
	lwcl	$f3, 8($r6)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r6)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r5)
	lwcl	$f4, 0($r7)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89996
	addi	$r7, $r0, 0
	j	cont.89995
bclf.89996:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89998
	addi	$r7, $r0, 0
	j	cont.89997
bclf.89998:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.90000
	addi	$r7, $r0, 0
	j	cont.89999
bclf.90000:
	addi	$r7, $r0, 1
cont.89999:
cont.89997:
cont.89995:
	bnei	$r7, 1, bnei.90002
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.89985     ! elimjump
bnei.90002:
	lwcl	$f3, 16($r6)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r6)
	mul.s	$f2, $f2, $f3
	lw	$r7, 16($r5)
	lwcl	$f3, 0($r7)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90004
	addi	$r5, $r0, 0
	j	cont.90003
bclf.90004:
	lw	$r5, 16($r5)
	lwcl	$f0, 4($r5)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90006
	addi	$r5, $r0, 0
	j	cont.90005
bclf.90006:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.90008
	addi	$r5, $r0, 0
	j	cont.90007
bclf.90008:
	addi	$r5, $r0, 1
cont.90007:
cont.90005:
cont.90003:
	bnei	$r5, 1, bnei.90010
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.89985     ! elimjump
bnei.90010:
	addi	$r5, $r0, 0
cont.90009:
cont.90001:
cont.89993:
	j	cont.89985
bnei.89986:
	bnei	$r7, 2, bnei.90012
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90014
	addi	$r5, $r0, 0
	j	cont.90011     ! elimjump
bclf.90014:
	lwcl	$f3, 4($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90013:
	j	cont.90011
bnei.90012:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90016
	addi	$r5, $r0, 0
	j	cont.90015
bclf.90016:
	lwcl	$f4, 4($r6)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r6)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r5)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r5)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r5)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r5)
	bnei	$r7, 0, bnei.90018
	fmove	$f0, $f5
	j	cont.90017
bnei.90018:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r5)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r5)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r5)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90017:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.90020
	sub.s	$f0, $f0, $f31
	j	cont.90019
bnei.90020:
cont.90019:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90022
	addi	$r5, $r0, 0
	j	cont.90021
bclf.90022:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90024
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.90023
bnei.90024:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.90023:
	addi	$r5, $r0, 1
cont.90021:
cont.90015:
cont.90011:
cont.89985:
	lwcl	$f0, 576($r0)
	bnei	$r5, 0, bnei.90026
	addi	$r5, $r0, 0
	j	cont.90025
bnei.90026:
	c.le.s	$f27, $f0
	bclf	bclf.90028
	addi	$r5, $r0, 0
	j	cont.90027
bclf.90028:
	addi	$r5, $r0, 1
cont.90027:
cont.90025:
	bnei	$r5, 1, bnei.90030
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lwcl	$f1, 344($r0)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 588($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 348($r0)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 592($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 352($r0)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 596($r0)
	add.s	$f0, $f0, $f3
	lw	$r4, 0($r3)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	bnei	$r4, -1, bnei.90032
	addi	$r2, $r0, 1
	j	cont.90031
bnei.90032:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f1, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f2, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f0, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.90034
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.90036
	addi	$r5, $r0, 0
	j	cont.90035
bclf.90036:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.90038
	addi	$r5, $r0, 0
	j	cont.90037
bclf.90038:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.90040
	addi	$r5, $r0, 0
	j	cont.90039
bclf.90040:
	addi	$r5, $r0, 1
cont.90039:
cont.90037:
cont.90035:
	bnei	$r5, 1, bnei.90042
	lw	$r4, 24($r4)
	j	cont.90033     ! elimjump
bnei.90042:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90044
	addi	$r4, $r0, 0
	j	cont.90033     ! elimjump
bnei.90044:
	addi	$r4, $r0, 1
cont.90043:
cont.90041:
	j	cont.90033
bnei.90034:
	bnei	$r5, 2, bnei.90046
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90048
	addi	$r5, $r0, 0
	j	cont.90047
bclf.90048:
	addi	$r5, $r0, 1
cont.90047:
	bne	$r4, $r5, bne.90050
	addi	$r4, $r0, 1
	j	cont.90045     ! elimjump
bne.90050:
	addi	$r4, $r0, 0
cont.90049:
	j	cont.90045
bnei.90046:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.90052
	fmove	$f3, $f6
	j	cont.90051
bnei.90052:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90051:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.90054
	sub.s	$f3, $f3, $f31
	j	cont.90053
bnei.90054:
cont.90053:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90056
	addi	$r5, $r0, 0
	j	cont.90055
bclf.90056:
	addi	$r5, $r0, 1
cont.90055:
	bne	$r4, $r5, bne.90058
	addi	$r4, $r0, 1
	j	cont.90057
bne.90058:
	addi	$r4, $r0, 0
cont.90057:
cont.90045:
cont.90033:
	bnei	$r4, 1, bnei.90060
	addi	$r2, $r0, 0
	j	cont.90059
bnei.90060:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.90062
	addi	$r2, $r0, 1
	j	cont.90061
bnei.90062:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f1, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f2, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f0, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.90064
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.90066
	addi	$r5, $r0, 0
	j	cont.90065
bclf.90066:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.90068
	addi	$r5, $r0, 0
	j	cont.90067
bclf.90068:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.90070
	addi	$r5, $r0, 0
	j	cont.90069
bclf.90070:
	addi	$r5, $r0, 1
cont.90069:
cont.90067:
cont.90065:
	bnei	$r5, 1, bnei.90072
	lw	$r4, 24($r4)
	j	cont.90063     ! elimjump
bnei.90072:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90074
	addi	$r4, $r0, 0
	j	cont.90063     ! elimjump
bnei.90074:
	addi	$r4, $r0, 1
cont.90073:
cont.90071:
	j	cont.90063
bnei.90064:
	bnei	$r5, 2, bnei.90076
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90078
	addi	$r5, $r0, 0
	j	cont.90077
bclf.90078:
	addi	$r5, $r0, 1
cont.90077:
	bne	$r4, $r5, bne.90080
	addi	$r4, $r0, 1
	j	cont.90075     ! elimjump
bne.90080:
	addi	$r4, $r0, 0
cont.90079:
	j	cont.90075
bnei.90076:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.90082
	fmove	$f3, $f6
	j	cont.90081
bnei.90082:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90081:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.90084
	sub.s	$f3, $f3, $f31
	j	cont.90083
bnei.90084:
cont.90083:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90086
	addi	$r5, $r0, 0
	j	cont.90085
bclf.90086:
	addi	$r5, $r0, 1
cont.90085:
	bne	$r4, $r5, bne.90088
	addi	$r4, $r0, 1
	j	cont.90087
bne.90088:
	addi	$r4, $r0, 0
cont.90087:
cont.90075:
cont.90063:
	bnei	$r4, 1, bnei.90090
	addi	$r2, $r0, 0
	j	cont.90089
bnei.90090:
	lw	$r4, 8($r3)
	bnei	$r4, -1, bnei.90092
	addi	$r2, $r0, 1
	j	cont.90091
bnei.90092:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f1, $f3
	lw	$r5, 20($r4)
	lwcl	$f4, 4($r5)
	sub.s	$f4, $f2, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 8($r5)
	sub.s	$f5, $f0, $f5
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.90094
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.90096
	addi	$r5, $r0, 0
	j	cont.90095
bclf.90096:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.90098
	addi	$r5, $r0, 0
	j	cont.90097
bclf.90098:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.90100
	addi	$r5, $r0, 0
	j	cont.90099
bclf.90100:
	addi	$r5, $r0, 1
cont.90099:
cont.90097:
cont.90095:
	bnei	$r5, 1, bnei.90102
	lw	$r4, 24($r4)
	j	cont.90093     ! elimjump
bnei.90102:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90104
	addi	$r4, $r0, 0
	j	cont.90093     ! elimjump
bnei.90104:
	addi	$r4, $r0, 1
cont.90103:
cont.90101:
	j	cont.90093
bnei.90094:
	bnei	$r5, 2, bnei.90106
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r5)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90108
	addi	$r5, $r0, 0
	j	cont.90107
bclf.90108:
	addi	$r5, $r0, 1
cont.90107:
	bne	$r4, $r5, bne.90110
	addi	$r4, $r0, 1
	j	cont.90105     ! elimjump
bne.90110:
	addi	$r4, $r0, 0
cont.90109:
	j	cont.90105
bnei.90106:
	mul.s	$f6, $f3, $f3
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f8, 8($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.90112
	fmove	$f3, $f6
	j	cont.90111
bnei.90112:
	mul.s	$f7, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r5, 36($r4)
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r5, 36($r4)
	lwcl	$f4, 8($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90111:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.90114
	sub.s	$f3, $f3, $f31
	j	cont.90113
bnei.90114:
cont.90113:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90116
	addi	$r5, $r0, 0
	j	cont.90115
bclf.90116:
	addi	$r5, $r0, 1
cont.90115:
	bne	$r4, $r5, bne.90118
	addi	$r4, $r0, 1
	j	cont.90117
bne.90118:
	addi	$r4, $r0, 0
cont.90117:
cont.90105:
cont.90093:
	bnei	$r4, 1, bnei.90120
	addi	$r2, $r0, 0
	j	cont.90119
bnei.90120:
	addi	$r4, $r0, 3
	addi	$r2, $r4, 0
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.90119:
cont.90091:
cont.90089:
cont.90061:
cont.90059:
cont.90031:
	bnei	$r2, 1, bnei.90122
	addi	$r2, $r0, 1
	jr	$r31
bnei.90122:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90030:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90124
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90124:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.4897:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.90126
	addi	$r2, $r0, 0
	jr	$r31
bnei.90126:
	sll	$r4, $r4, 2
	lw	$r4, 364($r4)
	addi	$r5, $r0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, 1, bnei.90128
	addi	$r2, $r0, 1
	jr	$r31
bnei.90128:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90130
	addi	$r2, $r0, 0
	jr	$r31
bnei.90130:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90132
	addi	$r2, $r0, 1
	jr	$r31
bnei.90132:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90134
	addi	$r2, $r0, 0
	jr	$r31
bnei.90134:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	bnei	$r2, 1, bnei.90136
	addi	$r2, $r0, 1
	jr	$r31
bnei.90136:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90138
	addi	$r2, $r0, 0
	jr	$r31
bnei.90138:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90140
	addi	$r2, $r0, 1
	jr	$r31
bnei.90140:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90142
	addi	$r2, $r0, 0
	jr	$r31
bnei.90142:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.90144
	addi	$r2, $r0, 1
	jr	$r31
bnei.90144:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90146
	addi	$r2, $r0, 0
	jr	$r31
bnei.90146:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90148
	addi	$r2, $r0, 1
	jr	$r31
bnei.90148:
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90150
	addi	$r2, $r0, 0
	jr	$r31
bnei.90150:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.90152
	addi	$r2, $r0, 1
	jr	$r31
bnei.90152:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90154
	addi	$r2, $r0, 0
	jr	$r31
bnei.90154:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -36($r29)
	addi	$r2, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 1, bnei.90156
	addi	$r2, $r0, 1
	jr	$r31
bnei.90156:
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_group.4897
shadow_check_one_or_matrix.4909:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.90158
	addi	$r2, $r0, 0
	jr	$r31
bnei.90158:
	addi	$r6, $r0, 99
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r5, $r6, bne.90160
	addi	$r2, $r0, 1
	j	cont.90159
bne.90160:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 588($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	sll	$r5, $r5, 2
	lw	$r5, 800($r5)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.90162
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 4($r7)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90164
	addi	$r7, $r0, 0
	j	cont.90163
bclf.90164:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90166
	addi	$r7, $r0, 0
	j	cont.90165
bclf.90166:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90168
	addi	$r7, $r0, 0
	j	cont.90167
bclf.90168:
	addi	$r7, $r0, 1
cont.90167:
cont.90165:
cont.90163:
	bnei	$r7, 1, bnei.90170
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90161     ! elimjump
bnei.90170:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 0($r7)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90172
	addi	$r7, $r0, 0
	j	cont.90171
bclf.90172:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90174
	addi	$r7, $r0, 0
	j	cont.90173
bclf.90174:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90176
	addi	$r7, $r0, 0
	j	cont.90175
bclf.90176:
	addi	$r7, $r0, 1
cont.90175:
cont.90173:
cont.90171:
	bnei	$r7, 1, bnei.90178
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90161     ! elimjump
bnei.90178:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r7, 16($r6)
	lwcl	$f3, 0($r7)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90180
	addi	$r5, $r0, 0
	j	cont.90179
bclf.90180:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90182
	addi	$r5, $r0, 0
	j	cont.90181
bclf.90182:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90184
	addi	$r5, $r0, 0
	j	cont.90183
bclf.90184:
	addi	$r5, $r0, 1
cont.90183:
cont.90181:
cont.90179:
	bnei	$r5, 1, bnei.90186
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.90161     ! elimjump
bnei.90186:
	addi	$r5, $r0, 0
cont.90185:
cont.90177:
cont.90169:
	j	cont.90161
bnei.90162:
	bnei	$r7, 2, bnei.90188
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90190
	addi	$r5, $r0, 0
	j	cont.90187     ! elimjump
bclf.90190:
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90189:
	j	cont.90187
bnei.90188:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90192
	addi	$r5, $r0, 0
	j	cont.90191
bclf.90192:
	lwcl	$f4, 4($r5)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r5)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90194
	fmove	$f0, $f5
	j	cont.90193
bnei.90194:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90193:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90196
	sub.s	$f0, $f0, $f31
	j	cont.90195
bnei.90196:
cont.90195:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90198
	addi	$r5, $r0, 0
	j	cont.90197
bclf.90198:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90200
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.90199
bnei.90200:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.90199:
	addi	$r5, $r0, 1
cont.90197:
cont.90191:
cont.90187:
cont.90161:
	bnei	$r5, 0, bnei.90202
	addi	$r2, $r0, 0
	j	cont.90201
bnei.90202:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90204
	addi	$r2, $r0, 0
	j	cont.90203
bclf.90204:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.90206
	addi	$r2, $r0, 0
	j	cont.90205
bnei.90206:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90208
	addi	$r2, $r0, 1
	j	cont.90207
bnei.90208:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90210
	addi	$r2, $r0, 0
	j	cont.90209
bnei.90210:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90212
	addi	$r2, $r0, 1
	j	cont.90211
bnei.90212:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90214
	addi	$r2, $r0, 0
	j	cont.90213
bnei.90214:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90216
	addi	$r2, $r0, 1
	j	cont.90215
bnei.90216:
	lw	$r2, -12($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90218
	addi	$r2, $r0, 0
	j	cont.90217
bnei.90218:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90220
	addi	$r2, $r0, 1
	j	cont.90219
bnei.90220:
	lw	$r2, -12($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90222
	addi	$r2, $r0, 0
	j	cont.90221
bnei.90222:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90224
	addi	$r2, $r0, 1
	j	cont.90223
bnei.90224:
	lw	$r2, -12($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90226
	addi	$r2, $r0, 0
	j	cont.90225
bnei.90226:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90228
	addi	$r2, $r0, 1
	j	cont.90227
bnei.90228:
	lw	$r2, -12($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90230
	addi	$r2, $r0, 0
	j	cont.90229
bnei.90230:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90232
	addi	$r2, $r0, 1
	j	cont.90231
bnei.90232:
	addi	$r2, $r0, 8
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.90231:
cont.90229:
cont.90227:
cont.90225:
cont.90223:
cont.90221:
cont.90219:
cont.90217:
cont.90215:
cont.90213:
cont.90211:
cont.90209:
cont.90207:
cont.90205:
	bnei	$r2, 1, bnei.90234
	addi	$r2, $r0, 1
	j	cont.90233
bnei.90234:
	addi	$r2, $r0, 0
cont.90233:
cont.90203:
cont.90201:
cont.90159:
	bnei	$r2, 1, bnei.90236
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90238
	addi	$r2, $r0, 0
	j	cont.90237
bnei.90238:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90240
	addi	$r2, $r0, 1
	j	cont.90239
bnei.90240:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90242
	addi	$r2, $r0, 0
	j	cont.90241
bnei.90242:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90244
	addi	$r2, $r0, 1
	j	cont.90243
bnei.90244:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90246
	addi	$r2, $r0, 0
	j	cont.90245
bnei.90246:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90248
	addi	$r2, $r0, 1
	j	cont.90247
bnei.90248:
	lw	$r2, -12($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90250
	addi	$r2, $r0, 0
	j	cont.90249
bnei.90250:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90252
	addi	$r2, $r0, 1
	j	cont.90251
bnei.90252:
	lw	$r2, -12($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90254
	addi	$r2, $r0, 0
	j	cont.90253
bnei.90254:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90256
	addi	$r2, $r0, 1
	j	cont.90255
bnei.90256:
	lw	$r2, -12($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90258
	addi	$r2, $r0, 0
	j	cont.90257
bnei.90258:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90260
	addi	$r2, $r0, 1
	j	cont.90259
bnei.90260:
	lw	$r2, -12($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90262
	addi	$r2, $r0, 0
	j	cont.90261
bnei.90262:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90264
	addi	$r2, $r0, 1
	j	cont.90263
bnei.90264:
	addi	$r2, $r0, 8
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.90263:
cont.90261:
cont.90259:
cont.90257:
cont.90255:
cont.90253:
cont.90251:
cont.90249:
cont.90247:
cont.90245:
cont.90243:
cont.90241:
cont.90239:
cont.90237:
	bnei	$r2, 1, bnei.90266
	addi	$r2, $r0, 1
	jr	$r31
bnei.90266:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90268
	addi	$r2, $r0, 0
	jr	$r31
bnei.90268:
	addi	$r6, $r0, 99
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	bne	$r5, $r6, bne.90270
	addi	$r2, $r0, 1
	j	cont.90269
bne.90270:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 588($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	sll	$r5, $r5, 2
	lw	$r5, 800($r5)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.90272
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 4($r7)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90274
	addi	$r7, $r0, 0
	j	cont.90273
bclf.90274:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90276
	addi	$r7, $r0, 0
	j	cont.90275
bclf.90276:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90278
	addi	$r7, $r0, 0
	j	cont.90277
bclf.90278:
	addi	$r7, $r0, 1
cont.90277:
cont.90275:
cont.90273:
	bnei	$r7, 1, bnei.90280
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90271     ! elimjump
bnei.90280:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 0($r7)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90282
	addi	$r7, $r0, 0
	j	cont.90281
bclf.90282:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90284
	addi	$r7, $r0, 0
	j	cont.90283
bclf.90284:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90286
	addi	$r7, $r0, 0
	j	cont.90285
bclf.90286:
	addi	$r7, $r0, 1
cont.90285:
cont.90283:
cont.90281:
	bnei	$r7, 1, bnei.90288
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90271     ! elimjump
bnei.90288:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r7, 16($r6)
	lwcl	$f3, 0($r7)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90290
	addi	$r5, $r0, 0
	j	cont.90289
bclf.90290:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90292
	addi	$r5, $r0, 0
	j	cont.90291
bclf.90292:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90294
	addi	$r5, $r0, 0
	j	cont.90293
bclf.90294:
	addi	$r5, $r0, 1
cont.90293:
cont.90291:
cont.90289:
	bnei	$r5, 1, bnei.90296
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.90271     ! elimjump
bnei.90296:
	addi	$r5, $r0, 0
cont.90295:
cont.90287:
cont.90279:
	j	cont.90271
bnei.90272:
	bnei	$r7, 2, bnei.90298
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90300
	addi	$r5, $r0, 0
	j	cont.90297     ! elimjump
bclf.90300:
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90299:
	j	cont.90297
bnei.90298:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90302
	addi	$r5, $r0, 0
	j	cont.90301
bclf.90302:
	lwcl	$f4, 4($r5)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r5)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90304
	fmove	$f0, $f5
	j	cont.90303
bnei.90304:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90303:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90306
	sub.s	$f0, $f0, $f31
	j	cont.90305
bnei.90306:
cont.90305:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90308
	addi	$r5, $r0, 0
	j	cont.90307
bclf.90308:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90310
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.90309
bnei.90310:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.90309:
	addi	$r5, $r0, 1
cont.90307:
cont.90301:
cont.90297:
cont.90271:
	bnei	$r5, 0, bnei.90312
	addi	$r2, $r0, 0
	j	cont.90311
bnei.90312:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90314
	addi	$r2, $r0, 0
	j	cont.90313
bclf.90314:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90316
	addi	$r2, $r0, 0
	j	cont.90315
bnei.90316:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90318
	addi	$r2, $r0, 1
	j	cont.90317
bnei.90318:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90320
	addi	$r2, $r0, 0
	j	cont.90319
bnei.90320:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90322
	addi	$r2, $r0, 1
	j	cont.90321
bnei.90322:
	lw	$r2, -20($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90324
	addi	$r2, $r0, 0
	j	cont.90323
bnei.90324:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90326
	addi	$r2, $r0, 1
	j	cont.90325
bnei.90326:
	lw	$r2, -20($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90328
	addi	$r2, $r0, 0
	j	cont.90327
bnei.90328:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90330
	addi	$r2, $r0, 1
	j	cont.90329
bnei.90330:
	lw	$r2, -20($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90332
	addi	$r2, $r0, 0
	j	cont.90331
bnei.90332:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90334
	addi	$r2, $r0, 1
	j	cont.90333
bnei.90334:
	lw	$r2, -20($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90336
	addi	$r2, $r0, 0
	j	cont.90335
bnei.90336:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90338
	addi	$r2, $r0, 1
	j	cont.90337
bnei.90338:
	addi	$r2, $r0, 7
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.90337:
cont.90335:
cont.90333:
cont.90331:
cont.90329:
cont.90327:
cont.90325:
cont.90323:
cont.90321:
cont.90319:
cont.90317:
cont.90315:
	bnei	$r2, 1, bnei.90340
	addi	$r2, $r0, 1
	j	cont.90339
bnei.90340:
	addi	$r2, $r0, 0
cont.90339:
cont.90313:
cont.90311:
cont.90269:
	bnei	$r2, 1, bnei.90342
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90344
	addi	$r2, $r0, 0
	j	cont.90343
bnei.90344:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90346
	addi	$r2, $r0, 1
	j	cont.90345
bnei.90346:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90348
	addi	$r2, $r0, 0
	j	cont.90347
bnei.90348:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90350
	addi	$r2, $r0, 1
	j	cont.90349
bnei.90350:
	lw	$r2, -20($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90352
	addi	$r2, $r0, 0
	j	cont.90351
bnei.90352:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90354
	addi	$r2, $r0, 1
	j	cont.90353
bnei.90354:
	lw	$r2, -20($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90356
	addi	$r2, $r0, 0
	j	cont.90355
bnei.90356:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90358
	addi	$r2, $r0, 1
	j	cont.90357
bnei.90358:
	lw	$r2, -20($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90360
	addi	$r2, $r0, 0
	j	cont.90359
bnei.90360:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90362
	addi	$r2, $r0, 1
	j	cont.90361
bnei.90362:
	lw	$r2, -20($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90364
	addi	$r2, $r0, 0
	j	cont.90363
bnei.90364:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90366
	addi	$r2, $r0, 1
	j	cont.90365
bnei.90366:
	addi	$r2, $r0, 7
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.90365:
cont.90363:
cont.90361:
cont.90359:
cont.90357:
cont.90355:
cont.90353:
cont.90351:
cont.90349:
cont.90347:
cont.90345:
cont.90343:
	bnei	$r2, 1, bnei.90368
	addi	$r2, $r0, 1
	jr	$r31
bnei.90368:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90342:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90236:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90370
	addi	$r2, $r0, 0
	jr	$r31
bnei.90370:
	addi	$r6, $r0, 99
	sw	$r2, -24($r29)
	sw	$r3, -28($r29)
	bne	$r5, $r6, bne.90372
	addi	$r2, $r0, 1
	j	cont.90371
bne.90372:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 588($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	sll	$r5, $r5, 2
	lw	$r5, 800($r5)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.90374
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 4($r7)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90376
	addi	$r7, $r0, 0
	j	cont.90375
bclf.90376:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90378
	addi	$r7, $r0, 0
	j	cont.90377
bclf.90378:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90380
	addi	$r7, $r0, 0
	j	cont.90379
bclf.90380:
	addi	$r7, $r0, 1
cont.90379:
cont.90377:
cont.90375:
	bnei	$r7, 1, bnei.90382
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90373     ! elimjump
bnei.90382:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 0($r7)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90384
	addi	$r7, $r0, 0
	j	cont.90383
bclf.90384:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90386
	addi	$r7, $r0, 0
	j	cont.90385
bclf.90386:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90388
	addi	$r7, $r0, 0
	j	cont.90387
bclf.90388:
	addi	$r7, $r0, 1
cont.90387:
cont.90385:
cont.90383:
	bnei	$r7, 1, bnei.90390
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90373     ! elimjump
bnei.90390:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r7, 16($r6)
	lwcl	$f3, 0($r7)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90392
	addi	$r5, $r0, 0
	j	cont.90391
bclf.90392:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90394
	addi	$r5, $r0, 0
	j	cont.90393
bclf.90394:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90396
	addi	$r5, $r0, 0
	j	cont.90395
bclf.90396:
	addi	$r5, $r0, 1
cont.90395:
cont.90393:
cont.90391:
	bnei	$r5, 1, bnei.90398
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.90373     ! elimjump
bnei.90398:
	addi	$r5, $r0, 0
cont.90397:
cont.90389:
cont.90381:
	j	cont.90373
bnei.90374:
	bnei	$r7, 2, bnei.90400
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90402
	addi	$r5, $r0, 0
	j	cont.90399     ! elimjump
bclf.90402:
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90401:
	j	cont.90399
bnei.90400:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90404
	addi	$r5, $r0, 0
	j	cont.90403
bclf.90404:
	lwcl	$f4, 4($r5)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r5)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90406
	fmove	$f0, $f5
	j	cont.90405
bnei.90406:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90405:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90408
	sub.s	$f0, $f0, $f31
	j	cont.90407
bnei.90408:
cont.90407:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90410
	addi	$r5, $r0, 0
	j	cont.90409
bclf.90410:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90412
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.90411
bnei.90412:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.90411:
	addi	$r5, $r0, 1
cont.90409:
cont.90403:
cont.90399:
cont.90373:
	bnei	$r5, 0, bnei.90414
	addi	$r2, $r0, 0
	j	cont.90413
bnei.90414:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90416
	addi	$r2, $r0, 0
	j	cont.90415
bclf.90416:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90418
	addi	$r2, $r0, 0
	j	cont.90417
bnei.90418:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90420
	addi	$r2, $r0, 1
	j	cont.90419
bnei.90420:
	lw	$r2, -28($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90422
	addi	$r2, $r0, 0
	j	cont.90421
bnei.90422:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90424
	addi	$r2, $r0, 1
	j	cont.90423
bnei.90424:
	lw	$r2, -28($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90426
	addi	$r2, $r0, 0
	j	cont.90425
bnei.90426:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90428
	addi	$r2, $r0, 1
	j	cont.90427
bnei.90428:
	lw	$r2, -28($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90430
	addi	$r2, $r0, 0
	j	cont.90429
bnei.90430:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90432
	addi	$r2, $r0, 1
	j	cont.90431
bnei.90432:
	lw	$r2, -28($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90434
	addi	$r2, $r0, 0
	j	cont.90433
bnei.90434:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90436
	addi	$r2, $r0, 1
	j	cont.90435
bnei.90436:
	lw	$r2, -28($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90438
	addi	$r2, $r0, 0
	j	cont.90437
bnei.90438:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90440
	addi	$r2, $r0, 1
	j	cont.90439
bnei.90440:
	addi	$r2, $r0, 7
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.90439:
cont.90437:
cont.90435:
cont.90433:
cont.90431:
cont.90429:
cont.90427:
cont.90425:
cont.90423:
cont.90421:
cont.90419:
cont.90417:
	bnei	$r2, 1, bnei.90442
	addi	$r2, $r0, 1
	j	cont.90441
bnei.90442:
	addi	$r2, $r0, 0
cont.90441:
cont.90415:
cont.90413:
cont.90371:
	bnei	$r2, 1, bnei.90444
	lw	$r2, -28($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90446
	addi	$r2, $r0, 0
	j	cont.90445
bnei.90446:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90448
	addi	$r2, $r0, 1
	j	cont.90447
bnei.90448:
	lw	$r2, -28($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90450
	addi	$r2, $r0, 0
	j	cont.90449
bnei.90450:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90452
	addi	$r2, $r0, 1
	j	cont.90451
bnei.90452:
	lw	$r2, -28($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90454
	addi	$r2, $r0, 0
	j	cont.90453
bnei.90454:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90456
	addi	$r2, $r0, 1
	j	cont.90455
bnei.90456:
	lw	$r2, -28($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90458
	addi	$r2, $r0, 0
	j	cont.90457
bnei.90458:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90460
	addi	$r2, $r0, 1
	j	cont.90459
bnei.90460:
	lw	$r2, -28($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90462
	addi	$r2, $r0, 0
	j	cont.90461
bnei.90462:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90464
	addi	$r2, $r0, 1
	j	cont.90463
bnei.90464:
	lw	$r2, -28($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90466
	addi	$r2, $r0, 0
	j	cont.90465
bnei.90466:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90468
	addi	$r2, $r0, 1
	j	cont.90467
bnei.90468:
	addi	$r2, $r0, 7
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.90467:
cont.90465:
cont.90463:
cont.90461:
cont.90459:
cont.90457:
cont.90455:
cont.90453:
cont.90451:
cont.90449:
cont.90447:
cont.90445:
	bnei	$r2, 1, bnei.90470
	addi	$r2, $r0, 1
	jr	$r31
bnei.90470:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90444:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
solve_each_element.4936:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90472
	jr	$r31
bnei.90472:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 672($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 676($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 680($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.90474
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90476
	addi	$r7, $r0, 0
	j	cont.90475
bclf.90476:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90478
	addi	$r9, $r0, 0
	j	cont.90477
bclf.90478:
	addi	$r9, $r0, 1
cont.90477:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90480
	fneg	$f3, $f3
	j	cont.90479
bne.90480:
cont.90479:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90482
	addi	$r7, $r0, 0
	j	cont.90481
bclf.90482:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90484
	addi	$r7, $r0, 0
	j	cont.90483
bclf.90484:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90483:
cont.90481:
cont.90475:
	bnei	$r7, 1, bnei.90486
	addi	$r6, $r0, 1
	j	cont.90473     ! elimjump
bnei.90486:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90488
	addi	$r7, $r0, 0
	j	cont.90487
bclf.90488:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90490
	addi	$r9, $r0, 0
	j	cont.90489
bclf.90490:
	addi	$r9, $r0, 1
cont.90489:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90492
	fneg	$f3, $f3
	j	cont.90491
bne.90492:
cont.90491:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90494
	addi	$r7, $r0, 0
	j	cont.90493
bclf.90494:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90496
	addi	$r7, $r0, 0
	j	cont.90495
bclf.90496:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90495:
cont.90493:
cont.90487:
	bnei	$r7, 1, bnei.90498
	addi	$r6, $r0, 2
	j	cont.90473     ! elimjump
bnei.90498:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90500
	addi	$r6, $r0, 0
	j	cont.90499
bclf.90500:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90502
	addi	$r8, $r0, 0
	j	cont.90501
bclf.90502:
	addi	$r8, $r0, 1
cont.90501:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.90504
	fneg	$f3, $f3
	j	cont.90503
bne.90504:
cont.90503:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90506
	addi	$r6, $r0, 0
	j	cont.90505
bclf.90506:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90508
	addi	$r6, $r0, 0
	j	cont.90507
bclf.90508:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 1
cont.90507:
cont.90505:
cont.90499:
	bnei	$r6, 1, bnei.90510
	addi	$r6, $r0, 3
	j	cont.90473     ! elimjump
bnei.90510:
	addi	$r6, $r0, 0
cont.90509:
cont.90497:
cont.90485:
	j	cont.90473
bnei.90474:
	bnei	$r7, 2, bnei.90512
	lw	$r6, 16($r6)
	lwcl	$f3, 0($r4)
	lwcl	$f4, 0($r6)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f5, 4($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.le.s	$f3, $f30
	bclf	bclf.90514
	addi	$r6, $r0, 0
	j	cont.90511     ! elimjump
bclf.90514:
	lwcl	$f4, 0($r6)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 4($r6)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90513:
	j	cont.90511
bnei.90512:
	lwcl	$f3, 0($r4)
	lwcl	$f4, 4($r4)
	lwcl	$f5, 8($r4)
	mul.s	$f6, $f3, $f3
	lw	$r7, 16($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r7, 16($r6)
	lwcl	$f8, 4($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r7, 16($r6)
	lwcl	$f8, 8($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90516
	fmove	$f3, $f6
	j	cont.90515
bnei.90516:
	mul.s	$f7, $f4, $f5
	lw	$r7, 36($r6)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r7, 36($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r7, 36($r6)
	lwcl	$f4, 8($r7)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90515:
	c.eq.s	$f3, $f30
	bclf	bclf.90518
	addi	$r6, $r0, 0
	j	cont.90517
bclf.90518:
	lwcl	$f4, 0($r4)
	lwcl	$f5, 4($r4)
	lwcl	$f6, 8($r4)
	mul.s	$f7, $f4, $f0
	lw	$r7, 16($r6)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$r7, 16($r6)
	lwcl	$f9, 4($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$r7, 16($r6)
	lwcl	$f9, 8($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90520
	fmove	$f4, $f7
	j	cont.90519
bnei.90520:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$r7, 36($r6)
	lwcl	$f9, 0($r7)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$r7, 36($r6)
	lwcl	$f9, 4($r7)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$r7, 36($r6)
	lwcl	$f5, 8($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
cont.90519:
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90522
	fmove	$f0, $f5
	j	cont.90521
bnei.90522:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90521:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90524
	sub.s	$f0, $f0, $f31
	j	cont.90523
bnei.90524:
cont.90523:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90526
	addi	$r6, $r0, 0
	j	cont.90525
bclf.90526:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90528
	j	cont.90527
bnei.90528:
	fneg	$f0, $f0
cont.90527:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90525:
cont.90517:
cont.90511:
cont.90473:
	bnei	$r6, 0, bnei.90530
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90532
	addi	$r2, $r2, 1
	j	solve_each_element.4936
bnei.90532:
	jr	$r31
bnei.90530:
	lwcl	$f0, 576($r0)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	c.le.s	$f0, $f30
	bclf	bclf.90534
	j	cont.90533
bclf.90534:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90536
	j	cont.90535
bclf.90536:
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 672($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 676($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 680($r0)
	add.s	$f3, $f3, $f4
	lw	$r7, 0($r3)
	sw	$r6, -16($r29)
	sw	$r5, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	swcl	$f0, -36($r29)
	bnei	$r7, -1, bnei.90538
	addi	$r2, $r0, 1
	j	cont.90537
bnei.90538:
	sll	$r7, $r7, 2
	lw	$r7, 80($r7)
	lw	$r8, 20($r7)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r7)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r7)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r7)
	bnei	$r8, 1, bnei.90540
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90542
	addi	$r8, $r0, 0
	j	cont.90541
bclf.90542:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90544
	addi	$r8, $r0, 0
	j	cont.90543
bclf.90544:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90546
	addi	$r8, $r0, 0
	j	cont.90545
bclf.90546:
	addi	$r8, $r0, 1
cont.90545:
cont.90543:
cont.90541:
	bnei	$r8, 1, bnei.90548
	lw	$r7, 24($r7)
	j	cont.90539     ! elimjump
bnei.90548:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90550
	addi	$r7, $r0, 0
	j	cont.90539     ! elimjump
bnei.90550:
	addi	$r7, $r0, 1
cont.90549:
cont.90547:
	j	cont.90539
bnei.90540:
	bnei	$r8, 2, bnei.90552
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90554
	addi	$r8, $r0, 0
	j	cont.90553
bclf.90554:
	addi	$r8, $r0, 1
cont.90553:
	bne	$r7, $r8, bne.90556
	addi	$r7, $r0, 1
	j	cont.90551     ! elimjump
bne.90556:
	addi	$r7, $r0, 0
cont.90555:
	j	cont.90551
bnei.90552:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r7)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r7)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r7)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r7)
	bnei	$r8, 0, bnei.90558
	fmove	$f4, $f7
	j	cont.90557
bnei.90558:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r7)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r7)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r7)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90557:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90560
	sub.s	$f4, $f4, $f31
	j	cont.90559
bnei.90560:
cont.90559:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90562
	addi	$r8, $r0, 0
	j	cont.90561
bclf.90562:
	addi	$r8, $r0, 1
cont.90561:
	bne	$r7, $r8, bne.90564
	addi	$r7, $r0, 1
	j	cont.90563
bne.90564:
	addi	$r7, $r0, 0
cont.90563:
cont.90551:
cont.90539:
	bnei	$r7, 1, bnei.90566
	addi	$r2, $r0, 0
	j	cont.90565
bnei.90566:
	lw	$r7, 4($r3)
	bnei	$r7, -1, bnei.90568
	addi	$r2, $r0, 1
	j	cont.90567
bnei.90568:
	sll	$r7, $r7, 2
	lw	$r7, 80($r7)
	lw	$r8, 20($r7)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r7)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r7)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r7)
	bnei	$r8, 1, bnei.90570
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90572
	addi	$r8, $r0, 0
	j	cont.90571
bclf.90572:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90574
	addi	$r8, $r0, 0
	j	cont.90573
bclf.90574:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90576
	addi	$r8, $r0, 0
	j	cont.90575
bclf.90576:
	addi	$r8, $r0, 1
cont.90575:
cont.90573:
cont.90571:
	bnei	$r8, 1, bnei.90578
	lw	$r7, 24($r7)
	j	cont.90569     ! elimjump
bnei.90578:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90580
	addi	$r7, $r0, 0
	j	cont.90569     ! elimjump
bnei.90580:
	addi	$r7, $r0, 1
cont.90579:
cont.90577:
	j	cont.90569
bnei.90570:
	bnei	$r8, 2, bnei.90582
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90584
	addi	$r8, $r0, 0
	j	cont.90583
bclf.90584:
	addi	$r8, $r0, 1
cont.90583:
	bne	$r7, $r8, bne.90586
	addi	$r7, $r0, 1
	j	cont.90581     ! elimjump
bne.90586:
	addi	$r7, $r0, 0
cont.90585:
	j	cont.90581
bnei.90582:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r7)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r7)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r7)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r7)
	bnei	$r8, 0, bnei.90588
	fmove	$f4, $f7
	j	cont.90587
bnei.90588:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r7)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r7)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r7)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90587:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90590
	sub.s	$f4, $f4, $f31
	j	cont.90589
bnei.90590:
cont.90589:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90592
	addi	$r8, $r0, 0
	j	cont.90591
bclf.90592:
	addi	$r8, $r0, 1
cont.90591:
	bne	$r7, $r8, bne.90594
	addi	$r7, $r0, 1
	j	cont.90593
bne.90594:
	addi	$r7, $r0, 0
cont.90593:
cont.90581:
cont.90569:
	bnei	$r7, 1, bnei.90596
	addi	$r2, $r0, 0
	j	cont.90595
bnei.90596:
	lw	$r7, 8($r3)
	bnei	$r7, -1, bnei.90598
	addi	$r2, $r0, 1
	j	cont.90597
bnei.90598:
	sll	$r7, $r7, 2
	lw	$r7, 80($r7)
	lw	$r8, 20($r7)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r7)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r7)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r7)
	bnei	$r8, 1, bnei.90600
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90602
	addi	$r8, $r0, 0
	j	cont.90601
bclf.90602:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90604
	addi	$r8, $r0, 0
	j	cont.90603
bclf.90604:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90606
	addi	$r8, $r0, 0
	j	cont.90605
bclf.90606:
	addi	$r8, $r0, 1
cont.90605:
cont.90603:
cont.90601:
	bnei	$r8, 1, bnei.90608
	lw	$r7, 24($r7)
	j	cont.90599     ! elimjump
bnei.90608:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90610
	addi	$r7, $r0, 0
	j	cont.90599     ! elimjump
bnei.90610:
	addi	$r7, $r0, 1
cont.90609:
cont.90607:
	j	cont.90599
bnei.90600:
	bnei	$r8, 2, bnei.90612
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90614
	addi	$r8, $r0, 0
	j	cont.90613
bclf.90614:
	addi	$r8, $r0, 1
cont.90613:
	bne	$r7, $r8, bne.90616
	addi	$r7, $r0, 1
	j	cont.90611     ! elimjump
bne.90616:
	addi	$r7, $r0, 0
cont.90615:
	j	cont.90611
bnei.90612:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r7)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r7)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r7)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r7)
	bnei	$r8, 0, bnei.90618
	fmove	$f4, $f7
	j	cont.90617
bnei.90618:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r7)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r7)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r7)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90617:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90620
	sub.s	$f4, $f4, $f31
	j	cont.90619
bnei.90620:
cont.90619:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90622
	addi	$r8, $r0, 0
	j	cont.90621
bclf.90622:
	addi	$r8, $r0, 1
cont.90621:
	bne	$r7, $r8, bne.90624
	addi	$r7, $r0, 1
	j	cont.90623
bne.90624:
	addi	$r7, $r0, 0
cont.90623:
cont.90611:
cont.90599:
	bnei	$r7, 1, bnei.90626
	addi	$r2, $r0, 0
	j	cont.90625
bnei.90626:
	addi	$r7, $r0, 3
	addi	$r2, $r7, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.90625:
cont.90597:
cont.90595:
cont.90567:
cont.90565:
cont.90537:
	bnei	$r2, 1, bnei.90628
	lwcl	$f0, -36($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -28($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -24($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -20($r29)
	sw	$r2, 600($r0)
	lw	$r2, -16($r29)
	sw	$r2, 580($r0)
	j	cont.90627
bnei.90628:
cont.90627:
cont.90535:
cont.90533:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
solve_one_or_network.4987:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90630
	jr	$r31
bnei.90630:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90632
	jr	$r31
bnei.90632:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90634
	jr	$r31
bnei.90634:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90636
	jr	$r31
bnei.90636:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90638
	jr	$r31
bnei.90638:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90640
	jr	$r31
bnei.90640:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90642
	jr	$r31
bnei.90642:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90644
	jr	$r31
bnei.90644:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network.4987
trace_or_matrix.4999:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.90646
	jr	$r31
bnei.90646:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.90648
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90650
	j	cont.90647     ! elimjump
bnei.90650:
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90652
	j	cont.90647     ! elimjump
bnei.90652:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90654
	j	cont.90647     ! elimjump
bnei.90654:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90656
	j	cont.90647     ! elimjump
bnei.90656:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90658
	j	cont.90647     ! elimjump
bnei.90658:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90660
	j	cont.90647     ! elimjump
bnei.90660:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90662
	j	cont.90647     ! elimjump
bnei.90662:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 8
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.90661:
cont.90659:
cont.90657:
cont.90655:
cont.90653:
cont.90651:
cont.90649:
	j	cont.90647
bne.90648:
	sll	$r6, $r6, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 672($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 676($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 680($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.90664
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90666
	addi	$r7, $r0, 0
	j	cont.90665
bclf.90666:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90668
	addi	$r9, $r0, 0
	j	cont.90667
bclf.90668:
	addi	$r9, $r0, 1
cont.90667:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90670
	fneg	$f3, $f3
	j	cont.90669
bne.90670:
cont.90669:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90672
	addi	$r7, $r0, 0
	j	cont.90671
bclf.90672:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90674
	addi	$r7, $r0, 0
	j	cont.90673
bclf.90674:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90673:
cont.90671:
cont.90665:
	bnei	$r7, 1, bnei.90676
	addi	$r6, $r0, 1
	j	cont.90663     ! elimjump
bnei.90676:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90678
	addi	$r7, $r0, 0
	j	cont.90677
bclf.90678:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90680
	addi	$r9, $r0, 0
	j	cont.90679
bclf.90680:
	addi	$r9, $r0, 1
cont.90679:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90682
	fneg	$f3, $f3
	j	cont.90681
bne.90682:
cont.90681:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90684
	addi	$r7, $r0, 0
	j	cont.90683
bclf.90684:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90686
	addi	$r7, $r0, 0
	j	cont.90685
bclf.90686:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90685:
cont.90683:
cont.90677:
	bnei	$r7, 1, bnei.90688
	addi	$r6, $r0, 2
	j	cont.90663     ! elimjump
bnei.90688:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90690
	addi	$r6, $r0, 0
	j	cont.90689
bclf.90690:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90692
	addi	$r8, $r0, 0
	j	cont.90691
bclf.90692:
	addi	$r8, $r0, 1
cont.90691:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.90694
	fneg	$f3, $f3
	j	cont.90693
bne.90694:
cont.90693:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90696
	addi	$r6, $r0, 0
	j	cont.90695
bclf.90696:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90698
	addi	$r6, $r0, 0
	j	cont.90697
bclf.90698:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 1
cont.90697:
cont.90695:
cont.90689:
	bnei	$r6, 1, bnei.90700
	addi	$r6, $r0, 3
	j	cont.90663     ! elimjump
bnei.90700:
	addi	$r6, $r0, 0
cont.90699:
cont.90687:
cont.90675:
	j	cont.90663
bnei.90664:
	bnei	$r7, 2, bnei.90702
	lw	$r6, 16($r6)
	lwcl	$f3, 0($r4)
	lwcl	$f4, 0($r6)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f5, 4($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.le.s	$f3, $f30
	bclf	bclf.90704
	addi	$r6, $r0, 0
	j	cont.90701     ! elimjump
bclf.90704:
	lwcl	$f4, 0($r6)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 4($r6)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90703:
	j	cont.90701
bnei.90702:
	lwcl	$f3, 0($r4)
	lwcl	$f4, 4($r4)
	lwcl	$f5, 8($r4)
	mul.s	$f6, $f3, $f3
	lw	$r7, 16($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r7, 16($r6)
	lwcl	$f8, 4($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r7, 16($r6)
	lwcl	$f8, 8($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90706
	fmove	$f3, $f6
	j	cont.90705
bnei.90706:
	mul.s	$f7, $f4, $f5
	lw	$r7, 36($r6)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r7, 36($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r7, 36($r6)
	lwcl	$f4, 8($r7)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90705:
	c.eq.s	$f3, $f30
	bclf	bclf.90708
	addi	$r6, $r0, 0
	j	cont.90707
bclf.90708:
	lwcl	$f4, 0($r4)
	lwcl	$f5, 4($r4)
	lwcl	$f6, 8($r4)
	mul.s	$f7, $f4, $f0
	lw	$r7, 16($r6)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$r7, 16($r6)
	lwcl	$f9, 4($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$r7, 16($r6)
	lwcl	$f9, 8($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90710
	fmove	$f4, $f7
	j	cont.90709
bnei.90710:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$r7, 36($r6)
	lwcl	$f9, 0($r7)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$r7, 36($r6)
	lwcl	$f9, 4($r7)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$r7, 36($r6)
	lwcl	$f5, 8($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
cont.90709:
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.90712
	fmove	$f0, $f5
	j	cont.90711
bnei.90712:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90711:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90714
	sub.s	$f0, $f0, $f31
	j	cont.90713
bnei.90714:
cont.90713:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90716
	addi	$r6, $r0, 0
	j	cont.90715
bclf.90716:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90718
	j	cont.90717
bnei.90718:
	fneg	$f0, $f0
cont.90717:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90715:
cont.90707:
cont.90701:
cont.90663:
	bnei	$r6, 0, bnei.90720
	j	cont.90719
bnei.90720:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90722
	j	cont.90721
bclf.90722:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90724
	j	cont.90723
bnei.90724:
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90726
	j	cont.90725
bnei.90726:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90728
	j	cont.90727
bnei.90728:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90730
	j	cont.90729
bnei.90730:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90732
	j	cont.90731
bnei.90732:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90734
	j	cont.90733
bnei.90734:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90736
	j	cont.90735
bnei.90736:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 8
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.90735:
cont.90733:
cont.90731:
cont.90729:
cont.90727:
cont.90725:
cont.90723:
cont.90721:
cont.90719:
cont.90647:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90738
	jr	$r31
bnei.90738:
	addi	$r6, $r0, 99
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.90740
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90742
	j	cont.90739     ! elimjump
bnei.90742:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90744
	j	cont.90739     ! elimjump
bnei.90744:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90746
	j	cont.90739     ! elimjump
bnei.90746:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90748
	j	cont.90739     ! elimjump
bnei.90748:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90750
	j	cont.90739     ! elimjump
bnei.90750:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90752
	j	cont.90739     ! elimjump
bnei.90752:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 7
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.90751:
cont.90749:
cont.90747:
cont.90745:
cont.90743:
cont.90741:
	j	cont.90739
bne.90740:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lwcl	$f0, 672($r0)
	lw	$r6, 20($r5)
	lwcl	$f1, 0($r6)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 676($r0)
	lw	$r6, 20($r5)
	lwcl	$f2, 4($r6)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 680($r0)
	lw	$r6, 20($r5)
	lwcl	$f3, 8($r6)
	sub.s	$f2, $f2, $f3
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.90754
	lw	$r6, -4($r29)
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90756
	addi	$r7, $r0, 0
	j	cont.90755
bclf.90756:
	lw	$r7, 16($r5)
	lw	$r8, 24($r5)
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90758
	addi	$r9, $r0, 0
	j	cont.90757
bclf.90758:
	addi	$r9, $r0, 1
cont.90757:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90760
	fneg	$f3, $f3
	j	cont.90759
bne.90760:
cont.90759:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r6)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90762
	addi	$r7, $r0, 0
	j	cont.90761
bclf.90762:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90764
	addi	$r7, $r0, 0
	j	cont.90763
bclf.90764:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90763:
cont.90761:
cont.90755:
	bnei	$r7, 1, bnei.90766
	addi	$r5, $r0, 1
	j	cont.90753     ! elimjump
bnei.90766:
	lwcl	$f3, 4($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90768
	addi	$r7, $r0, 0
	j	cont.90767
bclf.90768:
	lw	$r7, 16($r5)
	lw	$r8, 24($r5)
	lwcl	$f3, 4($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90770
	addi	$r9, $r0, 0
	j	cont.90769
bclf.90770:
	addi	$r9, $r0, 1
cont.90769:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90772
	fneg	$f3, $f3
	j	cont.90771
bne.90772:
cont.90771:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r6)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90774
	addi	$r7, $r0, 0
	j	cont.90773
bclf.90774:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90776
	addi	$r7, $r0, 0
	j	cont.90775
bclf.90776:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90775:
cont.90773:
cont.90767:
	bnei	$r7, 1, bnei.90778
	addi	$r5, $r0, 2
	j	cont.90753     ! elimjump
bnei.90778:
	lwcl	$f3, 8($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90780
	addi	$r5, $r0, 0
	j	cont.90779
bclf.90780:
	lw	$r7, 16($r5)
	lw	$r5, 24($r5)
	lwcl	$f3, 8($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90782
	addi	$r8, $r0, 0
	j	cont.90781
bclf.90782:
	addi	$r8, $r0, 1
cont.90781:
	lwcl	$f3, 8($r7)
	bne	$r5, $r8, bne.90784
	fneg	$f3, $f3
	j	cont.90783
bne.90784:
cont.90783:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r6)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r6)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90786
	addi	$r5, $r0, 0
	j	cont.90785
bclf.90786:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r6)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90788
	addi	$r5, $r0, 0
	j	cont.90787
bclf.90788:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 1
cont.90787:
cont.90785:
cont.90779:
	bnei	$r5, 1, bnei.90790
	addi	$r5, $r0, 3
	j	cont.90753     ! elimjump
bnei.90790:
	addi	$r5, $r0, 0
cont.90789:
cont.90777:
cont.90765:
	j	cont.90753
bnei.90754:
	bnei	$r6, 2, bnei.90792
	lw	$r5, 16($r5)
	lw	$r6, -4($r29)
	lwcl	$f3, 0($r6)
	lwcl	$f4, 0($r5)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r6)
	lwcl	$f5, 4($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r6)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	c.le.s	$f3, $f30
	bclf	bclf.90794
	addi	$r5, $r0, 0
	j	cont.90791     ! elimjump
bclf.90794:
	lwcl	$f4, 0($r5)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90793:
	j	cont.90791
bnei.90792:
	lw	$r6, -4($r29)
	lwcl	$f3, 0($r6)
	lwcl	$f4, 4($r6)
	lwcl	$f5, 8($r6)
	mul.s	$f6, $f3, $f3
	lw	$r7, 16($r5)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r7, 16($r5)
	lwcl	$f8, 4($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r7, 16($r5)
	lwcl	$f8, 8($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r7, 12($r5)
	bnei	$r7, 0, bnei.90796
	fmove	$f3, $f6
	j	cont.90795
bnei.90796:
	mul.s	$f7, $f4, $f5
	lw	$r7, 36($r5)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r7, 36($r5)
	lwcl	$f7, 4($r7)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r7, 36($r5)
	lwcl	$f4, 8($r7)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.90795:
	c.eq.s	$f3, $f30
	bclf	bclf.90798
	addi	$r5, $r0, 0
	j	cont.90797
bclf.90798:
	lwcl	$f4, 0($r6)
	lwcl	$f5, 4($r6)
	lwcl	$f6, 8($r6)
	mul.s	$f7, $f4, $f0
	lw	$r7, 16($r5)
	lwcl	$f8, 0($r7)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f1
	lw	$r7, 16($r5)
	lwcl	$f9, 4($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f2
	lw	$r7, 16($r5)
	lwcl	$f9, 8($r7)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r7, 12($r5)
	bnei	$r7, 0, bnei.90800
	fmove	$f4, $f7
	j	cont.90799
bnei.90800:
	mul.s	$f8, $f6, $f1
	mul.s	$f9, $f5, $f2
	add.s	$f8, $f8, $f9
	lw	$r7, 36($r5)
	lwcl	$f9, 0($r7)
	mul.s	$f8, $f8, $f9
	mul.s	$f9, $f4, $f2
	mul.s	$f6, $f6, $f0
	add.s	$f6, $f9, $f6
	lw	$r7, 36($r5)
	lwcl	$f9, 4($r7)
	mul.s	$f6, $f6, $f9
	add.s	$f6, $f8, $f6
	mul.s	$f4, $f4, $f1
	mul.s	$f5, $f5, $f0
	add.s	$f4, $f4, $f5
	lw	$r7, 36($r5)
	lwcl	$f5, 8($r7)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f7, $f4
cont.90799:
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r5)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r5)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r5)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r5)
	bnei	$r7, 0, bnei.90802
	fmove	$f0, $f5
	j	cont.90801
bnei.90802:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r5)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r5)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r5)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.90801:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.90804
	sub.s	$f0, $f0, $f31
	j	cont.90803
bnei.90804:
cont.90803:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90806
	addi	$r5, $r0, 0
	j	cont.90805
bclf.90806:
	sqrt	$f0, $f0
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90808
	j	cont.90807
bnei.90808:
	fneg	$f0, $f0
cont.90807:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90805:
cont.90797:
cont.90791:
cont.90753:
	bnei	$r5, 0, bnei.90810
	j	cont.90809
bnei.90810:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90812
	j	cont.90811
bclf.90812:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90814
	j	cont.90813
bnei.90814:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r7, $r0, 0
	sw	$r3, -24($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90816
	j	cont.90815
bnei.90816:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90818
	j	cont.90817
bnei.90818:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90820
	j	cont.90819
bnei.90820:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90822
	j	cont.90821
bnei.90822:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90824
	j	cont.90823
bnei.90824:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 7
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.90823:
cont.90821:
cont.90819:
cont.90817:
cont.90815:
cont.90813:
cont.90811:
cont.90809:
cont.90739:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
solve_each_element_fast.5034:
	lw	$r5, 0($r4)
	sll	$r6, $r2, 2
	lwr	$r6, $r6($r3)	!ld var
	bnei	$r6, -1, bnei.90826
	jr	$r31
bnei.90826:
	sll	$r7, $r6, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r10, $r6, 2
	lwr	$r9, $r10($r9)	!ld var
	lw	$r10, 4($r7)
	bnei	$r10, 1, bnei.90828
	lw	$r8, 0($r4)
	lwcl	$f3, 0($r9)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r9)
	mul.s	$f3, $f3, $f4
	lw	$r10, 16($r7)
	lwcl	$f4, 4($r10)
	lwcl	$f5, 4($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90830
	addi	$r10, $r0, 0
	j	cont.90829
bclf.90830:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90832
	addi	$r10, $r0, 0
	j	cont.90831
bclf.90832:
	lwcl	$f4, 4($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.90834
	addi	$r10, $r0, 0
	j	cont.90833
bclf.90834:
	addi	$r10, $r0, 1
cont.90833:
cont.90831:
cont.90829:
	bnei	$r10, 1, bnei.90836
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
	j	cont.90827     ! elimjump
bnei.90836:
	lwcl	$f3, 8($r9)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r9)
	mul.s	$f3, $f3, $f4
	lw	$r10, 16($r7)
	lwcl	$f4, 0($r10)
	lwcl	$f5, 0($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90838
	addi	$r10, $r0, 0
	j	cont.90837
bclf.90838:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90840
	addi	$r10, $r0, 0
	j	cont.90839
bclf.90840:
	lwcl	$f4, 12($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.90842
	addi	$r10, $r0, 0
	j	cont.90841
bclf.90842:
	addi	$r10, $r0, 1
cont.90841:
cont.90839:
cont.90837:
	bnei	$r10, 1, bnei.90844
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 2
	j	cont.90827     ! elimjump
bnei.90844:
	lwcl	$f3, 16($r9)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r9)
	mul.s	$f2, $f2, $f3
	lw	$r10, 16($r7)
	lwcl	$f3, 0($r10)
	lwcl	$f4, 0($r8)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90846
	addi	$r7, $r0, 0
	j	cont.90845
bclf.90846:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90848
	addi	$r7, $r0, 0
	j	cont.90847
bclf.90848:
	lwcl	$f0, 20($r9)
	c.eq.s	$f0, $f30
	bclf	bclf.90850
	addi	$r7, $r0, 0
	j	cont.90849
bclf.90850:
	addi	$r7, $r0, 1
cont.90849:
cont.90847:
cont.90845:
	bnei	$r7, 1, bnei.90852
	swcl	$f2, 576($r0)
	addi	$r7, $r0, 3
	j	cont.90827     ! elimjump
bnei.90852:
	addi	$r7, $r0, 0
cont.90851:
cont.90843:
cont.90835:
	j	cont.90827
bnei.90828:
	bnei	$r10, 2, bnei.90854
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.90856
	addi	$r7, $r0, 0
	j	cont.90853     ! elimjump
bclf.90856:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r7, $r0, 1
cont.90855:
	j	cont.90853
bnei.90854:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.90858
	addi	$r7, $r0, 0
	j	cont.90857
bclf.90858:
	lwcl	$f4, 4($r9)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r9)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r9)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r8)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.90860
	addi	$r7, $r0, 0
	j	cont.90859
bclf.90860:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90862
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.90861
bnei.90862:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.90861:
	addi	$r7, $r0, 1
cont.90859:
cont.90857:
cont.90853:
cont.90827:
	bnei	$r7, 0, bnei.90864
	sll	$r5, $r6, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90866
	addi	$r2, $r2, 1
	j	solve_each_element_fast.5034
bnei.90866:
	jr	$r31
bnei.90864:
	lwcl	$f0, 576($r0)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	c.le.s	$f0, $f30
	bclf	bclf.90868
	j	cont.90867
bclf.90868:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90870
	j	cont.90869
bclf.90870:
	fmove	$f1, $f26
	add.s	$f0, $f0, $f1
	lwcl	$f1, 0($r5)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r5)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r5)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r5, 0($r3)
	sw	$r7, -16($r29)
	sw	$r6, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	swcl	$f0, -36($r29)
	bnei	$r5, -1, bnei.90872
	addi	$r2, $r0, 1
	j	cont.90871
bnei.90872:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r8, 20($r5)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r5)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r5)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r5)
	bnei	$r8, 1, bnei.90874
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90876
	addi	$r8, $r0, 0
	j	cont.90875
bclf.90876:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90878
	addi	$r8, $r0, 0
	j	cont.90877
bclf.90878:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90880
	addi	$r8, $r0, 0
	j	cont.90879
bclf.90880:
	addi	$r8, $r0, 1
cont.90879:
cont.90877:
cont.90875:
	bnei	$r8, 1, bnei.90882
	lw	$r5, 24($r5)
	j	cont.90873     ! elimjump
bnei.90882:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90884
	addi	$r5, $r0, 0
	j	cont.90873     ! elimjump
bnei.90884:
	addi	$r5, $r0, 1
cont.90883:
cont.90881:
	j	cont.90873
bnei.90874:
	bnei	$r8, 2, bnei.90886
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90888
	addi	$r8, $r0, 0
	j	cont.90887
bclf.90888:
	addi	$r8, $r0, 1
cont.90887:
	bne	$r5, $r8, bne.90890
	addi	$r5, $r0, 1
	j	cont.90885     ! elimjump
bne.90890:
	addi	$r5, $r0, 0
cont.90889:
	j	cont.90885
bnei.90886:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r5)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r5)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r5)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r5)
	bnei	$r8, 0, bnei.90892
	fmove	$f4, $f7
	j	cont.90891
bnei.90892:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r5)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r5)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r5)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90891:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90894
	sub.s	$f4, $f4, $f31
	j	cont.90893
bnei.90894:
cont.90893:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90896
	addi	$r8, $r0, 0
	j	cont.90895
bclf.90896:
	addi	$r8, $r0, 1
cont.90895:
	bne	$r5, $r8, bne.90898
	addi	$r5, $r0, 1
	j	cont.90897
bne.90898:
	addi	$r5, $r0, 0
cont.90897:
cont.90885:
cont.90873:
	bnei	$r5, 1, bnei.90900
	addi	$r2, $r0, 0
	j	cont.90899
bnei.90900:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90902
	addi	$r2, $r0, 1
	j	cont.90901
bnei.90902:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r8, 20($r5)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r5)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r5)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r5)
	bnei	$r8, 1, bnei.90904
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90906
	addi	$r8, $r0, 0
	j	cont.90905
bclf.90906:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90908
	addi	$r8, $r0, 0
	j	cont.90907
bclf.90908:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90910
	addi	$r8, $r0, 0
	j	cont.90909
bclf.90910:
	addi	$r8, $r0, 1
cont.90909:
cont.90907:
cont.90905:
	bnei	$r8, 1, bnei.90912
	lw	$r5, 24($r5)
	j	cont.90903     ! elimjump
bnei.90912:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90914
	addi	$r5, $r0, 0
	j	cont.90903     ! elimjump
bnei.90914:
	addi	$r5, $r0, 1
cont.90913:
cont.90911:
	j	cont.90903
bnei.90904:
	bnei	$r8, 2, bnei.90916
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90918
	addi	$r8, $r0, 0
	j	cont.90917
bclf.90918:
	addi	$r8, $r0, 1
cont.90917:
	bne	$r5, $r8, bne.90920
	addi	$r5, $r0, 1
	j	cont.90915     ! elimjump
bne.90920:
	addi	$r5, $r0, 0
cont.90919:
	j	cont.90915
bnei.90916:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r5)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r5)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r5)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r5)
	bnei	$r8, 0, bnei.90922
	fmove	$f4, $f7
	j	cont.90921
bnei.90922:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r5)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r5)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r5)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90921:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90924
	sub.s	$f4, $f4, $f31
	j	cont.90923
bnei.90924:
cont.90923:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90926
	addi	$r8, $r0, 0
	j	cont.90925
bclf.90926:
	addi	$r8, $r0, 1
cont.90925:
	bne	$r5, $r8, bne.90928
	addi	$r5, $r0, 1
	j	cont.90927
bne.90928:
	addi	$r5, $r0, 0
cont.90927:
cont.90915:
cont.90903:
	bnei	$r5, 1, bnei.90930
	addi	$r2, $r0, 0
	j	cont.90929
bnei.90930:
	lw	$r5, 8($r3)
	bnei	$r5, -1, bnei.90932
	addi	$r2, $r0, 1
	j	cont.90931
bnei.90932:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r8, 20($r5)
	lwcl	$f4, 0($r8)
	sub.s	$f4, $f1, $f4
	lw	$r8, 20($r5)
	lwcl	$f5, 4($r8)
	sub.s	$f5, $f2, $f5
	lw	$r8, 20($r5)
	lwcl	$f6, 8($r8)
	sub.s	$f6, $f3, $f6
	lw	$r8, 4($r5)
	bnei	$r8, 1, bnei.90934
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90936
	addi	$r8, $r0, 0
	j	cont.90935
bclf.90936:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90938
	addi	$r8, $r0, 0
	j	cont.90937
bclf.90938:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90940
	addi	$r8, $r0, 0
	j	cont.90939
bclf.90940:
	addi	$r8, $r0, 1
cont.90939:
cont.90937:
cont.90935:
	bnei	$r8, 1, bnei.90942
	lw	$r5, 24($r5)
	j	cont.90933     ! elimjump
bnei.90942:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90944
	addi	$r5, $r0, 0
	j	cont.90933     ! elimjump
bnei.90944:
	addi	$r5, $r0, 1
cont.90943:
cont.90941:
	j	cont.90933
bnei.90934:
	bnei	$r8, 2, bnei.90946
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r8)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90948
	addi	$r8, $r0, 0
	j	cont.90947
bclf.90948:
	addi	$r8, $r0, 1
cont.90947:
	bne	$r5, $r8, bne.90950
	addi	$r5, $r0, 1
	j	cont.90945     ! elimjump
bne.90950:
	addi	$r5, $r0, 0
cont.90949:
	j	cont.90945
bnei.90946:
	mul.s	$f7, $f4, $f4
	lw	$r8, 16($r5)
	lwcl	$f8, 0($r8)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r8, 16($r5)
	lwcl	$f9, 4($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r8, 16($r5)
	lwcl	$f9, 8($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r8, 12($r5)
	bnei	$r8, 0, bnei.90952
	fmove	$f4, $f7
	j	cont.90951
bnei.90952:
	mul.s	$f8, $f5, $f6
	lw	$r8, 36($r5)
	lwcl	$f9, 0($r8)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r8, 36($r5)
	lwcl	$f8, 4($r8)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r8, 36($r5)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.90951:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90954
	sub.s	$f4, $f4, $f31
	j	cont.90953
bnei.90954:
cont.90953:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90956
	addi	$r8, $r0, 0
	j	cont.90955
bclf.90956:
	addi	$r8, $r0, 1
cont.90955:
	bne	$r5, $r8, bne.90958
	addi	$r5, $r0, 1
	j	cont.90957
bne.90958:
	addi	$r5, $r0, 0
cont.90957:
cont.90945:
cont.90933:
	bnei	$r5, 1, bnei.90960
	addi	$r2, $r0, 0
	j	cont.90959
bnei.90960:
	addi	$r5, $r0, 3
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.90959:
cont.90931:
cont.90929:
cont.90901:
cont.90899:
cont.90871:
	bnei	$r2, 1, bnei.90962
	lwcl	$f0, -36($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -28($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -24($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -20($r29)
	sw	$r2, 600($r0)
	lw	$r2, -16($r29)
	sw	$r2, 580($r0)
	j	cont.90961
bnei.90962:
cont.90961:
cont.90869:
cont.90867:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5034
solve_one_or_network_fast.5086:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90964
	jr	$r31
bnei.90964:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90966
	jr	$r31
bnei.90966:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90968
	jr	$r31
bnei.90968:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90970
	jr	$r31
bnei.90970:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90972
	jr	$r31
bnei.90972:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90974
	jr	$r31
bnei.90974:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90976
	jr	$r31
bnei.90976:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90978
	jr	$r31
bnei.90978:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network_fast.5086
trace_or_matrix_fast.5098:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.90980
	jr	$r31
bnei.90980:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.90982
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90984
	j	cont.90981     ! elimjump
bnei.90984:
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90986
	j	cont.90981     ! elimjump
bnei.90986:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90988
	j	cont.90981     ! elimjump
bnei.90988:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90990
	j	cont.90981     ! elimjump
bnei.90990:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90992
	j	cont.90981     ! elimjump
bnei.90992:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90994
	j	cont.90981     ! elimjump
bnei.90994:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90996
	j	cont.90981     ! elimjump
bnei.90996:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 8
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.90995:
cont.90993:
cont.90991:
cont.90989:
cont.90987:
cont.90985:
cont.90983:
	j	cont.90981
bne.90982:
	sll	$r7, $r6, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r6, $r6, 2
	lwr	$r6, $r6($r9)	!ld var
	lw	$r9, 4($r7)
	bnei	$r9, 1, bnei.90998
	lw	$r8, 0($r4)
	lwcl	$f3, 0($r6)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r6)
	mul.s	$f3, $f3, $f4
	lw	$r9, 16($r7)
	lwcl	$f4, 4($r9)
	lwcl	$f5, 4($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91000
	addi	$r9, $r0, 0
	j	cont.90999
bclf.91000:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91002
	addi	$r9, $r0, 0
	j	cont.91001
bclf.91002:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.91004
	addi	$r9, $r0, 0
	j	cont.91003
bclf.91004:
	addi	$r9, $r0, 1
cont.91003:
cont.91001:
cont.90999:
	bnei	$r9, 1, bnei.91006
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 1
	j	cont.90997     ! elimjump
bnei.91006:
	lwcl	$f3, 8($r6)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r6)
	mul.s	$f3, $f3, $f4
	lw	$r9, 16($r7)
	lwcl	$f4, 0($r9)
	lwcl	$f5, 0($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91008
	addi	$r9, $r0, 0
	j	cont.91007
bclf.91008:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91010
	addi	$r9, $r0, 0
	j	cont.91009
bclf.91010:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.91012
	addi	$r9, $r0, 0
	j	cont.91011
bclf.91012:
	addi	$r9, $r0, 1
cont.91011:
cont.91009:
cont.91007:
	bnei	$r9, 1, bnei.91014
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 2
	j	cont.90997     ! elimjump
bnei.91014:
	lwcl	$f3, 16($r6)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r6)
	mul.s	$f2, $f2, $f3
	lw	$r9, 16($r7)
	lwcl	$f3, 0($r9)
	lwcl	$f4, 0($r8)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91016
	addi	$r6, $r0, 0
	j	cont.91015
bclf.91016:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91018
	addi	$r6, $r0, 0
	j	cont.91017
bclf.91018:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.91020
	addi	$r6, $r0, 0
	j	cont.91019
bclf.91020:
	addi	$r6, $r0, 1
cont.91019:
cont.91017:
cont.91015:
	bnei	$r6, 1, bnei.91022
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 3
	j	cont.90997     ! elimjump
bnei.91022:
	addi	$r6, $r0, 0
cont.91021:
cont.91013:
cont.91005:
	j	cont.90997
bnei.90998:
	bnei	$r9, 2, bnei.91024
	lwcl	$f0, 0($r6)
	c.le.s	$f30, $f0
	bclf	bclf.91026
	addi	$r6, $r0, 0
	j	cont.91023     ! elimjump
bclf.91026:
	lwcl	$f0, 0($r6)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.91025:
	j	cont.91023
bnei.91024:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.91028
	addi	$r6, $r0, 0
	j	cont.91027
bclf.91028:
	lwcl	$f4, 4($r6)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r6)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r8)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.91030
	addi	$r6, $r0, 0
	j	cont.91029
bclf.91030:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.91032
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91031
bnei.91032:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91031:
	addi	$r6, $r0, 1
cont.91029:
cont.91027:
cont.91023:
cont.90997:
	bnei	$r6, 0, bnei.91034
	j	cont.91033
bnei.91034:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91036
	j	cont.91035
bclf.91036:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.91038
	j	cont.91037
bnei.91038:
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91040
	j	cont.91039
bnei.91040:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91042
	j	cont.91041
bnei.91042:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91044
	j	cont.91043
bnei.91044:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91046
	j	cont.91045
bnei.91046:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91048
	j	cont.91047
bnei.91048:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.91050
	j	cont.91049
bnei.91050:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 8
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.91049:
cont.91047:
cont.91045:
cont.91043:
cont.91041:
cont.91039:
cont.91037:
cont.91035:
cont.91033:
cont.90981:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.91052
	jr	$r31
bnei.91052:
	addi	$r6, $r0, 99
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.91054
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.91056
	j	cont.91053     ! elimjump
bnei.91056:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91058
	j	cont.91053     ! elimjump
bnei.91058:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91060
	j	cont.91053     ! elimjump
bnei.91060:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91062
	j	cont.91053     ! elimjump
bnei.91062:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91064
	j	cont.91053     ! elimjump
bnei.91064:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91066
	j	cont.91053     ! elimjump
bnei.91066:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 7
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91065:
cont.91063:
cont.91061:
cont.91059:
cont.91057:
cont.91055:
	j	cont.91053
bne.91054:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lw	$r8, -4($r29)
	lw	$r9, 4($r8)
	sll	$r5, $r5, 2
	lwr	$r5, $r5($r9)	!ld var
	lw	$r9, 4($r6)
	bnei	$r9, 1, bnei.91068
	lw	$r7, 0($r8)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r9, 16($r6)
	lwcl	$f4, 4($r9)
	lwcl	$f5, 4($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91070
	addi	$r9, $r0, 0
	j	cont.91069
bclf.91070:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91072
	addi	$r9, $r0, 0
	j	cont.91071
bclf.91072:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91074
	addi	$r9, $r0, 0
	j	cont.91073
bclf.91074:
	addi	$r9, $r0, 1
cont.91073:
cont.91071:
cont.91069:
	bnei	$r9, 1, bnei.91076
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91067     ! elimjump
bnei.91076:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r9, 16($r6)
	lwcl	$f4, 0($r9)
	lwcl	$f5, 0($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91078
	addi	$r9, $r0, 0
	j	cont.91077
bclf.91078:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91080
	addi	$r9, $r0, 0
	j	cont.91079
bclf.91080:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91082
	addi	$r9, $r0, 0
	j	cont.91081
bclf.91082:
	addi	$r9, $r0, 1
cont.91081:
cont.91079:
cont.91077:
	bnei	$r9, 1, bnei.91084
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.91067     ! elimjump
bnei.91084:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r9, 16($r6)
	lwcl	$f3, 0($r9)
	lwcl	$f4, 0($r7)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91086
	addi	$r5, $r0, 0
	j	cont.91085
bclf.91086:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 4($r7)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91088
	addi	$r5, $r0, 0
	j	cont.91087
bclf.91088:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.91090
	addi	$r5, $r0, 0
	j	cont.91089
bclf.91090:
	addi	$r5, $r0, 1
cont.91089:
cont.91087:
cont.91085:
	bnei	$r5, 1, bnei.91092
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.91067     ! elimjump
bnei.91092:
	addi	$r5, $r0, 0
cont.91091:
cont.91083:
cont.91075:
	j	cont.91067
bnei.91068:
	bnei	$r9, 2, bnei.91094
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.91096
	addi	$r5, $r0, 0
	j	cont.91093     ! elimjump
bclf.91096:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.91095:
	j	cont.91093
bnei.91094:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.91098
	addi	$r5, $r0, 0
	j	cont.91097
bclf.91098:
	lwcl	$f4, 4($r5)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r5)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r7)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.91100
	addi	$r5, $r0, 0
	j	cont.91099
bclf.91100:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.91102
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91101
bnei.91102:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91101:
	addi	$r5, $r0, 1
cont.91099:
cont.91097:
cont.91093:
cont.91067:
	bnei	$r5, 0, bnei.91104
	j	cont.91103
bnei.91104:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91106
	j	cont.91105
bclf.91106:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.91108
	j	cont.91107
bnei.91108:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r3, -24($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91110
	j	cont.91109
bnei.91110:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91112
	j	cont.91111
bnei.91112:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91114
	j	cont.91113
bnei.91114:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91116
	j	cont.91115
bnei.91116:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91118
	j	cont.91117
bnei.91118:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 7
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91117:
cont.91115:
cont.91113:
cont.91111:
cont.91109:
cont.91107:
cont.91105:
cont.91103:
cont.91053:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
utexture.5219:
	lw	$r4, 0($r2)
	lw	$r5, 32($r2)
	lwcl	$f0, 0($r5)
	swcl	$f0, 616($r0)
	lw	$r5, 32($r2)
	lwcl	$f0, 4($r5)
	swcl	$f0, 620($r0)
	lw	$r5, 32($r2)
	lwcl	$f0, 8($r5)
	swcl	$f0, 624($r0)
	bnei	$r4, 1, bnei.91120
	lwcl	$f0, 0($r3)
	lw	$r4, 20($r2)
	lwcl	$f1, 0($r4)
	sub.s	$f0, $f0, $f1
	lfh	$f1, 15692
	lfl	$f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lfh	$f1, 16800
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16672
	lwcl	$f2, -12($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -4($r29)
	lw	$r2, 20($r2)
	lwcl	$f3, 8($r2)
	sub.s	$f2, $f2, $f3
	lfh	$f3, 15692
	lfl	$f3, 52429
	mul.s	$f3, $f2, $f3
	swcl	$f0, -16($r29)
	swcl	$f1, -20($r29)
	swcl	$f2, -24($r29)
	fmove	$f0, $f3
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lfh	$f1, 16800
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16672
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -20($r29)
	lwcl	$f3, -16($r29)
	c.le.s	$f2, $f3
	bclf	bclf.91122
	c.le.s	$f1, $f0
	bclf	bclf.91124
	lfh	$f0, 17279
	j	cont.91121     ! elimjump
bclf.91124:
	fmove	$f0, $f30
cont.91123:
	j	cont.91121
bclf.91122:
	c.le.s	$f1, $f0
	bclf	bclf.91126
	fmove	$f0, $f30
	j	cont.91125
bclf.91126:
	lfh	$f0, 17279
cont.91125:
cont.91121:
	swcl	$f0, 620($r0)
	jr	$r31
bnei.91120:
	bnei	$r4, 2, bnei.91128
	lwcl	$f0, 4($r3)
	lfh	$f1, 16000
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.91130
	addi	$r2, $r0, 0
	j	cont.91129
bclf.91130:
	addi	$r2, $r0, 1
cont.91129:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f1, -44($r29)
	c.le.s	$f4, $f5
	bclf	bclf.91132
	c.le.s	$f30, $f4
	bclf	bclf.91134
	fmove	$f0, $f4
	j	cont.91131     ! elimjump
bclf.91134:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.91136
	c.le.s	$f30, $f4
	bclf	bclf.91138
	fmove	$f0, $f4
	j	cont.91131     ! elimjump
bclf.91138:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91137:
	j	cont.91131     ! elimjump
bclf.91136:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91135:
cont.91133:
	j	cont.91131
bclf.91132:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.91140
	c.le.s	$f30, $f4
	bclf	bclf.91142
	fmove	$f0, $f4
	j	cont.91139     ! elimjump
bclf.91142:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91141:
	j	cont.91139
bclf.91140:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91139:
cont.91131:
	lwcl	$f1, -44($r29)
	c.le.s	$f0, $f1
	bclf	bclf.91144
	lw	$r2, -40($r29)
	j	cont.91143
bclf.91144:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.91146
	addi	$r2, $r0, 1
	j	cont.91145
bclf.91146:
	addi	$r2, $r0, 0
cont.91145:
cont.91143:
	c.le.s	$f0, $f1
	bclf	bclf.91148
	j	cont.91147
bclf.91148:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
cont.91147:
	lwcl	$f2, -28($r29)
	c.le.s	$f0, $f2
	bclf	bclf.91150
	j	cont.91149
bclf.91150:
	sub.s	$f0, $f1, $f0
cont.91149:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.91152
	j	cont.91151
bnei.91152:
	fneg	$f0, $f0
cont.91151:
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	swcl	$f1, 616($r0)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 620($r0)
	jr	$r31
bnei.91128:
	bnei	$r4, 3, bnei.91154
	lwcl	$f0, 0($r3)
	lw	$r4, 20($r2)
	lwcl	$f1, 0($r4)
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
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f1, -48($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16457
	lfl	$f1, 4059
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f0, $f1
	swcl	$f1, 620($r0)
	sub.s	$f0, $f31, $f0
	lfh	$f1, 17279
	mul.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.91154:
	bnei	$r4, 4, bnei.91156
	lwcl	$f0, 0($r3)
	lw	$r4, 20($r2)
	lwcl	$f1, 0($r4)
	sub.s	$f0, $f0, $f1
	lw	$r4, 16($r2)
	lwcl	$f1, 0($r4)
	sqrt	$f1, $f1
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lw	$r4, 20($r2)
	lwcl	$f2, 8($r4)
	sub.s	$f1, $f1, $f2
	lw	$r4, 16($r2)
	lwcl	$f2, 8($r4)
	sqrt	$f2, $f2
	mul.s	$f1, $f1, $f2
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	lfh	$f3, 14545
	lfl	$f3, 46871
	fabs	$f4, $f0
	swcl	$f2, -52($r29)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	c.le.s	$f3, $f4
	bclf	bclf.91158
	div.s	$f0, $f1, $f0
	fabs	$f0, $f0
	c.le.s	$f0, $f31
	bclf	bclf.91160
	c.le.s	$f29, $f0
	bclf	bclf.91162
	addi	$r4, $r0, 0
	j	cont.91159     ! elimjump
bclf.91162:
	addi	$r4, $r0, -1
cont.91161:
	j	cont.91159
bclf.91160:
	addi	$r4, $r0, 1
cont.91159:
	bnei	$r4, 0, bnei.91164
	j	cont.91163
bnei.91164:
	div.s	$f0, $f31, $f0
cont.91163:
	mul.s	$f1, $f0, $f0
	lfh	$f3, 17138
	mul.s	$f3, $f3, $f1
	lfh	$f4, 16824
	div.s	$f3, $f3, $f4
	lfh	$f4, 16656
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f1
	lfh	$f6, 16808
	add.s	$f3, $f6, $f3
	div.s	$f3, $f5, $f3
	sw	$r4, -56($r29)
	swcl	$f0, -60($r29)
	fmove	$f0, $f4
	fmove	$f2, $f3
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -60($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -56($r29)
	bgti	$r2, 0, bgti.91166
	blti	$r2, 0, blti.91168
	j	cont.91165     ! elimjump
blti.91168:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.91167:
	j	cont.91165
bgti.91166:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.91165:
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.91157
bclf.91158:
	lfh	$f0, 16752
cont.91157:
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lwcl	$f1, -64($r29)
	sub.s	$f0, $f1, $f0
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lw	$r2, -4($r29)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	lw	$r2, 16($r2)
	lwcl	$f2, 4($r2)
	sqrt	$f2, $f2
	mul.s	$f1, $f1, $f2
	lfh	$f2, 14545
	lfl	$f2, 46871
	lwcl	$f3, -52($r29)
	fabs	$f4, $f3
	swcl	$f0, -68($r29)
	c.le.s	$f2, $f4
	bclf	bclf.91170
	div.s	$f1, $f1, $f3
	fabs	$f1, $f1
	c.le.s	$f1, $f31
	bclf	bclf.91172
	c.le.s	$f29, $f1
	bclf	bclf.91174
	addi	$r2, $r0, 0
	j	cont.91171     ! elimjump
bclf.91174:
	addi	$r2, $r0, -1
cont.91173:
	j	cont.91171
bclf.91172:
	addi	$r2, $r0, 1
cont.91171:
	bnei	$r2, 0, bnei.91176
	j	cont.91175
bnei.91176:
	div.s	$f1, $f31, $f1
cont.91175:
	mul.s	$f2, $f1, $f1
	lfh	$f3, 17138
	mul.s	$f3, $f3, $f2
	lfh	$f4, 16824
	div.s	$f3, $f3, $f4
	lfh	$f4, 16656
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f2
	lfh	$f6, 16808
	add.s	$f3, $f6, $f3
	div.s	$f3, $f5, $f3
	sw	$r2, -72($r29)
	swcl	$f1, -76($r29)
	fmove	$f0, $f4
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -76($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -72($r29)
	bgti	$r2, 0, bgti.91178
	blti	$r2, 0, blti.91180
	j	cont.91177     ! elimjump
blti.91180:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.91179:
	j	cont.91177
bgti.91178:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.91177:
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.91169
bclf.91170:
	lfh	$f0, 16752
cont.91169:
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f1, -80($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 15897
	lfl	$f1, 39322
	lfh	$f2, 16128
	lwcl	$f3, -68($r29)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f30, $f0
	bclf	bclf.91182
	j	cont.91181
bclf.91182:
	fmove	$f0, $f30
cont.91181:
	lfh	$f1, 17279
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.91156:
	jr	$r31
trace_reflections.5395:
	blti	$r2, 0, blti.91184
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 584($r0)
	addi	$r6, $r0, 0
	lw	$r7, 572($r0)
	sw	$r2, -4($r29)
	swcl	$f1, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r5, -20($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91186
	addi	$r2, $r0, 0
	j	cont.91185
bclf.91186:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91188
	addi	$r2, $r0, 0
	j	cont.91187
bclf.91188:
	addi	$r2, $r0, 1
cont.91187:
cont.91185:
	bnei	$r2, 1, bnei.91190
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, cont.91189     ! elimjump
	lw	$r2, 572($r0)
	lw	$r4, 0($r2)
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.91194
	addi	$r2, $r0, 0
	j	cont.91193
bnei.91194:
	addi	$r6, $r0, 99
	sw	$r2, -28($r29)
	sw	$r4, -32($r29)
	bne	$r5, $r6, bne.91196
	addi	$r2, $r0, 1
	j	cont.91195
bne.91196:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lwcl	$f0, 588($r0)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	sll	$r5, $r5, 2
	lw	$r5, 800($r5)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.91198
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 4($r7)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91200
	addi	$r7, $r0, 0
	j	cont.91199
bclf.91200:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91202
	addi	$r7, $r0, 0
	j	cont.91201
bclf.91202:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91204
	addi	$r7, $r0, 0
	j	cont.91203
bclf.91204:
	addi	$r7, $r0, 1
cont.91203:
cont.91201:
cont.91199:
	bnei	$r7, 1, bnei.91206
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91197     ! elimjump
bnei.91206:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r7, 16($r6)
	lwcl	$f4, 0($r7)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91208
	addi	$r7, $r0, 0
	j	cont.91207
bclf.91208:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91210
	addi	$r7, $r0, 0
	j	cont.91209
bclf.91210:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91212
	addi	$r7, $r0, 0
	j	cont.91211
bclf.91212:
	addi	$r7, $r0, 1
cont.91211:
cont.91209:
cont.91207:
	bnei	$r7, 1, bnei.91214
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.91197     ! elimjump
bnei.91214:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r7, 16($r6)
	lwcl	$f3, 0($r7)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91216
	addi	$r5, $r0, 0
	j	cont.91215
bclf.91216:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91218
	addi	$r5, $r0, 0
	j	cont.91217
bclf.91218:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.91220
	addi	$r5, $r0, 0
	j	cont.91219
bclf.91220:
	addi	$r5, $r0, 1
cont.91219:
cont.91217:
cont.91215:
	bnei	$r5, 1, bnei.91222
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.91197     ! elimjump
bnei.91222:
	addi	$r5, $r0, 0
cont.91221:
cont.91213:
cont.91205:
	j	cont.91197
bnei.91198:
	bnei	$r7, 2, bnei.91224
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.91226
	addi	$r5, $r0, 0
	j	cont.91223     ! elimjump
bclf.91226:
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.91225:
	j	cont.91223
bnei.91224:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.91228
	addi	$r5, $r0, 0
	j	cont.91227
bclf.91228:
	lwcl	$f4, 4($r5)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r5)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r7, 16($r6)
	lwcl	$f6, 0($r7)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r7, 16($r6)
	lwcl	$f7, 4($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r7, 16($r6)
	lwcl	$f7, 8($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r7, 12($r6)
	bnei	$r7, 0, bnei.91230
	fmove	$f0, $f5
	j	cont.91229
bnei.91230:
	mul.s	$f6, $f1, $f2
	lw	$r7, 36($r6)
	lwcl	$f7, 0($r7)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r7, 36($r6)
	lwcl	$f6, 4($r7)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r6)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.91229:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.91232
	sub.s	$f0, $f0, $f31
	j	cont.91231
bnei.91232:
cont.91231:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91234
	addi	$r5, $r0, 0
	j	cont.91233
bclf.91234:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.91236
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91235
bnei.91236:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91235:
	addi	$r5, $r0, 1
cont.91233:
cont.91227:
cont.91223:
cont.91197:
	bnei	$r5, 0, bnei.91238
	addi	$r2, $r0, 0
	j	cont.91237
bnei.91238:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.91240
	addi	$r2, $r0, 0
	j	cont.91239
bclf.91240:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.91242
	addi	$r2, $r0, 0
	j	cont.91241
bnei.91242:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91244
	addi	$r2, $r0, 1
	j	cont.91243
bnei.91244:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91246
	addi	$r2, $r0, 0
	j	cont.91245
bnei.91246:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91248
	addi	$r2, $r0, 1
	j	cont.91247
bnei.91248:
	lw	$r2, -32($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91250
	addi	$r2, $r0, 0
	j	cont.91249
bnei.91250:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91252
	addi	$r2, $r0, 1
	j	cont.91251
bnei.91252:
	lw	$r2, -32($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91254
	addi	$r2, $r0, 0
	j	cont.91253
bnei.91254:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91256
	addi	$r2, $r0, 1
	j	cont.91255
bnei.91256:
	lw	$r2, -32($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91258
	addi	$r2, $r0, 0
	j	cont.91257
bnei.91258:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91260
	addi	$r2, $r0, 1
	j	cont.91259
bnei.91260:
	lw	$r2, -32($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91262
	addi	$r2, $r0, 0
	j	cont.91261
bnei.91262:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91264
	addi	$r2, $r0, 1
	j	cont.91263
bnei.91264:
	addi	$r2, $r0, 7
	lw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91263:
cont.91261:
cont.91259:
cont.91257:
cont.91255:
cont.91253:
cont.91251:
cont.91249:
cont.91247:
cont.91245:
cont.91243:
cont.91241:
	bnei	$r2, 1, bnei.91266
	addi	$r2, $r0, 1
	j	cont.91265
bnei.91266:
	addi	$r2, $r0, 0
cont.91265:
cont.91239:
cont.91237:
cont.91195:
	bnei	$r2, 1, bnei.91268
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91270
	addi	$r2, $r0, 0
	j	cont.91269
bnei.91270:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91272
	addi	$r2, $r0, 1
	j	cont.91271
bnei.91272:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91274
	addi	$r2, $r0, 0
	j	cont.91273
bnei.91274:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91276
	addi	$r2, $r0, 1
	j	cont.91275
bnei.91276:
	lw	$r2, -32($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91278
	addi	$r2, $r0, 0
	j	cont.91277
bnei.91278:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91280
	addi	$r2, $r0, 1
	j	cont.91279
bnei.91280:
	lw	$r2, -32($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91282
	addi	$r2, $r0, 0
	j	cont.91281
bnei.91282:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91284
	addi	$r2, $r0, 1
	j	cont.91283
bnei.91284:
	lw	$r2, -32($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91286
	addi	$r2, $r0, 0
	j	cont.91285
bnei.91286:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91288
	addi	$r2, $r0, 1
	j	cont.91287
bnei.91288:
	lw	$r2, -32($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91290
	addi	$r2, $r0, 0
	j	cont.91289
bnei.91290:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91292
	addi	$r2, $r0, 1
	j	cont.91291
bnei.91292:
	addi	$r2, $r0, 7
	lw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91291:
cont.91289:
cont.91287:
cont.91285:
cont.91283:
cont.91281:
cont.91279:
cont.91277:
cont.91275:
cont.91273:
cont.91271:
cont.91269:
	bnei	$r2, 1, bnei.91294
	addi	$r2, $r0, 1
	j	cont.91267     ! elimjump
bnei.91294:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91293:
	j	cont.91267
bnei.91268:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91267:
cont.91193:
	bnei	$r2, 1, bnei.91296
	j	cont.91189     ! elimjump
bnei.91296:
	lw	$r2, -20($r29)
	lw	$r3, 0($r2)
	lwcl	$f0, 604($r0)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$r3, -24($r29)
	lwcl	$f1, 8($r3)
	lwcl	$f2, -16($r29)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$r2, 0($r2)
	lw	$r3, -12($r29)
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
	bclf	bclf.91298
	j	cont.91297
bclf.91298:
	lwcl	$f3, 640($r0)
	lwcl	$f4, 616($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	lwcl	$f4, 620($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	lwcl	$f4, 624($r0)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91297:
	c.le.s	$f1, $f30
	bclf	bclf.91300
	j	cont.91189     ! elimjump
bclf.91300:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -8($r29)
	mul.s	$f0, $f0, $f1
	lwcl	$f3, 640($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91299:
cont.91295:
	j	cont.91189     ! elimjump
bne.91192:
cont.91191:
	j	cont.91189
bnei.91190:
cont.91189:
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.91302
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	sw	$r3, -44($r29)
	sw	$r4, -48($r29)
	bnei	$r8, -1, bnei.91304
	j	cont.91303
bnei.91304:
	addi	$r9, $r0, 99
	sw	$r6, -52($r29)
	bne	$r8, $r9, bne.91306
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91308
	j	cont.91305     ! elimjump
bnei.91308:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -56($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91310
	j	cont.91305     ! elimjump
bnei.91310:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91312
	j	cont.91305     ! elimjump
bnei.91312:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91314
	j	cont.91305     ! elimjump
bnei.91314:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -56($r29)
	lw	$r4, -40($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91313:
cont.91311:
cont.91309:
cont.91307:
	j	cont.91305
bne.91306:
	sll	$r9, $r8, 2
	lw	$r9, 80($r9)
	lw	$r10, 40($r9)
	lwcl	$f0, 0($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f2, 8($r10)
	lw	$r11, 4($r5)
	sll	$r8, $r8, 2
	lwr	$r8, $r8($r11)	!ld var
	lw	$r11, 4($r9)
	bnei	$r11, 1, bnei.91316
	lw	$r10, 0($r5)
	lwcl	$f3, 0($r8)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r8)
	mul.s	$f3, $f3, $f4
	lw	$r11, 16($r9)
	lwcl	$f4, 4($r11)
	lwcl	$f5, 4($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91318
	addi	$r11, $r0, 0
	j	cont.91317
bclf.91318:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91320
	addi	$r11, $r0, 0
	j	cont.91319
bclf.91320:
	lwcl	$f4, 4($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91322
	addi	$r11, $r0, 0
	j	cont.91321
bclf.91322:
	addi	$r11, $r0, 1
cont.91321:
cont.91319:
cont.91317:
	bnei	$r11, 1, bnei.91324
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91315     ! elimjump
bnei.91324:
	lwcl	$f3, 8($r8)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r8)
	mul.s	$f3, $f3, $f4
	lw	$r11, 16($r9)
	lwcl	$f4, 0($r11)
	lwcl	$f5, 0($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91326
	addi	$r11, $r0, 0
	j	cont.91325
bclf.91326:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91328
	addi	$r11, $r0, 0
	j	cont.91327
bclf.91328:
	lwcl	$f4, 12($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91330
	addi	$r11, $r0, 0
	j	cont.91329
bclf.91330:
	addi	$r11, $r0, 1
cont.91329:
cont.91327:
cont.91325:
	bnei	$r11, 1, bnei.91332
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 2
	j	cont.91315     ! elimjump
bnei.91332:
	lwcl	$f3, 16($r8)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r8)
	mul.s	$f2, $f2, $f3
	lw	$r11, 16($r9)
	lwcl	$f3, 0($r11)
	lwcl	$f4, 0($r10)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91334
	addi	$r8, $r0, 0
	j	cont.91333
bclf.91334:
	lw	$r9, 16($r9)
	lwcl	$f0, 4($r9)
	lwcl	$f3, 4($r10)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91336
	addi	$r8, $r0, 0
	j	cont.91335
bclf.91336:
	lwcl	$f0, 20($r8)
	c.eq.s	$f0, $f30
	bclf	bclf.91338
	addi	$r8, $r0, 0
	j	cont.91337
bclf.91338:
	addi	$r8, $r0, 1
cont.91337:
cont.91335:
cont.91333:
	bnei	$r8, 1, bnei.91340
	swcl	$f2, 576($r0)
	addi	$r8, $r0, 3
	j	cont.91315     ! elimjump
bnei.91340:
	addi	$r8, $r0, 0
cont.91339:
cont.91331:
cont.91323:
	j	cont.91315
bnei.91316:
	bnei	$r11, 2, bnei.91342
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.91344
	addi	$r8, $r0, 0
	j	cont.91341     ! elimjump
bclf.91344:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91343:
	j	cont.91341
bnei.91342:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.91346
	addi	$r8, $r0, 0
	j	cont.91345
bclf.91346:
	lwcl	$f4, 4($r8)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r8)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r10)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.91348
	addi	$r8, $r0, 0
	j	cont.91347
bclf.91348:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.91350
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91349
bnei.91350:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91349:
	addi	$r8, $r0, 1
cont.91347:
cont.91345:
cont.91341:
cont.91315:
	bnei	$r8, 0, bnei.91352
	j	cont.91351
bnei.91352:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91354
	j	cont.91353
bclf.91354:
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91356
	j	cont.91355
bnei.91356:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -56($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91358
	j	cont.91357
bnei.91358:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91360
	j	cont.91359
bnei.91360:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91362
	j	cont.91361
bnei.91362:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -56($r29)
	lw	$r4, -40($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91361:
cont.91359:
cont.91357:
cont.91355:
cont.91353:
cont.91351:
cont.91305:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -40($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91303:
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91364
	addi	$r2, $r0, 0
	j	cont.91363
bclf.91364:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91366
	addi	$r2, $r0, 0
	j	cont.91365
bclf.91366:
	addi	$r2, $r0, 1
cont.91365:
cont.91363:
	bnei	$r2, 1, bnei.91368
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, cont.91367     ! elimjump
	lw	$r2, 572($r0)
	lw	$r4, -44($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91372
	j	cont.91367     ! elimjump
bnei.91372:
	lw	$r2, -40($r29)
	lw	$r3, 0($r2)
	lwcl	$f0, 604($r0)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$r3, -48($r29)
	lwcl	$f1, 8($r3)
	lwcl	$f2, -16($r29)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$r2, 0($r2)
	lw	$r3, -12($r29)
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
	bclf	bclf.91374
	j	cont.91373
bclf.91374:
	lwcl	$f3, 640($r0)
	lwcl	$f4, 616($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	lwcl	$f4, 620($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	lwcl	$f4, 624($r0)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91373:
	c.le.s	$f1, $f30
	bclf	bclf.91376
	j	cont.91367     ! elimjump
bclf.91376:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -8($r29)
	mul.s	$f0, $f0, $f1
	lwcl	$f3, 640($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91375:
cont.91371:
	j	cont.91367     ! elimjump
bne.91370:
cont.91369:
	j	cont.91367
bnei.91368:
cont.91367:
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
blti.91302:
	jr	$r31
blti.91184:
	jr	$r31
trace_ray.5428:
	bgti	$r2, 4, bgti.91378
	lw	$r5, 8($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 584($r0)
	addi	$r6, $r0, 0
	lw	$r7, 572($r0)
	swcl	$f1, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	swcl	$f0, -24($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_or_matrix.4999
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91380
	addi	$r2, $r0, 0
	j	cont.91379
bclf.91380:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91382
	addi	$r2, $r0, 0
	j	cont.91381
bclf.91382:
	addi	$r2, $r0, 1
cont.91381:
cont.91379:
	addi	$r3, $r0, 1
	bnei	$r2, 1, bnei.91384
	lw	$r2, 600($r0)
	sll	$r4, $r2, 2
	lw	$r4, 80($r4)
	lw	$r5, 8($r4)
	lw	$r6, 28($r4)
	lwcl	$f0, 0($r6)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lw	$r6, 4($r4)
	bnei	$r6, 1, bnei.91386
	lw	$r6, 580($r0)
	fmove	$f2, $f30
	swcl	$f2, 604($r0)
	swcl	$f2, 608($r0)
	swcl	$f2, 612($r0)
	addi	$r7, $r6, -1
	addi	$r6, $r6, -1
	sll	$r6, $r6, 2
	lw	$r8, -20($r29)
	lwclr	$f2, $r6($r8)	!ldf var
	c.eq.s	$f2, $f30
	bclf	bclf.91388
	fmove	$f2, $f30
	j	cont.91387
bclf.91388:
	c.le.s	$f2, $f30
	bclf	bclf.91390
	fmove	$f2, $f29
	j	cont.91389
bclf.91390:
	fmove	$f2, $f31
cont.91389:
cont.91387:
	fneg	$f2, $f2
	sll	$r6, $r7, 2
	swcl	$f2, 604($r6)
	j	cont.91385
bnei.91386:
	bnei	$r6, 2, bnei.91392
	lw	$r6, 16($r4)
	lwcl	$f2, 0($r6)
	fneg	$f2, $f2
	swcl	$f2, 604($r0)
	lw	$r6, 16($r4)
	lwcl	$f2, 4($r6)
	fneg	$f2, $f2
	swcl	$f2, 608($r0)
	lw	$r6, 16($r4)
	lwcl	$f2, 8($r6)
	fneg	$f2, $f2
	swcl	$f2, 612($r0)
	j	cont.91391
bnei.91392:
	lwcl	$f2, 588($r0)
	lw	$r6, 20($r4)
	lwcl	$f3, 0($r6)
	sub.s	$f2, $f2, $f3
	lwcl	$f3, 592($r0)
	lw	$r6, 20($r4)
	lwcl	$f4, 4($r6)
	sub.s	$f3, $f3, $f4
	lwcl	$f4, 596($r0)
	lw	$r6, 20($r4)
	lwcl	$f5, 8($r6)
	sub.s	$f4, $f4, $f5
	lw	$r6, 16($r4)
	lwcl	$f5, 0($r6)
	mul.s	$f5, $f2, $f5
	lw	$r6, 16($r4)
	lwcl	$f6, 4($r6)
	mul.s	$f6, $f3, $f6
	lw	$r6, 16($r4)
	lwcl	$f7, 8($r6)
	mul.s	$f7, $f4, $f7
	lw	$r6, 12($r4)
	bnei	$r6, 0, bnei.91394
	swcl	$f5, 604($r0)
	swcl	$f6, 608($r0)
	swcl	$f7, 612($r0)
	j	cont.91393
bnei.91394:
	lw	$r6, 36($r4)
	lwcl	$f8, 8($r6)
	mul.s	$f8, $f3, $f8
	lw	$r6, 36($r4)
	lwcl	$f9, 4($r6)
	mul.s	$f9, $f4, $f9
	add.s	$f8, $f8, $f9
	lfh	$f9, 16128
	mul.s	$f8, $f8, $f9
	add.s	$f5, $f5, $f8
	swcl	$f5, 604($r0)
	lw	$r6, 36($r4)
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f2, $f5
	lw	$r6, 36($r4)
	lwcl	$f8, 0($r6)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f5, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	swcl	$f4, 608($r0)
	lw	$r6, 36($r4)
	lwcl	$f4, 4($r6)
	mul.s	$f2, $f2, $f4
	lw	$r6, 36($r4)
	lwcl	$f4, 0($r6)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f7, $f2
	swcl	$f2, 612($r0)
cont.91393:
	lw	$r6, 24($r4)
	lwcl	$f2, 604($r0)
	mul.s	$f2, $f2, $f2
	lwcl	$f3, 608($r0)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	lwcl	$f3, 612($r0)
	mul.s	$f3, $f3, $f3
	add.s	$f2, $f2, $f3
	sqrt	$f2, $f2
	c.eq.s	$f2, $f30
	bclf	bclf.91396
	fmove	$f2, $f31
	j	cont.91395
bclf.91396:
	bnei	$r6, 1, bnei.91398
	div.s	$f2, $f29, $f2
	j	cont.91397
bnei.91398:
	div.s	$f2, $f31, $f2
cont.91397:
cont.91395:
	lwcl	$f3, 604($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 604($r0)
	lwcl	$f3, 608($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 608($r0)
	lwcl	$f3, 612($r0)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 612($r0)
cont.91391:
cont.91385:
	lwcl	$f2, 588($r0)
	swcl	$f2, 672($r0)
	lwcl	$f2, 592($r0)
	swcl	$f2, 676($r0)
	lwcl	$f2, 596($r0)
	swcl	$f2, 680($r0)
	addi	$r6, $r0, 588
	sw	$r5, -28($r29)
	swcl	$f0, -32($r29)
	sw	$r3, -36($r29)
	sw	$r4, -40($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	lw	$r2, -8($r29)
	lw	$r4, 4($r2)
	sll	$r6, $r3, 2
	lwr	$r4, $r6($r4)	!ld var
	lwcl	$f0, 588($r0)
	swcl	$f0, 0($r4)
	lwcl	$f0, 592($r0)
	swcl	$f0, 4($r4)
	lwcl	$f0, 596($r0)
	swcl	$f0, 8($r4)
	lw	$r4, 12($r2)
	lfh	$f0, 16128
	lw	$r6, -40($r29)
	lw	$r7, 28($r6)
	lwcl	$f1, 0($r7)
	c.le.s	$f0, $f1
	bclf	bclf.91400
	sll	$r7, $r3, 2
	lw	$r8, -36($r29)
	swr	$r8, $r7($r4)	!st var
	lw	$r4, 16($r2)
	sll	$r7, $r3, 2
	lwr	$r7, $r7($r4)	!ld var
	lwcl	$f0, 616($r0)
	swcl	$f0, 0($r7)
	lwcl	$f0, 620($r0)
	swcl	$f0, 4($r7)
	lwcl	$f0, 624($r0)
	swcl	$f0, 8($r7)
	sll	$r7, $r3, 2
	lwr	$r4, $r7($r4)	!ld var
	lfh	$f0, 15232
	lwcl	$f1, -32($r29)
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
	sll	$r7, $r3, 2
	lwr	$r4, $r7($r4)	!ld var
	lwcl	$f0, 604($r0)
	swcl	$f0, 0($r4)
	lwcl	$f0, 608($r0)
	swcl	$f0, 4($r4)
	lwcl	$f0, 612($r0)
	swcl	$f0, 8($r4)
	j	cont.91399
bclf.91400:
	addi	$r7, $r0, 0
	sll	$r8, $r3, 2
	swr	$r7, $r8($r4)	!st var
cont.91399:
	lfh	$f0, 49152
	lw	$r4, -20($r29)
	lwcl	$f1, 0($r4)
	lwcl	$f2, 604($r0)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	lwcl	$f3, 608($r0)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lwcl	$f3, 612($r0)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 0($r4)
	lwcl	$f2, 604($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	lwcl	$f2, 608($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	lwcl	$f2, 612($r0)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	lw	$r7, 28($r6)
	lwcl	$f0, 4($r7)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f1, $f0
	lw	$r7, 572($r0)
	lw	$r8, 0($r7)
	lw	$r9, 0($r8)
	swcl	$f0, -48($r29)
	bnei	$r9, -1, bnei.91402
	addi	$r2, $r0, 0
	j	cont.91401
bnei.91402:
	addi	$r10, $r0, 99
	sw	$r7, -52($r29)
	sw	$r8, -56($r29)
	bne	$r9, $r10, bne.91404
	addi	$r2, $r0, 1
	j	cont.91403
bne.91404:
	sll	$r10, $r9, 2
	lw	$r10, 80($r10)
	lwcl	$f2, 588($r0)
	lw	$r11, 20($r10)
	lwcl	$f3, 0($r11)
	sub.s	$f2, $f2, $f3
	lwcl	$f3, 592($r0)
	lw	$r11, 20($r10)
	lwcl	$f4, 4($r11)
	sub.s	$f3, $f3, $f4
	lwcl	$f4, 596($r0)
	lw	$r11, 20($r10)
	lwcl	$f5, 8($r11)
	sub.s	$f4, $f4, $f5
	sll	$r9, $r9, 2
	lw	$r9, 800($r9)
	lw	$r11, 4($r10)
	bnei	$r11, 1, bnei.91406
	lwcl	$f5, 0($r9)
	sub.s	$f5, $f5, $f2
	lwcl	$f6, 4($r9)
	mul.s	$f5, $f5, $f6
	lw	$r11, 16($r10)
	lwcl	$f6, 4($r11)
	lwcl	$f7, 792($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f3
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91408
	addi	$r11, $r0, 0
	j	cont.91407
bclf.91408:
	lw	$r11, 16($r10)
	lwcl	$f6, 8($r11)
	lwcl	$f7, 796($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f4
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91410
	addi	$r11, $r0, 0
	j	cont.91409
bclf.91410:
	lwcl	$f6, 4($r9)
	c.eq.s	$f6, $f30
	bclf	bclf.91412
	addi	$r11, $r0, 0
	j	cont.91411
bclf.91412:
	addi	$r11, $r0, 1
cont.91411:
cont.91409:
cont.91407:
	bnei	$r11, 1, bnei.91414
	swcl	$f5, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91405     ! elimjump
bnei.91414:
	lwcl	$f5, 8($r9)
	sub.s	$f5, $f5, $f3
	lwcl	$f6, 12($r9)
	mul.s	$f5, $f5, $f6
	lw	$r11, 16($r10)
	lwcl	$f6, 0($r11)
	lwcl	$f7, 788($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f2
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91416
	addi	$r11, $r0, 0
	j	cont.91415
bclf.91416:
	lw	$r11, 16($r10)
	lwcl	$f6, 8($r11)
	lwcl	$f7, 796($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f4
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91418
	addi	$r11, $r0, 0
	j	cont.91417
bclf.91418:
	lwcl	$f6, 12($r9)
	c.eq.s	$f6, $f30
	bclf	bclf.91420
	addi	$r11, $r0, 0
	j	cont.91419
bclf.91420:
	addi	$r11, $r0, 1
cont.91419:
cont.91417:
cont.91415:
	bnei	$r11, 1, bnei.91422
	swcl	$f5, 576($r0)
	addi	$r9, $r0, 2
	j	cont.91405     ! elimjump
bnei.91422:
	lwcl	$f5, 16($r9)
	sub.s	$f4, $f5, $f4
	lwcl	$f5, 20($r9)
	mul.s	$f4, $f4, $f5
	lw	$r11, 16($r10)
	lwcl	$f5, 0($r11)
	lwcl	$f6, 788($r0)
	mul.s	$f6, $f4, $f6
	add.s	$f2, $f6, $f2
	fabs	$f2, $f2
	c.le.s	$f5, $f2
	bclf	bclf.91424
	addi	$r9, $r0, 0
	j	cont.91423
bclf.91424:
	lw	$r10, 16($r10)
	lwcl	$f2, 4($r10)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f4, $f5
	add.s	$f3, $f5, $f3
	fabs	$f3, $f3
	c.le.s	$f2, $f3
	bclf	bclf.91426
	addi	$r9, $r0, 0
	j	cont.91425
bclf.91426:
	lwcl	$f2, 20($r9)
	c.eq.s	$f2, $f30
	bclf	bclf.91428
	addi	$r9, $r0, 0
	j	cont.91427
bclf.91428:
	addi	$r9, $r0, 1
cont.91427:
cont.91425:
cont.91423:
	bnei	$r9, 1, bnei.91430
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 3
	j	cont.91405     ! elimjump
bnei.91430:
	addi	$r9, $r0, 0
cont.91429:
cont.91421:
cont.91413:
	j	cont.91405
bnei.91406:
	bnei	$r11, 2, bnei.91432
	lwcl	$f5, 0($r9)
	c.le.s	$f30, $f5
	bclf	bclf.91434
	addi	$r9, $r0, 0
	j	cont.91431     ! elimjump
bclf.91434:
	lwcl	$f5, 4($r9)
	mul.s	$f2, $f5, $f2
	lwcl	$f5, 8($r9)
	mul.s	$f3, $f5, $f3
	add.s	$f2, $f2, $f3
	lwcl	$f3, 12($r9)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	addi	$r9, $r0, 1
cont.91433:
	j	cont.91431
bnei.91432:
	lwcl	$f5, 0($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91436
	addi	$r9, $r0, 0
	j	cont.91435
bclf.91436:
	lwcl	$f6, 4($r9)
	mul.s	$f6, $f6, $f2
	lwcl	$f7, 8($r9)
	mul.s	$f7, $f7, $f3
	add.s	$f6, $f6, $f7
	lwcl	$f7, 12($r9)
	mul.s	$f7, $f7, $f4
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f2, $f2
	lw	$r11, 16($r10)
	lwcl	$f8, 0($r11)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f3, $f3
	lw	$r11, 16($r10)
	lwcl	$f9, 4($r11)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f4, $f4
	lw	$r11, 16($r10)
	lwcl	$f9, 8($r11)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r11, 12($r10)
	bnei	$r11, 0, bnei.91438
	fmove	$f2, $f7
	j	cont.91437
bnei.91438:
	mul.s	$f8, $f3, $f4
	lw	$r11, 36($r10)
	lwcl	$f9, 0($r11)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f4, $f4, $f2
	lw	$r11, 36($r10)
	lwcl	$f8, 4($r11)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f7, $f4
	mul.s	$f2, $f2, $f3
	lw	$r11, 36($r10)
	lwcl	$f3, 8($r11)
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
cont.91437:
	lw	$r11, 4($r10)
	bnei	$r11, 3, bnei.91440
	sub.s	$f2, $f2, $f31
	j	cont.91439
bnei.91440:
cont.91439:
	mul.s	$f3, $f6, $f6
	mul.s	$f2, $f5, $f2
	sub.s	$f2, $f3, $f2
	c.le.s	$f2, $f30
	bclf	bclf.91442
	addi	$r9, $r0, 0
	j	cont.91441
bclf.91442:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91444
	sqrt	$f2, $f2
	add.s	$f2, $f6, $f2
	lwcl	$f3, 16($r9)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	j	cont.91443
bnei.91444:
	sqrt	$f2, $f2
	sub.s	$f2, $f6, $f2
	lwcl	$f3, 16($r9)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
cont.91443:
	addi	$r9, $r0, 1
cont.91441:
cont.91435:
cont.91431:
cont.91405:
	bnei	$r9, 0, bnei.91446
	addi	$r2, $r0, 0
	j	cont.91445
bnei.91446:
	lwcl	$f2, 576($r0)
	c.le.s	$f28, $f2
	bclf	bclf.91448
	addi	$r2, $r0, 0
	j	cont.91447
bclf.91448:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91450
	addi	$r2, $r0, 0
	j	cont.91449
bnei.91450:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91452
	addi	$r2, $r0, 1
	j	cont.91451
bnei.91452:
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91454
	addi	$r2, $r0, 0
	j	cont.91453
bnei.91454:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91456
	addi	$r2, $r0, 1
	j	cont.91455
bnei.91456:
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91458
	addi	$r2, $r0, 0
	j	cont.91457
bnei.91458:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91460
	addi	$r2, $r0, 1
	j	cont.91459
bnei.91460:
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91462
	addi	$r2, $r0, 0
	j	cont.91461
bnei.91462:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91464
	addi	$r2, $r0, 1
	j	cont.91463
bnei.91464:
	lw	$r2, -56($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91466
	addi	$r2, $r0, 0
	j	cont.91465
bnei.91466:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91468
	addi	$r2, $r0, 1
	j	cont.91467
bnei.91468:
	lw	$r2, -56($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91470
	addi	$r2, $r0, 0
	j	cont.91469
bnei.91470:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91472
	addi	$r2, $r0, 1
	j	cont.91471
bnei.91472:
	addi	$r2, $r0, 7
	lw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91471:
cont.91469:
cont.91467:
cont.91465:
cont.91463:
cont.91461:
cont.91459:
cont.91457:
cont.91455:
cont.91453:
cont.91451:
cont.91449:
	bnei	$r2, 1, bnei.91474
	addi	$r2, $r0, 1
	j	cont.91473
bnei.91474:
	addi	$r2, $r0, 0
cont.91473:
cont.91447:
cont.91445:
cont.91403:
	bnei	$r2, 1, bnei.91476
	lw	$r2, -56($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91478
	addi	$r2, $r0, 0
	j	cont.91477
bnei.91478:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91480
	addi	$r2, $r0, 1
	j	cont.91479
bnei.91480:
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91482
	addi	$r2, $r0, 0
	j	cont.91481
bnei.91482:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91484
	addi	$r2, $r0, 1
	j	cont.91483
bnei.91484:
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91486
	addi	$r2, $r0, 0
	j	cont.91485
bnei.91486:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91488
	addi	$r2, $r0, 1
	j	cont.91487
bnei.91488:
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91490
	addi	$r2, $r0, 0
	j	cont.91489
bnei.91490:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91492
	addi	$r2, $r0, 1
	j	cont.91491
bnei.91492:
	lw	$r2, -56($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91494
	addi	$r2, $r0, 0
	j	cont.91493
bnei.91494:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91496
	addi	$r2, $r0, 1
	j	cont.91495
bnei.91496:
	lw	$r2, -56($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91498
	addi	$r2, $r0, 0
	j	cont.91497
bnei.91498:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91500
	addi	$r2, $r0, 1
	j	cont.91499
bnei.91500:
	addi	$r2, $r0, 7
	lw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91499:
cont.91497:
cont.91495:
cont.91493:
cont.91491:
cont.91489:
cont.91487:
cont.91485:
cont.91483:
cont.91481:
cont.91479:
cont.91477:
	bnei	$r2, 1, bnei.91502
	addi	$r2, $r0, 1
	j	cont.91475     ! elimjump
bnei.91502:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91501:
	j	cont.91475
bnei.91476:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91475:
cont.91401:
	bnei	$r2, 1, bnei.91504
	j	cont.91503
bnei.91504:
	lwcl	$f0, 604($r0)
	lwcl	$f1, 344($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 348($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 352($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f3, 344($r0)
	mul.s	$f2, $f2, $f3
	lwcl	$f3, 4($r2)
	lwcl	$f4, 348($r0)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r2)
	lwcl	$f4, 352($r0)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	fneg	$f2, $f2
	c.le.s	$f0, $f30
	bclf	bclf.91506
	j	cont.91505
bclf.91506:
	lwcl	$f3, 640($r0)
	lwcl	$f4, 616($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	lwcl	$f4, 620($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	lwcl	$f4, 624($r0)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91505:
	c.le.s	$f2, $f30
	bclf	bclf.91508
	j	cont.91507
bclf.91508:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f3, 640($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91507:
cont.91503:
	lwcl	$f0, 588($r0)
	swcl	$f0, 684($r0)
	lwcl	$f0, 592($r0)
	swcl	$f0, 688($r0)
	lwcl	$f0, 596($r0)
	swcl	$f0, 692($r0)
	lw	$r2, 28($r0)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 588
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, 1796($r0)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.91510
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r2, -60($r29)
	sw	$r5, -64($r29)
	sw	$r3, -68($r29)
	sw	$r4, -72($r29)
	bnei	$r8, -1, bnei.91512
	j	cont.91511
bnei.91512:
	addi	$r9, $r0, 99
	sw	$r6, -76($r29)
	bne	$r8, $r9, bne.91514
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91516
	j	cont.91513     ! elimjump
bnei.91516:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -80($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91518
	j	cont.91513     ! elimjump
bnei.91518:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91520
	j	cont.91513     ! elimjump
bnei.91520:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91522
	j	cont.91513     ! elimjump
bnei.91522:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -80($r29)
	lw	$r4, -64($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91521:
cont.91519:
cont.91517:
cont.91515:
	j	cont.91513
bne.91514:
	sll	$r9, $r8, 2
	lw	$r9, 80($r9)
	lw	$r10, 40($r9)
	lwcl	$f0, 0($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f2, 8($r10)
	lw	$r11, 4($r5)
	sll	$r8, $r8, 2
	lwr	$r8, $r8($r11)	!ld var
	lw	$r11, 4($r9)
	bnei	$r11, 1, bnei.91524
	lw	$r10, 0($r5)
	lwcl	$f3, 0($r8)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r8)
	mul.s	$f3, $f3, $f4
	lw	$r11, 16($r9)
	lwcl	$f4, 4($r11)
	lwcl	$f5, 4($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91526
	addi	$r11, $r0, 0
	j	cont.91525
bclf.91526:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91528
	addi	$r11, $r0, 0
	j	cont.91527
bclf.91528:
	lwcl	$f4, 4($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91530
	addi	$r11, $r0, 0
	j	cont.91529
bclf.91530:
	addi	$r11, $r0, 1
cont.91529:
cont.91527:
cont.91525:
	bnei	$r11, 1, bnei.91532
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91523     ! elimjump
bnei.91532:
	lwcl	$f3, 8($r8)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r8)
	mul.s	$f3, $f3, $f4
	lw	$r11, 16($r9)
	lwcl	$f4, 0($r11)
	lwcl	$f5, 0($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91534
	addi	$r11, $r0, 0
	j	cont.91533
bclf.91534:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91536
	addi	$r11, $r0, 0
	j	cont.91535
bclf.91536:
	lwcl	$f4, 12($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91538
	addi	$r11, $r0, 0
	j	cont.91537
bclf.91538:
	addi	$r11, $r0, 1
cont.91537:
cont.91535:
cont.91533:
	bnei	$r11, 1, bnei.91540
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 2
	j	cont.91523     ! elimjump
bnei.91540:
	lwcl	$f3, 16($r8)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r8)
	mul.s	$f2, $f2, $f3
	lw	$r11, 16($r9)
	lwcl	$f3, 0($r11)
	lwcl	$f4, 0($r10)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91542
	addi	$r8, $r0, 0
	j	cont.91541
bclf.91542:
	lw	$r9, 16($r9)
	lwcl	$f0, 4($r9)
	lwcl	$f3, 4($r10)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91544
	addi	$r8, $r0, 0
	j	cont.91543
bclf.91544:
	lwcl	$f0, 20($r8)
	c.eq.s	$f0, $f30
	bclf	bclf.91546
	addi	$r8, $r0, 0
	j	cont.91545
bclf.91546:
	addi	$r8, $r0, 1
cont.91545:
cont.91543:
cont.91541:
	bnei	$r8, 1, bnei.91548
	swcl	$f2, 576($r0)
	addi	$r8, $r0, 3
	j	cont.91523     ! elimjump
bnei.91548:
	addi	$r8, $r0, 0
cont.91547:
cont.91539:
cont.91531:
	j	cont.91523
bnei.91524:
	bnei	$r11, 2, bnei.91550
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.91552
	addi	$r8, $r0, 0
	j	cont.91549     ! elimjump
bclf.91552:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91551:
	j	cont.91549
bnei.91550:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.91554
	addi	$r8, $r0, 0
	j	cont.91553
bclf.91554:
	lwcl	$f4, 4($r8)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r8)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r10)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.91556
	addi	$r8, $r0, 0
	j	cont.91555
bclf.91556:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.91558
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91557
bnei.91558:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91557:
	addi	$r8, $r0, 1
cont.91555:
cont.91553:
cont.91549:
cont.91523:
	bnei	$r8, 0, bnei.91560
	j	cont.91559
bnei.91560:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91562
	j	cont.91561
bclf.91562:
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91564
	j	cont.91563
bnei.91564:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -80($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91566
	j	cont.91565
bnei.91566:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91568
	j	cont.91567
bnei.91568:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91570
	j	cont.91569
bnei.91570:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -64($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -80($r29)
	lw	$r4, -64($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91569:
cont.91567:
cont.91565:
cont.91563:
cont.91561:
cont.91559:
cont.91513:
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -64($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91511:
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91572
	addi	$r2, $r0, 0
	j	cont.91571
bclf.91572:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91574
	addi	$r2, $r0, 0
	j	cont.91573
bclf.91574:
	addi	$r2, $r0, 1
cont.91573:
cont.91571:
	bnei	$r2, 1, bnei.91576
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -72($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, cont.91575     ! elimjump
	lw	$r2, 572($r0)
	lw	$r4, -68($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	bnei	$r2, 1, bnei.91580
	j	cont.91575     ! elimjump
bnei.91580:
	lw	$r2, -64($r29)
	lw	$r3, 0($r2)
	lwcl	$f0, 604($r0)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lw	$r3, -72($r29)
	lwcl	$f1, 8($r3)
	lwcl	$f2, -32($r29)
	mul.s	$f3, $f1, $f2
	mul.s	$f0, $f3, $f0
	lw	$r2, 0($r2)
	lw	$r3, -20($r29)
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
	bclf	bclf.91582
	j	cont.91581
bclf.91582:
	lwcl	$f3, 640($r0)
	lwcl	$f4, 616($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	lwcl	$f4, 620($r0)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	lwcl	$f4, 624($r0)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91581:
	c.le.s	$f1, $f30
	bclf	bclf.91584
	j	cont.91575     ! elimjump
bclf.91584:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -48($r29)
	mul.s	$f0, $f0, $f1
	lwcl	$f3, 640($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 640($r0)
	lwcl	$f3, 644($r0)
	add.s	$f3, $f3, $f0
	swcl	$f3, 644($r0)
	lwcl	$f3, 648($r0)
	add.s	$f0, $f3, $f0
	swcl	$f0, 648($r0)
cont.91583:
cont.91579:
	j	cont.91575     ! elimjump
bne.91578:
cont.91577:
	j	cont.91575
bnei.91576:
cont.91575:
	lw	$r2, -60($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -48($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.91509
blti.91510:
cont.91509:
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f1, -24($r29)
	c.le.s	$f1, $f0
	bclf	bclf.91586
	jr	$r31
bclf.91586:
	lw	$r2, -16($r29)
	blti	$r2, 4, blti.91588
	j	cont.91587
blti.91588:
	addi	$r3, $r2, 1
	addi	$r4, $r0, -1
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	swr	$r4, $r3($r5)	!st var
cont.91587:
	lw	$r3, -28($r29)
	bnei	$r3, 2, bnei.91590
	lw	$r3, -40($r29)
	lw	$r3, 28($r3)
	lwcl	$f0, 0($r3)
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	addi	$r2, $r2, 1
	lwcl	$f1, 584($r0)
	lwcl	$f2, -4($r29)
	add.s	$f1, $f2, $f1
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	j	trace_ray.5428
bnei.91590:
	jr	$r31
bnei.91384:
	addi	$r2, $r0, -1
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	bnei	$r3, 0, bnei.91592
	jr	$r31
bnei.91592:
	lw	$r2, -20($r29)
	lwcl	$f0, 0($r2)
	lwcl	$f1, 344($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r2)
	lwcl	$f2, 348($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	lwcl	$f2, 352($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91594
	jr	$r31
bclf.91594:
	mul.s	$f1, $f0, $f0
	mul.s	$f0, $f1, $f0
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 356($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 640($r0)
	add.s	$f1, $f1, $f0
	swcl	$f1, 640($r0)
	lwcl	$f1, 644($r0)
	add.s	$f1, $f1, $f0
	swcl	$f1, 644($r0)
	lwcl	$f1, 648($r0)
	add.s	$f0, $f1, $f0
	swcl	$f0, 648($r0)
	jr	$r31
bgti.91378:
	jr	$r31
trace_diffuse_ray.5541:
	lfh	$f1, 20078
	lfl	$f1, 27432
	swcl	$f1, 584($r0)
	addi	$r3, $r0, 0
	lw	$r4, 572($r0)
	swcl	$f0, -4($r29)
	sw	$r2, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91596
	addi	$r2, $r0, 0
	j	cont.91595
bclf.91596:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91598
	addi	$r2, $r0, 0
	j	cont.91597
bclf.91598:
	addi	$r2, $r0, 1
cont.91597:
cont.91595:
	bnei	$r2, 1, bnei.91600
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -8($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.91602
	lw	$r4, 580($r0)
	fmove	$f0, $f30
	swcl	$f0, 604($r0)
	swcl	$f0, 608($r0)
	swcl	$f0, 612($r0)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	lwclr	$f0, $r4($r3)	!ldf var
	c.eq.s	$f0, $f30
	bclf	bclf.91604
	fmove	$f0, $f30
	j	cont.91603
bclf.91604:
	c.le.s	$f0, $f30
	bclf	bclf.91606
	fmove	$f0, $f29
	j	cont.91605
bclf.91606:
	fmove	$f0, $f31
cont.91605:
cont.91603:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91601
bnei.91602:
	bnei	$r4, 2, bnei.91608
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	swcl	$f0, 604($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	swcl	$f0, 608($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	swcl	$f0, 612($r0)
	j	cont.91607
bnei.91608:
	lwcl	$f0, 588($r0)
	lw	$r3, 20($r2)
	lwcl	$f1, 0($r3)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r3, 20($r2)
	lwcl	$f3, 8($r3)
	sub.s	$f2, $f2, $f3
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 16($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f1, $f4
	lw	$r3, 16($r2)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f2, $f5
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.91610
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.91609
bnei.91610:
	lw	$r3, 36($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f6, $f1, $f6
	lw	$r3, 36($r2)
	lwcl	$f7, 4($r3)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	lfh	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swcl	$f3, 604($r0)
	lw	$r3, 36($r2)
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 36($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swcl	$f2, 608($r0)
	lw	$r3, 36($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f0, $f0, $f2
	lw	$r3, 36($r2)
	lwcl	$f2, 0($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swcl	$f0, 612($r0)
cont.91609:
	lw	$r3, 24($r2)
	lwcl	$f0, 604($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.91612
	fmove	$f0, $f31
	j	cont.91611
bclf.91612:
	bnei	$r3, 1, bnei.91614
	div.s	$f0, $f29, $f0
	j	cont.91613
bnei.91614:
	div.s	$f0, $f31, $f0
cont.91613:
cont.91611:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.91607:
cont.91601:
	addi	$r3, $r0, 588
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, 572($r0)
	lw	$r2, 0($r3)
	lw	$r4, 0($r2)
	bnei	$r4, -1, bnei.91616
	addi	$r2, $r0, 0
	j	cont.91615
bnei.91616:
	addi	$r5, $r0, 99
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	bne	$r4, $r5, bne.91618
	addi	$r2, $r0, 1
	j	cont.91617
bne.91618:
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lwcl	$f0, 588($r0)
	lw	$r6, 20($r5)
	lwcl	$f1, 0($r6)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r6, 20($r5)
	lwcl	$f2, 4($r6)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r6, 20($r5)
	lwcl	$f3, 8($r6)
	sub.s	$f2, $f2, $f3
	sll	$r4, $r4, 2
	lw	$r4, 800($r4)
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.91620
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r4)
	mul.s	$f3, $f3, $f4
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91622
	addi	$r6, $r0, 0
	j	cont.91621
bclf.91622:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91624
	addi	$r6, $r0, 0
	j	cont.91623
bclf.91624:
	lwcl	$f4, 4($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.91626
	addi	$r6, $r0, 0
	j	cont.91625
bclf.91626:
	addi	$r6, $r0, 1
cont.91625:
cont.91623:
cont.91621:
	bnei	$r6, 1, bnei.91628
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
	j	cont.91619     ! elimjump
bnei.91628:
	lwcl	$f3, 8($r4)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r4)
	mul.s	$f3, $f3, $f4
	lw	$r6, 16($r5)
	lwcl	$f4, 0($r6)
	lwcl	$f5, 788($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91630
	addi	$r6, $r0, 0
	j	cont.91629
bclf.91630:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91632
	addi	$r6, $r0, 0
	j	cont.91631
bclf.91632:
	lwcl	$f4, 12($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.91634
	addi	$r6, $r0, 0
	j	cont.91633
bclf.91634:
	addi	$r6, $r0, 1
cont.91633:
cont.91631:
cont.91629:
	bnei	$r6, 1, bnei.91636
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 2
	j	cont.91619     ! elimjump
bnei.91636:
	lwcl	$f3, 16($r4)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r4)
	mul.s	$f2, $f2, $f3
	lw	$r6, 16($r5)
	lwcl	$f3, 0($r6)
	lwcl	$f4, 788($r0)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.91638
	addi	$r4, $r0, 0
	j	cont.91637
bclf.91638:
	lw	$r5, 16($r5)
	lwcl	$f0, 4($r5)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91640
	addi	$r4, $r0, 0
	j	cont.91639
bclf.91640:
	lwcl	$f0, 20($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.91642
	addi	$r4, $r0, 0
	j	cont.91641
bclf.91642:
	addi	$r4, $r0, 1
cont.91641:
cont.91639:
cont.91637:
	bnei	$r4, 1, bnei.91644
	swcl	$f2, 576($r0)
	addi	$r4, $r0, 3
	j	cont.91619     ! elimjump
bnei.91644:
	addi	$r4, $r0, 0
cont.91643:
cont.91635:
cont.91627:
	j	cont.91619
bnei.91620:
	bnei	$r6, 2, bnei.91646
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.91648
	addi	$r4, $r0, 0
	j	cont.91645     ! elimjump
bclf.91648:
	lwcl	$f3, 4($r4)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r4)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r4, $r0, 1
cont.91647:
	j	cont.91645
bnei.91646:
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.91650
	addi	$r4, $r0, 0
	j	cont.91649
bclf.91650:
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r4)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r6, 16($r5)
	lwcl	$f6, 0($r6)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r6, 16($r5)
	lwcl	$f7, 4($r6)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r6, 16($r5)
	lwcl	$f7, 8($r6)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.91652
	fmove	$f0, $f5
	j	cont.91651
bnei.91652:
	mul.s	$f6, $f1, $f2
	lw	$r6, 36($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r6, 36($r5)
	lwcl	$f6, 4($r6)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r6, 36($r5)
	lwcl	$f1, 8($r6)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.91651:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.91654
	sub.s	$f0, $f0, $f31
	j	cont.91653
bnei.91654:
cont.91653:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91656
	addi	$r4, $r0, 0
	j	cont.91655
bclf.91656:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.91658
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.91657
bnei.91658:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.91657:
	addi	$r4, $r0, 1
cont.91655:
cont.91649:
cont.91645:
cont.91619:
	bnei	$r4, 0, bnei.91660
	addi	$r2, $r0, 0
	j	cont.91659
bnei.91660:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.91662
	addi	$r2, $r0, 0
	j	cont.91661
bclf.91662:
	lw	$r4, 4($r2)
	bnei	$r4, -1, bnei.91664
	addi	$r2, $r0, 0
	j	cont.91663
bnei.91664:
	sll	$r4, $r4, 2
	lw	$r4, 364($r4)
	addi	$r5, $r0, 0
	addi	$r2, $r5, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91666
	addi	$r2, $r0, 1
	j	cont.91665
bnei.91666:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91668
	addi	$r2, $r0, 0
	j	cont.91667
bnei.91668:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91670
	addi	$r2, $r0, 1
	j	cont.91669
bnei.91670:
	lw	$r2, -20($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91672
	addi	$r2, $r0, 0
	j	cont.91671
bnei.91672:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91674
	addi	$r2, $r0, 1
	j	cont.91673
bnei.91674:
	lw	$r2, -20($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91676
	addi	$r2, $r0, 0
	j	cont.91675
bnei.91676:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91678
	addi	$r2, $r0, 1
	j	cont.91677
bnei.91678:
	lw	$r2, -20($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91680
	addi	$r2, $r0, 0
	j	cont.91679
bnei.91680:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91682
	addi	$r2, $r0, 1
	j	cont.91681
bnei.91682:
	lw	$r2, -20($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91684
	addi	$r2, $r0, 0
	j	cont.91683
bnei.91684:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91686
	addi	$r2, $r0, 1
	j	cont.91685
bnei.91686:
	addi	$r2, $r0, 7
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91685:
cont.91683:
cont.91681:
cont.91679:
cont.91677:
cont.91675:
cont.91673:
cont.91671:
cont.91669:
cont.91667:
cont.91665:
cont.91663:
	bnei	$r2, 1, bnei.91688
	addi	$r2, $r0, 1
	j	cont.91687
bnei.91688:
	addi	$r2, $r0, 0
cont.91687:
cont.91661:
cont.91659:
cont.91617:
	bnei	$r2, 1, bnei.91690
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91692
	addi	$r2, $r0, 0
	j	cont.91691
bnei.91692:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91694
	addi	$r2, $r0, 1
	j	cont.91693
bnei.91694:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91696
	addi	$r2, $r0, 0
	j	cont.91695
bnei.91696:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91698
	addi	$r2, $r0, 1
	j	cont.91697
bnei.91698:
	lw	$r2, -20($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91700
	addi	$r2, $r0, 0
	j	cont.91699
bnei.91700:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91702
	addi	$r2, $r0, 1
	j	cont.91701
bnei.91702:
	lw	$r2, -20($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91704
	addi	$r2, $r0, 0
	j	cont.91703
bnei.91704:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91706
	addi	$r2, $r0, 1
	j	cont.91705
bnei.91706:
	lw	$r2, -20($r29)
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.91708
	addi	$r2, $r0, 0
	j	cont.91707
bnei.91708:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91710
	addi	$r2, $r0, 1
	j	cont.91709
bnei.91710:
	lw	$r2, -20($r29)
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.91712
	addi	$r2, $r0, 0
	j	cont.91711
bnei.91712:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91714
	addi	$r2, $r0, 1
	j	cont.91713
bnei.91714:
	addi	$r2, $r0, 7
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91713:
cont.91711:
cont.91709:
cont.91707:
cont.91705:
cont.91703:
cont.91701:
cont.91699:
cont.91697:
cont.91695:
cont.91693:
cont.91691:
	bnei	$r2, 1, bnei.91716
	addi	$r2, $r0, 1
	j	cont.91689     ! elimjump
bnei.91716:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91715:
	j	cont.91689
bnei.91690:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91689:
cont.91615:
	bnei	$r2, 1, bnei.91718
	jr	$r31
bnei.91718:
	lwcl	$f0, 604($r0)
	lwcl	$f1, 344($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 348($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 352($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91720
	fmove	$f0, $f30
	j	cont.91719
bclf.91720:
cont.91719:
	lwcl	$f1, -4($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -12($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 628($r0)
	lwcl	$f2, 616($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 628($r0)
	lwcl	$f1, 632($r0)
	lwcl	$f2, 620($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 632($r0)
	lwcl	$f1, 636($r0)
	lwcl	$f2, 624($r0)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 636($r0)
	jr	$r31
bnei.91600:
	jr	$r31
iter_trace_diffuse_rays.5564:
	blti	$r5, 0, blti.91722
	sll	$r6, $r5, 2
	lwr	$r6, $r6($r2)	!ld var
	lw	$r6, 0($r6)
	lwcl	$f0, 0($r6)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r6)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	lwcl	$f2, 8($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r5, -16($r29)
	c.le.s	$f30, $f0
	bclf	bclf.91724
	sll	$r6, $r5, 2
	lwr	$r6, $r6($r2)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	lfh	$f1, 20078
	lfl	$f1, 27432
	swcl	$f1, 584($r0)
	lw	$r7, 572($r0)
	lw	$r8, 0($r7)
	lw	$r9, 0($r8)
	swcl	$f0, -20($r29)
	sw	$r6, -24($r29)
	bnei	$r9, -1, bnei.91726
	j	cont.91725
bnei.91726:
	addi	$r10, $r0, 99
	sw	$r7, -28($r29)
	bne	$r9, $r10, bne.91728
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91730
	j	cont.91727     ! elimjump
bnei.91730:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r8, -32($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91732
	j	cont.91727     ! elimjump
bnei.91732:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91734
	j	cont.91727     ! elimjump
bnei.91734:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91736
	j	cont.91727     ! elimjump
bnei.91736:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -32($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91735:
cont.91733:
cont.91731:
cont.91729:
	j	cont.91727
bne.91728:
	sll	$r10, $r9, 2
	lw	$r10, 80($r10)
	lw	$r11, 40($r10)
	lwcl	$f1, 0($r11)
	lwcl	$f2, 4($r11)
	lwcl	$f3, 8($r11)
	lw	$r12, 4($r6)
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r12)	!ld var
	lw	$r12, 4($r10)
	bnei	$r12, 1, bnei.91738
	lw	$r11, 0($r6)
	lwcl	$f4, 0($r9)
	sub.s	$f4, $f4, $f1
	lwcl	$f5, 4($r9)
	mul.s	$f4, $f4, $f5
	lw	$r12, 16($r10)
	lwcl	$f5, 4($r12)
	lwcl	$f6, 4($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f2
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91740
	addi	$r12, $r0, 0
	j	cont.91739
bclf.91740:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91742
	addi	$r12, $r0, 0
	j	cont.91741
bclf.91742:
	lwcl	$f5, 4($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91744
	addi	$r12, $r0, 0
	j	cont.91743
bclf.91744:
	addi	$r12, $r0, 1
cont.91743:
cont.91741:
cont.91739:
	bnei	$r12, 1, bnei.91746
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91737     ! elimjump
bnei.91746:
	lwcl	$f4, 8($r9)
	sub.s	$f4, $f4, $f2
	lwcl	$f5, 12($r9)
	mul.s	$f4, $f4, $f5
	lw	$r12, 16($r10)
	lwcl	$f5, 0($r12)
	lwcl	$f6, 0($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f1
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91748
	addi	$r12, $r0, 0
	j	cont.91747
bclf.91748:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91750
	addi	$r12, $r0, 0
	j	cont.91749
bclf.91750:
	lwcl	$f5, 12($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91752
	addi	$r12, $r0, 0
	j	cont.91751
bclf.91752:
	addi	$r12, $r0, 1
cont.91751:
cont.91749:
cont.91747:
	bnei	$r12, 1, bnei.91754
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 2
	j	cont.91737     ! elimjump
bnei.91754:
	lwcl	$f4, 16($r9)
	sub.s	$f3, $f4, $f3
	lwcl	$f4, 20($r9)
	mul.s	$f3, $f3, $f4
	lw	$r12, 16($r10)
	lwcl	$f4, 0($r12)
	lwcl	$f5, 0($r11)
	mul.s	$f5, $f3, $f5
	add.s	$f1, $f5, $f1
	fabs	$f1, $f1
	c.le.s	$f4, $f1
	bclf	bclf.91756
	addi	$r9, $r0, 0
	j	cont.91755
bclf.91756:
	lw	$r10, 16($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f4, 4($r11)
	mul.s	$f4, $f3, $f4
	add.s	$f2, $f4, $f2
	fabs	$f2, $f2
	c.le.s	$f1, $f2
	bclf	bclf.91758
	addi	$r9, $r0, 0
	j	cont.91757
bclf.91758:
	lwcl	$f1, 20($r9)
	c.eq.s	$f1, $f30
	bclf	bclf.91760
	addi	$r9, $r0, 0
	j	cont.91759
bclf.91760:
	addi	$r9, $r0, 1
cont.91759:
cont.91757:
cont.91755:
	bnei	$r9, 1, bnei.91762
	swcl	$f3, 576($r0)
	addi	$r9, $r0, 3
	j	cont.91737     ! elimjump
bnei.91762:
	addi	$r9, $r0, 0
cont.91761:
cont.91753:
cont.91745:
	j	cont.91737
bnei.91738:
	bnei	$r12, 2, bnei.91764
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.91766
	addi	$r9, $r0, 0
	j	cont.91763     ! elimjump
bclf.91766:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91765:
	j	cont.91763
bnei.91764:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.91768
	addi	$r9, $r0, 0
	j	cont.91767
bclf.91768:
	lwcl	$f5, 4($r9)
	mul.s	$f1, $f5, $f1
	lwcl	$f5, 8($r9)
	mul.s	$f2, $f5, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r9)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r11)
	mul.s	$f3, $f1, $f1
	mul.s	$f2, $f4, $f2
	sub.s	$f2, $f3, $f2
	c.le.s	$f2, $f30
	bclf	bclf.91770
	addi	$r9, $r0, 0
	j	cont.91769
bclf.91770:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91772
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	j	cont.91771
bnei.91772:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
cont.91771:
	addi	$r9, $r0, 1
cont.91769:
cont.91767:
cont.91763:
cont.91737:
	bnei	$r9, 0, bnei.91774
	j	cont.91773
bnei.91774:
	lwcl	$f1, 576($r0)
	lwcl	$f2, 584($r0)
	c.le.s	$f2, $f1
	bclf	bclf.91776
	j	cont.91775
bclf.91776:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91778
	j	cont.91777
bnei.91778:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r8, -32($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91780
	j	cont.91779
bnei.91780:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91782
	j	cont.91781
bnei.91782:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91784
	j	cont.91783
bnei.91784:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -32($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91783:
cont.91781:
cont.91779:
cont.91777:
cont.91775:
cont.91773:
cont.91727:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91725:
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91786
	addi	$r2, $r0, 0
	j	cont.91785
bclf.91786:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91788
	addi	$r2, $r0, 0
	j	cont.91787
bclf.91788:
	addi	$r2, $r0, 1
cont.91787:
cont.91785:
	bnei	$r2, 1, cont.91723     ! elimjump
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.91792
	lw	$r4, 580($r0)
	fmove	$f0, $f30
	swcl	$f0, 604($r0)
	swcl	$f0, 608($r0)
	swcl	$f0, 612($r0)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	lwclr	$f0, $r4($r3)	!ldf var
	c.eq.s	$f0, $f30
	bclf	bclf.91794
	fmove	$f0, $f30
	j	cont.91793
bclf.91794:
	c.le.s	$f0, $f30
	bclf	bclf.91796
	fmove	$f0, $f29
	j	cont.91795
bclf.91796:
	fmove	$f0, $f31
cont.91795:
cont.91793:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91791
bnei.91792:
	bnei	$r4, 2, bnei.91798
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	swcl	$f0, 604($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	swcl	$f0, 608($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	swcl	$f0, 612($r0)
	j	cont.91797
bnei.91798:
	lwcl	$f0, 588($r0)
	lw	$r3, 20($r2)
	lwcl	$f1, 0($r3)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r3, 20($r2)
	lwcl	$f3, 8($r3)
	sub.s	$f2, $f2, $f3
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 16($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f1, $f4
	lw	$r3, 16($r2)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f2, $f5
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.91800
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.91799
bnei.91800:
	lw	$r3, 36($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f6, $f1, $f6
	lw	$r3, 36($r2)
	lwcl	$f7, 4($r3)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	lfh	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swcl	$f3, 604($r0)
	lw	$r3, 36($r2)
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 36($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swcl	$f2, 608($r0)
	lw	$r3, 36($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f0, $f0, $f2
	lw	$r3, 36($r2)
	lwcl	$f2, 0($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swcl	$f0, 612($r0)
cont.91799:
	lw	$r3, 24($r2)
	lwcl	$f0, 604($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.91802
	fmove	$f0, $f31
	j	cont.91801
bclf.91802:
	bnei	$r3, 1, bnei.91804
	div.s	$f0, $f29, $f0
	j	cont.91803
bnei.91804:
	div.s	$f0, $f31, $f0
cont.91803:
cont.91801:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.91797:
cont.91791:
	addi	$r3, $r0, 588
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, 572($r0)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 1, bnei.91806
	j	cont.91723     ! elimjump
bnei.91806:
	lwcl	$f0, 604($r0)
	lwcl	$f1, 344($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 348($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 352($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91808
	fmove	$f0, $f30
	j	cont.91807
bclf.91808:
cont.91807:
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -36($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 628($r0)
	lwcl	$f2, 616($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 628($r0)
	lwcl	$f1, 632($r0)
	lwcl	$f2, 620($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 632($r0)
	lwcl	$f1, 636($r0)
	lwcl	$f2, 624($r0)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 636($r0)
cont.91805:
	j	cont.91723     ! elimjump
bnei.91790:
cont.91789:
	j	cont.91723
bclf.91724:
	addi	$r6, $r5, 1
	sll	$r6, $r6, 2
	lwr	$r6, $r6($r2)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	lfh	$f1, 20078
	lfl	$f1, 27432
	swcl	$f1, 584($r0)
	lw	$r7, 572($r0)
	lw	$r8, 0($r7)
	lw	$r9, 0($r8)
	swcl	$f0, -40($r29)
	sw	$r6, -44($r29)
	bnei	$r9, -1, bnei.91810
	j	cont.91809
bnei.91810:
	addi	$r10, $r0, 99
	sw	$r7, -48($r29)
	bne	$r9, $r10, bne.91812
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91814
	j	cont.91811     ! elimjump
bnei.91814:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r8, -52($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91816
	j	cont.91811     ! elimjump
bnei.91816:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91818
	j	cont.91811     ! elimjump
bnei.91818:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91820
	j	cont.91811     ! elimjump
bnei.91820:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -52($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.91819:
cont.91817:
cont.91815:
cont.91813:
	j	cont.91811
bne.91812:
	sll	$r10, $r9, 2
	lw	$r10, 80($r10)
	lw	$r11, 40($r10)
	lwcl	$f1, 0($r11)
	lwcl	$f2, 4($r11)
	lwcl	$f3, 8($r11)
	lw	$r12, 4($r6)
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r12)	!ld var
	lw	$r12, 4($r10)
	bnei	$r12, 1, bnei.91822
	lw	$r11, 0($r6)
	lwcl	$f4, 0($r9)
	sub.s	$f4, $f4, $f1
	lwcl	$f5, 4($r9)
	mul.s	$f4, $f4, $f5
	lw	$r12, 16($r10)
	lwcl	$f5, 4($r12)
	lwcl	$f6, 4($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f2
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91824
	addi	$r12, $r0, 0
	j	cont.91823
bclf.91824:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91826
	addi	$r12, $r0, 0
	j	cont.91825
bclf.91826:
	lwcl	$f5, 4($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91828
	addi	$r12, $r0, 0
	j	cont.91827
bclf.91828:
	addi	$r12, $r0, 1
cont.91827:
cont.91825:
cont.91823:
	bnei	$r12, 1, bnei.91830
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91821     ! elimjump
bnei.91830:
	lwcl	$f4, 8($r9)
	sub.s	$f4, $f4, $f2
	lwcl	$f5, 12($r9)
	mul.s	$f4, $f4, $f5
	lw	$r12, 16($r10)
	lwcl	$f5, 0($r12)
	lwcl	$f6, 0($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f1
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91832
	addi	$r12, $r0, 0
	j	cont.91831
bclf.91832:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91834
	addi	$r12, $r0, 0
	j	cont.91833
bclf.91834:
	lwcl	$f5, 12($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91836
	addi	$r12, $r0, 0
	j	cont.91835
bclf.91836:
	addi	$r12, $r0, 1
cont.91835:
cont.91833:
cont.91831:
	bnei	$r12, 1, bnei.91838
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 2
	j	cont.91821     ! elimjump
bnei.91838:
	lwcl	$f4, 16($r9)
	sub.s	$f3, $f4, $f3
	lwcl	$f4, 20($r9)
	mul.s	$f3, $f3, $f4
	lw	$r12, 16($r10)
	lwcl	$f4, 0($r12)
	lwcl	$f5, 0($r11)
	mul.s	$f5, $f3, $f5
	add.s	$f1, $f5, $f1
	fabs	$f1, $f1
	c.le.s	$f4, $f1
	bclf	bclf.91840
	addi	$r9, $r0, 0
	j	cont.91839
bclf.91840:
	lw	$r10, 16($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f4, 4($r11)
	mul.s	$f4, $f3, $f4
	add.s	$f2, $f4, $f2
	fabs	$f2, $f2
	c.le.s	$f1, $f2
	bclf	bclf.91842
	addi	$r9, $r0, 0
	j	cont.91841
bclf.91842:
	lwcl	$f1, 20($r9)
	c.eq.s	$f1, $f30
	bclf	bclf.91844
	addi	$r9, $r0, 0
	j	cont.91843
bclf.91844:
	addi	$r9, $r0, 1
cont.91843:
cont.91841:
cont.91839:
	bnei	$r9, 1, bnei.91846
	swcl	$f3, 576($r0)
	addi	$r9, $r0, 3
	j	cont.91821     ! elimjump
bnei.91846:
	addi	$r9, $r0, 0
cont.91845:
cont.91837:
cont.91829:
	j	cont.91821
bnei.91822:
	bnei	$r12, 2, bnei.91848
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.91850
	addi	$r9, $r0, 0
	j	cont.91847     ! elimjump
bclf.91850:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91849:
	j	cont.91847
bnei.91848:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.91852
	addi	$r9, $r0, 0
	j	cont.91851
bclf.91852:
	lwcl	$f5, 4($r9)
	mul.s	$f1, $f5, $f1
	lwcl	$f5, 8($r9)
	mul.s	$f2, $f5, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r9)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r11)
	mul.s	$f3, $f1, $f1
	mul.s	$f2, $f4, $f2
	sub.s	$f2, $f3, $f2
	c.le.s	$f2, $f30
	bclf	bclf.91854
	addi	$r9, $r0, 0
	j	cont.91853
bclf.91854:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91856
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	j	cont.91855
bnei.91856:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
cont.91855:
	addi	$r9, $r0, 1
cont.91853:
cont.91851:
cont.91847:
cont.91821:
	bnei	$r9, 0, bnei.91858
	j	cont.91857
bnei.91858:
	lwcl	$f1, 576($r0)
	lwcl	$f2, 584($r0)
	c.le.s	$f2, $f1
	bclf	bclf.91860
	j	cont.91859
bclf.91860:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91862
	j	cont.91861
bnei.91862:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r8, -52($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91864
	j	cont.91863
bnei.91864:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91866
	j	cont.91865
bnei.91866:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91868
	j	cont.91867
bnei.91868:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -44($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -52($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.91867:
cont.91865:
cont.91863:
cont.91861:
cont.91859:
cont.91857:
cont.91811:
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.91809:
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91870
	addi	$r2, $r0, 0
	j	cont.91869
bclf.91870:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91872
	addi	$r2, $r0, 0
	j	cont.91871
bclf.91872:
	addi	$r2, $r0, 1
cont.91871:
cont.91869:
	bnei	$r2, 1, bnei.91874
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -44($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.91876
	lw	$r4, 580($r0)
	fmove	$f0, $f30
	swcl	$f0, 604($r0)
	swcl	$f0, 608($r0)
	swcl	$f0, 612($r0)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	lwclr	$f0, $r4($r3)	!ldf var
	c.eq.s	$f0, $f30
	bclf	bclf.91878
	fmove	$f0, $f30
	j	cont.91877
bclf.91878:
	c.le.s	$f0, $f30
	bclf	bclf.91880
	fmove	$f0, $f29
	j	cont.91879
bclf.91880:
	fmove	$f0, $f31
cont.91879:
cont.91877:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91875
bnei.91876:
	bnei	$r4, 2, bnei.91882
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	swcl	$f0, 604($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	swcl	$f0, 608($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	swcl	$f0, 612($r0)
	j	cont.91881
bnei.91882:
	lwcl	$f0, 588($r0)
	lw	$r3, 20($r2)
	lwcl	$f1, 0($r3)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 592($r0)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 596($r0)
	lw	$r3, 20($r2)
	lwcl	$f3, 8($r3)
	sub.s	$f2, $f2, $f3
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 16($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f1, $f4
	lw	$r3, 16($r2)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f2, $f5
	lw	$r3, 12($r2)
	bnei	$r3, 0, bnei.91884
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.91883
bnei.91884:
	lw	$r3, 36($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f6, $f1, $f6
	lw	$r3, 36($r2)
	lwcl	$f7, 4($r3)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	lfh	$f7, 16128
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	swcl	$f3, 604($r0)
	lw	$r3, 36($r2)
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 36($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	swcl	$f2, 608($r0)
	lw	$r3, 36($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f0, $f0, $f2
	lw	$r3, 36($r2)
	lwcl	$f2, 0($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	swcl	$f0, 612($r0)
cont.91883:
	lw	$r3, 24($r2)
	lwcl	$f0, 604($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.91886
	fmove	$f0, $f31
	j	cont.91885
bclf.91886:
	bnei	$r3, 1, bnei.91888
	div.s	$f0, $f29, $f0
	j	cont.91887
bnei.91888:
	div.s	$f0, $f31, $f0
cont.91887:
cont.91885:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.91881:
cont.91875:
	addi	$r3, $r0, 588
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, 572($r0)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91890
	j	cont.91873     ! elimjump
bnei.91890:
	lwcl	$f0, 604($r0)
	lwcl	$f1, 344($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 608($r0)
	lwcl	$f2, 348($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 612($r0)
	lwcl	$f2, 352($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91892
	fmove	$f0, $f30
	j	cont.91891
bclf.91892:
cont.91891:
	lwcl	$f1, -40($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -56($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 628($r0)
	lwcl	$f2, 616($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 628($r0)
	lwcl	$f1, 632($r0)
	lwcl	$f2, 620($r0)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 632($r0)
	lwcl	$f1, 636($r0)
	lwcl	$f2, 624($r0)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 636($r0)
cont.91889:
	j	cont.91873
bnei.91874:
cont.91873:
cont.91723:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -2
	blti	$r2, 0, blti.91894
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r5, -8($r29)
	lwcl	$f1, 0($r5)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	sw	$r2, -60($r29)
	c.le.s	$f30, $f0
	bclf	bclf.91896
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.91895
bclf.91896:
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.91895:
	lw	$r2, -60($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5564
blti.91894:
	jr	$r31
blti.91722:
	jr	$r31
trace_diffuse_ray_80percent.5592:
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r2, 0, bnei.91898
	j	cont.91897
bnei.91898:
	lw	$r5, 764($r0)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r6, 28($r0)
	addi	$r6, $r6, -1
	sw	$r5, -16($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -16($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.91897:
	lw	$r2, -12($r29)
	bnei	$r2, 1, bnei.91900
	j	cont.91899
bnei.91900:
	lw	$r3, 768($r0)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -20($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91899:
	lw	$r2, -12($r29)
	bnei	$r2, 2, bnei.91902
	j	cont.91901
bnei.91902:
	lw	$r3, 772($r0)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -24($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -24($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91901:
	lw	$r2, -12($r29)
	bnei	$r2, 3, bnei.91904
	j	cont.91903
bnei.91904:
	lw	$r3, 776($r0)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.91903:
	lw	$r2, -12($r29)
	bnei	$r2, 4, bnei.91906
	jr	$r31
bnei.91906:
	lw	$r2, 780($r0)
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -32($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	j	iter_trace_diffuse_rays.5564
calc_diffuse_using_1point.5615:
	lw	$r4, 20($r2)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	lw	$r7, 16($r2)
	sll	$r8, $r3, 2
	lwr	$r4, $r8($r4)	!ld var
	lwcl	$f0, 0($r4)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 636($r0)
	lw	$r2, 24($r2)
	lw	$r2, 0($r2)
	sll	$r4, $r3, 2
	lwr	$r4, $r4($r5)	!ld var
	sll	$r5, $r3, 2
	lwr	$r5, $r5($r6)	!ld var
	sw	$r7, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r2, 0, bnei.91908
	j	cont.91907
bnei.91908:
	lw	$r6, 764($r0)
	lwcl	$f0, 0($r5)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r5)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r5)
	swcl	$f0, 692($r0)
	lw	$r8, 28($r0)
	addi	$r8, $r8, -1
	sw	$r6, -24($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.91910
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.91909
bclf.91910:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91909:
	addi	$r5, $r0, 116
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91907:
	lw	$r2, -20($r29)
	bnei	$r2, 1, bnei.91912
	j	cont.91911
bnei.91912:
	lw	$r3, 768($r0)
	lw	$r4, -16($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.91914
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.91913
bclf.91914:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.91913:
	addi	$r5, $r0, 116
	lw	$r2, -28($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.91911:
	lw	$r2, -20($r29)
	bnei	$r2, 2, bnei.91916
	j	cont.91915
bnei.91916:
	lw	$r3, 772($r0)
	lw	$r4, -16($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.91918
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.91917
bclf.91918:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91917:
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91915:
	lw	$r2, -20($r29)
	bnei	$r2, 3, bnei.91920
	j	cont.91919
bnei.91920:
	lw	$r3, 776($r0)
	lw	$r4, -16($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.91922
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.91921
bclf.91922:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.91921:
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.91919:
	lw	$r2, -20($r29)
	bnei	$r2, 4, bnei.91924
	j	cont.91923
bnei.91924:
	lw	$r2, 780($r0)
	lw	$r3, -16($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.91926
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.91925
bclf.91926:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.91925:
	addi	$r5, $r0, 116
	lw	$r2, -40($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.91923:
	lw	$r2, -8($r29)
	sll	$r2, $r2, 2
	lw	$r3, -4($r29)
	lwr	$r2, $r2($r3)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	jr	$r31
do_without_neighbors.5662:
	bgti	$r3, 4, bgti.91928
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.91930
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bnei	$r4, 1, bnei.91932
	lw	$r4, 20($r2)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	lw	$r7, 16($r2)
	sll	$r8, $r3, 2
	lwr	$r4, $r8($r4)	!ld var
	lwcl	$f0, 0($r4)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 636($r0)
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	sll	$r8, $r3, 2
	lwr	$r5, $r8($r5)	!ld var
	sll	$r8, $r3, 2
	lwr	$r6, $r8($r6)	!ld var
	sw	$r7, -12($r29)
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	sw	$r4, -24($r29)
	bnei	$r4, 0, bnei.91934
	j	cont.91933
bnei.91934:
	lw	$r8, 764($r0)
	lwcl	$f0, 0($r6)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r6)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r6)
	swcl	$f0, 692($r0)
	lw	$r9, 28($r0)
	addi	$r9, $r9, -1
	sw	$r8, -28($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.91933:
	lw	$r2, -24($r29)
	bnei	$r2, 1, bnei.91936
	j	cont.91935
bnei.91936:
	lw	$r3, 768($r0)
	lw	$r4, -20($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -32($r29)
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91935:
	lw	$r2, -24($r29)
	bnei	$r2, 2, bnei.91938
	j	cont.91937
bnei.91938:
	lw	$r3, 772($r0)
	lw	$r4, -20($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -36($r29)
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.91937:
	lw	$r2, -24($r29)
	bnei	$r2, 3, bnei.91940
	j	cont.91939
bnei.91940:
	lw	$r3, 776($r0)
	lw	$r4, -20($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -40($r29)
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.91939:
	lw	$r2, -24($r29)
	bnei	$r2, 4, bnei.91942
	j	cont.91941
bnei.91942:
	lw	$r2, 780($r0)
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -44($r29)
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91941:
	lw	$r2, -8($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r3)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r3)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.91931
bnei.91932:
cont.91931:
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.91944
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.91946
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -48($r29)
	bnei	$r4, 1, bnei.91948
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.91947
bnei.91948:
cont.91947:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	bgti	$r2, 4, bgti.91950
	lw	$r3, -4($r29)
	lw	$r4, 8($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.91952
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.91954
	lw	$r4, 20($r3)
	lw	$r5, 28($r3)
	lw	$r6, 4($r3)
	lw	$r7, 16($r3)
	sll	$r8, $r2, 2
	lwr	$r4, $r8($r4)	!ld var
	lwcl	$f0, 0($r4)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 636($r0)
	lw	$r4, 24($r3)
	lw	$r4, 0($r4)
	sll	$r8, $r2, 2
	lwr	$r5, $r8($r5)	!ld var
	sll	$r8, $r2, 2
	lwr	$r6, $r8($r6)	!ld var
	sw	$r7, -52($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	sll	$r3, $r2, 2
	lw	$r4, -52($r29)
	lwr	$r3, $r3($r4)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r3)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r3)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.91953
bnei.91954:
cont.91953:
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.91956
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.91958
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -60($r29)
	bnei	$r4, 1, bnei.91960
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.91959
bnei.91960:
cont.91959:
	lw	$r2, -60($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
blti.91958:
	jr	$r31
bgti.91956:
	jr	$r31
blti.91952:
	jr	$r31
bgti.91950:
	jr	$r31
blti.91946:
	jr	$r31
bgti.91944:
	jr	$r31
blti.91930:
	jr	$r31
bgti.91928:
	jr	$r31
try_exploit_neighbors.5713:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.91962
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.91964
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91966
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91968
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91970
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91972
	addi	$r9, $r0, 1
	j	cont.91965     ! elimjump
bne.91972:
	addi	$r9, $r0, 0
cont.91971:
	j	cont.91965     ! elimjump
bne.91970:
	addi	$r9, $r0, 0
cont.91969:
	j	cont.91965     ! elimjump
bne.91968:
	addi	$r9, $r0, 0
cont.91967:
	j	cont.91965
bne.91966:
	addi	$r9, $r0, 0
cont.91965:
	bnei	$r9, 1, bnei.91974
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.91976
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r4)	!ld var
	lw	$r8, 20($r8)
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 20($r10)
	addi	$r11, $r2, 1
	sll	$r11, $r11, 2
	lwr	$r11, $r11($r5)	!ld var
	lw	$r11, 20($r11)
	sll	$r12, $r2, 2
	lwr	$r12, $r12($r6)	!ld var
	lw	$r12, 20($r12)
	sll	$r13, $r7, 2
	lwr	$r8, $r13($r8)	!ld var
	lwcl	$f0, 0($r8)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r8)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r8)
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r9)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r10)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r11)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r12)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r8, 16($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r8)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r8)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.91975
bnei.91976:
cont.91975:
	addi	$r7, $r7, 1
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.91978
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.91980
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91982
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91984
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91986
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.91988
	addi	$r9, $r0, 1
	j	cont.91981     ! elimjump
bne.91988:
	addi	$r9, $r0, 0
cont.91987:
	j	cont.91981     ! elimjump
bne.91986:
	addi	$r9, $r0, 0
cont.91985:
	j	cont.91981     ! elimjump
bne.91984:
	addi	$r9, $r0, 0
cont.91983:
	j	cont.91981
bne.91982:
	addi	$r9, $r0, 0
cont.91981:
	bnei	$r9, 1, bnei.91990
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.91992
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r4)	!ld var
	lw	$r8, 20($r8)
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 20($r10)
	addi	$r11, $r2, 1
	sll	$r11, $r11, 2
	lwr	$r11, $r11($r5)	!ld var
	lw	$r11, 20($r11)
	sll	$r12, $r2, 2
	lwr	$r12, $r12($r6)	!ld var
	lw	$r12, 20($r12)
	sll	$r13, $r7, 2
	lwr	$r8, $r13($r8)	!ld var
	lwcl	$f0, 0($r8)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r8)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r8)
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r9)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r10)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r11)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r7, 2
	lwr	$r8, $r8($r12)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r8, 16($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r8)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r8)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.91991
bnei.91992:
cont.91991:
	addi	$r7, $r7, 1
	j	try_exploit_neighbors.5713
bnei.91990:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.91994
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.91996
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	sw	$r2, -4($r29)
	sw	$r7, -8($r29)
	bnei	$r3, 1, bnei.91998
	lw	$r3, 20($r2)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	lw	$r6, 16($r2)
	sll	$r8, $r7, 2
	lwr	$r3, $r8($r3)	!ld var
	lwcl	$f0, 0($r3)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 636($r0)
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	sll	$r8, $r7, 2
	lwr	$r4, $r8($r4)	!ld var
	sll	$r8, $r7, 2
	lwr	$r5, $r8($r5)	!ld var
	sw	$r6, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -8($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r3)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r3)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.91997
bnei.91998:
cont.91997:
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.92000
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92002
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -16($r29)
	bnei	$r4, 1, bnei.92004
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.92003
bnei.92004:
cont.92003:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
blti.92002:
	jr	$r31
bgti.92000:
	jr	$r31
blti.91996:
	jr	$r31
bgti.91994:
	jr	$r31
blti.91980:
	jr	$r31
bgti.91978:
	jr	$r31
bnei.91974:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.92006
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.92008
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	sw	$r2, -20($r29)
	sw	$r7, -24($r29)
	bnei	$r3, 1, bnei.92010
	addi	$r3, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92009
bnei.92010:
cont.92009:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	bgti	$r2, 4, bgti.92012
	lw	$r3, -20($r29)
	lw	$r4, 8($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92014
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.92016
	lw	$r4, 20($r3)
	lw	$r5, 28($r3)
	lw	$r6, 4($r3)
	lw	$r7, 16($r3)
	sll	$r8, $r2, 2
	lwr	$r4, $r8($r4)	!ld var
	lwcl	$f0, 0($r4)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 636($r0)
	lw	$r4, 24($r3)
	lw	$r4, 0($r4)
	sll	$r8, $r2, 2
	lwr	$r5, $r8($r5)	!ld var
	sll	$r8, $r2, 2
	lwr	$r6, $r8($r6)	!ld var
	sw	$r7, -28($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	lwr	$r3, $r3($r4)	!ld var
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r3)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r3)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92015
bnei.92016:
cont.92015:
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.92018
	lw	$r2, -20($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92020
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -36($r29)
	bnei	$r4, 1, bnei.92022
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.92021
bnei.92022:
cont.92021:
	lw	$r2, -36($r29)
	addi	$r3, $r2, 1
	lw	$r2, -20($r29)
	j	do_without_neighbors.5662
blti.92020:
	jr	$r31
bgti.92018:
	jr	$r31
blti.92014:
	jr	$r31
bgti.92012:
	jr	$r31
blti.92008:
	jr	$r31
bgti.92006:
	jr	$r31
blti.91964:
	jr	$r31
bgti.91962:
	jr	$r31
pretrace_diffuse_rays.5772:
	bgti	$r3, 4, bgti.92024
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92026
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -4($r29)
	bnei	$r4, 1, bnei.92028
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	sll	$r4, $r4, 2
	lw	$r4, 764($r4)
	sll	$r7, $r3, 2
	lwr	$r5, $r7($r5)	!ld var
	sll	$r7, $r3, 2
	lwr	$r6, $r7($r6)	!ld var
	lwcl	$f0, 0($r6)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r6)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r6)
	swcl	$f0, 692($r0)
	lw	$r7, 28($r0)
	addi	$r7, $r7, -1
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r5, -16($r29)
	sw	$r4, -20($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -4($r29)
	sll	$r5, $r4, 2
	lwr	$r3, $r5($r3)	!ld var
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.92027
bnei.92028:
cont.92027:
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.92030
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92032
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -24($r29)
	bnei	$r4, 1, bnei.92034
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	sll	$r4, $r4, 2
	lw	$r4, 764($r4)
	sll	$r7, $r3, 2
	lwr	$r5, $r7($r5)	!ld var
	sll	$r7, $r3, 2
	lwr	$r6, $r7($r6)	!ld var
	lwcl	$f0, 0($r6)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r6)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r6)
	swcl	$f0, 692($r0)
	lw	$r7, 28($r0)
	addi	$r7, $r7, -1
	sw	$r2, -8($r29)
	sw	$r6, -28($r29)
	sw	$r5, -32($r29)
	sw	$r4, -36($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -32($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.92036
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.92035
bclf.92036:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.92035:
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -24($r29)
	sll	$r5, $r4, 2
	lwr	$r3, $r5($r3)	!ld var
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.92033
bnei.92034:
cont.92033:
	lw	$r3, -24($r29)
	addi	$r3, $r3, 1
	j	pretrace_diffuse_rays.5772
blti.92032:
	jr	$r31
bgti.92030:
	jr	$r31
blti.92026:
	jr	$r31
bgti.92024:
	jr	$r31
pretrace_pixels.5794:
	addi	$r5, $r0, 0
	blti	$r3, 0, blti.92038
	lwcl	$f3, 668($r0)
	lw	$r6, 660($r0)
	subu	$r6, $r3, $r6
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f1, -24($r29)
	swcl	$f0, -28($r29)
	swcl	$f3, -32($r29)
	addi	$r2, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -28($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -24($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -20($r29)
	add.s	$f0, $f0, $f1
	swcl	$f0, 740($r0)
	lwcl	$f0, 732($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 740($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.92040
	fmove	$f0, $f31
	j	cont.92039
bclf.92040:
	div.s	$f0, $f31, $f0
cont.92039:
	lwcl	$f4, 732($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 732($r0)
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 736($r0)
	lwcl	$f4, 740($r0)
	mul.s	$f0, $f4, $f0
	swcl	$f0, 740($r0)
	fmove	$f0, $f30
	swcl	$f0, 640($r0)
	swcl	$f0, 644($r0)
	swcl	$f0, 648($r0)
	lwcl	$f0, 332($r0)
	swcl	$f0, 672($r0)
	lwcl	$f0, 336($r0)
	swcl	$f0, 676($r0)
	lwcl	$f0, 340($r0)
	swcl	$f0, 680($r0)
	fmove	$f0, $f31
	lw	$r2, -16($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -8($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -16($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 640($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 644($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 648($r0)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 24($r3)
	lw	$r5, -4($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	blti	$r6, 0, blti.92042
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -36($r29)
	bnei	$r6, 1, bnei.92044
	lw	$r6, 24($r3)
	lw	$r6, 0($r6)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r7, 28($r3)
	lw	$r8, 4($r3)
	sll	$r6, $r6, 2
	lw	$r6, 764($r6)
	lw	$r7, 0($r7)
	lw	$r8, 0($r8)
	lwcl	$f0, 0($r8)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r8)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r8)
	swcl	$f0, 692($r0)
	lw	$r9, 28($r0)
	addi	$r9, $r9, -1
	sw	$r8, -40($r29)
	sw	$r7, -44($r29)
	sw	$r6, -48($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -48($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -44($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	c.le.s	$f30, $f0
	bclf	bclf.92046
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.92045
bclf.92046:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.92045:
	addi	$r5, $r0, 116
	lw	$r2, -48($r29)
	lw	$r3, -44($r29)
	lw	$r4, -40($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.92043
bnei.92044:
cont.92043:
	addi	$r3, $r0, 1
	lw	$r2, -36($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.92041
blti.92042:
cont.92041:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.92048
	addi	$r3, $r3, -5
	j	cont.92047
blti.92048:
cont.92047:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.92050
	lwcl	$f0, 668($r0)
	lw	$r5, 660($r0)
	subu	$r5, $r2, $r5
	sw	$r3, -52($r29)
	sw	$r4, -56($r29)
	sw	$r2, -60($r29)
	swcl	$f0, -64($r29)
	addi	$r2, $r5, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lwcl	$f1, -64($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -28($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -24($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -20($r29)
	add.s	$f0, $f0, $f1
	swcl	$f0, 740($r0)
	lwcl	$f0, 732($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 740($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.92052
	fmove	$f0, $f31
	j	cont.92051
bclf.92052:
	div.s	$f0, $f31, $f0
cont.92051:
	lwcl	$f4, 732($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 732($r0)
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 736($r0)
	lwcl	$f4, 740($r0)
	mul.s	$f0, $f4, $f0
	swcl	$f0, 740($r0)
	fmove	$f0, $f30
	swcl	$f0, 640($r0)
	swcl	$f0, 644($r0)
	swcl	$f0, 648($r0)
	lwcl	$f0, 332($r0)
	swcl	$f0, 672($r0)
	lwcl	$f0, 336($r0)
	swcl	$f0, 676($r0)
	lwcl	$f0, 340($r0)
	swcl	$f0, 680($r0)
	fmove	$f0, $f31
	lw	$r2, -60($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -56($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, -60($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 640($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 644($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 648($r0)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 24($r3)
	lw	$r5, -52($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r6, -56($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, -60($r29)
	addi	$r3, $r2, -1
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	blti	$r2, 5, blti.92054
	addi	$r4, $r2, -5
	j	cont.92053
blti.92054:
	addi	$r4, $r2, 0
cont.92053:
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
blti.92050:
	jr	$r31
blti.92038:
	jr	$r31
pretrace_line.5848:
	lwcl	$f0, 668($r0)
	lw	$r5, 664($r0)
	subu	$r3, $r3, $r5
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 708($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, 720($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 712($r0)
	mul.s	$f2, $f0, $f2
	lwcl	$f3, 724($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 716($r0)
	mul.s	$f0, $f0, $f3
	lwcl	$f3, 728($r0)
	add.s	$f0, $f0, $f3
	lw	$r2, 652($r0)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.92056
	lwcl	$f3, 668($r0)
	lw	$r4, 660($r0)
	subu	$r4, $r2, $r4
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	swcl	$f0, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	swcl	$f3, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f1, -36($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -32($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -28($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -24($r29)
	add.s	$f0, $f0, $f1
	swcl	$f0, 740($r0)
	lwcl	$f0, 732($r0)
	mul.s	$f0, $f0, $f0
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 740($r0)
	mul.s	$f4, $f4, $f4
	add.s	$f0, $f0, $f4
	sqrt	$f0, $f0
	c.eq.s	$f0, $f30
	bclf	bclf.92058
	fmove	$f0, $f31
	j	cont.92057
bclf.92058:
	div.s	$f0, $f31, $f0
cont.92057:
	lwcl	$f4, 732($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 732($r0)
	lwcl	$f4, 736($r0)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 736($r0)
	lwcl	$f4, 740($r0)
	mul.s	$f0, $f4, $f0
	swcl	$f0, 740($r0)
	fmove	$f0, $f30
	swcl	$f0, 640($r0)
	swcl	$f0, 644($r0)
	swcl	$f0, 648($r0)
	lwcl	$f0, 332($r0)
	swcl	$f0, 672($r0)
	lwcl	$f0, 336($r0)
	swcl	$f0, 676($r0)
	lwcl	$f0, 340($r0)
	swcl	$f0, 680($r0)
	fmove	$f0, $f31
	lw	$r2, -20($r29)
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -16($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -20($r29)
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 640($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 644($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 648($r0)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r3, 24($r3)
	lw	$r5, -4($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r6, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	blti	$r2, 5, blti.92060
	addi	$r4, $r2, -5
	j	cont.92059
blti.92060:
	addi	$r4, $r2, 0
cont.92059:
	lw	$r2, -8($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -28($r29)
	lwcl	$f2, -24($r29)
	j	pretrace_pixels.5794
blti.92056:
	jr	$r31
scan_pixel.5881:
	lw	$r7, 652($r0)
	bgt	$r7, $r2, bgt.92062
	jr	$r31
bgt.92062:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r7, 0($r7)
	lwcl	$f0, 0($r7)
	swcl	$f0, 640($r0)
	lwcl	$f0, 4($r7)
	swcl	$f0, 644($r0)
	lwcl	$f0, 8($r7)
	swcl	$f0, 648($r0)
	lw	$r7, 656($r0)
	addi	$r8, $r3, 1
	bgt	$r7, $r8, bgt.92064
	addi	$r7, $r0, 0
	j	cont.92063
bgt.92064:
	bgti	$r3, 0, bgti.92066
	addi	$r7, $r0, 0
	j	cont.92065
bgti.92066:
	lw	$r7, 652($r0)
	addi	$r8, $r2, 1
	bgt	$r7, $r8, bgt.92068
	addi	$r7, $r0, 0
	j	cont.92067
bgt.92068:
	bgti	$r2, 0, bgti.92070
	addi	$r7, $r0, 0
	j	cont.92069
bgti.92070:
	addi	$r7, $r0, 1
cont.92069:
cont.92067:
cont.92065:
cont.92063:
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r7, 1, bnei.92072
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r8, 8($r7)
	lw	$r8, 0($r8)
	blti	$r8, 0, blti.92074
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r8, 8($r8)
	lw	$r8, 0($r8)
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r4)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	bne	$r9, $r8, bne.92076
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r6)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	bne	$r9, $r8, bne.92078
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	bne	$r9, $r8, bne.92080
	addi	$r9, $r2, 1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	bne	$r9, $r8, bne.92082
	addi	$r8, $r0, 1
	j	cont.92075     ! elimjump
bne.92082:
	addi	$r8, $r0, 0
cont.92081:
	j	cont.92075     ! elimjump
bne.92080:
	addi	$r8, $r0, 0
cont.92079:
	j	cont.92075     ! elimjump
bne.92078:
	addi	$r8, $r0, 0
cont.92077:
	j	cont.92075
bne.92076:
	addi	$r8, $r0, 0
cont.92075:
	bnei	$r8, 1, bnei.92084
	lw	$r7, 12($r7)
	lw	$r7, 0($r7)
	bnei	$r7, 1, bnei.92086
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r4)	!ld var
	lw	$r7, 20($r7)
	addi	$r8, $r2, -1
	sll	$r8, $r8, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r8, 20($r8)
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 20($r9)
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 20($r10)
	sll	$r11, $r2, 2
	lwr	$r11, $r11($r6)	!ld var
	lw	$r11, 20($r11)
	lw	$r7, 0($r7)
	lwcl	$f0, 0($r7)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r7)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r7)
	swcl	$f0, 636($r0)
	lw	$r7, 0($r8)
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	lw	$r7, 0($r9)
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	lw	$r7, 0($r10)
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	lw	$r7, 0($r11)
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r7)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r7, 16($r7)
	lw	$r7, 0($r7)
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r7)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r7)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92085
bnei.92086:
cont.92085:
	addi	$r7, $r0, 1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.92071     ! elimjump
bnei.92084:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r8, 8($r7)
	lw	$r8, 0($r8)
	blti	$r8, 0, blti.92088
	lw	$r8, 12($r7)
	lw	$r8, 0($r8)
	sw	$r7, -24($r29)
	bnei	$r8, 1, bnei.92090
	lw	$r8, 20($r7)
	lw	$r9, 28($r7)
	lw	$r10, 4($r7)
	lw	$r11, 16($r7)
	lw	$r8, 0($r8)
	lwcl	$f0, 0($r8)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r8)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r8)
	swcl	$f0, 636($r0)
	lw	$r8, 24($r7)
	lw	$r8, 0($r8)
	lw	$r9, 0($r9)
	lw	$r10, 0($r10)
	sw	$r11, -28($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	addi	$r4, $r10, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	lw	$r2, 0($r2)
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92089
bnei.92090:
cont.92089:
	addi	$r3, $r0, 1
	lw	$r2, -24($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.92092
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.92094
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92093
bnei.92094:
cont.92093:
	addi	$r3, $r0, 2
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92071     ! elimjump
blti.92092:
cont.92091:
	j	cont.92071     ! elimjump
blti.92088:
cont.92087:
cont.92083:
	j	cont.92071     ! elimjump
blti.92074:
cont.92073:
	j	cont.92071
bnei.92072:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	addi	$r8, $r0, 0
	lw	$r9, 8($r7)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.92096
	lw	$r9, 12($r7)
	lw	$r9, 0($r9)
	sw	$r7, -32($r29)
	bnei	$r9, 1, bnei.92098
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92097
bnei.92098:
cont.92097:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	lw	$r3, 4($r3)
	blti	$r3, 0, blti.92100
	lw	$r3, 12($r2)
	lw	$r3, 4($r3)
	bnei	$r3, 1, bnei.92102
	lw	$r3, 20($r2)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	lw	$r6, 16($r2)
	lw	$r3, 4($r3)
	lwcl	$f0, 0($r3)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 636($r0)
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	lw	$r4, 4($r4)
	lw	$r5, 4($r5)
	sw	$r6, -36($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r2, 4($r2)
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92101
bnei.92102:
cont.92101:
	addi	$r3, $r0, 2
	lw	$r2, -32($r29)
	lw	$r4, 8($r2)
	lw	$r4, 8($r4)
	blti	$r4, 0, blti.92104
	lw	$r4, 12($r2)
	lw	$r4, 8($r4)
	bnei	$r4, 1, bnei.92106
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.92105
bnei.92106:
cont.92105:
	addi	$r3, $r0, 3
	lw	$r2, -32($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.92095     ! elimjump
blti.92104:
cont.92103:
	j	cont.92095     ! elimjump
blti.92100:
cont.92099:
	j	cont.92095
blti.92096:
cont.92095:
cont.92071:
	lwcl	$f0, 640($r0)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92108
	blti	$r2, 0, blti.92110
	j	cont.92107     ! elimjump
blti.92110:
	addi	$r2, $r0, 0
cont.92109:
	j	cont.92107
bgt.92108:
	addi	$r2, $r0, 255
cont.92107:
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92112
	blti	$r2, 0, blti.92114
	j	cont.92111     ! elimjump
blti.92114:
	addi	$r2, $r0, 0
cont.92113:
	j	cont.92111
bgt.92112:
	addi	$r2, $r0, 255
cont.92111:
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92116
	blti	$r2, 0, blti.92118
	j	cont.92115     ! elimjump
blti.92118:
	addi	$r2, $r0, 0
cont.92117:
	j	cont.92115
bgt.92116:
	addi	$r2, $r0, 255
cont.92115:
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, 652($r0)
	bgt	$r3, $r2, bgt.92120
	jr	$r31
bgt.92120:
	sll	$r3, $r2, 2
	lw	$r5, -16($r29)
	lwr	$r3, $r3($r5)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	swcl	$f0, 640($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 644($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 648($r0)
	lw	$r3, 656($r0)
	lw	$r4, -12($r29)
	addi	$r6, $r4, 1
	bgt	$r3, $r6, bgt.92122
	addi	$r3, $r0, 0
	j	cont.92121
bgt.92122:
	bgti	$r4, 0, bgti.92124
	addi	$r3, $r0, 0
	j	cont.92123
bgti.92124:
	lw	$r3, 652($r0)
	addi	$r6, $r2, 1
	bgt	$r3, $r6, bgt.92126
	addi	$r3, $r0, 0
	j	cont.92125
bgt.92126:
	bgti	$r2, 0, bgti.92128
	addi	$r3, $r0, 0
	j	cont.92127
bgti.92128:
	addi	$r3, $r0, 1
cont.92127:
cont.92125:
cont.92123:
cont.92121:
	sw	$r2, -40($r29)
	bnei	$r3, 1, bnei.92130
	addi	$r7, $r0, 0
	lw	$r3, -8($r29)
	lw	$r6, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.92129
bnei.92130:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r5)	!ld var
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	blti	$r6, 0, blti.92132
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -44($r29)
	bnei	$r6, 1, bnei.92134
	lw	$r6, 20($r3)
	lw	$r7, 28($r3)
	lw	$r8, 4($r3)
	lw	$r9, 16($r3)
	lw	$r6, 0($r6)
	lwcl	$f0, 0($r6)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r6)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r6)
	swcl	$f0, 636($r0)
	lw	$r6, 24($r3)
	lw	$r6, 0($r6)
	lw	$r7, 0($r7)
	lw	$r8, 0($r8)
	sw	$r9, -48($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r8, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -48($r29)
	lw	$r2, 0($r2)
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92133
bnei.92134:
cont.92133:
	addi	$r3, $r0, 1
	lw	$r2, -44($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.92136
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.92138
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.92137
bnei.92138:
cont.92137:
	addi	$r3, $r0, 2
	lw	$r2, -44($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.92131     ! elimjump
blti.92136:
cont.92135:
	j	cont.92131
blti.92132:
cont.92131:
cont.92129:
	lwcl	$f0, 640($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92140
	blti	$r2, 0, blti.92142
	j	cont.92139     ! elimjump
blti.92142:
	addi	$r2, $r0, 0
cont.92141:
	j	cont.92139
bgt.92140:
	addi	$r2, $r0, 255
cont.92139:
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92144
	blti	$r2, 0, blti.92146
	j	cont.92143     ! elimjump
blti.92146:
	addi	$r2, $r0, 0
cont.92145:
	j	cont.92143
bgt.92144:
	addi	$r2, $r0, 255
cont.92143:
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92148
	blti	$r2, 0, blti.92150
	j	cont.92147     ! elimjump
blti.92150:
	addi	$r2, $r0, 0
cont.92149:
	j	cont.92147
bgt.92148:
	addi	$r2, $r0, 255
cont.92147:
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
scan_line.5902:
	lw	$r7, 656($r0)
	bgt	$r7, $r2, bgt.92152
	jr	$r31
bgt.92152:
	lw	$r7, 656($r0)
	addi	$r7, $r7, -1
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	bgt	$r7, $r2, bgt.92154
	j	cont.92153
bgt.92154:
	addi	$r7, $r2, 1
	lwcl	$f0, 668($r0)
	lw	$r8, 664($r0)
	subu	$r7, $r7, $r8
	swcl	$f0, -24($r29)
	addi	$r2, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 708($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, 720($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 712($r0)
	mul.s	$f2, $f0, $f2
	lwcl	$f3, 724($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 716($r0)
	mul.s	$f0, $f0, $f3
	lwcl	$f3, 728($r0)
	add.s	$f0, $f0, $f3
	lw	$r2, 652($r0)
	addi	$r3, $r2, -1
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92153:
	addi	$r2, $r0, 0
	lw	$r3, 652($r0)
	bgti	$r3, 0, bgti.92156
	j	cont.92155
bgti.92156:
	lw	$r5, -20($r29)
	lw	$r3, 0($r5)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	swcl	$f0, 640($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 644($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 648($r0)
	lw	$r3, 656($r0)
	lw	$r4, -16($r29)
	addi	$r6, $r4, 1
	bgt	$r3, $r6, bgt.92158
	addi	$r3, $r0, 0
	j	cont.92157
bgt.92158:
	bgti	$r4, 0, bgti.92160
	addi	$r3, $r0, 0
	j	cont.92159
bgti.92160:
	lw	$r3, 652($r0)
	bgti	$r3, 1, bgti.92162
	addi	$r3, $r0, 0
	j	cont.92161
bgti.92162:
	addi	$r3, $r0, 0
cont.92161:
cont.92159:
cont.92157:
	bnei	$r3, 1, bnei.92164
	addi	$r7, $r0, 0
	lw	$r3, -12($r29)
	lw	$r6, -8($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92163
bnei.92164:
	lw	$r2, 0($r5)
	lw	$r3, 8($r2)
	lw	$r3, 0($r3)
	blti	$r3, 0, blti.92166
	lw	$r3, 12($r2)
	lw	$r3, 0($r3)
	sw	$r2, -28($r29)
	bnei	$r3, 1, bnei.92168
	lw	$r3, 20($r2)
	lw	$r6, 28($r2)
	lw	$r7, 4($r2)
	lw	$r8, 16($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 636($r0)
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	lw	$r6, 0($r6)
	lw	$r7, 0($r7)
	sw	$r8, -32($r29)
	addi	$r2, $r3, 0
	addi	$r4, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r2, 0($r2)
	lwcl	$f0, 640($r0)
	lwcl	$f1, 0($r2)
	lwcl	$f2, 628($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 640($r0)
	lwcl	$f0, 644($r0)
	lwcl	$f1, 4($r2)
	lwcl	$f2, 632($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 644($r0)
	lwcl	$f0, 648($r0)
	lwcl	$f1, 8($r2)
	lwcl	$f2, 636($r0)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 648($r0)
	j	cont.92167
bnei.92168:
cont.92167:
	addi	$r3, $r0, 1
	lw	$r2, -28($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.92170
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.92172
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92171
bnei.92172:
cont.92171:
	addi	$r3, $r0, 2
	lw	$r2, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92165     ! elimjump
blti.92170:
cont.92169:
	j	cont.92165
blti.92166:
cont.92165:
cont.92163:
	lwcl	$f0, 640($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92174
	blti	$r2, 0, blti.92176
	j	cont.92173     ! elimjump
blti.92176:
	addi	$r2, $r0, 0
cont.92175:
	j	cont.92173
bgt.92174:
	addi	$r2, $r0, 255
cont.92173:
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92178
	blti	$r2, 0, blti.92180
	j	cont.92177     ! elimjump
blti.92180:
	addi	$r2, $r0, 0
cont.92179:
	j	cont.92177
bgt.92178:
	addi	$r2, $r0, 255
cont.92177:
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92182
	blti	$r2, 0, blti.92184
	j	cont.92181     ! elimjump
blti.92184:
	addi	$r2, $r0, 0
cont.92183:
	j	cont.92181
bgt.92182:
	addi	$r2, $r0, 255
cont.92181:
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.92155:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 2
	blti	$r2, 5, blti.92186
	addi	$r4, $r2, -5
	j	cont.92185
blti.92186:
	addi	$r4, $r2, 0
cont.92185:
	lw	$r2, 656($r0)
	bgt	$r2, $r3, bgt.92188
	jr	$r31
bgt.92188:
	lw	$r2, 656($r0)
	addi	$r2, $r2, -1
	sw	$r4, -36($r29)
	sw	$r3, -40($r29)
	bgt	$r2, $r3, bgt.92190
	j	cont.92189
bgt.92190:
	addi	$r2, $r3, 1
	lw	$r5, -12($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.92189:
	addi	$r2, $r0, 0
	lw	$r3, -40($r29)
	lw	$r4, -20($r29)
	lw	$r5, -8($r29)
	lw	$r6, -12($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.92192
	addi	$r6, $r3, -5
	j	cont.92191
blti.92192:
	addi	$r6, $r3, 0
cont.92191:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
init_line_elements.5972:
	blti	$r3, 0, blti.92194
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -16($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -28($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -40($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -36($r29)
	sw	$r3, 24($r2)
	lw	$r3, -32($r29)
	sw	$r3, 20($r2)
	lw	$r3, -28($r29)
	sw	$r3, 16($r2)
	lw	$r3, -24($r29)
	sw	$r3, 12($r2)
	lw	$r3, -20($r29)
	sw	$r3, 8($r2)
	lw	$r3, -16($r29)
	sw	$r3, 4($r2)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92196
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -64($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -64($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -64($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -64($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -76($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -72($r29)
	sw	$r3, 24($r2)
	lw	$r3, -68($r29)
	sw	$r3, 20($r2)
	lw	$r3, -64($r29)
	sw	$r3, 16($r2)
	lw	$r3, -60($r29)
	sw	$r3, 12($r2)
	lw	$r3, -56($r29)
	sw	$r3, 8($r2)
	lw	$r3, -52($r29)
	sw	$r3, 4($r2)
	lw	$r3, -48($r29)
	sw	$r3, 0($r2)
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92198
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -88($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -112($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r3, -112($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r3, -112($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r3, -112($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -108($r29)
	sw	$r3, 24($r2)
	lw	$r3, -104($r29)
	sw	$r3, 20($r2)
	lw	$r3, -100($r29)
	sw	$r3, 16($r2)
	lw	$r3, -96($r29)
	sw	$r3, 12($r2)
	lw	$r3, -92($r29)
	sw	$r3, 8($r2)
	lw	$r3, -88($r29)
	sw	$r3, 4($r2)
	lw	$r3, -84($r29)
	sw	$r3, 0($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92200
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -124($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r3, -124($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r3, -124($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r3, -124($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -136($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -136($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -136($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -136($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -140($r29)
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -140($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -140($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -140($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r3, -140($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -148($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r3, -148($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r3, -148($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r3, -148($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -144($r29)
	sw	$r3, 24($r2)
	lw	$r3, -140($r29)
	sw	$r3, 20($r2)
	lw	$r3, -136($r29)
	sw	$r3, 16($r2)
	lw	$r3, -132($r29)
	sw	$r3, 12($r2)
	lw	$r3, -128($r29)
	sw	$r3, 8($r2)
	lw	$r3, -124($r29)
	sw	$r3, 4($r2)
	lw	$r3, -120($r29)
	sw	$r3, 0($r2)
	lw	$r3, -116($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	init_line_elements.5972
blti.92200:
	addi	$r2, $r5, 0
	jr	$r31
blti.92198:
	addi	$r2, $r5, 0
	jr	$r31
blti.92196:
	addi	$r2, $r5, 0
	jr	$r31
blti.92194:
	jr	$r31
calc_dirvec.6008:
	blti	$r2, 5, blti.92202
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	add.s	$f2, $f2, $f31
	sqrt	$f2, $f2
	div.s	$f0, $f0, $f2
	div.s	$f1, $f1, $f2
	div.s	$f2, $f31, $f2
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
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
blti.92202:
	mul.s	$f0, $f1, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	div.s	$f1, $f31, $f0
	c.le.s	$f1, $f31
	bclf	bclf.92204
	c.le.s	$f29, $f1
	bclf	bclf.92206
	addi	$r5, $r0, 0
	j	cont.92203     ! elimjump
bclf.92206:
	addi	$r5, $r0, -1
cont.92205:
	j	cont.92203
bclf.92204:
	addi	$r5, $r0, 1
cont.92203:
	bnei	$r5, 0, bnei.92208
	j	cont.92207
bnei.92208:
	div.s	$f1, $f31, $f1
cont.92207:
	mul.s	$f4, $f1, $f1
	lfh	$f5, 16672
	lfh	$f6, 17138
	mul.s	$f6, $f6, $f4
	lfh	$f7, 16824
	div.s	$f6, $f6, $f7
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f3, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	sw	$r5, -28($r29)
	swcl	$f1, -32($r29)
	fmove	$f0, $f5
	fmove	$f1, $f4
	fmove	$f2, $f6
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -32($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -28($r29)
	bgti	$r2, 0, bgti.92210
	blti	$r2, 0, blti.92212
	j	cont.92209     ! elimjump
blti.92212:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92211:
	j	cont.92209
bgti.92210:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92209:
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.92214
	addi	$r2, $r0, 0
	j	cont.92213
bclf.92214:
	addi	$r2, $r0, 1
cont.92213:
	fabs	$f5, $f0
	swcl	$f4, -36($r29)
	swcl	$f3, -40($r29)
	swcl	$f0, -44($r29)
	sw	$r2, -48($r29)
	swcl	$f2, -52($r29)
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f1, -52($r29)
	c.le.s	$f0, $f1
	bclf	bclf.92216
	lw	$r2, -48($r29)
	j	cont.92215
bclf.92216:
	lwcl	$f2, -44($r29)
	c.le.s	$f2, $f30
	bclf	bclf.92218
	addi	$r2, $r0, 1
	j	cont.92217
bclf.92218:
	addi	$r2, $r0, 0
cont.92217:
cont.92215:
	c.le.s	$f0, $f1
	bclf	bclf.92220
	j	cont.92219
bclf.92220:
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
cont.92219:
	lwcl	$f2, -36($r29)
	c.le.s	$f0, $f2
	bclf	bclf.92222
	j	cont.92221
bclf.92222:
	sub.s	$f0, $f1, $f0
cont.92221:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.92224
	j	cont.92223
bnei.92224:
	fneg	$f0, $f0
cont.92223:
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -44($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -56($r29)
	fmove	$f0, $f1
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f1, -56($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f1, $f1, $f2
	sqrt	$f1, $f1
	div.s	$f2, $f31, $f1
	c.le.s	$f2, $f31
	bclf	bclf.92226
	c.le.s	$f29, $f2
	bclf	bclf.92228
	addi	$r3, $r0, 0
	j	cont.92225     ! elimjump
bclf.92228:
	addi	$r3, $r0, -1
cont.92227:
	j	cont.92225
bclf.92226:
	addi	$r3, $r0, 1
cont.92225:
	bnei	$r3, 0, bnei.92230
	j	cont.92229
bnei.92230:
	div.s	$f2, $f31, $f2
cont.92229:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 16672
	lfh	$f5, 17138
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16824
	div.s	$f5, $f5, $f6
	swcl	$f0, -60($r29)
	sw	$r2, -64($r29)
	swcl	$f1, -68($r29)
	sw	$r3, -72($r29)
	swcl	$f2, -76($r29)
	fmove	$f0, $f4
	fmove	$f1, $f3
	fmove	$f2, $f5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -76($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -72($r29)
	bgti	$r2, 0, bgti.92232
	blti	$r2, 0, blti.92234
	j	cont.92231     ! elimjump
blti.92234:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92233:
	j	cont.92231
bgti.92232:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92231:
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.92236
	addi	$r2, $r0, 0
	j	cont.92235
bclf.92236:
	addi	$r2, $r0, 1
cont.92235:
	fabs	$f5, $f0
	swcl	$f4, -80($r29)
	swcl	$f3, -84($r29)
	swcl	$f0, -88($r29)
	sw	$r2, -92($r29)
	swcl	$f2, -96($r29)
	fmove	$f0, $f5
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lwcl	$f1, -96($r29)
	c.le.s	$f0, $f1
	bclf	bclf.92238
	lw	$r2, -92($r29)
	j	cont.92237
bclf.92238:
	lwcl	$f2, -88($r29)
	c.le.s	$f2, $f30
	bclf	bclf.92240
	addi	$r2, $r0, 1
	j	cont.92239
bclf.92240:
	addi	$r2, $r0, 0
cont.92239:
cont.92237:
	c.le.s	$f0, $f1
	bclf	bclf.92242
	j	cont.92241
bclf.92242:
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
cont.92241:
	lwcl	$f2, -80($r29)
	c.le.s	$f0, $f2
	bclf	bclf.92244
	j	cont.92243
bclf.92244:
	sub.s	$f0, $f1, $f0
cont.92243:
	lfh	$f1, 16128
	mul.s	$f0, $f0, $f1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 16608
	lfh	$f3, 16656
	div.s	$f3, $f1, $f3
	lfh	$f4, 16544
	sub.s	$f2, $f2, $f3
	div.s	$f2, $f1, $f2
	lfh	$f3, 16448
	sub.s	$f2, $f4, $f2
	div.s	$f2, $f1, $f2
	sub.s	$f2, $f3, $f2
	div.s	$f1, $f1, $f2
	sub.s	$f1, $f31, $f1
	div.s	$f0, $f0, $f1
	lfh	$f1, 16384
	mul.s	$f1, $f1, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f31, $f0
	div.s	$f0, $f1, $f0
	bnei	$r2, 1, bnei.92246
	j	cont.92245
bnei.92246:
	fneg	$f0, $f0
cont.92245:
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -88($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -100($r29)
	fmove	$f0, $f1
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lwcl	$f1, -100($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -68($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -64($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lwcl	$f0, -60($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -12($r29)
	j	calc_dirvec.6008
calc_dirvecs.6068:
	addi	$r5, $r0, 0
	blti	$r2, 0, blti.92248
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
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
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lwcl	$f3, -8($r29)
	fmove	$f1, $f0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -4($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -12($r29)
	addi	$r4, $r2, 2
	lw	$r3, -20($r29)
	lw	$r5, -16($r29)
	lwcl	$f3, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -16($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.92250
	addi	$r3, $r3, -5
	j	cont.92249
blti.92250:
cont.92249:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.92252
	sw	$r2, -24($r29)
	sw	$r3, -28($r29)
	sw	$r4, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -32($r29)
	lw	$r3, -28($r29)
	lw	$r4, -12($r29)
	lwcl	$f3, -8($r29)
	fmove	$f1, $f0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -12($r29)
	addi	$r4, $r2, 2
	lw	$r3, -32($r29)
	lw	$r5, -28($r29)
	lwcl	$f3, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	lw	$r3, -28($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.92254
	addi	$r3, $r3, -5
	j	cont.92253
blti.92254:
cont.92253:
	lw	$r4, -12($r29)
	lwcl	$f0, -8($r29)
	j	calc_dirvecs.6068
blti.92252:
	jr	$r31
blti.92248:
	jr	$r31
calc_dirvec_rows.6098:
	blti	$r2, 0, blti.92256
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	addi	$r3, $r0, 0
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r3, -24($r29)
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
	fmove	$f0, $f30
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lwcl	$f3, -20($r29)
	fmove	$f1, $f0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -16($r29)
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
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r4, $r2, 2
	lw	$r3, -24($r29)
	lw	$r5, -12($r29)
	lwcl	$f3, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	addi	$r4, $r3, 1
	blti	$r4, 5, blti.92258
	addi	$r4, $r4, -5
	j	cont.92257
blti.92258:
cont.92257:
	lw	$r5, -8($r29)
	lwcl	$f0, -20($r29)
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.92260
	addi	$r3, $r3, -5
	j	cont.92259
blti.92260:
cont.92259:
	lw	$r4, -8($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.92262
	sw	$r2, -28($r29)
	sw	$r4, -32($r29)
	sw	$r3, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, -1
	lw	$r3, -36($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.92264
	addi	$r3, $r3, -5
	j	cont.92263
blti.92264:
cont.92263:
	lw	$r4, -32($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6098
blti.92262:
	jr	$r31
blti.92256:
	jr	$r31
create_dirvec_elements.6124:
	blti	$r3, 0, blti.92266
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92268
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
	lw	$r2, 28($r0)
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
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92270
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
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
	addi	$r2, $r3, 0
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92272
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -36($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	create_dirvec_elements.6124
blti.92272:
	jr	$r31
blti.92270:
	jr	$r31
blti.92268:
	jr	$r31
blti.92266:
	jr	$r31
create_dirvecs.6133:
	blti	$r2, 0, blti.92274
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -12($r29)
	sw	$r2, 0($r3)
	lw	$r2, -8($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
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
	lw	$r3, -16($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -24($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
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
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 115
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92276
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -32($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -40($r29)
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
	lw	$r2, -36($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -48($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -52($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 116
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92278
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	addi	$r2, $r4, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -64($r29)
	sw	$r2, 0($r3)
	lw	$r2, -60($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -68($r29)
	addi	$r2, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -72($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -72($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -68($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 117
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -56($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92280
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -76($r29)
	sw	$r3, -80($r29)
	addi	$r2, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -84($r29)
	sw	$r2, 0($r3)
	lw	$r2, -80($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 118
	addi	$r3, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -76($r29)
	addi	$r2, $r2, -1
	j	create_dirvecs.6133
blti.92280:
	jr	$r31
blti.92278:
	jr	$r31
blti.92276:
	jr	$r31
blti.92274:
	jr	$r31
init_dirvec_constants.6146:
	blti	$r3, 0, blti.92282
	sll	$r4, $r3, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	blti	$r5, 0, blti.92284
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	sw	$r4, -12($r29)
	bnei	$r9, 1, bnei.92286
	addi	$r9, $r0, 6
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92288
	swcl	$f1, 4($r2)
	j	cont.92287
bclf.92288:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92290
	addi	$r6, $r0, 0
	j	cont.92289
bclf.92290:
	addi	$r6, $r0, 1
cont.92289:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92292
	fneg	$f0, $f0
	j	cont.92291
bne.92292:
cont.92291:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92287:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92294
	swcl	$f1, 12($r2)
	j	cont.92293
bclf.92294:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92296
	addi	$r6, $r0, 0
	j	cont.92295
bclf.92296:
	addi	$r6, $r0, 1
cont.92295:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92298
	fneg	$f0, $f0
	j	cont.92297
bne.92298:
cont.92297:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92293:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92300
	swcl	$f1, 20($r2)
	j	cont.92299
bclf.92300:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92302
	addi	$r6, $r0, 0
	j	cont.92301
bclf.92302:
	addi	$r6, $r0, 1
cont.92301:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92304
	fneg	$f0, $f0
	j	cont.92303
bne.92304:
cont.92303:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.92299:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92285
bnei.92286:
	bnei	$r9, 2, bnei.92306
	addi	$r9, $r0, 4
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -24($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.92308
	swcl	$f1, 0($r2)
	j	cont.92307
bclf.92308:
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
cont.92307:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92305
bnei.92306:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -24($r29)
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
	bnei	$r5, 0, bnei.92310
	fmove	$f0, $f3
	j	cont.92309
bnei.92310:
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
cont.92309:
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
	bnei	$r5, 0, bnei.92312
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.92311
bnei.92312:
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
cont.92311:
	c.eq.s	$f0, $f30
	bclf	bclf.92314
	j	cont.92313
bclf.92314:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.92313:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
cont.92305:
cont.92285:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92316
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -12($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.92318
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r5, -32($r29)
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92320
	swcl	$f1, 4($r2)
	j	cont.92319
bclf.92320:
	lw	$r4, -40($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92322
	addi	$r6, $r0, 0
	j	cont.92321
bclf.92322:
	addi	$r6, $r0, 1
cont.92321:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92324
	fneg	$f0, $f0
	j	cont.92323
bne.92324:
cont.92323:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92319:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92326
	swcl	$f1, 12($r2)
	j	cont.92325
bclf.92326:
	lw	$r4, -40($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92328
	addi	$r6, $r0, 0
	j	cont.92327
bclf.92328:
	addi	$r6, $r0, 1
cont.92327:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92330
	fneg	$f0, $f0
	j	cont.92329
bne.92330:
cont.92329:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92325:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92332
	swcl	$f1, 20($r2)
	j	cont.92331
bclf.92332:
	lw	$r4, -40($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92334
	addi	$r6, $r0, 0
	j	cont.92333
bclf.92334:
	addi	$r6, $r0, 1
cont.92333:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92336
	fneg	$f0, $f0
	j	cont.92335
bne.92336:
cont.92335:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.92331:
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92317
bnei.92318:
	bnei	$r7, 2, bnei.92338
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r5, -32($r29)
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -40($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.92340
	swcl	$f1, 0($r2)
	j	cont.92339
bclf.92340:
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
cont.92339:
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92337
bnei.92338:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r5, -32($r29)
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -40($r29)
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
	bnei	$r5, 0, bnei.92342
	fmove	$f0, $f3
	j	cont.92341
bnei.92342:
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
cont.92341:
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
	bnei	$r5, 0, bnei.92344
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.92343
bnei.92344:
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
cont.92343:
	c.eq.s	$f0, $f30
	bclf	bclf.92346
	j	cont.92345
bclf.92346:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.92345:
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	swr	$r2, $r4($r5)	!st var
cont.92337:
cont.92317:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.92283     ! elimjump
blti.92316:
cont.92315:
	j	cont.92283
blti.92284:
cont.92283:
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92348
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -48($r29)
	blti	$r5, 0, blti.92350
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	sw	$r3, -52($r29)
	bnei	$r9, 1, bnei.92352
	addi	$r9, $r0, 6
	fmove	$f0, $f30
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	sw	$r6, -64($r29)
	sw	$r8, -68($r29)
	addi	$r2, $r9, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92354
	swcl	$f1, 4($r2)
	j	cont.92353
bclf.92354:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92356
	addi	$r6, $r0, 0
	j	cont.92355
bclf.92356:
	addi	$r6, $r0, 1
cont.92355:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92358
	fneg	$f0, $f0
	j	cont.92357
bne.92358:
cont.92357:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92353:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92360
	swcl	$f1, 12($r2)
	j	cont.92359
bclf.92360:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92362
	addi	$r6, $r0, 0
	j	cont.92361
bclf.92362:
	addi	$r6, $r0, 1
cont.92361:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92364
	fneg	$f0, $f0
	j	cont.92363
bne.92364:
cont.92363:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92359:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92366
	swcl	$f1, 20($r2)
	j	cont.92365
bclf.92366:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92368
	addi	$r6, $r0, 0
	j	cont.92367
bclf.92368:
	addi	$r6, $r0, 1
cont.92367:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92370
	fneg	$f0, $f0
	j	cont.92369
bne.92370:
cont.92369:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.92365:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92351
bnei.92352:
	bnei	$r9, 2, bnei.92372
	addi	$r9, $r0, 4
	fmove	$f0, $f30
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	sw	$r6, -64($r29)
	sw	$r8, -68($r29)
	addi	$r2, $r9, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -64($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.92374
	swcl	$f1, 0($r2)
	j	cont.92373
bclf.92374:
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
cont.92373:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92371
bnei.92372:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	sw	$r6, -64($r29)
	sw	$r8, -68($r29)
	addi	$r2, $r9, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -64($r29)
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
	bnei	$r5, 0, bnei.92376
	fmove	$f0, $f3
	j	cont.92375
bnei.92376:
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
cont.92375:
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
	bnei	$r5, 0, bnei.92378
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.92377
bnei.92378:
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
cont.92377:
	c.eq.s	$f0, $f30
	bclf	bclf.92380
	j	cont.92379
bclf.92380:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.92379:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
cont.92371:
cont.92351:
	addi	$r3, $r3, -1
	lw	$r2, -52($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.92349
blti.92350:
cont.92349:
	lw	$r2, -48($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92382
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -72($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92384
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, -76($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	j	init_dirvec_constants.6146
blti.92384:
	jr	$r31
blti.92382:
	jr	$r31
blti.92348:
	jr	$r31
blti.92282:
	jr	$r31
init_vecset_constants.6154:
	blti	$r2, 0, blti.92386
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	blti	$r5, 0, blti.92388
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	sw	$r4, -12($r29)
	bnei	$r9, 1, bnei.92390
	addi	$r9, $r0, 6
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92392
	swcl	$f1, 4($r2)
	j	cont.92391
bclf.92392:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92394
	addi	$r6, $r0, 0
	j	cont.92393
bclf.92394:
	addi	$r6, $r0, 1
cont.92393:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92396
	fneg	$f0, $f0
	j	cont.92395
bne.92396:
cont.92395:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92391:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92398
	swcl	$f1, 12($r2)
	j	cont.92397
bclf.92398:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92400
	addi	$r6, $r0, 0
	j	cont.92399
bclf.92400:
	addi	$r6, $r0, 1
cont.92399:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92402
	fneg	$f0, $f0
	j	cont.92401
bne.92402:
cont.92401:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92397:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92404
	swcl	$f1, 20($r2)
	j	cont.92403
bclf.92404:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92406
	addi	$r6, $r0, 0
	j	cont.92405
bclf.92406:
	addi	$r6, $r0, 1
cont.92405:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92408
	fneg	$f0, $f0
	j	cont.92407
bne.92408:
cont.92407:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.92403:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92389
bnei.92390:
	bnei	$r9, 2, bnei.92410
	addi	$r9, $r0, 4
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -24($r29)
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.92412
	swcl	$f1, 0($r2)
	j	cont.92411
bclf.92412:
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
cont.92411:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.92409
bnei.92410:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r8, -28($r29)
	addi	$r2, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -24($r29)
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
	bnei	$r5, 0, bnei.92414
	fmove	$f0, $f3
	j	cont.92413
bnei.92414:
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
cont.92413:
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
	bnei	$r5, 0, bnei.92416
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.92415
bnei.92416:
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
cont.92415:
	c.eq.s	$f0, $f30
	bclf	bclf.92418
	j	cont.92417
bclf.92418:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.92417:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
cont.92409:
cont.92389:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92387
blti.92388:
cont.92387:
	lw	$r2, -8($r29)
	lw	$r3, 472($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 468($r2)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 116
	lw	$r2, -8($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92420
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -32($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 472($r2)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 117
	lw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92422
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	sw	$r2, -40($r29)
	sw	$r3, -44($r29)
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r0, 118
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92424
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	addi	$r4, $r0, 119
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -48($r29)
	addi	$r2, $r2, -1
	j	init_vecset_constants.6154
blti.92424:
	jr	$r31
blti.92422:
	jr	$r31
blti.92420:
	jr	$r31
blti.92386:
	jr	$r31
setup_reflections.6262:
	blti	$r2, 0, blti.92426
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	bnei	$r4, 2, bnei.92428
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	c.le.s	$f31, $f0
	bclf	bclf.92430
	jr	$r31
bclf.92430:
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.92432
	sll	$r2, $r2, 2
	lw	$r4, 1796($r0)
	lw	$r3, 28($r3)
	lwcl	$f0, 0($r3)
	sub.s	$f0, $f31, $f0
	lwcl	$f1, 344($r0)
	fneg	$f1, $f1
	lwcl	$f2, 348($r0)
	fneg	$f2, $f2
	lwcl	$f3, 352($r0)
	fneg	$f3, $f3
	addi	$r3, $r2, 1
	lwcl	$f4, 344($r0)
	addi	$r5, $r0, 3
	fmove	$f5, $f30
	swcl	$f1, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	swcl	$f0, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f4, -32($r29)
	addi	$r2, $r5, 0
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -36($r29)
	sw	$r2, 0($r3)
	lwcl	$f0, -32($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r2)
	lwcl	$f1, -24($r29)
	swcl	$f1, 8($r2)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r3, -40($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -40($r29)
	sw	$r3, 4($r2)
	lw	$r3, -16($r29)
	sw	$r3, 0($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	lw	$r4, -8($r29)
	addi	$r5, $r4, 2
	lwcl	$f1, 348($r0)
	addi	$r6, $r0, 3
	fmove	$f2, $f30
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	swcl	$f1, -52($r29)
	addi	$r2, $r6, 0
	fmove	$f0, $f2
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -56($r29)
	sw	$r2, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r2)
	lwcl	$f1, -52($r29)
	swcl	$f1, 4($r2)
	lwcl	$f1, -24($r29)
	swcl	$f1, 8($r2)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r3, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -60($r29)
	sw	$r3, 4($r2)
	lw	$r3, -48($r29)
	sw	$r3, 0($r2)
	lw	$r3, -44($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r3, $r2, 2
	lw	$r4, -8($r29)
	addi	$r4, $r4, 3
	lwcl	$f1, 352($r0)
	addi	$r5, $r0, 3
	fmove	$f2, $f30
	sw	$r3, -64($r29)
	sw	$r4, -68($r29)
	swcl	$f1, -72($r29)
	addi	$r2, $r5, 0
	fmove	$f0, $f2
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -76($r29)
	sw	$r2, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -72($r29)
	swcl	$f0, 8($r2)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r3, -80($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -80($r29)
	sw	$r3, 4($r2)
	lw	$r3, -68($r29)
	sw	$r3, 0($r2)
	lw	$r3, -64($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92432:
	bnei	$r4, 2, bnei.92434
	sll	$r2, $r2, 2
	addi	$r2, $r2, 1
	lw	$r4, 1796($r0)
	lw	$r5, 28($r3)
	lwcl	$f0, 0($r5)
	sub.s	$f0, $f31, $f0
	lw	$r5, 16($r3)
	lwcl	$f1, 344($r0)
	lwcl	$f2, 0($r5)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 348($r0)
	lwcl	$f3, 4($r5)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 352($r0)
	lwcl	$f3, 8($r5)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lfh	$f2, 16384
	lw	$r5, 16($r3)
	lwcl	$f3, 0($r5)
	mul.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f1
	lwcl	$f3, 344($r0)
	sub.s	$f2, $f2, $f3
	lfh	$f3, 16384
	lw	$r5, 16($r3)
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	mul.s	$f3, $f3, $f1
	lwcl	$f4, 348($r0)
	sub.s	$f3, $f3, $f4
	lfh	$f4, 16384
	lw	$r3, 16($r3)
	lwcl	$f5, 8($r3)
	mul.s	$f4, $f4, $f5
	mul.s	$f1, $f4, $f1
	lwcl	$f4, 352($r0)
	sub.s	$f1, $f1, $f4
	addi	$r3, $r0, 3
	fmove	$f4, $f30
	sw	$r4, -84($r29)
	sw	$r2, -88($r29)
	swcl	$f0, -92($r29)
	swcl	$f1, -96($r29)
	swcl	$f3, -100($r29)
	swcl	$f2, -104($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f4
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -108($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -108($r29)
	sw	$r2, 0($r3)
	lwcl	$f0, -104($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -100($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -96($r29)
	swcl	$f0, 8($r2)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r3, -112($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -92($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -112($r29)
	sw	$r3, 4($r2)
	lw	$r3, -88($r29)
	sw	$r3, 0($r2)
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92434:
	jr	$r31
bnei.92428:
	jr	$r31
blti.92426:
	jr	$r31
min_caml_start:
	ori	$r30, $r0, 3560
	lui	$r29, 64
	ori	$r29, $r29, 0
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 4
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 8
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 12
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 16
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	sw	$r30, 0($r0)
	addi	$r30, $r0, 20
	addi	$r3, $r2, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 24
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 28
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 60
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 36
	addi	$r5, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r5)
	sw	$r2, 36($r5)
	sw	$r2, 32($r5)
	sw	$r2, 28($r5)
	sw	$r4, 24($r5)
	sw	$r2, 20($r5)
	sw	$r2, 16($r5)
	sw	$r4, 12($r5)
	sw	$r4, 8($r5)
	sw	$r4, 4($r5)
	sw	$r4, 0($r5)
	addi	$r2, $r5, 0
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 80
	addi	$r2, $r0, 36
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 320
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 332
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 344
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 17279
	sw	$r30, 0($r0)
	addi	$r30, $r0, 356
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 50
	addi	$r3, $r0, 1
	addi	$r4, $r0, -1
	sw	$r30, 0($r0)
	addi	$r30, $r0, 360
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 364
	addi	$r3, $r0, 360
	lw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lw	$r3, 364($r0)
	sw	$r3, 564($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 568
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 572
	addi	$r3, $r0, 568
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 576
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 580
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r30, 0($r0)
	addi	$r30, $r0, 584
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 588
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 600
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 604
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 616
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 628
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 640
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 2
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 652
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 2
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 660
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 668
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 672
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 684
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 696
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 708
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 720
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 732
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 744
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 748
	addi	$r4, $r0, 744
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 752
	addi	$r4, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r4)
	lw	$r2, -12($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r4, 0
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 760
	addi	$r2, $r0, 752
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 764
	addi	$r3, $r0, 760
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 784
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 788
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 60
	sw	$r30, 0($r0)
	addi	$r30, $r0, 800
	addi	$r4, $r0, 784
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1040
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -16($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1048
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1052
	addi	$r4, $r0, 1048
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1056
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -20($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	addi	$r3, $r0, 180
	addi	$r4, $r0, 0
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1064
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	swcl	$f0, 8($r5)
	sw	$r2, 4($r5)
	sw	$r4, 0($r5)
	addi	$r2, $r5, 0
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1076
	addi	$r2, $r0, 1064
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1796
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 128
	sw	$r2, 652($r0)
	sw	$r2, 656($r0)
	addi	$r3, $r0, 64
	sw	$r3, 660($r0)
	addi	$r3, $r0, 64
	sw	$r3, 664($r0)
	lfh	$f0, 17152
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	div.s	$f0, $f1, $f0
	swcl	$f0, 668($r0)
	lw	$r2, 652($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1800
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1812
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1824
	addi	$r3, $r0, 1812
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1844
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1828($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1856
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1832($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1868
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1836($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1880
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1840($r0)
	addi	$r2, $r0, 5
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1892
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1912
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1932
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1944
	addi	$r3, $r0, 1932
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1964
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1948($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1976
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1952($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1988
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1956($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2000
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 1960($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2012
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2024
	addi	$r3, $r0, 2012
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2044
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2028($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2056
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2032($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2068
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2036($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2080
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2040($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2092
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2096
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2108
	addi	$r3, $r0, 2096
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2128
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2112($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2140
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2116($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2152
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2120($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2164
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2124($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2176
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	lw	$r3, -60($r29)
	sw	$r3, 28($r2)
	lw	$r3, -56($r29)
	sw	$r3, 24($r2)
	lw	$r3, -52($r29)
	sw	$r3, 20($r2)
	lw	$r3, -48($r29)
	sw	$r3, 16($r2)
	lw	$r3, -44($r29)
	sw	$r3, 12($r2)
	lw	$r3, -40($r29)
	sw	$r3, 8($r2)
	lw	$r3, -36($r29)
	sw	$r3, 4($r2)
	lw	$r3, -32($r29)
	sw	$r3, 0($r2)
	lw	$r30, 0($r0)
	addi	$r3, $r0, 2176
	lw	$r2, -28($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	sw	$r2, 2208($r0)
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92436
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -64($r29)
	sw	$r3, -68($r29)
	addi	$r2, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -76($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 5
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -88($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r3, -88($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -92($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r3, -92($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r3, -92($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r3, -92($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r3, -100($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -96($r29)
	sw	$r3, 24($r2)
	lw	$r3, -92($r29)
	sw	$r3, 20($r2)
	lw	$r3, -88($r29)
	sw	$r3, 16($r2)
	lw	$r3, -84($r29)
	sw	$r3, 12($r2)
	lw	$r3, -80($r29)
	sw	$r3, 8($r2)
	lw	$r3, -76($r29)
	sw	$r3, 4($r2)
	lw	$r3, -72($r29)
	sw	$r3, 0($r2)
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	j	cont.92435
blti.92436:
	addi	$r2, $r0, 2208
cont.92435:
	sw	$r2, 2212($r0)
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2216
	sw	$r2, -104($r29)
	sw	$r3, -108($r29)
	addi	$r2, $r4, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2228
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2240
	addi	$r3, $r0, 2228
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2260
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2244($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2272
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2248($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2284
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2252($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2296
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2256($r0)
	addi	$r2, $r0, 5
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2308
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2328
	sw	$r2, -120($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2348
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2360
	addi	$r3, $r0, 2348
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2380
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2364($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2392
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2368($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2404
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2372($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2416
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2376($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2428
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2440
	addi	$r3, $r0, 2428
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2460
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2444($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2472
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2448($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2484
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2452($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2496
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2456($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2508
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2512
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2524
	addi	$r3, $r0, 2512
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2544
	sw	$r2, -140($r29)
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2528($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2556
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2532($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2568
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2536($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2580
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2540($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2592
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	lw	$r3, -140($r29)
	sw	$r3, 28($r2)
	lw	$r3, -136($r29)
	sw	$r3, 24($r2)
	lw	$r3, -132($r29)
	sw	$r3, 20($r2)
	lw	$r3, -128($r29)
	sw	$r3, 16($r2)
	lw	$r3, -124($r29)
	sw	$r3, 12($r2)
	lw	$r3, -120($r29)
	sw	$r3, 8($r2)
	lw	$r3, -116($r29)
	sw	$r3, 4($r2)
	lw	$r3, -112($r29)
	sw	$r3, 0($r2)
	lw	$r30, 0($r0)
	addi	$r3, $r0, 2592
	lw	$r2, -108($r29)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	sw	$r2, 2624($r0)
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92438
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -144($r29)
	sw	$r3, -148($r29)
	addi	$r2, $r4, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, -156($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, -156($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, -156($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, -156($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -160($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -164($r29)
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -168($r29)
	addi	$r2, $r3, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r3, -168($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r3, -168($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r3, -168($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r3, -168($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -172($r29)
	addi	$r2, $r3, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lw	$r3, -172($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lw	$r3, -172($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lw	$r3, -172($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lw	$r3, -172($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -176($r29)
	addi	$r2, $r3, 0
	sw	$r31, -180($r29)	!call-dir
	addi	$r29, $r29, -180	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 180
	lw	$r31, -180($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -180($r29)	!call-dir
	addi	$r29, $r29, -180	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 180
	lw	$r31, -180($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -180($r29)
	addi	$r2, $r3, 0
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r3, -180($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r3, -180($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r3, -180($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r3, -180($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -176($r29)
	sw	$r3, 24($r2)
	lw	$r3, -172($r29)
	sw	$r3, 20($r2)
	lw	$r3, -168($r29)
	sw	$r3, 16($r2)
	lw	$r3, -164($r29)
	sw	$r3, 12($r2)
	lw	$r3, -160($r29)
	sw	$r3, 8($r2)
	lw	$r3, -156($r29)
	sw	$r3, 4($r2)
	lw	$r3, -152($r29)
	sw	$r3, 0($r2)
	lw	$r3, -148($r29)
	sll	$r4, $r3, 2
	lw	$r5, -144($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	j	cont.92437
blti.92438:
	addi	$r2, $r0, 2624
cont.92437:
	sw	$r2, 2628($r0)
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2632
	sw	$r2, -184($r29)
	sw	$r3, -188($r29)
	addi	$r2, $r4, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2644
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2656
	addi	$r3, $r0, 2644
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2676
	sw	$r2, -196($r29)
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2660($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2688
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2664($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2700
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2668($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2712
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2672($r0)
	addi	$r2, $r0, 5
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2724
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2744
	sw	$r2, -200($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2764
	sw	$r2, -204($r29)
	addi	$r2, $r3, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2776
	addi	$r3, $r0, 2764
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2796
	sw	$r2, -208($r29)
	addi	$r2, $r3, 0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2780($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2808
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2784($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2820
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2788($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2832
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2792($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2844
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2856
	addi	$r3, $r0, 2844
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2876
	sw	$r2, -212($r29)
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2860($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2888
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2864($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2900
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2868($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2912
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2872($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2924
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2928
	sw	$r2, -216($r29)
	addi	$r2, $r3, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2940
	addi	$r3, $r0, 2928
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2960
	sw	$r2, -220($r29)
	addi	$r2, $r3, 0
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2944($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2972
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2948($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2984
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2952($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2996
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2956($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3008
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	lw	$r3, -220($r29)
	sw	$r3, 28($r2)
	lw	$r3, -216($r29)
	sw	$r3, 24($r2)
	lw	$r3, -212($r29)
	sw	$r3, 20($r2)
	lw	$r3, -208($r29)
	sw	$r3, 16($r2)
	lw	$r3, -204($r29)
	sw	$r3, 12($r2)
	lw	$r3, -200($r29)
	sw	$r3, 8($r2)
	lw	$r3, -196($r29)
	sw	$r3, 4($r2)
	lw	$r3, -192($r29)
	sw	$r3, 0($r2)
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3008
	lw	$r2, -188($r29)
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	sw	$r2, 3040($r0)
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92440
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -224($r29)
	sw	$r3, -228($r29)
	addi	$r2, $r4, 0
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -232($r29)
	addi	$r2, $r3, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -236($r29)
	addi	$r2, $r3, 0
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r3, -236($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r3, -236($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r3, -236($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r3, -236($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -240($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -244($r29)
	addi	$r2, $r3, 0
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -248($r29)
	addi	$r2, $r3, 0
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	lw	$r3, -248($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	lw	$r3, -248($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	lw	$r3, -248($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	lw	$r3, -248($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -252($r29)
	addi	$r2, $r3, 0
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	lw	$r3, -252($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	lw	$r3, -252($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	lw	$r3, -252($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	lw	$r3, -252($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -256($r29)
	addi	$r2, $r3, 0
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -260($r29)
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	lw	$r3, -260($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	lw	$r3, -260($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	lw	$r3, -260($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	lw	$r3, -260($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -256($r29)
	sw	$r3, 24($r2)
	lw	$r3, -252($r29)
	sw	$r3, 20($r2)
	lw	$r3, -248($r29)
	sw	$r3, 16($r2)
	lw	$r3, -244($r29)
	sw	$r3, 12($r2)
	lw	$r3, -240($r29)
	sw	$r3, 8($r2)
	lw	$r3, -236($r29)
	sw	$r3, 4($r2)
	lw	$r3, -232($r29)
	sw	$r3, 0($r2)
	lw	$r3, -228($r29)
	sll	$r4, $r3, 2
	lw	$r5, -224($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	j	cont.92439
blti.92440:
	addi	$r2, $r0, 3040
cont.92439:
	sw	$r2, 3044($r0)
	sw	$r2, -264($r29)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	read_parameter.4059
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 80
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 54
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r2, 652($r0)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r2, 656($r0)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 255
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r2, $r0, 120
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3048
	sw	$r2, -268($r29)
	addi	$r2, $r3, 0
	sw	$r31, -272($r29)	!call-dir
	addi	$r29, $r29, -272	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 272
	lw	$r31, -272($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3048
	sw	$r2, -272($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	sw	$r2, 3060($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3064
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -272($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3072
	addi	$r3, $r0, 3064
	lw	$r2, -268($r29)
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 780($r0)
	lw	$r2, 780($r0)
	sw	$r2, 3552($r0)
	addi	$r3, $r0, 118
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	addi	$r2, $r0, 3
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	create_dirvecs.6133
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	sw	$r3, -276($r29)
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -276($r29)
	addi	$r4, $r3, 0
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	addi	$r2, $r0, 8
	addi	$r3, $r0, 2
	addi	$r4, $r0, 4
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	calc_dirvec_rows.6098
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	lw	$r2, 780($r0)
	sw	$r2, 3556($r0)
	addi	$r3, $r0, 119
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	addi	$r2, $r0, 3
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	init_vecset_constants.6154
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	lwcl	$f0, 344($r0)
	swcl	$f0, 788($r0)
	lwcl	$f0, 348($r0)
	swcl	$f0, 792($r0)
	lwcl	$f0, 352($r0)
	swcl	$f0, 796($r0)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92442
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.92444
	addi	$r4, $r0, 6
	fmove	$f0, $f30
	sw	$r2, -280($r29)
	sw	$r3, -284($r29)
	addi	$r2, $r4, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	lwcl	$f0, 788($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92446
	swcl	$f1, 4($r2)
	j	cont.92445
bclf.92446:
	lw	$r3, -284($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 788($r0)
	c.le.s	$f30, $f0
	bclf	bclf.92448
	addi	$r5, $r0, 0
	j	cont.92447
bclf.92448:
	addi	$r5, $r0, 1
cont.92447:
	lw	$r6, 16($r3)
	lwcl	$f0, 0($r6)
	bne	$r4, $r5, bne.92450
	fneg	$f0, $f0
	j	cont.92449
bne.92450:
cont.92449:
	swcl	$f0, 0($r2)
	lwcl	$f0, 788($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92445:
	lwcl	$f0, 792($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92452
	swcl	$f1, 12($r2)
	j	cont.92451
bclf.92452:
	lw	$r3, -284($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 792($r0)
	c.le.s	$f30, $f0
	bclf	bclf.92454
	addi	$r5, $r0, 0
	j	cont.92453
bclf.92454:
	addi	$r5, $r0, 1
cont.92453:
	lw	$r6, 16($r3)
	lwcl	$f0, 4($r6)
	bne	$r4, $r5, bne.92456
	fneg	$f0, $f0
	j	cont.92455
bne.92456:
cont.92455:
	swcl	$f0, 8($r2)
	lwcl	$f0, 792($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92451:
	lwcl	$f0, 796($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92458
	swcl	$f1, 20($r2)
	j	cont.92457
bclf.92458:
	lw	$r3, -284($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 796($r0)
	c.le.s	$f30, $f0
	bclf	bclf.92460
	addi	$r5, $r0, 0
	j	cont.92459
bclf.92460:
	addi	$r5, $r0, 1
cont.92459:
	lw	$r3, 16($r3)
	lwcl	$f0, 8($r3)
	bne	$r4, $r5, bne.92462
	fneg	$f0, $f0
	j	cont.92461
bne.92462:
cont.92461:
	swcl	$f0, 16($r2)
	lwcl	$f0, 796($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.92457:
	lw	$r3, -280($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
	j	cont.92443
bnei.92444:
	bnei	$r4, 2, bnei.92464
	addi	$r4, $r0, 4
	fmove	$f0, $f30
	sw	$r2, -280($r29)
	sw	$r3, -284($r29)
	addi	$r2, $r4, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	lwcl	$f0, 788($r0)
	lw	$r3, -284($r29)
	lw	$r4, 16($r3)
	lwcl	$f1, 0($r4)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 792($r0)
	lw	$r4, 16($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 796($r0)
	lw	$r4, 16($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.92466
	swcl	$f1, 0($r2)
	j	cont.92465
bclf.92466:
	div.s	$f1, $f29, $f0
	swcl	$f1, 0($r2)
	lw	$r4, 16($r3)
	lwcl	$f1, 0($r4)
	div.s	$f1, $f1, $f0
	fneg	$f1, $f1
	swcl	$f1, 4($r2)
	lw	$r4, 16($r3)
	lwcl	$f1, 4($r4)
	div.s	$f1, $f1, $f0
	fneg	$f1, $f1
	swcl	$f1, 8($r2)
	lw	$r3, 16($r3)
	lwcl	$f1, 8($r3)
	div.s	$f0, $f1, $f0
	fneg	$f0, $f0
	swcl	$f0, 12($r2)
cont.92465:
	lw	$r3, -280($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
	j	cont.92463
bnei.92464:
	addi	$r4, $r0, 5
	fmove	$f0, $f30
	sw	$r2, -280($r29)
	sw	$r3, -284($r29)
	addi	$r2, $r4, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	lwcl	$f0, 788($r0)
	lwcl	$f1, 792($r0)
	lwcl	$f2, 796($r0)
	mul.s	$f3, $f0, $f0
	lw	$r3, -284($r29)
	lw	$r4, 16($r3)
	lwcl	$f4, 0($r4)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r4, 16($r3)
	lwcl	$f5, 4($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r4, 16($r3)
	lwcl	$f5, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r4, 12($r3)
	bnei	$r4, 0, bnei.92468
	fmove	$f0, $f3
	j	cont.92467
bnei.92468:
	mul.s	$f4, $f1, $f2
	lw	$r4, 36($r3)
	lwcl	$f5, 0($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r4, 36($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r4, 36($r3)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.92467:
	lwcl	$f1, 788($r0)
	lw	$r4, 16($r3)
	lwcl	$f2, 0($r4)
	mul.s	$f1, $f1, $f2
	fneg	$f1, $f1
	lwcl	$f2, 792($r0)
	lw	$r4, 16($r3)
	lwcl	$f3, 4($r4)
	mul.s	$f2, $f2, $f3
	fneg	$f2, $f2
	lwcl	$f3, 796($r0)
	lw	$r4, 16($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f3, $f3, $f4
	fneg	$f3, $f3
	swcl	$f0, 0($r2)
	lw	$r4, 12($r3)
	bnei	$r4, 0, bnei.92470
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.92469
bnei.92470:
	lwcl	$f4, 796($r0)
	lw	$r4, 36($r3)
	lwcl	$f5, 4($r4)
	mul.s	$f4, $f4, $f5
	lwcl	$f5, 792($r0)
	lw	$r4, 36($r3)
	lwcl	$f6, 8($r4)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	sub.s	$f1, $f1, $f4
	swcl	$f1, 4($r2)
	lwcl	$f1, 796($r0)
	lw	$r4, 36($r3)
	lwcl	$f4, 0($r4)
	mul.s	$f1, $f1, $f4
	lwcl	$f4, 788($r0)
	lw	$r4, 36($r3)
	lwcl	$f5, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f1, $f1, $f4
	lfh	$f4, 16128
	mul.s	$f1, $f1, $f4
	sub.s	$f1, $f2, $f1
	swcl	$f1, 8($r2)
	lwcl	$f1, 792($r0)
	lw	$r4, 36($r3)
	lwcl	$f2, 0($r4)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 788($r0)
	lw	$r3, 36($r3)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f1, $f1, $f2
	lfh	$f2, 16128
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $f3, $f1
	swcl	$f1, 12($r2)
cont.92469:
	c.eq.s	$f0, $f30
	bclf	bclf.92472
	j	cont.92471
bclf.92472:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.92471:
	lw	$r3, -280($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
cont.92463:
cont.92443:
	addi	$r3, $r3, -1
	addi	$r2, $r0, 1040
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	j	cont.92441
blti.92442:
cont.92441:
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	setup_reflections.6262
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	addi	$r3, $r0, 0
	lw	$r2, -184($r29)
	addi	$r4, $r3, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	addi	$r2, $r0, 0
	addi	$r6, $r0, 2
	lw	$r3, -104($r29)
	lw	$r4, -184($r29)
	lw	$r5, -264($r29)
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	scan_line.5902
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
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

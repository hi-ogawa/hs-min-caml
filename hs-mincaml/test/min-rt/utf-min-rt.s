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
	bclf	bclf.88486
	sub.s	$f3, $f0, $f31
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f31
	add.s	$f0, $f0, $f2
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.88488
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.88490
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.88492
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
bclf.88492:
	jr	$r31
bclf.88490:
	jr	$r31
bclf.88488:
	jr	$r31
bclf.88486:
	fmove	$f0, $f2
	jr	$r31
sin_sub.2460:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88494
	c.le.s	$f30, $f0
	bclf	bclf.88496
	jr	$r31
bclf.88496:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88498
	c.le.s	$f30, $f0
	bclf	bclf.88500
	jr	$r31
bclf.88500:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88502
	c.le.s	$f30, $f0
	bclf	bclf.88504
	jr	$r31
bclf.88504:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88506
	c.le.s	$f30, $f0
	bclf	bclf.88508
	jr	$r31
bclf.88508:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88506:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88502:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88510
	c.le.s	$f30, $f0
	bclf	bclf.88512
	jr	$r31
bclf.88512:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88510:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88498:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88514
	c.le.s	$f30, $f0
	bclf	bclf.88516
	jr	$r31
bclf.88516:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88518
	c.le.s	$f30, $f0
	bclf	bclf.88520
	jr	$r31
bclf.88520:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88518:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88514:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88522
	c.le.s	$f30, $f0
	bclf	bclf.88524
	jr	$r31
bclf.88524:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88522:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88494:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88526
	c.le.s	$f30, $f0
	bclf	bclf.88528
	jr	$r31
bclf.88528:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88530
	c.le.s	$f30, $f0
	bclf	bclf.88532
	jr	$r31
bclf.88532:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88534
	c.le.s	$f30, $f0
	bclf	bclf.88536
	jr	$r31
bclf.88536:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88534:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88530:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88538
	c.le.s	$f30, $f0
	bclf	bclf.88540
	jr	$r31
bclf.88540:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88538:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88526:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88542
	c.le.s	$f30, $f0
	bclf	bclf.88544
	jr	$r31
bclf.88544:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88546
	c.le.s	$f30, $f0
	bclf	bclf.88548
	jr	$r31
bclf.88548:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88546:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88542:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.88550
	c.le.s	$f30, $f0
	bclf	bclf.88552
	jr	$r31
bclf.88552:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.88550:
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
	bclf	bclf.88554
	addi	$r2, $r0, 0
	j	cont.88553
bclf.88554:
	addi	$r2, $r0, 1
cont.88553:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f1, -20($r29)
	c.le.s	$f4, $f5
	bclf	bclf.88556
	c.le.s	$f30, $f4
	bclf	bclf.88558
	fmove	$f0, $f4
	j	cont.88555     ! elimjump
bclf.88558:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88560
	c.le.s	$f30, $f4
	bclf	bclf.88562
	fmove	$f0, $f4
	j	cont.88555     ! elimjump
bclf.88562:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88564
	c.le.s	$f30, $f4
	bclf	bclf.88566
	fmove	$f0, $f4
	j	cont.88555     ! elimjump
bclf.88566:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88565:
	j	cont.88555     ! elimjump
bclf.88564:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88563:
cont.88561:
	j	cont.88555     ! elimjump
bclf.88560:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88568
	c.le.s	$f30, $f4
	bclf	bclf.88570
	fmove	$f0, $f4
	j	cont.88555     ! elimjump
bclf.88570:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88569:
	j	cont.88555     ! elimjump
bclf.88568:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88567:
cont.88559:
cont.88557:
	j	cont.88555
bclf.88556:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88572
	c.le.s	$f30, $f4
	bclf	bclf.88574
	fmove	$f0, $f4
	j	cont.88571     ! elimjump
bclf.88574:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88576
	c.le.s	$f30, $f4
	bclf	bclf.88578
	fmove	$f0, $f4
	j	cont.88571     ! elimjump
bclf.88578:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88577:
	j	cont.88571     ! elimjump
bclf.88576:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88575:
cont.88573:
	j	cont.88571
bclf.88572:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.88580
	c.le.s	$f30, $f4
	bclf	bclf.88582
	fmove	$f0, $f4
	j	cont.88579     ! elimjump
bclf.88582:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88581:
	j	cont.88579
bclf.88580:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.88579:
cont.88571:
cont.88555:
	lwcl	$f1, -20($r29)
	c.le.s	$f0, $f1
	bclf	bclf.88584
	lw	$r2, -16($r29)
	j	cont.88583
bclf.88584:
	lwcl	$f2, -12($r29)
	c.le.s	$f2, $f30
	bclf	bclf.88586
	addi	$r2, $r0, 1
	j	cont.88585
bclf.88586:
	addi	$r2, $r0, 0
cont.88585:
cont.88583:
	c.le.s	$f0, $f1
	bclf	bclf.88588
	j	cont.88587
bclf.88588:
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
cont.88587:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.88590
	j	cont.88589
bclf.88590:
	sub.s	$f0, $f1, $f0
cont.88589:
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
	bnei	$r2, 1, bnei.88592
	jr	$r31
bnei.88592:
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
	bgt	$r3, $r2, bgt.88594
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88596
	addi	$r3, $r0, 0
	j	cont.88593     ! elimjump
bgt.88596:
	addi	$r3, $r0, 1
cont.88595:
	j	cont.88593
bgt.88594:
	addi	$r3, $r0, 1
cont.88593:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88598
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.88600
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.88602
	lw	$r2, 4($r0)
	jr	$r31
bnei.88602:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.88600:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88604
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88606
	addi	$r2, $r0, 0
	j	cont.88603     ! elimjump
bgt.88606:
	addi	$r2, $r0, 1
cont.88605:
	j	cont.88603
bgt.88604:
	addi	$r2, $r0, 1
cont.88603:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88608
	addi	$r2, $r0, 0
	j	read_int_token.2507
bnei.88608:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.88610
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88612
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bne.88612:
	sw	$r4, 8($r0)
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.88610:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.88598:
	lw	$r3, 8($r0)
	bnei	$r3, 0, bnei.88614
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.88616
	addi	$r3, $r0, -1
	sw	$r3, 8($r0)
	j	cont.88613     ! elimjump
bne.88616:
	sw	$r4, 8($r0)
cont.88615:
	j	cont.88613
bnei.88614:
cont.88613:
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
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.88624
	lw	$r2, 4($r0)
	jr	$r31
bnei.88624:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.88622:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.88626
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88628
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bne.88628:
	sw	$r4, 8($r0)
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.88626:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
read_int.2543:
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
	bgt	$r2, $r3, bgt.88630
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88632
	addi	$r2, $r0, 0
	j	cont.88629     ! elimjump
bgt.88632:
	addi	$r2, $r0, 1
cont.88631:
	j	cont.88629
bgt.88630:
	addi	$r2, $r0, 1
cont.88629:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88634
	addi	$r2, $r0, 0
	j	read_int_token.2507
bnei.88634:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.88636
	sw	$r4, 8($r0)
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.88636:
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
	bgt	$r3, $r2, bgt.88638
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88640
	addi	$r3, $r0, 0
	j	cont.88637     ! elimjump
bgt.88640:
	addi	$r3, $r0, 1
cont.88639:
	j	cont.88637
bgt.88638:
	addi	$r3, $r0, 1
cont.88637:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88642
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.88644
	jr	$r31
bnei.88644:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.88646
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.88648
	addi	$r2, $r0, 0
	j	cont.88645     ! elimjump
bgt.88648:
	addi	$r2, $r0, 1
cont.88647:
	j	cont.88645
bgt.88646:
	addi	$r2, $r0, 1
cont.88645:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.88650
	addi	$r2, $r0, 0
	j	read_float_token1.2565
bnei.88650:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.88652
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.88654
	addi	$r2, $r0, -1
	sw	$r2, 24($r0)
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	j	read_float_token1.2565
bne.88654:
	sw	$r4, 24($r0)
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	j	read_float_token1.2565
bnei.88652:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	j	read_float_token1.2565
bnei.88642:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.88656
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.88658
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.88655     ! elimjump
bne.88658:
	sw	$r4, 24($r0)
cont.88657:
	j	cont.88655
bnei.88656:
cont.88655:
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
	bgt	$r3, $r2, bgt.88660
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88662
	addi	$r3, $r0, 0
	j	cont.88659     ! elimjump
bgt.88662:
	addi	$r3, $r0, 1
cont.88661:
	j	cont.88659
bgt.88660:
	addi	$r3, $r0, 1
cont.88659:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88664
	jr	$r31
bnei.88664:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.88666
	addi	$r3, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r3, bne.88668
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
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
bne.88668:
	sw	$r4, 24($r0)
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
bnei.88666:
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
	bgt	$r3, $r2, bgt.88670
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88672
	addi	$r3, $r0, 0
	j	cont.88669     ! elimjump
bgt.88672:
	addi	$r3, $r0, 1
cont.88671:
	j	cont.88669
bgt.88670:
	addi	$r3, $r0, 1
cont.88669:
	bnei	$r3, 1, bnei.88674
	lw	$r2, -4($r29)
	bnei	$r2, 1, bnei.88676
	jr	$r31
bnei.88676:
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.88678
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88680
	addi	$r3, $r0, 0
	j	cont.88677     ! elimjump
bgt.88680:
	addi	$r3, $r0, 1
cont.88679:
	j	cont.88677
bgt.88678:
	addi	$r3, $r0, 1
cont.88677:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88682
	addi	$r2, $r0, 0
	j	read_float_token2.2595
bnei.88682:
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
bnei.88674:
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
	bgt	$r3, $r2, bgt.88684
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.88686
	addi	$r3, $r0, 0
	j	cont.88683     ! elimjump
bgt.88686:
	addi	$r3, $r0, 1
cont.88685:
	j	cont.88683
bgt.88684:
	addi	$r3, $r0, 1
cont.88683:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.88688
	jr	$r31
bnei.88688:
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
mul_sub.2655:
	bnei	$r3, 0, bnei.88690
	addi	$r2, $r0, 0
	jr	$r31
bnei.88690:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88692
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88694
	addi	$r2, $r0, 0
	jr	$r31
bnei.88694:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88696
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
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
	j	mul_sub.2655
bnei.88704:
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
bnei.88700:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88706
	addi	$r2, $r2, 0
	jr	$r31
bnei.88706:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88708
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88708:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88696:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88710
	addi	$r2, $r2, 0
	jr	$r31
bnei.88710:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88712
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88714
	addi	$r2, $r2, 0
	jr	$r31
bnei.88714:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88716
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88716:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88712:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88718
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88718:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88720
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88720:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -24($r29)
	sw	$r5, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88692:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88722
	addi	$r2, $r2, 0
	jr	$r31
bnei.88722:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88724
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88726
	addi	$r2, $r2, 0
	jr	$r31
bnei.88726:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88728
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88730
	addi	$r2, $r2, 0
	jr	$r31
bnei.88730:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88732
	sll	$r4, $r4, 1
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
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -36($r29)
	addi	$r2, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88728:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88734
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88734:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88736
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -40($r29)
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88736:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -40($r29)
	sw	$r5, -44($r29)
	addi	$r2, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88724:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88738
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88738:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88740
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88742
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88742:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88744
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -48($r29)
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88744:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -48($r29)
	sw	$r5, -52($r29)
	addi	$r2, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88740:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88746
	addi	$r3, $r5, 0
	addu	$r3, $r3, $r4
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88746:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.88748
	sll	$r6, $r6, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -48($r29)
	sw	$r5, -56($r29)
	addi	$r2, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88748:
	sll	$r7, $r6, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	sw	$r4, -48($r29)
	sw	$r5, -56($r29)
	sw	$r6, -60($r29)
	addi	$r2, $r7, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r3, -60($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2668:
	blti	$r3, 0, blti.88750
	bnei	$r3, 0, bnei.88752
	addi	$r2, $r0, 0
	jr	$r31
bnei.88752:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88754
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88756
	addi	$r2, $r0, 0
	jr	$r31
bnei.88756:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88758
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88760
	addi	$r2, $r0, 0
	jr	$r31
bnei.88760:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88762
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.88762:
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
bnei.88758:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88764
	addi	$r2, $r2, 0
	jr	$r31
bnei.88764:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88766
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88766:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88754:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88768
	addi	$r2, $r2, 0
	jr	$r31
bnei.88768:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88770
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88772
	addi	$r2, $r2, 0
	jr	$r31
bnei.88772:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88774
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88774:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88770:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88776
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88776:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88778
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88778:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	sw	$r4, -24($r29)
	sw	$r5, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
blti.88750:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	bnei	$r3, 0, bnei.88780
	addi	$r2, $r0, 0
	jr	$r31
bnei.88780:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88782
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88784
	addi	$r2, $r0, 0
	jr	$r31
bnei.88784:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88786
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88788
	addi	$r2, $r0, 0
	jr	$r31
bnei.88788:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.88790
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.88790:
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
bnei.88786:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88792
	addi	$r2, $r2, 0
	jr	$r31
bnei.88792:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88794
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88794:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -36($r29)
	sw	$r4, -40($r29)
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88782:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88796
	addi	$r2, $r2, 0
	jr	$r31
bnei.88796:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88798
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88800
	addi	$r2, $r2, 0
	jr	$r31
bnei.88800:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.88802
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88802:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	sw	$r4, -48($r29)
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88798:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.88804
	addi	$r3, $r4, 0
	addu	$r2, $r3, $r2
	jr	$r31
bnei.88804:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.88806
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.88806:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	sw	$r4, -52($r29)
	sw	$r5, -56($r29)
	addi	$r2, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
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
	blti	$r3, 0, blti.88808
	bnei	$r3, 0, bnei.88810
	addi	$r2, $r0, 0
	j	cont.88807     ! elimjump
bnei.88810:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.88812
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.88814
	addi	$r2, $r0, 0
	j	cont.88807     ! elimjump
bnei.88814:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88816
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.88807     ! elimjump
bnei.88816:
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
cont.88815:
cont.88813:
	j	cont.88807     ! elimjump
bnei.88812:
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.88818
	addi	$r2, $r6, 0
	j	cont.88807     ! elimjump
bnei.88818:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88820
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	j	cont.88807     ! elimjump
bnei.88820:
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
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
cont.88819:
cont.88817:
cont.88811:
cont.88809:
	j	cont.88807
blti.88808:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	bnei	$r8, 0, bnei.88822
	addi	$r2, $r0, 0
	j	cont.88821
bnei.88822:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88824
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	bnei	$r8, 0, bnei.88826
	addi	$r2, $r0, 0
	j	cont.88823     ! elimjump
bnei.88826:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88828
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.88823     ! elimjump
bnei.88828:
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
cont.88827:
cont.88825:
	j	cont.88823
bnei.88824:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	bnei	$r8, 0, bnei.88830
	addi	$r2, $r7, 0
	j	cont.88829
bnei.88830:
	sra	$r10, $r8, 1
	sll	$r10, $r10, 1
	subu	$r10, $r8, $r10
	bnei	$r10, 0, bnei.88832
	sll	$r9, $r9, 1
	sra	$r8, $r8, 1
	sw	$r7, -36($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	j	cont.88831
bnei.88832:
	sll	$r10, $r9, 1
	sra	$r8, $r8, 1
	sw	$r7, -36($r29)
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
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
cont.88831:
cont.88829:
cont.88823:
cont.88821:
cont.88807:
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88834
	addi	$r2, $r4, 0
	jr	$r31
bgti.88834:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88836
	bne	$r2, $r5, bne.88838
	lw	$r2, -8($r29)
	jr	$r31
bne.88838:
	lw	$r2, -8($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -44($r29)
	blti	$r6, 0, blti.88840
	bnei	$r6, 0, bnei.88842
	addi	$r2, $r0, 0
	j	cont.88839     ! elimjump
bnei.88842:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.88844
	sll	$r7, $r3, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.88839     ! elimjump
bnei.88844:
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
cont.88843:
cont.88841:
	j	cont.88839
blti.88840:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.88846
	addi	$r2, $r0, 0
	j	cont.88845
bnei.88846:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88848
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.88847
bnei.88848:
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
cont.88847:
cont.88845:
cont.88839:
	lw	$r3, -8($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88850
	addi	$r2, $r4, 0
	jr	$r31
bgti.88850:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88852
	bne	$r2, $r5, bne.88854
	lw	$r2, -44($r29)
	jr	$r31
bne.88854:
	lw	$r2, -44($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -52($r29)
	blti	$r6, 0, blti.88856
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.88855
blti.88856:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.88855:
	lw	$r3, -44($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88858
	addi	$r2, $r4, 0
	jr	$r31
bgti.88858:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88860
	bne	$r2, $r5, bne.88862
	lw	$r2, -52($r29)
	jr	$r31
bne.88862:
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
	bgti	$r3, 1, bgti.88864
	addi	$r2, $r4, 0
	jr	$r31
bgti.88864:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88866
	bne	$r2, $r3, bne.88868
	lw	$r2, -56($r29)
	jr	$r31
bne.88868:
	lw	$r2, -4($r29)
	lw	$r5, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88866:
	lw	$r2, -4($r29)
	lw	$r4, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88860:
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
	bgti	$r3, 1, bgti.88870
	addi	$r2, $r4, 0
	jr	$r31
bgti.88870:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88872
	bne	$r2, $r3, bne.88874
	lw	$r2, -60($r29)
	jr	$r31
bne.88874:
	lw	$r2, -4($r29)
	lw	$r5, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88872:
	lw	$r2, -4($r29)
	lw	$r4, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88852:
	lw	$r2, -44($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -64($r29)
	blti	$r6, 0, blti.88876
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.88875
blti.88876:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.88875:
	lw	$r3, -8($r29)
	lw	$r4, -44($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88878
	addi	$r2, $r4, 0
	jr	$r31
bgti.88878:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88880
	bne	$r2, $r5, bne.88882
	lw	$r2, -64($r29)
	jr	$r31
bne.88882:
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
	bgti	$r3, 1, bgti.88884
	addi	$r2, $r4, 0
	jr	$r31
bgti.88884:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88886
	bne	$r2, $r3, bne.88888
	lw	$r2, -68($r29)
	jr	$r31
bne.88888:
	lw	$r2, -4($r29)
	lw	$r5, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88886:
	lw	$r2, -4($r29)
	lw	$r4, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88880:
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
	bgti	$r3, 1, bgti.88890
	addi	$r2, $r4, 0
	jr	$r31
bgti.88890:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88892
	bne	$r2, $r3, bne.88894
	lw	$r2, -72($r29)
	jr	$r31
bne.88894:
	lw	$r2, -4($r29)
	lw	$r5, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88892:
	lw	$r2, -4($r29)
	lw	$r4, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88836:
	lw	$r2, -8($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -76($r29)
	blti	$r6, 0, blti.88896
	bnei	$r6, 0, bnei.88898
	addi	$r2, $r0, 0
	j	cont.88895     ! elimjump
bnei.88898:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.88900
	sll	$r7, $r4, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.88895     ! elimjump
bnei.88900:
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
cont.88899:
cont.88897:
	j	cont.88895
blti.88896:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.88902
	addi	$r2, $r0, 0
	j	cont.88901
bnei.88902:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.88904
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.88903
bnei.88904:
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
cont.88903:
cont.88901:
cont.88895:
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88906
	addi	$r2, $r4, 0
	jr	$r31
bgti.88906:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88908
	bne	$r2, $r5, bne.88910
	lw	$r2, -76($r29)
	jr	$r31
bne.88910:
	lw	$r2, -76($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -84($r29)
	blti	$r6, 0, blti.88912
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.88911
blti.88912:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.88911:
	lw	$r3, -76($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88914
	addi	$r2, $r4, 0
	jr	$r31
bgti.88914:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88916
	bne	$r2, $r5, bne.88918
	lw	$r2, -84($r29)
	jr	$r31
bne.88918:
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
	bgti	$r3, 1, bgti.88920
	addi	$r2, $r4, 0
	jr	$r31
bgti.88920:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88922
	bne	$r2, $r3, bne.88924
	lw	$r2, -88($r29)
	jr	$r31
bne.88924:
	lw	$r2, -4($r29)
	lw	$r5, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88922:
	lw	$r2, -4($r29)
	lw	$r4, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88916:
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
	bgti	$r3, 1, bgti.88926
	addi	$r2, $r4, 0
	jr	$r31
bgti.88926:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88928
	bne	$r2, $r3, bne.88930
	lw	$r2, -92($r29)
	jr	$r31
bne.88930:
	lw	$r2, -4($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88928:
	lw	$r2, -4($r29)
	lw	$r4, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88908:
	lw	$r2, -76($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -96($r29)
	blti	$r6, 0, blti.88932
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.88931
blti.88932:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.88931:
	lw	$r3, -20($r29)
	lw	$r4, -76($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.88934
	addi	$r2, $r4, 0
	jr	$r31
bgti.88934:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.88936
	bne	$r2, $r5, bne.88938
	lw	$r2, -96($r29)
	jr	$r31
bne.88938:
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
	bgti	$r3, 1, bgti.88940
	addi	$r2, $r4, 0
	jr	$r31
bgti.88940:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88942
	bne	$r2, $r3, bne.88944
	lw	$r2, -100($r29)
	jr	$r31
bne.88944:
	lw	$r2, -4($r29)
	lw	$r5, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88942:
	lw	$r2, -4($r29)
	lw	$r4, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88936:
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
	bgti	$r3, 1, bgti.88946
	addi	$r2, $r4, 0
	jr	$r31
bgti.88946:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88948
	bne	$r2, $r3, bne.88950
	lw	$r2, -104($r29)
	jr	$r31
bne.88950:
	lw	$r2, -4($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.88948:
	lw	$r2, -4($r29)
	lw	$r4, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
print_int.2704:
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.88952
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
	bgt	$r3, $r2, bgt.88954
	bne	$r2, $r3, bne.88956
	addi	$r2, $r0, 1
	j	cont.88953     ! elimjump
bne.88956:
	addi	$r2, $r0, 0
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 0
cont.88955:
	j	cont.88953
bgt.88954:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.88958
	bne	$r2, $r3, bne.88960
	addi	$r2, $r0, 2
	j	cont.88957     ! elimjump
bne.88960:
	addi	$r2, $r0, 1
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88959:
	j	cont.88957
bgt.88958:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 2
cont.88957:
cont.88953:
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
	bgti	$r3, 0, bgti.88962
	addi	$r2, $r0, 0
	j	cont.88961
bgti.88962:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88961:
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
	bgt	$r3, $r2, bgt.88964
	bne	$r2, $r3, bne.88966
	addi	$r2, $r0, 5
	j	cont.88963     ! elimjump
bne.88966:
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
	bgt	$r3, $r2, bgt.88968
	bne	$r2, $r3, bne.88970
	addi	$r2, $r0, 2
	j	cont.88963     ! elimjump
bne.88970:
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
	bgt	$r3, $r2, bgt.88972
	bne	$r2, $r3, bne.88974
	addi	$r2, $r0, 1
	j	cont.88963     ! elimjump
bne.88974:
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
cont.88973:
	j	cont.88963     ! elimjump
bgt.88972:
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
cont.88971:
cont.88969:
	j	cont.88963     ! elimjump
bgt.88968:
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
	bgt	$r3, $r2, bgt.88976
	bne	$r2, $r3, bne.88978
	addi	$r2, $r0, 3
	j	cont.88963     ! elimjump
bne.88978:
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
cont.88977:
	j	cont.88963     ! elimjump
bgt.88976:
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
cont.88975:
cont.88967:
cont.88965:
	j	cont.88963
bgt.88964:
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
	bgt	$r3, $r2, bgt.88980
	bne	$r2, $r3, bne.88982
	addi	$r2, $r0, 7
	j	cont.88979     ! elimjump
bne.88982:
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
	bgt	$r3, $r2, bgt.88984
	bne	$r2, $r3, bne.88986
	addi	$r2, $r0, 6
	j	cont.88979     ! elimjump
bne.88986:
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
cont.88985:
	j	cont.88979     ! elimjump
bgt.88984:
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
cont.88983:
cont.88981:
	j	cont.88979
bgt.88980:
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
	bgt	$r3, $r2, bgt.88988
	bne	$r2, $r3, bne.88990
	addi	$r2, $r0, 8
	j	cont.88987     ! elimjump
bne.88990:
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
cont.88989:
	j	cont.88987
bgt.88988:
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
cont.88987:
cont.88979:
cont.88963:
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
	bgti	$r3, 0, bgti.88992
	lw	$r4, -24($r29)
	bnei	$r4, 1, bnei.88994
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.88991     ! elimjump
bnei.88994:
	addi	$r2, $r0, 0
cont.88993:
	j	cont.88991
bgti.88992:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
cont.88991:
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
	bgt	$r3, $r2, bgt.88996
	bne	$r2, $r3, bne.88998
	addi	$r2, $r0, 5
	j	cont.88995     ! elimjump
bne.88998:
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
	bgt	$r3, $r2, bgt.89000
	bne	$r2, $r3, bne.89002
	addi	$r2, $r0, 2
	j	cont.88995     ! elimjump
bne.89002:
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
	bgt	$r3, $r2, bgt.89004
	bne	$r2, $r3, bne.89006
	addi	$r2, $r0, 1
	j	cont.88995     ! elimjump
bne.89006:
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
cont.89005:
	j	cont.88995     ! elimjump
bgt.89004:
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
cont.89003:
cont.89001:
	j	cont.88995     ! elimjump
bgt.89000:
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
	bgt	$r3, $r2, bgt.89008
	bne	$r2, $r3, bne.89010
	addi	$r2, $r0, 3
	j	cont.88995     ! elimjump
bne.89010:
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
cont.89009:
	j	cont.88995     ! elimjump
bgt.89008:
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
cont.89007:
cont.88999:
cont.88997:
	j	cont.88995
bgt.88996:
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
	bgt	$r3, $r2, bgt.89012
	bne	$r2, $r3, bne.89014
	addi	$r2, $r0, 7
	j	cont.89011     ! elimjump
bne.89014:
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
	bgt	$r3, $r2, bgt.89016
	bne	$r2, $r3, bne.89018
	addi	$r2, $r0, 6
	j	cont.89011     ! elimjump
bne.89018:
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
cont.89017:
	j	cont.89011     ! elimjump
bgt.89016:
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
cont.89015:
cont.89013:
	j	cont.89011
bgt.89012:
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
	bgt	$r3, $r2, bgt.89020
	bne	$r2, $r3, bne.89022
	addi	$r2, $r0, 8
	j	cont.89019     ! elimjump
bne.89022:
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
cont.89021:
	j	cont.89019
bgt.89020:
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
cont.89019:
cont.89011:
cont.88995:
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
	bgti	$r3, 0, bgti.89024
	lw	$r4, -72($r29)
	bnei	$r4, 1, bnei.89026
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89023     ! elimjump
bnei.89026:
	addi	$r2, $r0, 0
cont.89025:
	j	cont.89023
bgti.89024:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89023:
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
	bgt	$r3, $r2, bgt.89028
	bne	$r2, $r3, bne.89030
	addi	$r2, $r0, 5
	j	cont.89027     ! elimjump
bne.89030:
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
	bgt	$r3, $r2, bgt.89032
	bne	$r2, $r3, bne.89034
	addi	$r2, $r0, 2
	j	cont.89027     ! elimjump
bne.89034:
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
	bgt	$r3, $r2, bgt.89036
	bne	$r2, $r3, bne.89038
	addi	$r2, $r0, 1
	j	cont.89027     ! elimjump
bne.89038:
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
cont.89037:
	j	cont.89027     ! elimjump
bgt.89036:
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
cont.89035:
cont.89033:
	j	cont.89027     ! elimjump
bgt.89032:
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
	bgt	$r3, $r2, bgt.89040
	bne	$r2, $r3, bne.89042
	addi	$r2, $r0, 3
	j	cont.89027     ! elimjump
bne.89042:
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
cont.89041:
	j	cont.89027     ! elimjump
bgt.89040:
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
cont.89039:
cont.89031:
cont.89029:
	j	cont.89027
bgt.89028:
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
	bgt	$r3, $r2, bgt.89044
	bne	$r2, $r3, bne.89046
	addi	$r2, $r0, 7
	j	cont.89043     ! elimjump
bne.89046:
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
	bgt	$r3, $r2, bgt.89048
	bne	$r2, $r3, bne.89050
	addi	$r2, $r0, 6
	j	cont.89043     ! elimjump
bne.89050:
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
cont.89049:
	j	cont.89043     ! elimjump
bgt.89048:
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
cont.89047:
cont.89045:
	j	cont.89043
bgt.89044:
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
	bgt	$r3, $r2, bgt.89052
	bne	$r2, $r3, bne.89054
	addi	$r2, $r0, 8
	j	cont.89051     ! elimjump
bne.89054:
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
cont.89053:
	j	cont.89051
bgt.89052:
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
cont.89051:
cont.89043:
cont.89027:
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
	bgti	$r3, 0, bgti.89056
	lw	$r4, -120($r29)
	bnei	$r4, 1, bnei.89058
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89055     ! elimjump
bnei.89058:
	addi	$r2, $r0, 0
cont.89057:
	j	cont.89055
bgti.89056:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89055:
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
	bgt	$r3, $r2, bgt.89060
	bne	$r2, $r3, bne.89062
	addi	$r2, $r0, 5
	j	cont.89059     ! elimjump
bne.89062:
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
	bgt	$r3, $r2, bgt.89064
	bne	$r2, $r3, bne.89066
	addi	$r2, $r0, 2
	j	cont.89059     ! elimjump
bne.89066:
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
	bgt	$r3, $r2, bgt.89068
	bne	$r2, $r3, bne.89070
	addi	$r2, $r0, 1
	j	cont.89059     ! elimjump
bne.89070:
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
cont.89069:
	j	cont.89059     ! elimjump
bgt.89068:
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
cont.89067:
cont.89065:
	j	cont.89059     ! elimjump
bgt.89064:
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
	bgt	$r3, $r2, bgt.89072
	bne	$r2, $r3, bne.89074
	addi	$r2, $r0, 3
	j	cont.89059     ! elimjump
bne.89074:
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
cont.89073:
	j	cont.89059     ! elimjump
bgt.89072:
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
cont.89071:
cont.89063:
cont.89061:
	j	cont.89059
bgt.89060:
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
	bgt	$r3, $r2, bgt.89076
	bne	$r2, $r3, bne.89078
	addi	$r2, $r0, 7
	j	cont.89075     ! elimjump
bne.89078:
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
	bgt	$r3, $r2, bgt.89080
	bne	$r2, $r3, bne.89082
	addi	$r2, $r0, 6
	j	cont.89075     ! elimjump
bne.89082:
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
cont.89081:
	j	cont.89075     ! elimjump
bgt.89080:
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
cont.89079:
cont.89077:
	j	cont.89075
bgt.89076:
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
	bgt	$r3, $r2, bgt.89084
	bne	$r2, $r3, bne.89086
	addi	$r2, $r0, 8
	j	cont.89083     ! elimjump
bne.89086:
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
cont.89085:
	j	cont.89083
bgt.89084:
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
cont.89083:
cont.89075:
cont.89059:
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
	bgti	$r3, 0, bgti.89088
	lw	$r4, -168($r29)
	bnei	$r4, 1, bnei.89090
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89087     ! elimjump
bnei.89090:
	addi	$r2, $r0, 0
cont.89089:
	j	cont.89087
bgti.89088:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89087:
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
	bgt	$r3, $r2, bgt.89092
	bne	$r2, $r3, bne.89094
	addi	$r2, $r0, 5
	j	cont.89091     ! elimjump
bne.89094:
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
	bgt	$r3, $r2, bgt.89096
	bne	$r2, $r3, bne.89098
	addi	$r2, $r0, 2
	j	cont.89091     ! elimjump
bne.89098:
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
	bgt	$r3, $r2, bgt.89100
	bne	$r2, $r3, bne.89102
	addi	$r2, $r0, 1
	j	cont.89091     ! elimjump
bne.89102:
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
cont.89101:
	j	cont.89091     ! elimjump
bgt.89100:
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
cont.89099:
cont.89097:
	j	cont.89091     ! elimjump
bgt.89096:
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
	bgt	$r3, $r2, bgt.89104
	bne	$r2, $r3, bne.89106
	addi	$r2, $r0, 3
	j	cont.89091     ! elimjump
bne.89106:
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
cont.89105:
	j	cont.89091     ! elimjump
bgt.89104:
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
cont.89103:
cont.89095:
cont.89093:
	j	cont.89091
bgt.89092:
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
	bgt	$r3, $r2, bgt.89108
	bne	$r2, $r3, bne.89110
	addi	$r2, $r0, 7
	j	cont.89107     ! elimjump
bne.89110:
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
	bgt	$r3, $r2, bgt.89112
	bne	$r2, $r3, bne.89114
	addi	$r2, $r0, 6
	j	cont.89107     ! elimjump
bne.89114:
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
cont.89113:
	j	cont.89107     ! elimjump
bgt.89112:
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
cont.89111:
cont.89109:
	j	cont.89107
bgt.89108:
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
	bgt	$r3, $r2, bgt.89116
	bne	$r2, $r3, bne.89118
	addi	$r2, $r0, 8
	j	cont.89115     ! elimjump
bne.89118:
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
cont.89117:
	j	cont.89115
bgt.89116:
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
cont.89115:
cont.89107:
cont.89091:
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
	bgti	$r3, 0, bgti.89120
	lw	$r4, -216($r29)
	bnei	$r4, 1, bnei.89122
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89119     ! elimjump
bnei.89122:
	addi	$r2, $r0, 0
cont.89121:
	j	cont.89119
bgti.89120:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89119:
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
	bgt	$r3, $r2, bgt.89124
	bne	$r2, $r3, bne.89126
	addi	$r2, $r0, 5
	j	cont.89123     ! elimjump
bne.89126:
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
	bgt	$r3, $r2, bgt.89128
	bne	$r2, $r3, bne.89130
	addi	$r2, $r0, 2
	j	cont.89123     ! elimjump
bne.89130:
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
	bgt	$r3, $r2, bgt.89132
	bne	$r2, $r3, bne.89134
	addi	$r2, $r0, 1
	j	cont.89123     ! elimjump
bne.89134:
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
cont.89133:
	j	cont.89123     ! elimjump
bgt.89132:
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
cont.89131:
cont.89129:
	j	cont.89123     ! elimjump
bgt.89128:
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
	bgt	$r3, $r2, bgt.89136
	bne	$r2, $r3, bne.89138
	addi	$r2, $r0, 3
	j	cont.89123     ! elimjump
bne.89138:
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
cont.89137:
	j	cont.89123     ! elimjump
bgt.89136:
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
cont.89135:
cont.89127:
cont.89125:
	j	cont.89123
bgt.89124:
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
	bgt	$r3, $r2, bgt.89140
	bne	$r2, $r3, bne.89142
	addi	$r2, $r0, 7
	j	cont.89139     ! elimjump
bne.89142:
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
	bgt	$r3, $r2, bgt.89144
	bne	$r2, $r3, bne.89146
	addi	$r2, $r0, 6
	j	cont.89139     ! elimjump
bne.89146:
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
cont.89145:
	j	cont.89139     ! elimjump
bgt.89144:
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
cont.89143:
cont.89141:
	j	cont.89139
bgt.89140:
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
	bgt	$r3, $r2, bgt.89148
	bne	$r2, $r3, bne.89150
	addi	$r2, $r0, 8
	j	cont.89147     ! elimjump
bne.89150:
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
cont.89149:
	j	cont.89147
bgt.89148:
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
cont.89147:
cont.89139:
cont.89123:
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
	bgti	$r3, 0, bgti.89152
	lw	$r4, -264($r29)
	bnei	$r4, 1, bnei.89154
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.89151     ! elimjump
bnei.89154:
	addi	$r2, $r0, 0
cont.89153:
	j	cont.89151
bgti.89152:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
cont.89151:
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
	bgt	$r3, $r2, bgt.89156
	bne	$r2, $r3, bne.89158
	addi	$r2, $r0, 5
	j	cont.89155     ! elimjump
bne.89158:
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
	bgt	$r3, $r2, bgt.89160
	bne	$r2, $r3, bne.89162
	addi	$r2, $r0, 2
	j	cont.89155     ! elimjump
bne.89162:
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
	bgt	$r3, $r2, bgt.89164
	bne	$r2, $r3, bne.89166
	addi	$r2, $r0, 1
	j	cont.89155     ! elimjump
bne.89166:
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
cont.89165:
	j	cont.89155     ! elimjump
bgt.89164:
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
cont.89163:
cont.89161:
	j	cont.89155     ! elimjump
bgt.89160:
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
	bgt	$r3, $r2, bgt.89168
	bne	$r2, $r3, bne.89170
	addi	$r2, $r0, 3
	j	cont.89155     ! elimjump
bne.89170:
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
cont.89169:
	j	cont.89155     ! elimjump
bgt.89168:
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
cont.89167:
cont.89159:
cont.89157:
	j	cont.89155
bgt.89156:
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
	bgt	$r3, $r2, bgt.89172
	bne	$r2, $r3, bne.89174
	addi	$r2, $r0, 7
	j	cont.89171     ! elimjump
bne.89174:
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
	bgt	$r3, $r2, bgt.89176
	bne	$r2, $r3, bne.89178
	addi	$r2, $r0, 6
	j	cont.89171     ! elimjump
bne.89178:
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
cont.89177:
	j	cont.89171     ! elimjump
bgt.89176:
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
cont.89175:
cont.89173:
	j	cont.89171
bgt.89172:
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
	bgt	$r3, $r2, bgt.89180
	bne	$r2, $r3, bne.89182
	addi	$r2, $r0, 8
	j	cont.89179     ! elimjump
bne.89182:
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
cont.89181:
	j	cont.89179
bgt.89180:
	lw	$r5, -320($r29)
	lw	$r4, -344($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
cont.89179:
cont.89171:
cont.89155:
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
	bgti	$r3, 0, bgti.89184
	lw	$r4, -312($r29)
	bnei	$r4, 1, bnei.89186
	addi	$r3, $r3, 48
	sw	$r2, -356($r29)
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	lw	$r2, -356($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
bnei.89186:
	addi	$r2, $r2, 48
	j	min_caml_print_char
bgti.89184:
	addi	$r3, $r3, 48
	sw	$r2, -356($r29)
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	lw	$r2, -356($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
blti.88952:
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
	bne	$r2, $r3, bne.89188
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89190
	j	cont.89187     ! elimjump
bnei.89190:
	fneg	$f0, $f0
cont.89189:
	j	cont.89187
bne.89188:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89192
	j	cont.89191
bnei.89192:
	fneg	$f0, $f0
cont.89191:
cont.89187:
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
	bne	$r2, $r3, bne.89194
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89196
	j	cont.89193     ! elimjump
bnei.89196:
	fneg	$f0, $f0
cont.89195:
	j	cont.89193
bne.89194:
	lw	$r2, 12($r0)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89198
	j	cont.89197
bnei.89198:
	fneg	$f0, $f0
cont.89197:
cont.89193:
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
	bne	$r2, $r3, bne.89200
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89202
	j	cont.89199     ! elimjump
bnei.89202:
	fneg	$f0, $f0
cont.89201:
	j	cont.89199
bne.89200:
	lw	$r2, 12($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89204
	j	cont.89203
bnei.89204:
	fneg	$f0, $f0
cont.89203:
cont.89199:
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
	bne	$r2, $r3, bne.89206
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89208
	j	cont.89205     ! elimjump
bnei.89208:
	fneg	$f0, $f0
cont.89207:
	j	cont.89205
bne.89206:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89210
	j	cont.89209
bnei.89210:
	fneg	$f0, $f0
cont.89209:
cont.89205:
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
	bclf	bclf.89212
	addi	$r2, $r0, 0
	j	cont.89211
bclf.89212:
	addi	$r2, $r0, 1
cont.89211:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -40($r29)
	swcl	$f3, -44($r29)
	swcl	$f2, -48($r29)
	sw	$r2, -52($r29)
	swcl	$f1, -56($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89214
	c.le.s	$f30, $f5
	bclf	bclf.89216
	fmove	$f0, $f5
	j	cont.89213     ! elimjump
bclf.89216:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89218
	c.le.s	$f30, $f5
	bclf	bclf.89220
	fmove	$f0, $f5
	j	cont.89213     ! elimjump
bclf.89220:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89219:
	j	cont.89213     ! elimjump
bclf.89218:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89217:
cont.89215:
	j	cont.89213
bclf.89214:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89222
	c.le.s	$f30, $f5
	bclf	bclf.89224
	fmove	$f0, $f5
	j	cont.89221     ! elimjump
bclf.89224:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89223:
	j	cont.89221
bclf.89222:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.89221:
cont.89213:
	lwcl	$f1, -56($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89226
	lw	$r2, -52($r29)
	j	cont.89225
bclf.89226:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89228
	addi	$r2, $r0, 1
	j	cont.89227
bclf.89228:
	addi	$r2, $r0, 0
cont.89227:
cont.89225:
	c.le.s	$f0, $f1
	bclf	bclf.89230
	j	cont.89229
bclf.89230:
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
cont.89229:
	lwcl	$f2, -44($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89232
	j	cont.89231
bclf.89232:
	sub.s	$f0, $f1, $f0
cont.89231:
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
	bnei	$r2, 1, bnei.89234
	j	cont.89233
bnei.89234:
	fneg	$f0, $f0
cont.89233:
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
	bne	$r2, $r3, bne.89236
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89238
	j	cont.89235     ! elimjump
bnei.89238:
	fneg	$f0, $f0
cont.89237:
	j	cont.89235
bne.89236:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89240
	j	cont.89239
bnei.89240:
	fneg	$f0, $f0
cont.89239:
cont.89235:
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
	bclf	bclf.89242
	addi	$r2, $r0, 0
	j	cont.89241
bclf.89242:
	addi	$r2, $r0, 1
cont.89241:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -76($r29)
	swcl	$f3, -80($r29)
	swcl	$f2, -84($r29)
	sw	$r2, -88($r29)
	swcl	$f1, -92($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89244
	c.le.s	$f30, $f5
	bclf	bclf.89246
	fmove	$f0, $f5
	j	cont.89243     ! elimjump
bclf.89246:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89248
	c.le.s	$f30, $f5
	bclf	bclf.89250
	fmove	$f0, $f5
	j	cont.89243     ! elimjump
bclf.89250:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89249:
	j	cont.89243     ! elimjump
bclf.89248:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89247:
cont.89245:
	j	cont.89243
bclf.89244:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89252
	c.le.s	$f30, $f5
	bclf	bclf.89254
	fmove	$f0, $f5
	j	cont.89251     ! elimjump
bclf.89254:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89253:
	j	cont.89251
bclf.89252:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.89251:
cont.89243:
	lwcl	$f1, -92($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89256
	lw	$r2, -88($r29)
	j	cont.89255
bclf.89256:
	lwcl	$f2, -72($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89258
	addi	$r2, $r0, 1
	j	cont.89257
bclf.89258:
	addi	$r2, $r0, 0
cont.89257:
cont.89255:
	c.le.s	$f0, $f1
	bclf	bclf.89260
	j	cont.89259
bclf.89260:
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
cont.89259:
	lwcl	$f2, -80($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89262
	j	cont.89261
bclf.89262:
	sub.s	$f0, $f1, $f0
cont.89261:
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
	bnei	$r2, 1, bnei.89264
	j	cont.89263
bnei.89264:
	fneg	$f0, $f0
cont.89263:
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
read_light.3742:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
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
	bne	$r2, $r3, bne.89266
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89268
	j	cont.89265     ! elimjump
bnei.89268:
	fneg	$f0, $f0
cont.89267:
	j	cont.89265
bne.89266:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89270
	j	cont.89269
bnei.89270:
	fneg	$f0, $f0
cont.89269:
cont.89265:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.89272
	addi	$r2, $r0, 0
	j	cont.89271
bclf.89272:
	addi	$r2, $r0, 1
cont.89271:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -12($r29)
	swcl	$f2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r2, -24($r29)
	swcl	$f1, -28($r29)
	c.le.s	$f4, $f5
	bclf	bclf.89274
	c.le.s	$f30, $f4
	bclf	bclf.89276
	fmove	$f0, $f4
	j	cont.89273     ! elimjump
bclf.89276:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.89278
	c.le.s	$f30, $f4
	bclf	bclf.89280
	fmove	$f0, $f4
	j	cont.89273     ! elimjump
bclf.89280:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89279:
	j	cont.89273     ! elimjump
bclf.89278:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89277:
cont.89275:
	j	cont.89273
bclf.89274:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.89282
	c.le.s	$f30, $f4
	bclf	bclf.89284
	fmove	$f0, $f4
	j	cont.89281     ! elimjump
bclf.89284:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89283:
	j	cont.89281
bclf.89282:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.89281:
cont.89273:
	lwcl	$f1, -28($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89286
	lw	$r2, -24($r29)
	j	cont.89285
bclf.89286:
	lwcl	$f2, -20($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89288
	addi	$r2, $r0, 1
	j	cont.89287
bclf.89288:
	addi	$r2, $r0, 0
cont.89287:
cont.89285:
	c.le.s	$f0, $f1
	bclf	bclf.89290
	j	cont.89289
bclf.89290:
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
cont.89289:
	lwcl	$f2, -12($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89292
	j	cont.89291
bclf.89292:
	sub.s	$f0, $f1, $f0
cont.89291:
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
	bnei	$r2, 1, bnei.89294
	j	cont.89293
bnei.89294:
	fneg	$f0, $f0
cont.89293:
	fneg	$f0, $f0
	swcl	$f0, 348($r0)
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
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89296
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, 12($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f1, -36($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -32($r29)
	add.s	$f0, $f1, $f0
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89298
	j	cont.89295     ! elimjump
bnei.89298:
	fneg	$f0, $f0
cont.89297:
	j	cont.89295
bne.89296:
	lw	$r2, 12($r0)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89300
	j	cont.89299
bnei.89300:
	fneg	$f0, $f0
cont.89299:
cont.89295:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -20($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -40($r29)
	fmove	$f0, $f1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -40($r29)
	c.le.s	$f4, $f30
	bclf	bclf.89302
	addi	$r2, $r0, 0
	j	cont.89301
bclf.89302:
	addi	$r2, $r0, 1
cont.89301:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -44($r29)
	swcl	$f3, -48($r29)
	swcl	$f2, -52($r29)
	sw	$r2, -56($r29)
	swcl	$f1, -60($r29)
	c.le.s	$f5, $f6
	bclf	bclf.89304
	c.le.s	$f30, $f5
	bclf	bclf.89306
	fmove	$f0, $f5
	j	cont.89303     ! elimjump
bclf.89306:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89308
	c.le.s	$f30, $f5
	bclf	bclf.89310
	fmove	$f0, $f5
	j	cont.89303     ! elimjump
bclf.89310:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89309:
	j	cont.89303     ! elimjump
bclf.89308:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89307:
cont.89305:
	j	cont.89303
bclf.89304:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89312
	c.le.s	$f30, $f5
	bclf	bclf.89314
	fmove	$f0, $f5
	j	cont.89311     ! elimjump
bclf.89314:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89313:
	j	cont.89311
bclf.89312:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89311:
cont.89303:
	lwcl	$f1, -60($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89316
	lw	$r2, -56($r29)
	j	cont.89315
bclf.89316:
	lwcl	$f2, -40($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89318
	addi	$r2, $r0, 1
	j	cont.89317
bclf.89318:
	addi	$r2, $r0, 0
cont.89317:
cont.89315:
	c.le.s	$f0, $f1
	bclf	bclf.89320
	j	cont.89319
bclf.89320:
	lwcl	$f2, -52($r29)
	sub.s	$f0, $f2, $f0
cont.89319:
	lwcl	$f2, -48($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89322
	j	cont.89321
bclf.89322:
	sub.s	$f0, $f1, $f0
cont.89321:
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
	bnei	$r2, 1, bnei.89324
	j	cont.89323
bnei.89324:
	fneg	$f0, $f0
cont.89323:
	lwcl	$f1, -44($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 344($r0)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f0, $f2
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f1, -44($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 352($r0)
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
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.89326
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89328
	swcl	$f0, 356($r0)
	jr	$r31
bnei.89328:
	fneg	$f0, $f0
	swcl	$f0, 356($r0)
	jr	$r31
bne.89326:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89330
	swcl	$f0, 356($r0)
	jr	$r31
bnei.89330:
	fneg	$f0, $f0
	swcl	$f0, 356($r0)
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
	bclf	bclf.89332
	addi	$r3, $r0, 0
	j	cont.89331
bclf.89332:
	addi	$r3, $r0, 1
cont.89331:
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
	bclf	bclf.89334
	c.le.s	$f30, $f5
	bclf	bclf.89336
	fmove	$f0, $f5
	j	cont.89333     ! elimjump
bclf.89336:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89338
	c.le.s	$f30, $f5
	bclf	bclf.89340
	fmove	$f0, $f5
	j	cont.89333     ! elimjump
bclf.89340:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89339:
	j	cont.89333     ! elimjump
bclf.89338:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89337:
cont.89335:
	j	cont.89333
bclf.89334:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89342
	c.le.s	$f30, $f5
	bclf	bclf.89344
	fmove	$f0, $f5
	j	cont.89341     ! elimjump
bclf.89344:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89343:
	j	cont.89341
bclf.89342:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.89341:
cont.89333:
	lwcl	$f1, -32($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89346
	lw	$r2, -28($r29)
	j	cont.89345
bclf.89346:
	lwcl	$f2, -24($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89348
	addi	$r2, $r0, 1
	j	cont.89347
bclf.89348:
	addi	$r2, $r0, 0
cont.89347:
cont.89345:
	c.le.s	$f0, $f1
	bclf	bclf.89350
	j	cont.89349
bclf.89350:
	lwcl	$f2, -20($r29)
	sub.s	$f0, $f2, $f0
cont.89349:
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89352
	j	cont.89351
bclf.89352:
	sub.s	$f0, $f1, $f0
cont.89351:
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
	bnei	$r2, 1, bnei.89354
	j	cont.89353
bnei.89354:
	fneg	$f0, $f0
cont.89353:
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
	bclf	bclf.89356
	addi	$r3, $r0, 0
	j	cont.89355
bclf.89356:
	addi	$r3, $r0, 1
cont.89355:
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
	bclf	bclf.89358
	c.le.s	$f30, $f5
	bclf	bclf.89360
	fmove	$f0, $f5
	j	cont.89357     ! elimjump
bclf.89360:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89362
	c.le.s	$f30, $f5
	bclf	bclf.89364
	fmove	$f0, $f5
	j	cont.89357     ! elimjump
bclf.89364:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89363:
	j	cont.89357     ! elimjump
bclf.89362:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89361:
cont.89359:
	j	cont.89357
bclf.89358:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89366
	c.le.s	$f30, $f5
	bclf	bclf.89368
	fmove	$f0, $f5
	j	cont.89365     ! elimjump
bclf.89368:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89367:
	j	cont.89365
bclf.89366:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.89365:
cont.89357:
	lwcl	$f1, -60($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89370
	lw	$r2, -56($r29)
	j	cont.89369
bclf.89370:
	lwcl	$f2, -52($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89372
	addi	$r2, $r0, 1
	j	cont.89371
bclf.89372:
	addi	$r2, $r0, 0
cont.89371:
cont.89369:
	c.le.s	$f0, $f1
	bclf	bclf.89374
	j	cont.89373
bclf.89374:
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
cont.89373:
	lwcl	$f2, -44($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89376
	j	cont.89375
bclf.89376:
	sub.s	$f0, $f1, $f0
cont.89375:
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
	bnei	$r2, 1, bnei.89378
	j	cont.89377
bnei.89378:
	fneg	$f0, $f0
cont.89377:
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
	bclf	bclf.89380
	addi	$r3, $r0, 0
	j	cont.89379
bclf.89380:
	addi	$r3, $r0, 1
cont.89379:
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
	bclf	bclf.89382
	c.le.s	$f30, $f5
	bclf	bclf.89384
	fmove	$f0, $f5
	j	cont.89381     ! elimjump
bclf.89384:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89386
	c.le.s	$f30, $f5
	bclf	bclf.89388
	fmove	$f0, $f5
	j	cont.89381     ! elimjump
bclf.89388:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89387:
	j	cont.89381     ! elimjump
bclf.89386:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89385:
cont.89383:
	j	cont.89381
bclf.89382:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.89390
	c.le.s	$f30, $f5
	bclf	bclf.89392
	fmove	$f0, $f5
	j	cont.89389     ! elimjump
bclf.89392:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89391:
	j	cont.89389
bclf.89390:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.89389:
cont.89381:
	lwcl	$f1, -88($r29)
	c.le.s	$f0, $f1
	bclf	bclf.89394
	lw	$r2, -84($r29)
	j	cont.89393
bclf.89394:
	lwcl	$f2, -80($r29)
	c.le.s	$f2, $f30
	bclf	bclf.89396
	addi	$r2, $r0, 1
	j	cont.89395
bclf.89396:
	addi	$r2, $r0, 0
cont.89395:
cont.89393:
	c.le.s	$f0, $f1
	bclf	bclf.89398
	j	cont.89397
bclf.89398:
	lwcl	$f2, -76($r29)
	sub.s	$f0, $f2, $f0
cont.89397:
	lwcl	$f2, -72($r29)
	c.le.s	$f0, $f2
	bclf	bclf.89400
	j	cont.89399
bclf.89400:
	sub.s	$f0, $f1, $f0
cont.89399:
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
	bnei	$r2, 1, bnei.89402
	j	cont.89401
bnei.89402:
	fneg	$f0, $f0
cont.89401:
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
	bnei	$r2, -1, bnei.89404
	addi	$r2, $r0, 0
	jr	$r31
bnei.89404:
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
	bne	$r2, $r3, bne.89406
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89408
	j	cont.89405     ! elimjump
bnei.89408:
	fneg	$f0, $f0
cont.89407:
	j	cont.89405
bne.89406:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89410
	j	cont.89409
bnei.89410:
	fneg	$f0, $f0
cont.89409:
cont.89405:
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
	bne	$r2, $r3, bne.89412
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89414
	j	cont.89411     ! elimjump
bnei.89414:
	fneg	$f0, $f0
cont.89413:
	j	cont.89411
bne.89412:
	lw	$r2, 12($r0)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89416
	j	cont.89415
bnei.89416:
	fneg	$f0, $f0
cont.89415:
cont.89411:
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
	bne	$r2, $r3, bne.89418
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89420
	j	cont.89417     ! elimjump
bnei.89420:
	fneg	$f0, $f0
cont.89419:
	j	cont.89417
bne.89418:
	lw	$r2, 12($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89422
	j	cont.89421
bnei.89422:
	fneg	$f0, $f0
cont.89421:
cont.89417:
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
	bne	$r2, $r3, bne.89424
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89426
	j	cont.89423     ! elimjump
bnei.89426:
	fneg	$f0, $f0
cont.89425:
	j	cont.89423
bne.89424:
	lw	$r2, 12($r0)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89428
	j	cont.89427
bnei.89428:
	fneg	$f0, $f0
cont.89427:
cont.89423:
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
	bne	$r2, $r3, bne.89430
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89432
	j	cont.89429     ! elimjump
bnei.89432:
	fneg	$f0, $f0
cont.89431:
	j	cont.89429
bne.89430:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89434
	j	cont.89433
bnei.89434:
	fneg	$f0, $f0
cont.89433:
cont.89429:
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
	bne	$r2, $r3, bne.89436
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89438
	j	cont.89435     ! elimjump
bnei.89438:
	fneg	$f0, $f0
cont.89437:
	j	cont.89435
bne.89436:
	lw	$r2, 12($r0)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89440
	j	cont.89439
bnei.89440:
	fneg	$f0, $f0
cont.89439:
cont.89435:
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
	bne	$r2, $r3, bne.89442
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89444
	j	cont.89441     ! elimjump
bnei.89444:
	fneg	$f0, $f0
cont.89443:
	j	cont.89441
bne.89442:
	lw	$r2, 12($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89446
	j	cont.89445
bnei.89446:
	fneg	$f0, $f0
cont.89445:
cont.89441:
	c.le.s	$f30, $f0
	bclf	bclf.89448
	addi	$r2, $r0, 0
	j	cont.89447
bclf.89448:
	addi	$r2, $r0, 1
cont.89447:
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
	bne	$r2, $r3, bne.89450
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89452
	j	cont.89449     ! elimjump
bnei.89452:
	fneg	$f0, $f0
cont.89451:
	j	cont.89449
bne.89450:
	lw	$r2, 12($r0)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89454
	j	cont.89453
bnei.89454:
	fneg	$f0, $f0
cont.89453:
cont.89449:
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
	bne	$r2, $r3, bne.89456
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89458
	j	cont.89455     ! elimjump
bnei.89458:
	fneg	$f0, $f0
cont.89457:
	j	cont.89455
bne.89456:
	lw	$r2, 12($r0)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89460
	j	cont.89459
bnei.89460:
	fneg	$f0, $f0
cont.89459:
cont.89455:
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
	bne	$r2, $r3, bne.89462
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89464
	j	cont.89461     ! elimjump
bnei.89464:
	fneg	$f0, $f0
cont.89463:
	j	cont.89461
bne.89462:
	lw	$r2, 12($r0)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89466
	j	cont.89465
bnei.89466:
	fneg	$f0, $f0
cont.89465:
cont.89461:
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
	bne	$r2, $r3, bne.89468
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89470
	j	cont.89467     ! elimjump
bnei.89470:
	fneg	$f0, $f0
cont.89469:
	j	cont.89467
bne.89468:
	lw	$r2, 12($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89472
	j	cont.89471
bnei.89472:
	fneg	$f0, $f0
cont.89471:
cont.89467:
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
	bne	$r2, $r3, bne.89474
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89476
	j	cont.89473     ! elimjump
bnei.89476:
	fneg	$f0, $f0
cont.89475:
	j	cont.89473
bne.89474:
	lw	$r2, 12($r0)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89478
	j	cont.89477
bnei.89478:
	fneg	$f0, $f0
cont.89477:
cont.89473:
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
	bnei	$r3, 0, bnei.89480
	j	cont.89479
bnei.89480:
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
	bne	$r2, $r3, bne.89482
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89484
	j	cont.89481     ! elimjump
bnei.89484:
	fneg	$f0, $f0
cont.89483:
	j	cont.89481
bne.89482:
	lw	$r2, 12($r0)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89486
	j	cont.89485
bnei.89486:
	fneg	$f0, $f0
cont.89485:
cont.89481:
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
	bne	$r2, $r3, bne.89488
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89490
	j	cont.89487     ! elimjump
bnei.89490:
	fneg	$f0, $f0
cont.89489:
	j	cont.89487
bne.89488:
	lw	$r2, 12($r0)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89492
	j	cont.89491
bnei.89492:
	fneg	$f0, $f0
cont.89491:
cont.89487:
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
	bne	$r2, $r3, bne.89494
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
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89496
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
	j	cont.89493     ! elimjump
bnei.89496:
	fneg	$f0, $f0
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
cont.89495:
	j	cont.89493
bne.89494:
	lw	$r2, 12($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.89498
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
	j	cont.89497
bnei.89498:
	fneg	$f0, $f0
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
cont.89497:
cont.89493:
cont.89479:
	lw	$r3, -12($r29)
	bnei	$r3, 2, bnei.89500
	addi	$r4, $r0, 1
	j	cont.89499
bnei.89500:
	lw	$r4, -92($r29)
cont.89499:
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
	bnei	$r6, 3, bnei.89502
	lwcl	$f0, 0($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89504
	fmove	$f0, $f30
	j	cont.89503
bclf.89504:
	c.eq.s	$f0, $f30
	bclf	bclf.89506
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	j	cont.89505
bclf.89506:
	c.le.s	$f0, $f30
	bclf	bclf.89508
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	j	cont.89507
bclf.89508:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
cont.89507:
cont.89505:
cont.89503:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89510
	fmove	$f0, $f30
	j	cont.89509
bclf.89510:
	c.eq.s	$f0, $f30
	bclf	bclf.89512
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	j	cont.89511
bclf.89512:
	c.le.s	$f0, $f30
	bclf	bclf.89514
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	j	cont.89513
bclf.89514:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
cont.89513:
cont.89511:
cont.89509:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.89516
	fmove	$f0, $f30
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.89518
	addi	$r2, $r0, 1
	jr	$r31
bnei.89518:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.89516:
	c.eq.s	$f0, $f30
	bclf	bclf.89520
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f30, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.89522
	addi	$r2, $r0, 1
	jr	$r31
bnei.89522:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.89520:
	c.le.s	$f0, $f30
	bclf	bclf.89524
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f29, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.89526
	addi	$r2, $r0, 1
	jr	$r31
bnei.89526:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bclf.89524:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f31, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.89528
	addi	$r2, $r0, 1
	jr	$r31
bnei.89528:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bnei.89502:
	bnei	$r6, 2, bnei.89530
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
	bclf	bclf.89532
	fmove	$f0, $f31
	j	cont.89531
bclf.89532:
	lwcl	$f1, -88($r29)
	c.le.s	$f30, $f1
	bclf	bclf.89534
	div.s	$f0, $f29, $f0
	j	cont.89533
bclf.89534:
	div.s	$f0, $f31, $f0
cont.89533:
cont.89531:
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	bnei	$r5, 0, bnei.89536
	addi	$r2, $r0, 1
	jr	$r31
bnei.89536:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
bnei.89530:
	bnei	$r5, 0, bnei.89538
	addi	$r2, $r0, 1
	jr	$r31
bnei.89538:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r2, $r0, 1
	jr	$r31
read_object.4009:
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89540
	jr	$r31
bgt.89540:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, 1, bnei.89542
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89544
	jr	$r31
bgt.89544:
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, 1, bnei.89546
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89548
	jr	$r31
bgt.89548:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.89550
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89552
	jr	$r31
bgt.89552:
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	bnei	$r2, 1, bnei.89554
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89556
	jr	$r31
bgt.89556:
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.89558
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89560
	jr	$r31
bgt.89560:
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.89562
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89564
	jr	$r31
bgt.89564:
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.89566
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.89568
	jr	$r31
bgt.89568:
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.89570
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	j	read_object.4009
bnei.89570:
	lw	$r2, -32($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89566:
	lw	$r2, -28($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89562:
	lw	$r2, -24($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89558:
	lw	$r2, -20($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89554:
	lw	$r2, -16($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89550:
	lw	$r2, -12($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89546:
	lw	$r2, -8($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.89542:
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
	bnei	$r2, -1, bnei.89572
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bnei.89572:
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
	bgt	$r2, $r3, bgt.89574
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.89576
	addi	$r2, $r0, 0
	j	cont.89573     ! elimjump
bgt.89576:
	addi	$r2, $r0, 1
cont.89575:
	j	cont.89573
bgt.89574:
	addi	$r2, $r0, 1
cont.89573:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.89578
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.89577
bnei.89578:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89580
	sw	$r4, 8($r0)
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
	j	cont.89579
bnei.89580:
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
cont.89579:
cont.89577:
	bnei	$r2, -1, bnei.89582
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -8($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89582:
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
	bnei	$r2, -1, bnei.89584
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -8($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89584:
	lw	$r3, -20($r29)
	addi	$r4, $r3, 1
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, -1, bnei.89586
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	lw	$r4, -24($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -8($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89586:
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
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	lw	$r4, -24($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
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
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89591
bnei.89592:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89594
	sw	$r4, 8($r0)
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
	j	cont.89593
bnei.89594:
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
cont.89593:
cont.89591:
	bnei	$r2, -1, bnei.89596
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89595
bnei.89596:
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
	bnei	$r2, -1, bnei.89598
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	j	cont.89597
bnei.89598:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, -1, bnei.89600
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	j	cont.89599
bnei.89600:
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
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89599:
cont.89597:
cont.89595:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89602
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bnei.89602:
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
	bnei	$r2, -1, bnei.89604
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89603
bnei.89604:
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, -1, bnei.89606
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	j	cont.89605
bnei.89606:
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
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.89605:
cont.89603:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89608
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89608:
	lw	$r2, -24($r29)
	addi	$r4, $r2, 1
	sw	$r3, -36($r29)
	sw	$r4, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, -1, bnei.89610
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.89609
bnei.89610:
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
cont.89609:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.89612
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89612:
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
	bnei	$r2, -1, bnei.89614
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -40($r29)
	sll	$r3, $r3, 2
	lw	$r4, -48($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
bnei.89614:
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
	lw	$r3, -40($r29)
	sll	$r3, $r3, 2
	lw	$r4, -48($r29)
	swr	$r4, $r3($r2)	!st var
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	swr	$r4, $r3($r2)	!st var
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
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89619
bnei.89620:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.89622
	sw	$r4, 8($r0)
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
	j	cont.89621
bnei.89622:
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
cont.89621:
cont.89619:
	bnei	$r2, -1, bnei.89624
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.89623
bnei.89624:
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
	bnei	$r2, -1, bnei.89626
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	j	cont.89625
bnei.89626:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, -1, bnei.89628
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	j	cont.89627
bnei.89628:
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
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
cont.89627:
cont.89625:
cont.89623:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89630
	jr	$r31
bnei.89630:
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
	bnei	$r2, -1, bnei.89632
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.89631
bnei.89632:
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, -1, bnei.89634
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
	j	cont.89633
bnei.89634:
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
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
cont.89633:
cont.89631:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89636
	jr	$r31
bnei.89636:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, -1, bnei.89638
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.89637
bnei.89638:
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
cont.89637:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.89640
	jr	$r31
bnei.89640:
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
	bnei	$r3, -1, bnei.89642
	jr	$r31
bnei.89642:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	j	read_and_network.4048
iter_setup_dirvec_constants.4707:
	blti	$r3, 0, blti.89644
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.89646
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
	bclf	bclf.89648
	swcl	$f1, 4($r2)
	j	cont.89647
bclf.89648:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89650
	addi	$r6, $r0, 0
	j	cont.89649
bclf.89650:
	addi	$r6, $r0, 1
cont.89649:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89652
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.89651
bne.89652:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89651:
cont.89647:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89654
	swcl	$f1, 12($r2)
	j	cont.89653
bclf.89654:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89656
	addi	$r6, $r0, 0
	j	cont.89655
bclf.89656:
	addi	$r6, $r0, 1
cont.89655:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89658
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.89657
bne.89658:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89657:
cont.89653:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89660
	swcl	$f1, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89645     ! elimjump
bclf.89660:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89662
	addi	$r6, $r0, 0
	j	cont.89661
bclf.89662:
	addi	$r6, $r0, 1
cont.89661:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89664
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89645     ! elimjump
bne.89664:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89663:
cont.89659:
	j	cont.89645
bnei.89646:
	bnei	$r7, 2, bnei.89666
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
	bclf	bclf.89668
	swcl	$f1, 0($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89665     ! elimjump
bclf.89668:
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
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89667:
	j	cont.89665
bnei.89666:
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
	bnei	$r5, 0, bnei.89670
	fmove	$f0, $f3
	j	cont.89669
bnei.89670:
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
cont.89669:
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
	bnei	$r5, 0, bnei.89672
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.89674
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89671     ! elimjump
bclf.89674:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89673:
	j	cont.89671
bnei.89672:
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
	bclf	bclf.89676
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.89675
bclf.89676:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.89675:
cont.89671:
cont.89665:
cont.89645:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.89678
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.89680
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
	bclf	bclf.89682
	swcl	$f1, 4($r2)
	j	cont.89681
bclf.89682:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89684
	addi	$r6, $r0, 0
	j	cont.89683
bclf.89684:
	addi	$r6, $r0, 1
cont.89683:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89686
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.89685
bne.89686:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89685:
cont.89681:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89688
	swcl	$f1, 12($r2)
	j	cont.89687
bclf.89688:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89690
	addi	$r6, $r0, 0
	j	cont.89689
bclf.89690:
	addi	$r6, $r0, 1
cont.89689:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89692
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.89691
bne.89692:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89691:
cont.89687:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89694
	swcl	$f1, 20($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89694:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89696
	addi	$r6, $r0, 0
	j	cont.89695
bclf.89696:
	addi	$r6, $r0, 1
cont.89695:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89698
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bne.89698:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89680:
	bnei	$r7, 2, bnei.89700
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
	bclf	bclf.89702
	swcl	$f1, 0($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89702:
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
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89700:
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
	bnei	$r5, 0, bnei.89704
	fmove	$f0, $f3
	j	cont.89703
bnei.89704:
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
cont.89703:
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
	bnei	$r5, 0, bnei.89706
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.89708
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89708:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89706:
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
	bclf	bclf.89710
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89710:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.89678:
	jr	$r31
blti.89644:
	jr	$r31
setup_dirvec_constants.4723:
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.89712
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	bnei	$r7, 1, bnei.89714
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r2, -4($r29)
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
	bclf	bclf.89716
	swcl	$f1, 4($r2)
	j	cont.89715
bclf.89716:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89718
	addi	$r6, $r0, 0
	j	cont.89717
bclf.89718:
	addi	$r6, $r0, 1
cont.89717:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.89720
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.89719
bne.89720:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.89719:
cont.89715:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89722
	swcl	$f1, 12($r2)
	j	cont.89721
bclf.89722:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89724
	addi	$r6, $r0, 0
	j	cont.89723
bclf.89724:
	addi	$r6, $r0, 1
cont.89723:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.89726
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.89725
bne.89726:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.89725:
cont.89721:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.89728
	swcl	$f1, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89728:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.89730
	addi	$r6, $r0, 0
	j	cont.89729
bclf.89730:
	addi	$r6, $r0, 1
cont.89729:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.89732
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bne.89732:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89714:
	bnei	$r7, 2, bnei.89734
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r2, -4($r29)
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
	bclf	bclf.89736
	swcl	$f1, 0($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89736:
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
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89734:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r2, -4($r29)
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
	bnei	$r5, 0, bnei.89738
	fmove	$f0, $f3
	j	cont.89737
bnei.89738:
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
cont.89737:
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
	bnei	$r5, 0, bnei.89740
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.89742
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89742:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bnei.89740:
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
	bclf	bclf.89744
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
bclf.89744:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.89712:
	jr	$r31
setup_startp_constants.4729:
	blti	$r3, 0, blti.89746
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
	bnei	$r6, 2, bnei.89748
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
	j	setup_startp_constants.4729
bnei.89748:
	bgti	$r6, 2, bgti.89750
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
bgti.89750:
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
	bnei	$r7, 0, bnei.89752
	bnei	$r6, 3, bnei.89754
	sub.s	$f0, $f3, $f31
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
bnei.89754:
	swcl	$f3, 12($r5)
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
bnei.89752:
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
	bnei	$r6, 3, bnei.89756
	sub.s	$f0, $f0, $f31
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
bnei.89756:
	swcl	$f0, 12($r5)
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
blti.89746:
	jr	$r31
check_all_inside.4838:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89758
	addi	$r2, $r0, 1
	jr	$r31
bnei.89758:
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
	bnei	$r5, 1, bnei.89760
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89762
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89764
	addi	$r4, $r0, 0
	j	cont.89759     ! elimjump
bnei.89764:
	addi	$r4, $r0, 1
cont.89763:
	j	cont.89759     ! elimjump
bclf.89762:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89766
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89768
	addi	$r4, $r0, 0
	j	cont.89759     ! elimjump
bnei.89768:
	addi	$r4, $r0, 1
cont.89767:
	j	cont.89759     ! elimjump
bclf.89766:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89770
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89772
	addi	$r4, $r0, 0
	j	cont.89759     ! elimjump
bnei.89772:
	addi	$r4, $r0, 1
cont.89771:
	j	cont.89759     ! elimjump
bclf.89770:
	lw	$r4, 24($r4)
cont.89769:
cont.89765:
cont.89761:
	j	cont.89759
bnei.89760:
	bnei	$r5, 2, bnei.89774
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
	bclf	bclf.89776
	bnei	$r4, 0, bnei.89778
	addi	$r4, $r0, 1
	j	cont.89773     ! elimjump
bnei.89778:
	addi	$r4, $r0, 0
cont.89777:
	j	cont.89773     ! elimjump
bclf.89776:
	bnei	$r4, 1, bnei.89780
	addi	$r4, $r0, 1
	j	cont.89773     ! elimjump
bnei.89780:
	addi	$r4, $r0, 0
cont.89779:
cont.89775:
	j	cont.89773
bnei.89774:
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
	bnei	$r5, 0, bnei.89782
	fmove	$f3, $f6
	j	cont.89781
bnei.89782:
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
cont.89781:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89784
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89786
	bnei	$r4, 0, bnei.89788
	addi	$r4, $r0, 1
	j	cont.89783     ! elimjump
bnei.89788:
	addi	$r4, $r0, 0
cont.89787:
	j	cont.89783     ! elimjump
bclf.89786:
	bnei	$r4, 1, bnei.89790
	addi	$r4, $r0, 1
	j	cont.89783     ! elimjump
bnei.89790:
	addi	$r4, $r0, 0
cont.89789:
cont.89785:
	j	cont.89783
bnei.89784:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89792
	bnei	$r4, 0, bnei.89794
	addi	$r4, $r0, 1
	j	cont.89791     ! elimjump
bnei.89794:
	addi	$r4, $r0, 0
cont.89793:
	j	cont.89791
bclf.89792:
	bnei	$r4, 1, bnei.89796
	addi	$r4, $r0, 1
	j	cont.89795
bnei.89796:
	addi	$r4, $r0, 0
cont.89795:
cont.89791:
cont.89783:
cont.89773:
cont.89759:
	bnei	$r4, 1, bnei.89798
	addi	$r2, $r0, 0
	jr	$r31
bnei.89798:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89800
	addi	$r2, $r0, 1
	jr	$r31
bnei.89800:
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
	bnei	$r5, 1, bnei.89802
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89804
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89806
	addi	$r4, $r0, 0
	j	cont.89801     ! elimjump
bnei.89806:
	addi	$r4, $r0, 1
cont.89805:
	j	cont.89801     ! elimjump
bclf.89804:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89808
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89810
	addi	$r4, $r0, 0
	j	cont.89801     ! elimjump
bnei.89810:
	addi	$r4, $r0, 1
cont.89809:
	j	cont.89801     ! elimjump
bclf.89808:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89812
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89814
	addi	$r4, $r0, 0
	j	cont.89801     ! elimjump
bnei.89814:
	addi	$r4, $r0, 1
cont.89813:
	j	cont.89801     ! elimjump
bclf.89812:
	lw	$r4, 24($r4)
cont.89811:
cont.89807:
cont.89803:
	j	cont.89801
bnei.89802:
	bnei	$r5, 2, bnei.89816
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
	bclf	bclf.89818
	bnei	$r4, 0, bnei.89820
	addi	$r4, $r0, 1
	j	cont.89815     ! elimjump
bnei.89820:
	addi	$r4, $r0, 0
cont.89819:
	j	cont.89815     ! elimjump
bclf.89818:
	bnei	$r4, 1, bnei.89822
	addi	$r4, $r0, 1
	j	cont.89815     ! elimjump
bnei.89822:
	addi	$r4, $r0, 0
cont.89821:
cont.89817:
	j	cont.89815
bnei.89816:
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
	bnei	$r5, 0, bnei.89824
	fmove	$f3, $f6
	j	cont.89823
bnei.89824:
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
cont.89823:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89826
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89828
	bnei	$r4, 0, bnei.89830
	addi	$r4, $r0, 1
	j	cont.89825     ! elimjump
bnei.89830:
	addi	$r4, $r0, 0
cont.89829:
	j	cont.89825     ! elimjump
bclf.89828:
	bnei	$r4, 1, bnei.89832
	addi	$r4, $r0, 1
	j	cont.89825     ! elimjump
bnei.89832:
	addi	$r4, $r0, 0
cont.89831:
cont.89827:
	j	cont.89825
bnei.89826:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89834
	bnei	$r4, 0, bnei.89836
	addi	$r4, $r0, 1
	j	cont.89833     ! elimjump
bnei.89836:
	addi	$r4, $r0, 0
cont.89835:
	j	cont.89833
bclf.89834:
	bnei	$r4, 1, bnei.89838
	addi	$r4, $r0, 1
	j	cont.89837
bnei.89838:
	addi	$r4, $r0, 0
cont.89837:
cont.89833:
cont.89825:
cont.89815:
cont.89801:
	bnei	$r4, 1, bnei.89840
	addi	$r2, $r0, 0
	jr	$r31
bnei.89840:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89842
	addi	$r2, $r0, 1
	jr	$r31
bnei.89842:
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
	bnei	$r5, 1, bnei.89844
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89846
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89848
	addi	$r4, $r0, 0
	j	cont.89843     ! elimjump
bnei.89848:
	addi	$r4, $r0, 1
cont.89847:
	j	cont.89843     ! elimjump
bclf.89846:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89850
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89852
	addi	$r4, $r0, 0
	j	cont.89843     ! elimjump
bnei.89852:
	addi	$r4, $r0, 1
cont.89851:
	j	cont.89843     ! elimjump
bclf.89850:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89854
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89856
	addi	$r4, $r0, 0
	j	cont.89843     ! elimjump
bnei.89856:
	addi	$r4, $r0, 1
cont.89855:
	j	cont.89843     ! elimjump
bclf.89854:
	lw	$r4, 24($r4)
cont.89853:
cont.89849:
cont.89845:
	j	cont.89843
bnei.89844:
	bnei	$r5, 2, bnei.89858
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
	bclf	bclf.89860
	bnei	$r4, 0, bnei.89862
	addi	$r4, $r0, 1
	j	cont.89857     ! elimjump
bnei.89862:
	addi	$r4, $r0, 0
cont.89861:
	j	cont.89857     ! elimjump
bclf.89860:
	bnei	$r4, 1, bnei.89864
	addi	$r4, $r0, 1
	j	cont.89857     ! elimjump
bnei.89864:
	addi	$r4, $r0, 0
cont.89863:
cont.89859:
	j	cont.89857
bnei.89858:
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
	bnei	$r5, 0, bnei.89866
	fmove	$f3, $f6
	j	cont.89865
bnei.89866:
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
cont.89865:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89868
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89870
	bnei	$r4, 0, bnei.89872
	addi	$r4, $r0, 1
	j	cont.89867     ! elimjump
bnei.89872:
	addi	$r4, $r0, 0
cont.89871:
	j	cont.89867     ! elimjump
bclf.89870:
	bnei	$r4, 1, bnei.89874
	addi	$r4, $r0, 1
	j	cont.89867     ! elimjump
bnei.89874:
	addi	$r4, $r0, 0
cont.89873:
cont.89869:
	j	cont.89867
bnei.89868:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89876
	bnei	$r4, 0, bnei.89878
	addi	$r4, $r0, 1
	j	cont.89875     ! elimjump
bnei.89878:
	addi	$r4, $r0, 0
cont.89877:
	j	cont.89875
bclf.89876:
	bnei	$r4, 1, bnei.89880
	addi	$r4, $r0, 1
	j	cont.89879
bnei.89880:
	addi	$r4, $r0, 0
cont.89879:
cont.89875:
cont.89867:
cont.89857:
cont.89843:
	bnei	$r4, 1, bnei.89882
	addi	$r2, $r0, 0
	jr	$r31
bnei.89882:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89884
	addi	$r2, $r0, 1
	jr	$r31
bnei.89884:
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
	bnei	$r5, 1, bnei.89886
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89888
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89890
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89890:
	addi	$r2, $r0, 0
	jr	$r31
bclf.89888:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89892
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89894
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89894:
	addi	$r2, $r0, 0
	jr	$r31
bclf.89892:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89896
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89898
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89898:
	addi	$r2, $r0, 0
	jr	$r31
bclf.89896:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89900
	addi	$r2, $r0, 0
	jr	$r31
bnei.89900:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89886:
	bnei	$r5, 2, bnei.89902
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
	bclf	bclf.89904
	bnei	$r4, 0, bnei.89906
	addi	$r2, $r0, 0
	jr	$r31
bnei.89906:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bclf.89904:
	bnei	$r4, 1, bnei.89908
	addi	$r2, $r0, 0
	jr	$r31
bnei.89908:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89902:
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
	bnei	$r5, 0, bnei.89910
	fmove	$f3, $f6
	j	cont.89909
bnei.89910:
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
cont.89909:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89912
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89914
	bnei	$r4, 0, bnei.89916
	addi	$r2, $r0, 0
	jr	$r31
bnei.89916:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bclf.89914:
	bnei	$r4, 1, bnei.89918
	addi	$r2, $r0, 0
	jr	$r31
bnei.89918:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bnei.89912:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.89920
	bnei	$r4, 0, bnei.89922
	addi	$r2, $r0, 0
	jr	$r31
bnei.89922:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
bclf.89920:
	bnei	$r4, 1, bnei.89924
	addi	$r2, $r0, 0
	jr	$r31
bnei.89924:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
shadow_check_and_group.4852:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.89926
	addi	$r2, $r0, 0
	jr	$r31
bnei.89926:
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
	bnei	$r7, 1, bnei.89928
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
	bclf	bclf.89930
	addi	$r7, $r0, 0
	j	cont.89929
bclf.89930:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89932
	addi	$r7, $r0, 0
	j	cont.89931
bclf.89932:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.89934
	addi	$r7, $r0, 0
	j	cont.89933
bclf.89934:
	addi	$r7, $r0, 1
cont.89933:
cont.89931:
cont.89929:
	bnei	$r7, 1, bnei.89936
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.89927     ! elimjump
bnei.89936:
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
	bclf	bclf.89938
	addi	$r7, $r0, 0
	j	cont.89937
bclf.89938:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.89940
	addi	$r7, $r0, 0
	j	cont.89939
bclf.89940:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.89942
	addi	$r7, $r0, 0
	j	cont.89941
bclf.89942:
	addi	$r7, $r0, 1
cont.89941:
cont.89939:
cont.89937:
	bnei	$r7, 1, bnei.89944
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.89927     ! elimjump
bnei.89944:
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
	bclf	bclf.89946
	addi	$r5, $r0, 0
	j	cont.89927     ! elimjump
bclf.89946:
	lw	$r5, 16($r5)
	lwcl	$f0, 4($r5)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.89948
	addi	$r5, $r0, 0
	j	cont.89927     ! elimjump
bclf.89948:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.89950
	addi	$r5, $r0, 0
	j	cont.89927     ! elimjump
bclf.89950:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.89949:
cont.89947:
cont.89945:
cont.89943:
cont.89935:
	j	cont.89927
bnei.89928:
	bnei	$r7, 2, bnei.89952
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.89954
	addi	$r5, $r0, 0
	j	cont.89951     ! elimjump
bclf.89954:
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
cont.89953:
	j	cont.89951
bnei.89952:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.89956
	addi	$r5, $r0, 0
	j	cont.89955
bclf.89956:
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
	bnei	$r7, 0, bnei.89958
	fmove	$f0, $f5
	j	cont.89957
bnei.89958:
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
cont.89957:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.89960
	sub.s	$f0, $f0, $f31
	j	cont.89959
bnei.89960:
cont.89959:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.89962
	addi	$r5, $r0, 0
	j	cont.89961
bclf.89962:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.89964
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.89963
bnei.89964:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.89963:
cont.89961:
cont.89955:
cont.89951:
cont.89927:
	lwcl	$f0, 576($r0)
	bnei	$r5, 0, bnei.89966
	addi	$r5, $r0, 0
	j	cont.89965
bnei.89966:
	c.le.s	$f27, $f0
	bclf	bclf.89968
	addi	$r5, $r0, 0
	j	cont.89967
bclf.89968:
	addi	$r5, $r0, 1
cont.89967:
cont.89965:
	bnei	$r5, 1, bnei.89970
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
	bnei	$r4, -1, bnei.89972
	addi	$r2, $r0, 1
	jr	$r31
bnei.89972:
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
	bnei	$r5, 1, bnei.89974
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.89976
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89978
	addi	$r4, $r0, 0
	j	cont.89973     ! elimjump
bnei.89978:
	addi	$r4, $r0, 1
cont.89977:
	j	cont.89973     ! elimjump
bclf.89976:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.89980
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89982
	addi	$r4, $r0, 0
	j	cont.89973     ! elimjump
bnei.89982:
	addi	$r4, $r0, 1
cont.89981:
	j	cont.89973     ! elimjump
bclf.89980:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.89984
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.89986
	addi	$r4, $r0, 0
	j	cont.89973     ! elimjump
bnei.89986:
	addi	$r4, $r0, 1
cont.89985:
	j	cont.89973     ! elimjump
bclf.89984:
	lw	$r4, 24($r4)
cont.89983:
cont.89979:
cont.89975:
	j	cont.89973
bnei.89974:
	bnei	$r5, 2, bnei.89988
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
	bclf	bclf.89990
	bnei	$r4, 0, bnei.89992
	addi	$r4, $r0, 1
	j	cont.89987     ! elimjump
bnei.89992:
	addi	$r4, $r0, 0
cont.89991:
	j	cont.89987     ! elimjump
bclf.89990:
	bnei	$r4, 1, bnei.89994
	addi	$r4, $r0, 1
	j	cont.89987     ! elimjump
bnei.89994:
	addi	$r4, $r0, 0
cont.89993:
cont.89989:
	j	cont.89987
bnei.89988:
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
	bnei	$r5, 0, bnei.89996
	fmove	$f3, $f6
	j	cont.89995
bnei.89996:
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
cont.89995:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.89998
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90000
	bnei	$r4, 0, bnei.90002
	addi	$r4, $r0, 1
	j	cont.89997     ! elimjump
bnei.90002:
	addi	$r4, $r0, 0
cont.90001:
	j	cont.89997     ! elimjump
bclf.90000:
	bnei	$r4, 1, bnei.90004
	addi	$r4, $r0, 1
	j	cont.89997     ! elimjump
bnei.90004:
	addi	$r4, $r0, 0
cont.90003:
cont.89999:
	j	cont.89997
bnei.89998:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90006
	bnei	$r4, 0, bnei.90008
	addi	$r4, $r0, 1
	j	cont.90005     ! elimjump
bnei.90008:
	addi	$r4, $r0, 0
cont.90007:
	j	cont.90005
bclf.90006:
	bnei	$r4, 1, bnei.90010
	addi	$r4, $r0, 1
	j	cont.90009
bnei.90010:
	addi	$r4, $r0, 0
cont.90009:
cont.90005:
cont.89997:
cont.89987:
cont.89973:
	bnei	$r4, 1, bnei.90012
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90012:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.90014
	addi	$r2, $r0, 1
	jr	$r31
bnei.90014:
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
	bnei	$r5, 1, bnei.90016
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.90018
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90020
	addi	$r4, $r0, 0
	j	cont.90015     ! elimjump
bnei.90020:
	addi	$r4, $r0, 1
cont.90019:
	j	cont.90015     ! elimjump
bclf.90018:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.90022
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90024
	addi	$r4, $r0, 0
	j	cont.90015     ! elimjump
bnei.90024:
	addi	$r4, $r0, 1
cont.90023:
	j	cont.90015     ! elimjump
bclf.90022:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.90026
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90028
	addi	$r4, $r0, 0
	j	cont.90015     ! elimjump
bnei.90028:
	addi	$r4, $r0, 1
cont.90027:
	j	cont.90015     ! elimjump
bclf.90026:
	lw	$r4, 24($r4)
cont.90025:
cont.90021:
cont.90017:
	j	cont.90015
bnei.90016:
	bnei	$r5, 2, bnei.90030
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
	bclf	bclf.90032
	bnei	$r4, 0, bnei.90034
	addi	$r4, $r0, 1
	j	cont.90029     ! elimjump
bnei.90034:
	addi	$r4, $r0, 0
cont.90033:
	j	cont.90029     ! elimjump
bclf.90032:
	bnei	$r4, 1, bnei.90036
	addi	$r4, $r0, 1
	j	cont.90029     ! elimjump
bnei.90036:
	addi	$r4, $r0, 0
cont.90035:
cont.90031:
	j	cont.90029
bnei.90030:
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
	bnei	$r5, 0, bnei.90038
	fmove	$f3, $f6
	j	cont.90037
bnei.90038:
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
cont.90037:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.90040
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90042
	bnei	$r4, 0, bnei.90044
	addi	$r4, $r0, 1
	j	cont.90039     ! elimjump
bnei.90044:
	addi	$r4, $r0, 0
cont.90043:
	j	cont.90039     ! elimjump
bclf.90042:
	bnei	$r4, 1, bnei.90046
	addi	$r4, $r0, 1
	j	cont.90039     ! elimjump
bnei.90046:
	addi	$r4, $r0, 0
cont.90045:
cont.90041:
	j	cont.90039
bnei.90040:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90048
	bnei	$r4, 0, bnei.90050
	addi	$r4, $r0, 1
	j	cont.90047     ! elimjump
bnei.90050:
	addi	$r4, $r0, 0
cont.90049:
	j	cont.90047
bclf.90048:
	bnei	$r4, 1, bnei.90052
	addi	$r4, $r0, 1
	j	cont.90051
bnei.90052:
	addi	$r4, $r0, 0
cont.90051:
cont.90047:
cont.90039:
cont.90029:
cont.90015:
	bnei	$r4, 1, bnei.90054
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90054:
	lw	$r4, 8($r3)
	bnei	$r4, -1, bnei.90056
	addi	$r2, $r0, 1
	jr	$r31
bnei.90056:
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
	bnei	$r5, 1, bnei.90058
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.90060
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90062
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90064
	addi	$r2, $r0, 1
	jr	$r31
bnei.90064:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90062:
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bclf.90060:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.90066
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90068
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90070
	addi	$r2, $r0, 1
	jr	$r31
bnei.90070:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90068:
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bclf.90066:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.90072
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90074
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90076
	addi	$r2, $r0, 1
	jr	$r31
bnei.90076:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90074:
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bclf.90072:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90078
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90078:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90080
	addi	$r2, $r0, 1
	jr	$r31
bnei.90080:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90058:
	bnei	$r5, 2, bnei.90082
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
	bclf	bclf.90084
	bnei	$r4, 0, bnei.90086
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90086:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90088
	addi	$r2, $r0, 1
	jr	$r31
bnei.90088:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bclf.90084:
	bnei	$r4, 1, bnei.90090
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90090:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90092
	addi	$r2, $r0, 1
	jr	$r31
bnei.90092:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90082:
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
	bnei	$r5, 0, bnei.90094
	fmove	$f3, $f6
	j	cont.90093
bnei.90094:
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
cont.90093:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.90096
	sub.s	$f3, $f3, $f31
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90098
	bnei	$r4, 0, bnei.90100
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90100:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90102
	addi	$r2, $r0, 1
	jr	$r31
bnei.90102:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bclf.90098:
	bnei	$r4, 1, bnei.90104
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90104:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90106
	addi	$r2, $r0, 1
	jr	$r31
bnei.90106:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.90096:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90108
	bnei	$r4, 0, bnei.90110
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90110:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90112
	addi	$r2, $r0, 1
	jr	$r31
bnei.90112:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bclf.90108:
	bnei	$r4, 1, bnei.90114
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90114:
	addi	$r4, $r0, 3
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
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
	bnei	$r2, 1, bnei.90116
	addi	$r2, $r0, 1
	jr	$r31
bnei.90116:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.89970:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.90118
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.90118:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.4897:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.90120
	addi	$r2, $r0, 0
	jr	$r31
bnei.90120:
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
	bnei	$r2, 1, bnei.90122
	addi	$r2, $r0, 1
	jr	$r31
bnei.90122:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90124
	addi	$r2, $r0, 0
	jr	$r31
bnei.90124:
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
	bnei	$r2, 1, bnei.90126
	addi	$r2, $r0, 1
	jr	$r31
bnei.90126:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90128
	addi	$r2, $r0, 0
	jr	$r31
bnei.90128:
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
	bnei	$r2, 1, bnei.90130
	addi	$r2, $r0, 1
	jr	$r31
bnei.90130:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.90132
	addi	$r2, $r0, 0
	jr	$r31
bnei.90132:
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
	bnei	$r2, 1, bnei.90134
	addi	$r2, $r0, 1
	jr	$r31
bnei.90134:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_group.4897
shadow_check_one_or_matrix.4909:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.90136
	addi	$r2, $r0, 0
	jr	$r31
bnei.90136:
	addi	$r6, $r0, 99
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r5, $r6, bne.90138
	addi	$r2, $r0, 1
	j	cont.90137
bne.90138:
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
	bnei	$r7, 1, bnei.90140
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
	bclf	bclf.90142
	addi	$r7, $r0, 0
	j	cont.90141
bclf.90142:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90144
	addi	$r7, $r0, 0
	j	cont.90143
bclf.90144:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90146
	addi	$r7, $r0, 0
	j	cont.90145
bclf.90146:
	addi	$r7, $r0, 1
cont.90145:
cont.90143:
cont.90141:
	bnei	$r7, 1, bnei.90148
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90139     ! elimjump
bnei.90148:
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
	bclf	bclf.90150
	addi	$r7, $r0, 0
	j	cont.90149
bclf.90150:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90152
	addi	$r7, $r0, 0
	j	cont.90151
bclf.90152:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90154
	addi	$r7, $r0, 0
	j	cont.90153
bclf.90154:
	addi	$r7, $r0, 1
cont.90153:
cont.90151:
cont.90149:
	bnei	$r7, 1, bnei.90156
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90139     ! elimjump
bnei.90156:
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
	bclf	bclf.90158
	addi	$r5, $r0, 0
	j	cont.90139     ! elimjump
bclf.90158:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90160
	addi	$r5, $r0, 0
	j	cont.90139     ! elimjump
bclf.90160:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90162
	addi	$r5, $r0, 0
	j	cont.90139     ! elimjump
bclf.90162:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.90161:
cont.90159:
cont.90157:
cont.90155:
cont.90147:
	j	cont.90139
bnei.90140:
	bnei	$r7, 2, bnei.90164
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90166
	addi	$r5, $r0, 0
	j	cont.90163     ! elimjump
bclf.90166:
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
cont.90165:
	j	cont.90163
bnei.90164:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90168
	addi	$r5, $r0, 0
	j	cont.90167
bclf.90168:
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
	bnei	$r7, 0, bnei.90170
	fmove	$f0, $f5
	j	cont.90169
bnei.90170:
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
cont.90169:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90172
	sub.s	$f0, $f0, $f31
	j	cont.90171
bnei.90172:
cont.90171:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90174
	addi	$r5, $r0, 0
	j	cont.90173
bclf.90174:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90176
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90175
bnei.90176:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90175:
cont.90173:
cont.90167:
cont.90163:
cont.90139:
	bnei	$r5, 0, bnei.90178
	addi	$r2, $r0, 0
	j	cont.90177
bnei.90178:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90180
	addi	$r2, $r0, 0
	j	cont.90179
bclf.90180:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.90182
	addi	$r2, $r0, 0
	j	cont.90181
bnei.90182:
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
	bnei	$r2, 1, bnei.90184
	addi	$r2, $r0, 1
	j	cont.90183
bnei.90184:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90186
	addi	$r2, $r0, 0
	j	cont.90185
bnei.90186:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90188
	addi	$r2, $r0, 1
	j	cont.90187
bnei.90188:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90190
	addi	$r2, $r0, 0
	j	cont.90189
bnei.90190:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90192
	addi	$r2, $r0, 1
	j	cont.90191
bnei.90192:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90194
	addi	$r2, $r0, 1
	j	cont.90193
bnei.90194:
	addi	$r2, $r0, 0
cont.90193:
cont.90191:
cont.90189:
cont.90187:
cont.90185:
cont.90183:
cont.90181:
cont.90179:
cont.90177:
cont.90137:
	bnei	$r2, 1, bnei.90196
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90198
	addi	$r2, $r0, 0
	j	cont.90197
bnei.90198:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90200
	addi	$r2, $r0, 1
	j	cont.90199
bnei.90200:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90202
	addi	$r2, $r0, 0
	j	cont.90201
bnei.90202:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90204
	addi	$r2, $r0, 1
	j	cont.90203
bnei.90204:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90206
	addi	$r2, $r0, 0
	j	cont.90205
bnei.90206:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.90208
	addi	$r2, $r0, 1
	j	cont.90207
bnei.90208:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.90207:
cont.90205:
cont.90203:
cont.90201:
cont.90199:
cont.90197:
	bnei	$r2, 1, bnei.90210
	addi	$r2, $r0, 1
	jr	$r31
bnei.90210:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90212
	addi	$r2, $r0, 0
	jr	$r31
bnei.90212:
	addi	$r6, $r0, 99
	bne	$r5, $r6, bne.90214
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90216
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	j	shadow_check_one_or_matrix.4909
bnei.90216:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90218
	addi	$r2, $r0, 1
	jr	$r31
bnei.90218:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90220
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90220:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90222
	addi	$r2, $r0, 1
	jr	$r31
bnei.90222:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90224
	addi	$r2, $r0, 1
	jr	$r31
bnei.90224:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bne.90214:
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
	bnei	$r7, 1, bnei.90226
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
	bclf	bclf.90228
	addi	$r7, $r0, 0
	j	cont.90227
bclf.90228:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90230
	addi	$r7, $r0, 0
	j	cont.90229
bclf.90230:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90232
	addi	$r7, $r0, 0
	j	cont.90231
bclf.90232:
	addi	$r7, $r0, 1
cont.90231:
cont.90229:
cont.90227:
	bnei	$r7, 1, bnei.90234
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90225     ! elimjump
bnei.90234:
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
	bclf	bclf.90236
	addi	$r7, $r0, 0
	j	cont.90235
bclf.90236:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90238
	addi	$r7, $r0, 0
	j	cont.90237
bclf.90238:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90240
	addi	$r7, $r0, 0
	j	cont.90239
bclf.90240:
	addi	$r7, $r0, 1
cont.90239:
cont.90237:
cont.90235:
	bnei	$r7, 1, bnei.90242
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90225     ! elimjump
bnei.90242:
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
	bclf	bclf.90244
	addi	$r5, $r0, 0
	j	cont.90225     ! elimjump
bclf.90244:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90246
	addi	$r5, $r0, 0
	j	cont.90225     ! elimjump
bclf.90246:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90248
	addi	$r5, $r0, 0
	j	cont.90225     ! elimjump
bclf.90248:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.90247:
cont.90245:
cont.90243:
cont.90241:
cont.90233:
	j	cont.90225
bnei.90226:
	bnei	$r7, 2, bnei.90250
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90252
	addi	$r5, $r0, 0
	j	cont.90249     ! elimjump
bclf.90252:
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
cont.90251:
	j	cont.90249
bnei.90250:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90254
	addi	$r5, $r0, 0
	j	cont.90253
bclf.90254:
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
	bnei	$r7, 0, bnei.90256
	fmove	$f0, $f5
	j	cont.90255
bnei.90256:
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
cont.90255:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90258
	sub.s	$f0, $f0, $f31
	j	cont.90257
bnei.90258:
cont.90257:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90260
	addi	$r5, $r0, 0
	j	cont.90259
bclf.90260:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90262
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90261
bnei.90262:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90261:
cont.90259:
cont.90253:
cont.90249:
cont.90225:
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	bnei	$r5, 0, bnei.90264
	addi	$r2, $r0, 0
	j	cont.90263
bnei.90264:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90266
	addi	$r2, $r0, 0
	j	cont.90265
bclf.90266:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90268
	addi	$r2, $r0, 0
	j	cont.90267
bnei.90268:
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
	bnei	$r2, 1, bnei.90270
	addi	$r2, $r0, 1
	j	cont.90269
bnei.90270:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90272
	addi	$r2, $r0, 0
	j	cont.90271
bnei.90272:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90274
	addi	$r2, $r0, 1
	j	cont.90273
bnei.90274:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90276
	addi	$r2, $r0, 1
	j	cont.90275
bnei.90276:
	addi	$r2, $r0, 0
cont.90275:
cont.90273:
cont.90271:
cont.90269:
cont.90267:
cont.90265:
cont.90263:
	bnei	$r2, 1, bnei.90278
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90280
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90280:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90282
	addi	$r2, $r0, 1
	jr	$r31
bnei.90282:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90284
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90284:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90286
	addi	$r2, $r0, 1
	jr	$r31
bnei.90286:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.90288
	addi	$r2, $r0, 1
	jr	$r31
bnei.90288:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90278:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90196:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90290
	addi	$r2, $r0, 0
	jr	$r31
bnei.90290:
	addi	$r6, $r0, 99
	bne	$r5, $r6, bne.90292
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90294
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	j	shadow_check_one_or_matrix.4909
bnei.90294:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r2, -24($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90296
	addi	$r2, $r0, 1
	jr	$r31
bnei.90296:
	lw	$r2, -28($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90298
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90298:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90300
	addi	$r2, $r0, 1
	jr	$r31
bnei.90300:
	addi	$r2, $r0, 3
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90302
	addi	$r2, $r0, 1
	jr	$r31
bnei.90302:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bne.90292:
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
	bnei	$r7, 1, bnei.90304
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
	bclf	bclf.90306
	addi	$r7, $r0, 0
	j	cont.90305
bclf.90306:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90308
	addi	$r7, $r0, 0
	j	cont.90307
bclf.90308:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90310
	addi	$r7, $r0, 0
	j	cont.90309
bclf.90310:
	addi	$r7, $r0, 1
cont.90309:
cont.90307:
cont.90305:
	bnei	$r7, 1, bnei.90312
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90303     ! elimjump
bnei.90312:
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
	bclf	bclf.90314
	addi	$r7, $r0, 0
	j	cont.90313
bclf.90314:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90316
	addi	$r7, $r0, 0
	j	cont.90315
bclf.90316:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.90318
	addi	$r7, $r0, 0
	j	cont.90317
bclf.90318:
	addi	$r7, $r0, 1
cont.90317:
cont.90315:
cont.90313:
	bnei	$r7, 1, bnei.90320
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.90303     ! elimjump
bnei.90320:
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
	bclf	bclf.90322
	addi	$r5, $r0, 0
	j	cont.90303     ! elimjump
bclf.90322:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90324
	addi	$r5, $r0, 0
	j	cont.90303     ! elimjump
bclf.90324:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.90326
	addi	$r5, $r0, 0
	j	cont.90303     ! elimjump
bclf.90326:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.90325:
cont.90323:
cont.90321:
cont.90319:
cont.90311:
	j	cont.90303
bnei.90304:
	bnei	$r7, 2, bnei.90328
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.90330
	addi	$r5, $r0, 0
	j	cont.90327     ! elimjump
bclf.90330:
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
cont.90329:
	j	cont.90327
bnei.90328:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.90332
	addi	$r5, $r0, 0
	j	cont.90331
bclf.90332:
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
	bnei	$r7, 0, bnei.90334
	fmove	$f0, $f5
	j	cont.90333
bnei.90334:
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
cont.90333:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90336
	sub.s	$f0, $f0, $f31
	j	cont.90335
bnei.90336:
cont.90335:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90338
	addi	$r5, $r0, 0
	j	cont.90337
bclf.90338:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90340
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90339
bnei.90340:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90339:
cont.90337:
cont.90331:
cont.90327:
cont.90303:
	sw	$r2, -24($r29)
	sw	$r3, -28($r29)
	bnei	$r5, 0, bnei.90342
	addi	$r2, $r0, 0
	j	cont.90341
bnei.90342:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.90344
	addi	$r2, $r0, 0
	j	cont.90343
bclf.90344:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90346
	addi	$r2, $r0, 0
	j	cont.90345
bnei.90346:
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
	bnei	$r2, 1, bnei.90348
	addi	$r2, $r0, 1
	j	cont.90347
bnei.90348:
	lw	$r2, -28($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90350
	addi	$r2, $r0, 0
	j	cont.90349
bnei.90350:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90352
	addi	$r2, $r0, 1
	j	cont.90351
bnei.90352:
	addi	$r2, $r0, 3
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90354
	addi	$r2, $r0, 1
	j	cont.90353
bnei.90354:
	addi	$r2, $r0, 0
cont.90353:
cont.90351:
cont.90349:
cont.90347:
cont.90345:
cont.90343:
cont.90341:
	bnei	$r2, 1, bnei.90356
	lw	$r2, -28($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.90358
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90358:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90360
	addi	$r2, $r0, 1
	jr	$r31
bnei.90360:
	lw	$r2, -28($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.90362
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90362:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90364
	addi	$r2, $r0, 1
	jr	$r31
bnei.90364:
	addi	$r2, $r0, 3
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.90366
	addi	$r2, $r0, 1
	jr	$r31
bnei.90366:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.90356:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
solve_each_element.4936:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90368
	jr	$r31
bnei.90368:
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
	bnei	$r7, 1, bnei.90370
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90372
	addi	$r7, $r0, 0
	j	cont.90371
bclf.90372:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90374
	addi	$r9, $r0, 0
	j	cont.90373
bclf.90374:
	addi	$r9, $r0, 1
cont.90373:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90376
	fneg	$f3, $f3
	j	cont.90375
bne.90376:
cont.90375:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90378
	addi	$r7, $r0, 0
	j	cont.90377
bclf.90378:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90380
	addi	$r7, $r0, 0
	j	cont.90379
bclf.90380:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90379:
cont.90377:
cont.90371:
	bnei	$r7, 1, bnei.90382
	addi	$r6, $r0, 1
	j	cont.90369     ! elimjump
bnei.90382:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90384
	addi	$r7, $r0, 0
	j	cont.90383
bclf.90384:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90386
	addi	$r9, $r0, 0
	j	cont.90385
bclf.90386:
	addi	$r9, $r0, 1
cont.90385:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90388
	fneg	$f3, $f3
	j	cont.90387
bne.90388:
cont.90387:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90390
	addi	$r7, $r0, 0
	j	cont.90389
bclf.90390:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90392
	addi	$r7, $r0, 0
	j	cont.90391
bclf.90392:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90391:
cont.90389:
cont.90383:
	bnei	$r7, 1, bnei.90394
	addi	$r6, $r0, 2
	j	cont.90369     ! elimjump
bnei.90394:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90396
	addi	$r6, $r0, 0
	j	cont.90369     ! elimjump
bclf.90396:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90398
	addi	$r8, $r0, 0
	j	cont.90397
bclf.90398:
	addi	$r8, $r0, 1
cont.90397:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.90400
	fneg	$f3, $f3
	j	cont.90399
bne.90400:
cont.90399:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90402
	addi	$r6, $r0, 0
	j	cont.90369     ! elimjump
bclf.90402:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90404
	addi	$r6, $r0, 0
	j	cont.90369     ! elimjump
bclf.90404:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 3
cont.90403:
cont.90401:
cont.90395:
cont.90393:
cont.90381:
	j	cont.90369
bnei.90370:
	bnei	$r7, 2, bnei.90406
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
	bclf	bclf.90408
	addi	$r6, $r0, 0
	j	cont.90405     ! elimjump
bclf.90408:
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
cont.90407:
	j	cont.90405
bnei.90406:
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
	bnei	$r7, 0, bnei.90410
	fmove	$f3, $f6
	j	cont.90409
bnei.90410:
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
cont.90409:
	c.eq.s	$f3, $f30
	bclf	bclf.90412
	addi	$r6, $r0, 0
	j	cont.90411
bclf.90412:
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
	bnei	$r7, 0, bnei.90414
	fmove	$f4, $f7
	j	cont.90413
bnei.90414:
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
cont.90413:
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
	bnei	$r7, 0, bnei.90416
	fmove	$f0, $f5
	j	cont.90415
bnei.90416:
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
cont.90415:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90418
	sub.s	$f0, $f0, $f31
	j	cont.90417
bnei.90418:
cont.90417:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90420
	addi	$r6, $r0, 0
	j	cont.90419
bclf.90420:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90422
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
	j	cont.90421
bnei.90422:
	fneg	$f0, $f0
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90421:
cont.90419:
cont.90411:
cont.90405:
cont.90369:
	bnei	$r6, 0, bnei.90424
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90426
	addi	$r2, $r2, 1
	j	solve_each_element.4936
bnei.90426:
	jr	$r31
bnei.90424:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.90428
	addi	$r2, $r2, 1
	j	solve_each_element.4936
bclf.90428:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90430
	addi	$r2, $r2, 1
	j	solve_each_element.4936
bclf.90430:
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
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r6, -16($r29)
	sw	$r5, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	swcl	$f0, -36($r29)
	bnei	$r7, -1, bnei.90432
	addi	$r2, $r0, 1
	j	cont.90431
bnei.90432:
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
	bnei	$r8, 1, bnei.90434
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90436
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90438
	addi	$r7, $r0, 0
	j	cont.90433     ! elimjump
bnei.90438:
	addi	$r7, $r0, 1
cont.90437:
	j	cont.90433     ! elimjump
bclf.90436:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90440
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90442
	addi	$r7, $r0, 0
	j	cont.90433     ! elimjump
bnei.90442:
	addi	$r7, $r0, 1
cont.90441:
	j	cont.90433     ! elimjump
bclf.90440:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90444
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90446
	addi	$r7, $r0, 0
	j	cont.90433     ! elimjump
bnei.90446:
	addi	$r7, $r0, 1
cont.90445:
	j	cont.90433     ! elimjump
bclf.90444:
	lw	$r7, 24($r7)
cont.90443:
cont.90439:
cont.90435:
	j	cont.90433
bnei.90434:
	bnei	$r8, 2, bnei.90448
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
	bclf	bclf.90450
	bnei	$r7, 0, bnei.90452
	addi	$r7, $r0, 1
	j	cont.90447     ! elimjump
bnei.90452:
	addi	$r7, $r0, 0
cont.90451:
	j	cont.90447     ! elimjump
bclf.90450:
	bnei	$r7, 1, bnei.90454
	addi	$r7, $r0, 1
	j	cont.90447     ! elimjump
bnei.90454:
	addi	$r7, $r0, 0
cont.90453:
cont.90449:
	j	cont.90447
bnei.90448:
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
	bnei	$r8, 0, bnei.90456
	fmove	$f4, $f7
	j	cont.90455
bnei.90456:
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
cont.90455:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90458
	sub.s	$f4, $f4, $f31
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90460
	bnei	$r7, 0, bnei.90462
	addi	$r7, $r0, 1
	j	cont.90457     ! elimjump
bnei.90462:
	addi	$r7, $r0, 0
cont.90461:
	j	cont.90457     ! elimjump
bclf.90460:
	bnei	$r7, 1, bnei.90464
	addi	$r7, $r0, 1
	j	cont.90457     ! elimjump
bnei.90464:
	addi	$r7, $r0, 0
cont.90463:
cont.90459:
	j	cont.90457
bnei.90458:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90466
	bnei	$r7, 0, bnei.90468
	addi	$r7, $r0, 1
	j	cont.90465     ! elimjump
bnei.90468:
	addi	$r7, $r0, 0
cont.90467:
	j	cont.90465
bclf.90466:
	bnei	$r7, 1, bnei.90470
	addi	$r7, $r0, 1
	j	cont.90469
bnei.90470:
	addi	$r7, $r0, 0
cont.90469:
cont.90465:
cont.90457:
cont.90447:
cont.90433:
	bnei	$r7, 1, bnei.90472
	addi	$r2, $r0, 0
	j	cont.90471
bnei.90472:
	lw	$r7, 4($r3)
	bnei	$r7, -1, bnei.90474
	addi	$r2, $r0, 1
	j	cont.90473
bnei.90474:
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
	bnei	$r8, 1, bnei.90476
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90478
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90480
	addi	$r7, $r0, 0
	j	cont.90475     ! elimjump
bnei.90480:
	addi	$r7, $r0, 1
cont.90479:
	j	cont.90475     ! elimjump
bclf.90478:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90482
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90484
	addi	$r7, $r0, 0
	j	cont.90475     ! elimjump
bnei.90484:
	addi	$r7, $r0, 1
cont.90483:
	j	cont.90475     ! elimjump
bclf.90482:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90486
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90488
	addi	$r7, $r0, 0
	j	cont.90475     ! elimjump
bnei.90488:
	addi	$r7, $r0, 1
cont.90487:
	j	cont.90475     ! elimjump
bclf.90486:
	lw	$r7, 24($r7)
cont.90485:
cont.90481:
cont.90477:
	j	cont.90475
bnei.90476:
	bnei	$r8, 2, bnei.90490
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
	bclf	bclf.90492
	bnei	$r7, 0, bnei.90494
	addi	$r7, $r0, 1
	j	cont.90489     ! elimjump
bnei.90494:
	addi	$r7, $r0, 0
cont.90493:
	j	cont.90489     ! elimjump
bclf.90492:
	bnei	$r7, 1, bnei.90496
	addi	$r7, $r0, 1
	j	cont.90489     ! elimjump
bnei.90496:
	addi	$r7, $r0, 0
cont.90495:
cont.90491:
	j	cont.90489
bnei.90490:
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
	bnei	$r8, 0, bnei.90498
	fmove	$f4, $f7
	j	cont.90497
bnei.90498:
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
cont.90497:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90500
	sub.s	$f4, $f4, $f31
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90502
	bnei	$r7, 0, bnei.90504
	addi	$r7, $r0, 1
	j	cont.90499     ! elimjump
bnei.90504:
	addi	$r7, $r0, 0
cont.90503:
	j	cont.90499     ! elimjump
bclf.90502:
	bnei	$r7, 1, bnei.90506
	addi	$r7, $r0, 1
	j	cont.90499     ! elimjump
bnei.90506:
	addi	$r7, $r0, 0
cont.90505:
cont.90501:
	j	cont.90499
bnei.90500:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90508
	bnei	$r7, 0, bnei.90510
	addi	$r7, $r0, 1
	j	cont.90507     ! elimjump
bnei.90510:
	addi	$r7, $r0, 0
cont.90509:
	j	cont.90507
bclf.90508:
	bnei	$r7, 1, bnei.90512
	addi	$r7, $r0, 1
	j	cont.90511
bnei.90512:
	addi	$r7, $r0, 0
cont.90511:
cont.90507:
cont.90499:
cont.90489:
cont.90475:
	bnei	$r7, 1, bnei.90514
	addi	$r2, $r0, 0
	j	cont.90513
bnei.90514:
	lw	$r7, 8($r3)
	bnei	$r7, -1, bnei.90516
	addi	$r2, $r0, 1
	j	cont.90515
bnei.90516:
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
	bnei	$r8, 1, bnei.90518
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90520
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90522
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
	j	cont.90517     ! elimjump
bnei.90522:
	addi	$r2, $r0, 0
cont.90521:
	j	cont.90517     ! elimjump
bclf.90520:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90524
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90526
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
	j	cont.90517     ! elimjump
bnei.90526:
	addi	$r2, $r0, 0
cont.90525:
	j	cont.90517     ! elimjump
bclf.90524:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90528
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90530
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
	j	cont.90517     ! elimjump
bnei.90530:
	addi	$r2, $r0, 0
cont.90529:
	j	cont.90517     ! elimjump
bclf.90528:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90532
	addi	$r2, $r0, 0
	j	cont.90517     ! elimjump
bnei.90532:
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
cont.90531:
cont.90527:
cont.90523:
cont.90519:
	j	cont.90517
bnei.90518:
	bnei	$r8, 2, bnei.90534
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
	bclf	bclf.90536
	bnei	$r7, 0, bnei.90538
	addi	$r2, $r0, 0
	j	cont.90533     ! elimjump
bnei.90538:
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
cont.90537:
	j	cont.90533     ! elimjump
bclf.90536:
	bnei	$r7, 1, bnei.90540
	addi	$r2, $r0, 0
	j	cont.90533     ! elimjump
bnei.90540:
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
cont.90539:
cont.90535:
	j	cont.90533
bnei.90534:
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
	bnei	$r8, 0, bnei.90542
	fmove	$f4, $f7
	j	cont.90541
bnei.90542:
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
cont.90541:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.90544
	sub.s	$f4, $f4, $f31
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90546
	bnei	$r7, 0, bnei.90548
	addi	$r2, $r0, 0
	j	cont.90543     ! elimjump
bnei.90548:
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
cont.90547:
	j	cont.90543     ! elimjump
bclf.90546:
	bnei	$r7, 1, bnei.90550
	addi	$r2, $r0, 0
	j	cont.90543     ! elimjump
bnei.90550:
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
cont.90549:
cont.90545:
	j	cont.90543
bnei.90544:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.90552
	bnei	$r7, 0, bnei.90554
	addi	$r2, $r0, 0
	j	cont.90551     ! elimjump
bnei.90554:
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
cont.90553:
	j	cont.90551
bclf.90552:
	bnei	$r7, 1, bnei.90556
	addi	$r2, $r0, 0
	j	cont.90555
bnei.90556:
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
cont.90555:
cont.90551:
cont.90543:
cont.90533:
cont.90517:
cont.90515:
cont.90513:
cont.90473:
cont.90471:
cont.90431:
	bnei	$r2, 1, bnei.90558
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
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
bnei.90558:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
solve_one_or_network.4987:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90560
	jr	$r31
bnei.90560:
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
	bnei	$r3, -1, bnei.90562
	jr	$r31
bnei.90562:
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
	bnei	$r3, -1, bnei.90564
	jr	$r31
bnei.90564:
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
	bnei	$r3, -1, bnei.90566
	jr	$r31
bnei.90566:
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
	bnei	$r3, -1, bnei.90568
	jr	$r31
bnei.90568:
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
	bnei	$r3, -1, bnei.90570
	jr	$r31
bnei.90570:
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
	bnei	$r3, -1, bnei.90572
	jr	$r31
bnei.90572:
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
	bnei	$r3, -1, bnei.90574
	jr	$r31
bnei.90574:
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
	bnei	$r6, -1, bnei.90576
	jr	$r31
bnei.90576:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.90578
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90580
	j	cont.90577     ! elimjump
bnei.90580:
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
	bnei	$r3, -1, bnei.90582
	j	cont.90577     ! elimjump
bnei.90582:
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
	bnei	$r3, -1, bnei.90584
	j	cont.90577     ! elimjump
bnei.90584:
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
	bnei	$r3, -1, bnei.90586
	j	cont.90577     ! elimjump
bnei.90586:
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
	bnei	$r3, -1, bnei.90588
	j	cont.90577     ! elimjump
bnei.90588:
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
	bnei	$r3, -1, bnei.90590
	j	cont.90577     ! elimjump
bnei.90590:
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
	bnei	$r3, -1, bnei.90592
	j	cont.90577     ! elimjump
bnei.90592:
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
cont.90591:
cont.90589:
cont.90587:
cont.90585:
cont.90583:
cont.90581:
cont.90579:
	j	cont.90577
bne.90578:
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
	bnei	$r7, 1, bnei.90594
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90596
	addi	$r7, $r0, 0
	j	cont.90595
bclf.90596:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90598
	addi	$r9, $r0, 0
	j	cont.90597
bclf.90598:
	addi	$r9, $r0, 1
cont.90597:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90600
	fneg	$f3, $f3
	j	cont.90599
bne.90600:
cont.90599:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90602
	addi	$r7, $r0, 0
	j	cont.90601
bclf.90602:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90604
	addi	$r7, $r0, 0
	j	cont.90603
bclf.90604:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90603:
cont.90601:
cont.90595:
	bnei	$r7, 1, bnei.90606
	addi	$r6, $r0, 1
	j	cont.90593     ! elimjump
bnei.90606:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90608
	addi	$r7, $r0, 0
	j	cont.90607
bclf.90608:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90610
	addi	$r9, $r0, 0
	j	cont.90609
bclf.90610:
	addi	$r9, $r0, 1
cont.90609:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90612
	fneg	$f3, $f3
	j	cont.90611
bne.90612:
cont.90611:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90614
	addi	$r7, $r0, 0
	j	cont.90613
bclf.90614:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90616
	addi	$r7, $r0, 0
	j	cont.90615
bclf.90616:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90615:
cont.90613:
cont.90607:
	bnei	$r7, 1, bnei.90618
	addi	$r6, $r0, 2
	j	cont.90593     ! elimjump
bnei.90618:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.90620
	addi	$r6, $r0, 0
	j	cont.90593     ! elimjump
bclf.90620:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.90622
	addi	$r8, $r0, 0
	j	cont.90621
bclf.90622:
	addi	$r8, $r0, 1
cont.90621:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.90624
	fneg	$f3, $f3
	j	cont.90623
bne.90624:
cont.90623:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90626
	addi	$r6, $r0, 0
	j	cont.90593     ! elimjump
bclf.90626:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90628
	addi	$r6, $r0, 0
	j	cont.90593     ! elimjump
bclf.90628:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 3
cont.90627:
cont.90625:
cont.90619:
cont.90617:
cont.90605:
	j	cont.90593
bnei.90594:
	bnei	$r7, 2, bnei.90630
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
	bclf	bclf.90632
	addi	$r6, $r0, 0
	j	cont.90629     ! elimjump
bclf.90632:
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
cont.90631:
	j	cont.90629
bnei.90630:
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
	bnei	$r7, 0, bnei.90634
	fmove	$f3, $f6
	j	cont.90633
bnei.90634:
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
cont.90633:
	c.eq.s	$f3, $f30
	bclf	bclf.90636
	addi	$r6, $r0, 0
	j	cont.90635
bclf.90636:
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
	bnei	$r7, 0, bnei.90638
	fmove	$f4, $f7
	j	cont.90637
bnei.90638:
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
cont.90637:
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
	bnei	$r7, 0, bnei.90640
	fmove	$f0, $f5
	j	cont.90639
bnei.90640:
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
cont.90639:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.90642
	sub.s	$f0, $f0, $f31
	j	cont.90641
bnei.90642:
cont.90641:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90644
	addi	$r6, $r0, 0
	j	cont.90643
bclf.90644:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.90646
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
	j	cont.90645
bnei.90646:
	fneg	$f0, $f0
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90645:
cont.90643:
cont.90635:
cont.90629:
cont.90593:
	bnei	$r6, 0, bnei.90648
	j	cont.90647
bnei.90648:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90650
	j	cont.90649
bclf.90650:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90652
	j	cont.90651
bnei.90652:
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
	bnei	$r3, -1, bnei.90654
	j	cont.90653
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
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.90656
	j	cont.90655
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
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90658
	j	cont.90657
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
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90660
	j	cont.90659
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
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90662
	j	cont.90661
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
	lw	$r2, -16($r29)
	lw	$r3, 28($r2)
	bnei	$r3, -1, bnei.90664
	j	cont.90663
bnei.90664:
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
cont.90663:
cont.90661:
cont.90659:
cont.90657:
cont.90655:
cont.90653:
cont.90651:
cont.90649:
cont.90647:
cont.90577:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.90666
	jr	$r31
bnei.90666:
	addi	$r6, $r0, 99
	bne	$r5, $r6, bne.90668
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90670
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	j	trace_or_matrix.4999
bnei.90670:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r2, -20($r29)
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
	bnei	$r3, -1, bnei.90672
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90672:
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
	bnei	$r3, -1, bnei.90674
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90674:
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
	bnei	$r3, -1, bnei.90676
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90676:
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
	bnei	$r3, -1, bnei.90678
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90678:
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
	bnei	$r3, -1, bnei.90680
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90680:
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
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bne.90668:
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
	bnei	$r6, 1, bnei.90682
	lw	$r6, -4($r29)
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90684
	addi	$r7, $r0, 0
	j	cont.90683
bclf.90684:
	lw	$r7, 16($r5)
	lw	$r8, 24($r5)
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90686
	addi	$r9, $r0, 0
	j	cont.90685
bclf.90686:
	addi	$r9, $r0, 1
cont.90685:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.90688
	fneg	$f3, $f3
	j	cont.90687
bne.90688:
cont.90687:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r6)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90690
	addi	$r7, $r0, 0
	j	cont.90689
bclf.90690:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90692
	addi	$r7, $r0, 0
	j	cont.90691
bclf.90692:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90691:
cont.90689:
cont.90683:
	bnei	$r7, 1, bnei.90694
	addi	$r5, $r0, 1
	j	cont.90681     ! elimjump
bnei.90694:
	lwcl	$f3, 4($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90696
	addi	$r7, $r0, 0
	j	cont.90695
bclf.90696:
	lw	$r7, 16($r5)
	lw	$r8, 24($r5)
	lwcl	$f3, 4($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90698
	addi	$r9, $r0, 0
	j	cont.90697
bclf.90698:
	addi	$r9, $r0, 1
cont.90697:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.90700
	fneg	$f3, $f3
	j	cont.90699
bne.90700:
cont.90699:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r6)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90702
	addi	$r7, $r0, 0
	j	cont.90701
bclf.90702:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r6)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90704
	addi	$r7, $r0, 0
	j	cont.90703
bclf.90704:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.90703:
cont.90701:
cont.90695:
	bnei	$r7, 1, bnei.90706
	addi	$r5, $r0, 2
	j	cont.90681     ! elimjump
bnei.90706:
	lwcl	$f3, 8($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90708
	addi	$r5, $r0, 0
	j	cont.90681     ! elimjump
bclf.90708:
	lw	$r7, 16($r5)
	lw	$r5, 24($r5)
	lwcl	$f3, 8($r6)
	c.le.s	$f30, $f3
	bclf	bclf.90710
	addi	$r8, $r0, 0
	j	cont.90709
bclf.90710:
	addi	$r8, $r0, 1
cont.90709:
	lwcl	$f3, 8($r7)
	bne	$r5, $r8, bne.90712
	fneg	$f3, $f3
	j	cont.90711
bne.90712:
cont.90711:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r6)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r6)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.90714
	addi	$r5, $r0, 0
	j	cont.90681     ! elimjump
bclf.90714:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r6)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90716
	addi	$r5, $r0, 0
	j	cont.90681     ! elimjump
bclf.90716:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.90715:
cont.90713:
cont.90707:
cont.90705:
cont.90693:
	j	cont.90681
bnei.90682:
	bnei	$r6, 2, bnei.90718
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
	bclf	bclf.90720
	addi	$r5, $r0, 0
	j	cont.90717     ! elimjump
bclf.90720:
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
cont.90719:
	j	cont.90717
bnei.90718:
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
	bnei	$r7, 0, bnei.90722
	fmove	$f3, $f6
	j	cont.90721
bnei.90722:
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
cont.90721:
	c.eq.s	$f3, $f30
	bclf	bclf.90724
	addi	$r5, $r0, 0
	j	cont.90723
bclf.90724:
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
	bnei	$r7, 0, bnei.90726
	fmove	$f4, $f7
	j	cont.90725
bnei.90726:
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
cont.90725:
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
	bnei	$r7, 0, bnei.90728
	fmove	$f0, $f5
	j	cont.90727
bnei.90728:
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
cont.90727:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.90730
	sub.s	$f0, $f0, $f31
	j	cont.90729
bnei.90730:
cont.90729:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.90732
	addi	$r5, $r0, 0
	j	cont.90731
bclf.90732:
	sqrt	$f0, $f0
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90734
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.90733
bnei.90734:
	fneg	$f0, $f0
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.90733:
cont.90731:
cont.90723:
cont.90717:
cont.90681:
	bnei	$r5, 0, bnei.90736
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r6, 0
	j	trace_or_matrix.4999
bnei.90736:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90738
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r6, 0
	j	trace_or_matrix.4999
bclf.90738:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90740
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r6, 0
	j	trace_or_matrix.4999
bnei.90740:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r7, $r0, 0
	sw	$r2, -20($r29)
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
	bnei	$r3, -1, bnei.90742
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
bnei.90742:
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
	bnei	$r3, -1, bnei.90744
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
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
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.90746
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
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
	lw	$r3, 20($r2)
	bnei	$r3, -1, bnei.90748
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
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
	lw	$r3, 24($r2)
	bnei	$r3, -1, bnei.90750
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
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
	addi	$r2, $r0, 7
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
solve_each_element_fast.5034:
	lw	$r5, 0($r4)
	sll	$r6, $r2, 2
	lwr	$r6, $r6($r3)	!ld var
	bnei	$r6, -1, bnei.90752
	jr	$r31
bnei.90752:
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
	bnei	$r10, 1, bnei.90754
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
	bclf	bclf.90756
	addi	$r10, $r0, 0
	j	cont.90755
bclf.90756:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90758
	addi	$r10, $r0, 0
	j	cont.90757
bclf.90758:
	lwcl	$f4, 4($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.90760
	addi	$r10, $r0, 0
	j	cont.90759
bclf.90760:
	addi	$r10, $r0, 1
cont.90759:
cont.90757:
cont.90755:
	bnei	$r10, 1, bnei.90762
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
	j	cont.90753     ! elimjump
bnei.90762:
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
	bclf	bclf.90764
	addi	$r10, $r0, 0
	j	cont.90763
bclf.90764:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90766
	addi	$r10, $r0, 0
	j	cont.90765
bclf.90766:
	lwcl	$f4, 12($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.90768
	addi	$r10, $r0, 0
	j	cont.90767
bclf.90768:
	addi	$r10, $r0, 1
cont.90767:
cont.90765:
cont.90763:
	bnei	$r10, 1, bnei.90770
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 2
	j	cont.90753     ! elimjump
bnei.90770:
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
	bclf	bclf.90772
	addi	$r7, $r0, 0
	j	cont.90753     ! elimjump
bclf.90772:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90774
	addi	$r7, $r0, 0
	j	cont.90753     ! elimjump
bclf.90774:
	lwcl	$f0, 20($r9)
	c.eq.s	$f0, $f30
	bclf	bclf.90776
	addi	$r7, $r0, 0
	j	cont.90753     ! elimjump
bclf.90776:
	swcl	$f2, 576($r0)
	addi	$r7, $r0, 3
cont.90775:
cont.90773:
cont.90771:
cont.90769:
cont.90761:
	j	cont.90753
bnei.90754:
	bnei	$r10, 2, bnei.90778
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.90780
	addi	$r7, $r0, 0
	j	cont.90777     ! elimjump
bclf.90780:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r7, $r0, 1
cont.90779:
	j	cont.90777
bnei.90778:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.90782
	addi	$r7, $r0, 0
	j	cont.90781
bclf.90782:
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
	bclf	bclf.90784
	addi	$r7, $r0, 0
	j	cont.90783
bclf.90784:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90786
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r7, $r0, 1
	j	cont.90785
bnei.90786:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r7, $r0, 1
cont.90785:
cont.90783:
cont.90781:
cont.90777:
cont.90753:
	bnei	$r7, 0, bnei.90788
	sll	$r5, $r6, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90790
	addi	$r2, $r2, 1
	j	solve_each_element_fast.5034
bnei.90790:
	jr	$r31
bnei.90788:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.90792
	addi	$r2, $r2, 1
	j	solve_each_element_fast.5034
bclf.90792:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90794
	addi	$r2, $r2, 1
	j	solve_each_element_fast.5034
bclf.90794:
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
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r7, -16($r29)
	sw	$r6, -20($r29)
	swcl	$f3, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f1, -32($r29)
	swcl	$f0, -36($r29)
	bnei	$r5, -1, bnei.90796
	addi	$r2, $r0, 1
	j	cont.90795
bnei.90796:
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
	bnei	$r8, 1, bnei.90798
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90800
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90802
	addi	$r5, $r0, 0
	j	cont.90797     ! elimjump
bnei.90802:
	addi	$r5, $r0, 1
cont.90801:
	j	cont.90797     ! elimjump
bclf.90800:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90804
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90806
	addi	$r5, $r0, 0
	j	cont.90797     ! elimjump
bnei.90806:
	addi	$r5, $r0, 1
cont.90805:
	j	cont.90797     ! elimjump
bclf.90804:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90808
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90810
	addi	$r5, $r0, 0
	j	cont.90797     ! elimjump
bnei.90810:
	addi	$r5, $r0, 1
cont.90809:
	j	cont.90797     ! elimjump
bclf.90808:
	lw	$r5, 24($r5)
cont.90807:
cont.90803:
cont.90799:
	j	cont.90797
bnei.90798:
	bnei	$r8, 2, bnei.90812
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
	bclf	bclf.90814
	bnei	$r5, 0, bnei.90816
	addi	$r5, $r0, 1
	j	cont.90811     ! elimjump
bnei.90816:
	addi	$r5, $r0, 0
cont.90815:
	j	cont.90811     ! elimjump
bclf.90814:
	bnei	$r5, 1, bnei.90818
	addi	$r5, $r0, 1
	j	cont.90811     ! elimjump
bnei.90818:
	addi	$r5, $r0, 0
cont.90817:
cont.90813:
	j	cont.90811
bnei.90812:
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
	bnei	$r8, 0, bnei.90820
	fmove	$f4, $f7
	j	cont.90819
bnei.90820:
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
cont.90819:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90822
	sub.s	$f4, $f4, $f31
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90824
	bnei	$r5, 0, bnei.90826
	addi	$r5, $r0, 1
	j	cont.90821     ! elimjump
bnei.90826:
	addi	$r5, $r0, 0
cont.90825:
	j	cont.90821     ! elimjump
bclf.90824:
	bnei	$r5, 1, bnei.90828
	addi	$r5, $r0, 1
	j	cont.90821     ! elimjump
bnei.90828:
	addi	$r5, $r0, 0
cont.90827:
cont.90823:
	j	cont.90821
bnei.90822:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90830
	bnei	$r5, 0, bnei.90832
	addi	$r5, $r0, 1
	j	cont.90829     ! elimjump
bnei.90832:
	addi	$r5, $r0, 0
cont.90831:
	j	cont.90829
bclf.90830:
	bnei	$r5, 1, bnei.90834
	addi	$r5, $r0, 1
	j	cont.90833
bnei.90834:
	addi	$r5, $r0, 0
cont.90833:
cont.90829:
cont.90821:
cont.90811:
cont.90797:
	bnei	$r5, 1, bnei.90836
	addi	$r2, $r0, 0
	j	cont.90835
bnei.90836:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.90838
	addi	$r2, $r0, 1
	j	cont.90837
bnei.90838:
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
	bnei	$r8, 1, bnei.90840
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90842
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90844
	addi	$r5, $r0, 0
	j	cont.90839     ! elimjump
bnei.90844:
	addi	$r5, $r0, 1
cont.90843:
	j	cont.90839     ! elimjump
bclf.90842:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90846
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90848
	addi	$r5, $r0, 0
	j	cont.90839     ! elimjump
bnei.90848:
	addi	$r5, $r0, 1
cont.90847:
	j	cont.90839     ! elimjump
bclf.90846:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90850
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90852
	addi	$r5, $r0, 0
	j	cont.90839     ! elimjump
bnei.90852:
	addi	$r5, $r0, 1
cont.90851:
	j	cont.90839     ! elimjump
bclf.90850:
	lw	$r5, 24($r5)
cont.90849:
cont.90845:
cont.90841:
	j	cont.90839
bnei.90840:
	bnei	$r8, 2, bnei.90854
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
	bclf	bclf.90856
	bnei	$r5, 0, bnei.90858
	addi	$r5, $r0, 1
	j	cont.90853     ! elimjump
bnei.90858:
	addi	$r5, $r0, 0
cont.90857:
	j	cont.90853     ! elimjump
bclf.90856:
	bnei	$r5, 1, bnei.90860
	addi	$r5, $r0, 1
	j	cont.90853     ! elimjump
bnei.90860:
	addi	$r5, $r0, 0
cont.90859:
cont.90855:
	j	cont.90853
bnei.90854:
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
	bnei	$r8, 0, bnei.90862
	fmove	$f4, $f7
	j	cont.90861
bnei.90862:
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
cont.90861:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90864
	sub.s	$f4, $f4, $f31
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90866
	bnei	$r5, 0, bnei.90868
	addi	$r5, $r0, 1
	j	cont.90863     ! elimjump
bnei.90868:
	addi	$r5, $r0, 0
cont.90867:
	j	cont.90863     ! elimjump
bclf.90866:
	bnei	$r5, 1, bnei.90870
	addi	$r5, $r0, 1
	j	cont.90863     ! elimjump
bnei.90870:
	addi	$r5, $r0, 0
cont.90869:
cont.90865:
	j	cont.90863
bnei.90864:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90872
	bnei	$r5, 0, bnei.90874
	addi	$r5, $r0, 1
	j	cont.90871     ! elimjump
bnei.90874:
	addi	$r5, $r0, 0
cont.90873:
	j	cont.90871
bclf.90872:
	bnei	$r5, 1, bnei.90876
	addi	$r5, $r0, 1
	j	cont.90875
bnei.90876:
	addi	$r5, $r0, 0
cont.90875:
cont.90871:
cont.90863:
cont.90853:
cont.90839:
	bnei	$r5, 1, bnei.90878
	addi	$r2, $r0, 0
	j	cont.90877
bnei.90878:
	lw	$r5, 8($r3)
	bnei	$r5, -1, bnei.90880
	addi	$r2, $r0, 1
	j	cont.90879
bnei.90880:
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
	bnei	$r8, 1, bnei.90882
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.90884
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90886
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
	j	cont.90881     ! elimjump
bnei.90886:
	addi	$r2, $r0, 0
cont.90885:
	j	cont.90881     ! elimjump
bclf.90884:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90888
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90890
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
	j	cont.90881     ! elimjump
bnei.90890:
	addi	$r2, $r0, 0
cont.90889:
	j	cont.90881     ! elimjump
bclf.90888:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.90892
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90894
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
	j	cont.90881     ! elimjump
bnei.90894:
	addi	$r2, $r0, 0
cont.90893:
	j	cont.90881     ! elimjump
bclf.90892:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.90896
	addi	$r2, $r0, 0
	j	cont.90881     ! elimjump
bnei.90896:
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
cont.90895:
cont.90891:
cont.90887:
cont.90883:
	j	cont.90881
bnei.90882:
	bnei	$r8, 2, bnei.90898
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
	bclf	bclf.90900
	bnei	$r5, 0, bnei.90902
	addi	$r2, $r0, 0
	j	cont.90897     ! elimjump
bnei.90902:
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
cont.90901:
	j	cont.90897     ! elimjump
bclf.90900:
	bnei	$r5, 1, bnei.90904
	addi	$r2, $r0, 0
	j	cont.90897     ! elimjump
bnei.90904:
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
cont.90903:
cont.90899:
	j	cont.90897
bnei.90898:
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
	bnei	$r8, 0, bnei.90906
	fmove	$f4, $f7
	j	cont.90905
bnei.90906:
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
cont.90905:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.90908
	sub.s	$f4, $f4, $f31
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90910
	bnei	$r5, 0, bnei.90912
	addi	$r2, $r0, 0
	j	cont.90907     ! elimjump
bnei.90912:
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
cont.90911:
	j	cont.90907     ! elimjump
bclf.90910:
	bnei	$r5, 1, bnei.90914
	addi	$r2, $r0, 0
	j	cont.90907     ! elimjump
bnei.90914:
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
cont.90913:
cont.90909:
	j	cont.90907
bnei.90908:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.90916
	bnei	$r5, 0, bnei.90918
	addi	$r2, $r0, 0
	j	cont.90915     ! elimjump
bnei.90918:
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
cont.90917:
	j	cont.90915
bclf.90916:
	bnei	$r5, 1, bnei.90920
	addi	$r2, $r0, 0
	j	cont.90919
bnei.90920:
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
cont.90919:
cont.90915:
cont.90907:
cont.90897:
cont.90881:
cont.90879:
cont.90877:
cont.90837:
cont.90835:
cont.90795:
	bnei	$r2, 1, bnei.90922
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
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5034
bnei.90922:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5034
solve_one_or_network_fast.5086:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.90924
	jr	$r31
bnei.90924:
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
	bnei	$r3, -1, bnei.90926
	jr	$r31
bnei.90926:
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
	bnei	$r3, -1, bnei.90928
	jr	$r31
bnei.90928:
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
	bnei	$r3, -1, bnei.90930
	jr	$r31
bnei.90930:
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
	bnei	$r3, -1, bnei.90932
	jr	$r31
bnei.90932:
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
	bnei	$r3, -1, bnei.90934
	jr	$r31
bnei.90934:
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
	bnei	$r3, -1, bnei.90936
	jr	$r31
bnei.90936:
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
	bnei	$r3, -1, bnei.90938
	jr	$r31
bnei.90938:
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
	bnei	$r6, -1, bnei.90940
	jr	$r31
bnei.90940:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.90942
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90944
	j	cont.90941     ! elimjump
bnei.90944:
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
	bnei	$r3, -1, bnei.90946
	j	cont.90941     ! elimjump
bnei.90946:
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
	bnei	$r3, -1, bnei.90948
	j	cont.90941     ! elimjump
bnei.90948:
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
	bnei	$r3, -1, bnei.90950
	j	cont.90941     ! elimjump
bnei.90950:
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
	bnei	$r3, -1, bnei.90952
	j	cont.90941     ! elimjump
bnei.90952:
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
	bnei	$r3, -1, bnei.90954
	j	cont.90941     ! elimjump
bnei.90954:
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
	bnei	$r3, -1, bnei.90956
	j	cont.90941     ! elimjump
bnei.90956:
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
cont.90955:
cont.90953:
cont.90951:
cont.90949:
cont.90947:
cont.90945:
cont.90943:
	j	cont.90941
bne.90942:
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
	bnei	$r9, 1, bnei.90958
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
	bclf	bclf.90960
	addi	$r9, $r0, 0
	j	cont.90959
bclf.90960:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90962
	addi	$r9, $r0, 0
	j	cont.90961
bclf.90962:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.90964
	addi	$r9, $r0, 0
	j	cont.90963
bclf.90964:
	addi	$r9, $r0, 1
cont.90963:
cont.90961:
cont.90959:
	bnei	$r9, 1, bnei.90966
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 1
	j	cont.90957     ! elimjump
bnei.90966:
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
	bclf	bclf.90968
	addi	$r9, $r0, 0
	j	cont.90967
bclf.90968:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.90970
	addi	$r9, $r0, 0
	j	cont.90969
bclf.90970:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.90972
	addi	$r9, $r0, 0
	j	cont.90971
bclf.90972:
	addi	$r9, $r0, 1
cont.90971:
cont.90969:
cont.90967:
	bnei	$r9, 1, bnei.90974
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 2
	j	cont.90957     ! elimjump
bnei.90974:
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
	bclf	bclf.90976
	addi	$r6, $r0, 0
	j	cont.90957     ! elimjump
bclf.90976:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.90978
	addi	$r6, $r0, 0
	j	cont.90957     ! elimjump
bclf.90978:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.90980
	addi	$r6, $r0, 0
	j	cont.90957     ! elimjump
bclf.90980:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 3
cont.90979:
cont.90977:
cont.90975:
cont.90973:
cont.90965:
	j	cont.90957
bnei.90958:
	bnei	$r9, 2, bnei.90982
	lwcl	$f0, 0($r6)
	c.le.s	$f30, $f0
	bclf	bclf.90984
	addi	$r6, $r0, 0
	j	cont.90981     ! elimjump
bclf.90984:
	lwcl	$f0, 0($r6)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90983:
	j	cont.90981
bnei.90982:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.90986
	addi	$r6, $r0, 0
	j	cont.90985
bclf.90986:
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
	bclf	bclf.90988
	addi	$r6, $r0, 0
	j	cont.90987
bclf.90988:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.90990
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
	j	cont.90989
bnei.90990:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.90989:
cont.90987:
cont.90985:
cont.90981:
cont.90957:
	bnei	$r6, 0, bnei.90992
	j	cont.90991
bnei.90992:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.90994
	j	cont.90993
bclf.90994:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.90996
	j	cont.90995
bnei.90996:
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
	bnei	$r3, -1, bnei.90998
	j	cont.90997
bnei.90998:
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
	bnei	$r3, -1, bnei.91000
	j	cont.90999
bnei.91000:
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
	bnei	$r3, -1, bnei.91002
	j	cont.91001
bnei.91002:
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
	bnei	$r3, -1, bnei.91004
	j	cont.91003
bnei.91004:
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
	bnei	$r3, -1, bnei.91006
	j	cont.91005
bnei.91006:
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
	bnei	$r3, -1, bnei.91008
	j	cont.91007
bnei.91008:
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
cont.91007:
cont.91005:
cont.91003:
cont.91001:
cont.90999:
cont.90997:
cont.90995:
cont.90993:
cont.90991:
cont.90941:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.91010
	jr	$r31
bnei.91010:
	addi	$r6, $r0, 99
	bne	$r5, $r6, bne.91012
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.91014
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	j	trace_or_matrix_fast.5098
bnei.91014:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r2, -20($r29)
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
	bnei	$r3, -1, bnei.91016
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91016:
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
	bnei	$r3, -1, bnei.91018
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91018:
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
	bnei	$r3, -1, bnei.91020
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91020:
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
	bnei	$r3, -1, bnei.91022
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91022:
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
	bnei	$r3, -1, bnei.91024
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91024:
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
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bne.91012:
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
	bnei	$r9, 1, bnei.91026
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
	bclf	bclf.91028
	addi	$r9, $r0, 0
	j	cont.91027
bclf.91028:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91030
	addi	$r9, $r0, 0
	j	cont.91029
bclf.91030:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91032
	addi	$r9, $r0, 0
	j	cont.91031
bclf.91032:
	addi	$r9, $r0, 1
cont.91031:
cont.91029:
cont.91027:
	bnei	$r9, 1, bnei.91034
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91025     ! elimjump
bnei.91034:
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
	bclf	bclf.91036
	addi	$r9, $r0, 0
	j	cont.91035
bclf.91036:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91038
	addi	$r9, $r0, 0
	j	cont.91037
bclf.91038:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91040
	addi	$r9, $r0, 0
	j	cont.91039
bclf.91040:
	addi	$r9, $r0, 1
cont.91039:
cont.91037:
cont.91035:
	bnei	$r9, 1, bnei.91042
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.91025     ! elimjump
bnei.91042:
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
	bclf	bclf.91044
	addi	$r5, $r0, 0
	j	cont.91025     ! elimjump
bclf.91044:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 4($r7)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91046
	addi	$r5, $r0, 0
	j	cont.91025     ! elimjump
bclf.91046:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.91048
	addi	$r5, $r0, 0
	j	cont.91025     ! elimjump
bclf.91048:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.91047:
cont.91045:
cont.91043:
cont.91041:
cont.91033:
	j	cont.91025
bnei.91026:
	bnei	$r9, 2, bnei.91050
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.91052
	addi	$r5, $r0, 0
	j	cont.91049     ! elimjump
bclf.91052:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.91051:
	j	cont.91049
bnei.91050:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.91054
	addi	$r5, $r0, 0
	j	cont.91053
bclf.91054:
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
	bclf	bclf.91056
	addi	$r5, $r0, 0
	j	cont.91055
bclf.91056:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.91058
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91057
bnei.91058:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.91057:
cont.91055:
cont.91053:
cont.91049:
cont.91025:
	bnei	$r5, 0, bnei.91060
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r8, 0
	j	trace_or_matrix_fast.5098
bnei.91060:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91062
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r8, 0
	j	trace_or_matrix_fast.5098
bclf.91062:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.91064
	addi	$r2, $r2, 1
	addi	$r3, $r4, 0
	addi	$r4, $r8, 0
	j	trace_or_matrix_fast.5098
bnei.91064:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r2, -20($r29)
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
	bnei	$r3, -1, bnei.91066
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
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
	lw	$r2, -24($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91068
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91068:
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
	bnei	$r3, -1, bnei.91070
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91070:
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
	bnei	$r3, -1, bnei.91072
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91072:
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
	bnei	$r3, -1, bnei.91074
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
bnei.91074:
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
	bnei	$r4, 1, bnei.91076
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
	bclf	bclf.91078
	c.le.s	$f1, $f0
	bclf	bclf.91080
	lfh	$f0, 17279
	swcl	$f0, 620($r0)
	jr	$r31
bclf.91080:
	fmove	$f0, $f30
	swcl	$f0, 620($r0)
	jr	$r31
bclf.91078:
	c.le.s	$f1, $f0
	bclf	bclf.91082
	fmove	$f0, $f30
	swcl	$f0, 620($r0)
	jr	$r31
bclf.91082:
	lfh	$f0, 17279
	swcl	$f0, 620($r0)
	jr	$r31
bnei.91076:
	bnei	$r4, 2, bnei.91084
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
	bclf	bclf.91086
	addi	$r2, $r0, 0
	j	cont.91085
bclf.91086:
	addi	$r2, $r0, 1
cont.91085:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f1, -44($r29)
	c.le.s	$f4, $f5
	bclf	bclf.91088
	c.le.s	$f30, $f4
	bclf	bclf.91090
	fmove	$f0, $f4
	j	cont.91087     ! elimjump
bclf.91090:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.91092
	c.le.s	$f30, $f4
	bclf	bclf.91094
	fmove	$f0, $f4
	j	cont.91087     ! elimjump
bclf.91094:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91093:
	j	cont.91087     ! elimjump
bclf.91092:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91091:
cont.91089:
	j	cont.91087
bclf.91088:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.91096
	c.le.s	$f30, $f4
	bclf	bclf.91098
	fmove	$f0, $f4
	j	cont.91095     ! elimjump
bclf.91098:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91097:
	j	cont.91095
bclf.91096:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.91095:
cont.91087:
	lwcl	$f1, -44($r29)
	c.le.s	$f0, $f1
	bclf	bclf.91100
	lw	$r2, -40($r29)
	j	cont.91099
bclf.91100:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.91102
	addi	$r2, $r0, 1
	j	cont.91101
bclf.91102:
	addi	$r2, $r0, 0
cont.91101:
cont.91099:
	c.le.s	$f0, $f1
	bclf	bclf.91104
	j	cont.91103
bclf.91104:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
cont.91103:
	lwcl	$f2, -28($r29)
	c.le.s	$f0, $f2
	bclf	bclf.91106
	j	cont.91105
bclf.91106:
	sub.s	$f0, $f1, $f0
cont.91105:
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
	bnei	$r2, 1, bnei.91108
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	swcl	$f1, 616($r0)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 620($r0)
	jr	$r31
bnei.91108:
	fneg	$f0, $f0
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	swcl	$f1, 616($r0)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 620($r0)
	jr	$r31
bnei.91084:
	bnei	$r4, 3, bnei.91110
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
bnei.91110:
	bnei	$r4, 4, bnei.91112
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
	bclf	bclf.91114
	div.s	$f0, $f1, $f0
	fabs	$f0, $f0
	c.le.s	$f0, $f31
	bclf	bclf.91116
	c.le.s	$f29, $f0
	bclf	bclf.91118
	addi	$r4, $r0, 0
	j	cont.91115     ! elimjump
bclf.91118:
	addi	$r4, $r0, -1
cont.91117:
	j	cont.91115
bclf.91116:
	addi	$r4, $r0, 1
cont.91115:
	bnei	$r4, 0, bnei.91120
	j	cont.91119
bnei.91120:
	div.s	$f0, $f31, $f0
cont.91119:
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
	bgti	$r2, 0, bgti.91122
	blti	$r2, 0, blti.91124
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.91113     ! elimjump
blti.91124:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.91123:
	j	cont.91113     ! elimjump
bgti.91122:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.91121:
	j	cont.91113
bclf.91114:
	lfh	$f0, 16752
cont.91113:
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
	bclf	bclf.91126
	div.s	$f1, $f1, $f3
	fabs	$f1, $f1
	c.le.s	$f1, $f31
	bclf	bclf.91128
	c.le.s	$f29, $f1
	bclf	bclf.91130
	addi	$r2, $r0, 0
	j	cont.91127     ! elimjump
bclf.91130:
	addi	$r2, $r0, -1
cont.91129:
	j	cont.91127
bclf.91128:
	addi	$r2, $r0, 1
cont.91127:
	bnei	$r2, 0, bnei.91132
	j	cont.91131
bnei.91132:
	div.s	$f1, $f31, $f1
cont.91131:
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
	bgti	$r2, 0, bgti.91134
	blti	$r2, 0, blti.91136
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.91125     ! elimjump
blti.91136:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.91135:
	j	cont.91125     ! elimjump
bgti.91134:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.91133:
	j	cont.91125
bclf.91126:
	lfh	$f0, 16752
cont.91125:
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
	bclf	bclf.91138
	lfh	$f1, 17279
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bclf.91138:
	fmove	$f0, $f30
	swcl	$f0, 624($r0)
	jr	$r31
bnei.91112:
	jr	$r31
trace_reflections.5395:
	blti	$r2, 0, blti.91140
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
	bclf	bclf.91142
	addi	$r2, $r0, 0
	j	cont.91141
bclf.91142:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91144
	addi	$r2, $r0, 0
	j	cont.91143
bclf.91144:
	addi	$r2, $r0, 1
cont.91143:
cont.91141:
	bnei	$r2, 1, bnei.91146
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, cont.91145     ! elimjump
	lw	$r2, 572($r0)
	lw	$r4, 0($r2)
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.91150
	addi	$r2, $r0, 0
	j	cont.91149
bnei.91150:
	addi	$r6, $r0, 99
	bne	$r5, $r6, bne.91152
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.91154
	addi	$r4, $r0, 1
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.91151     ! elimjump
bnei.91154:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r2, -28($r29)
	sw	$r4, -32($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91156
	addi	$r2, $r0, 1
	j	cont.91151     ! elimjump
bnei.91156:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91158
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.91151     ! elimjump
bnei.91158:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91160
	addi	$r2, $r0, 1
	j	cont.91151     ! elimjump
bnei.91160:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91162
	addi	$r2, $r0, 1
	j	cont.91151     ! elimjump
bnei.91162:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91161:
cont.91159:
cont.91157:
cont.91155:
cont.91153:
	j	cont.91151
bne.91152:
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
	bnei	$r7, 1, bnei.91164
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
	bclf	bclf.91166
	addi	$r7, $r0, 0
	j	cont.91165
bclf.91166:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91168
	addi	$r7, $r0, 0
	j	cont.91167
bclf.91168:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91170
	addi	$r7, $r0, 0
	j	cont.91169
bclf.91170:
	addi	$r7, $r0, 1
cont.91169:
cont.91167:
cont.91165:
	bnei	$r7, 1, bnei.91172
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91163     ! elimjump
bnei.91172:
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
	bclf	bclf.91174
	addi	$r7, $r0, 0
	j	cont.91173
bclf.91174:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91176
	addi	$r7, $r0, 0
	j	cont.91175
bclf.91176:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.91178
	addi	$r7, $r0, 0
	j	cont.91177
bclf.91178:
	addi	$r7, $r0, 1
cont.91177:
cont.91175:
cont.91173:
	bnei	$r7, 1, bnei.91180
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.91163     ! elimjump
bnei.91180:
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
	bclf	bclf.91182
	addi	$r5, $r0, 0
	j	cont.91163     ! elimjump
bclf.91182:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91184
	addi	$r5, $r0, 0
	j	cont.91163     ! elimjump
bclf.91184:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.91186
	addi	$r5, $r0, 0
	j	cont.91163     ! elimjump
bclf.91186:
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
cont.91185:
cont.91183:
cont.91181:
cont.91179:
cont.91171:
	j	cont.91163
bnei.91164:
	bnei	$r7, 2, bnei.91188
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.91190
	addi	$r5, $r0, 0
	j	cont.91187     ! elimjump
bclf.91190:
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
cont.91189:
	j	cont.91187
bnei.91188:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.91192
	addi	$r5, $r0, 0
	j	cont.91191
bclf.91192:
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
	bnei	$r7, 0, bnei.91194
	fmove	$f0, $f5
	j	cont.91193
bnei.91194:
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
cont.91193:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.91196
	sub.s	$f0, $f0, $f31
	j	cont.91195
bnei.91196:
cont.91195:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91198
	addi	$r5, $r0, 0
	j	cont.91197
bclf.91198:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.91200
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
	j	cont.91199
bnei.91200:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.91199:
cont.91197:
cont.91191:
cont.91187:
cont.91163:
	sw	$r2, -28($r29)
	sw	$r4, -32($r29)
	bnei	$r5, 0, bnei.91202
	addi	$r2, $r0, 0
	j	cont.91201
bnei.91202:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.91204
	addi	$r2, $r0, 0
	j	cont.91203
bclf.91204:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.91206
	addi	$r2, $r0, 0
	j	cont.91205
bnei.91206:
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
	bnei	$r2, 1, bnei.91208
	addi	$r2, $r0, 1
	j	cont.91207
bnei.91208:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91210
	addi	$r2, $r0, 0
	j	cont.91209
bnei.91210:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91212
	addi	$r2, $r0, 1
	j	cont.91211
bnei.91212:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91214
	addi	$r2, $r0, 1
	j	cont.91213
bnei.91214:
	addi	$r2, $r0, 0
cont.91213:
cont.91211:
cont.91209:
cont.91207:
cont.91205:
cont.91203:
cont.91201:
	bnei	$r2, 1, bnei.91216
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91218
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.91215     ! elimjump
bnei.91218:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91220
	addi	$r2, $r0, 1
	j	cont.91215     ! elimjump
bnei.91220:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91222
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.91215     ! elimjump
bnei.91222:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91224
	addi	$r2, $r0, 1
	j	cont.91215     ! elimjump
bnei.91224:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.91226
	addi	$r2, $r0, 1
	j	cont.91215     ! elimjump
bnei.91226:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91225:
cont.91223:
cont.91221:
cont.91219:
cont.91217:
	j	cont.91215
bnei.91216:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91215:
cont.91151:
cont.91149:
	bnei	$r2, 1, bnei.91228
	j	cont.91145     ! elimjump
bnei.91228:
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
	bclf	bclf.91230
	j	cont.91229
bclf.91230:
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
cont.91229:
	c.le.s	$f1, $f30
	bclf	bclf.91232
	j	cont.91145     ! elimjump
bclf.91232:
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
cont.91231:
cont.91227:
	j	cont.91145     ! elimjump
bne.91148:
cont.91147:
	j	cont.91145
bnei.91146:
cont.91145:
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.91234
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r5, -36($r29)
	sw	$r2, -40($r29)
	sw	$r3, -44($r29)
	sw	$r4, -48($r29)
	bnei	$r8, -1, bnei.91236
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91238
	addi	$r2, $r0, 0
	j	cont.91235     ! elimjump
bclf.91238:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91240
	addi	$r2, $r0, 0
	j	cont.91235     ! elimjump
bclf.91240:
	addi	$r2, $r0, 1
cont.91239:
cont.91237:
	j	cont.91235
bnei.91236:
	addi	$r9, $r0, 99
	bne	$r8, $r9, bne.91242
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91244
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91246
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91246:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91248
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91248:
	addi	$r2, $r0, 1
cont.91247:
cont.91245:
	j	cont.91241     ! elimjump
bnei.91244:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r6, -52($r29)
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
	bnei	$r3, -1, bnei.91250
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91252
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91252:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91254
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91254:
	addi	$r2, $r0, 1
cont.91253:
cont.91251:
	j	cont.91241     ! elimjump
bnei.91250:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91256
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91258
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91258:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91260
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91260:
	addi	$r2, $r0, 1
cont.91259:
cont.91257:
	j	cont.91241     ! elimjump
bnei.91256:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91262
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91264
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91264:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91266
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91266:
	addi	$r2, $r0, 1
cont.91265:
cont.91263:
	j	cont.91241     ! elimjump
bnei.91262:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -56($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91268
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91268:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91270
	addi	$r2, $r0, 0
	j	cont.91241     ! elimjump
bclf.91270:
	addi	$r2, $r0, 1
cont.91269:
cont.91267:
cont.91261:
cont.91255:
cont.91249:
cont.91243:
	j	cont.91241
bne.91242:
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
	bnei	$r11, 1, bnei.91272
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
	bclf	bclf.91274
	addi	$r11, $r0, 0
	j	cont.91273
bclf.91274:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91276
	addi	$r11, $r0, 0
	j	cont.91275
bclf.91276:
	lwcl	$f4, 4($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91278
	addi	$r11, $r0, 0
	j	cont.91277
bclf.91278:
	addi	$r11, $r0, 1
cont.91277:
cont.91275:
cont.91273:
	bnei	$r11, 1, bnei.91280
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91271     ! elimjump
bnei.91280:
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
	bclf	bclf.91282
	addi	$r11, $r0, 0
	j	cont.91281
bclf.91282:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91284
	addi	$r11, $r0, 0
	j	cont.91283
bclf.91284:
	lwcl	$f4, 12($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91286
	addi	$r11, $r0, 0
	j	cont.91285
bclf.91286:
	addi	$r11, $r0, 1
cont.91285:
cont.91283:
cont.91281:
	bnei	$r11, 1, bnei.91288
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 2
	j	cont.91271     ! elimjump
bnei.91288:
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
	bclf	bclf.91290
	addi	$r8, $r0, 0
	j	cont.91271     ! elimjump
bclf.91290:
	lw	$r9, 16($r9)
	lwcl	$f0, 4($r9)
	lwcl	$f3, 4($r10)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91292
	addi	$r8, $r0, 0
	j	cont.91271     ! elimjump
bclf.91292:
	lwcl	$f0, 20($r8)
	c.eq.s	$f0, $f30
	bclf	bclf.91294
	addi	$r8, $r0, 0
	j	cont.91271     ! elimjump
bclf.91294:
	swcl	$f2, 576($r0)
	addi	$r8, $r0, 3
cont.91293:
cont.91291:
cont.91289:
cont.91287:
cont.91279:
	j	cont.91271
bnei.91272:
	bnei	$r11, 2, bnei.91296
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.91298
	addi	$r8, $r0, 0
	j	cont.91295     ! elimjump
bclf.91298:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91297:
	j	cont.91295
bnei.91296:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.91300
	addi	$r8, $r0, 0
	j	cont.91299
bclf.91300:
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
	bclf	bclf.91302
	addi	$r8, $r0, 0
	j	cont.91301
bclf.91302:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.91304
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91303
bnei.91304:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91303:
cont.91301:
cont.91299:
cont.91295:
cont.91271:
	bnei	$r8, 0, bnei.91306
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91308
	addi	$r2, $r0, 0
	j	cont.91305     ! elimjump
bclf.91308:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91310
	addi	$r2, $r0, 0
	j	cont.91305     ! elimjump
bclf.91310:
	addi	$r2, $r0, 1
cont.91309:
cont.91307:
	j	cont.91305
bnei.91306:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91312
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91314
	addi	$r2, $r0, 0
	j	cont.91311     ! elimjump
bclf.91314:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91316
	addi	$r2, $r0, 0
	j	cont.91311     ! elimjump
bclf.91316:
	addi	$r2, $r0, 1
cont.91315:
cont.91313:
	j	cont.91311
bclf.91312:
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91318
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91320
	addi	$r2, $r0, 0
	j	cont.91317     ! elimjump
bclf.91320:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91322
	addi	$r2, $r0, 0
	j	cont.91317     ! elimjump
bclf.91322:
	addi	$r2, $r0, 1
cont.91321:
cont.91319:
	j	cont.91317
bnei.91318:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r6, -52($r29)
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
	bnei	$r3, -1, bnei.91324
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91326
	addi	$r2, $r0, 0
	j	cont.91323     ! elimjump
bclf.91326:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91328
	addi	$r2, $r0, 0
	j	cont.91323     ! elimjump
bclf.91328:
	addi	$r2, $r0, 1
cont.91327:
cont.91325:
	j	cont.91323
bnei.91324:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91330
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91332
	addi	$r2, $r0, 0
	j	cont.91329     ! elimjump
bclf.91332:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91334
	addi	$r2, $r0, 0
	j	cont.91329     ! elimjump
bclf.91334:
	addi	$r2, $r0, 1
cont.91333:
cont.91331:
	j	cont.91329
bnei.91330:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91336
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91338
	addi	$r2, $r0, 0
	j	cont.91335     ! elimjump
bclf.91338:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91340
	addi	$r2, $r0, 0
	j	cont.91335     ! elimjump
bclf.91340:
	addi	$r2, $r0, 1
cont.91339:
cont.91337:
	j	cont.91335
bnei.91336:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -36($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -56($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -36($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91342
	addi	$r2, $r0, 0
	j	cont.91341
bclf.91342:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91344
	addi	$r2, $r0, 0
	j	cont.91343
bclf.91344:
	addi	$r2, $r0, 1
cont.91343:
cont.91341:
cont.91335:
cont.91329:
cont.91323:
cont.91317:
cont.91311:
cont.91305:
cont.91241:
cont.91235:
	bnei	$r2, 1, bnei.91346
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.91348
	lw	$r2, 572($r0)
	lw	$r4, -44($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91350
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
bnei.91350:
	lw	$r2, -36($r29)
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
	bclf	bclf.91352
	j	cont.91351
bclf.91352:
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
cont.91351:
	c.le.s	$f1, $f30
	bclf	bclf.91354
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	lwcl	$f1, -8($r29)
	fmove	$f0, $f2
	j	trace_reflections.5395
bclf.91354:
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
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	fmove	$f0, $f2
	j	trace_reflections.5395
bne.91348:
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
bnei.91346:
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
blti.91234:
	jr	$r31
blti.91140:
	jr	$r31
trace_ray.5428:
	bgti	$r2, 4, bgti.91356
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
	bclf	bclf.91358
	addi	$r2, $r0, 0
	j	cont.91357
bclf.91358:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91360
	addi	$r2, $r0, 0
	j	cont.91359
bclf.91360:
	addi	$r2, $r0, 1
cont.91359:
cont.91357:
	addi	$r3, $r0, 1
	bnei	$r2, 1, bnei.91362
	lw	$r2, 600($r0)
	sll	$r4, $r2, 2
	lw	$r4, 80($r4)
	lw	$r5, 8($r4)
	lw	$r6, 28($r4)
	lwcl	$f0, 0($r6)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lw	$r6, 4($r4)
	bnei	$r6, 1, bnei.91364
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
	bclf	bclf.91366
	fmove	$f2, $f30
	sll	$r6, $r7, 2
	swcl	$f2, 604($r6)
	j	cont.91363     ! elimjump
bclf.91366:
	c.le.s	$f2, $f30
	bclf	bclf.91368
	fmove	$f2, $f31
	sll	$r6, $r7, 2
	swcl	$f2, 604($r6)
	j	cont.91363     ! elimjump
bclf.91368:
	fmove	$f2, $f29
	sll	$r6, $r7, 2
	swcl	$f2, 604($r6)
cont.91367:
cont.91365:
	j	cont.91363
bnei.91364:
	bnei	$r6, 2, bnei.91370
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
	j	cont.91369
bnei.91370:
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
	bnei	$r6, 0, bnei.91372
	swcl	$f5, 604($r0)
	swcl	$f6, 608($r0)
	swcl	$f7, 612($r0)
	j	cont.91371
bnei.91372:
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
cont.91371:
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
	bclf	bclf.91374
	fmove	$f2, $f31
	j	cont.91373
bclf.91374:
	bnei	$r6, 1, bnei.91376
	div.s	$f2, $f29, $f2
	j	cont.91375
bnei.91376:
	div.s	$f2, $f31, $f2
cont.91375:
cont.91373:
	lwcl	$f3, 604($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 604($r0)
	lwcl	$f3, 608($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 608($r0)
	lwcl	$f3, 612($r0)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 612($r0)
cont.91369:
cont.91363:
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
	bclf	bclf.91378
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
	j	cont.91377
bclf.91378:
	addi	$r7, $r0, 0
	sll	$r8, $r3, 2
	swr	$r7, $r8($r4)	!st var
cont.91377:
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
	bnei	$r9, -1, bnei.91380
	addi	$r2, $r0, 0
	j	cont.91379
bnei.91380:
	addi	$r10, $r0, 99
	bne	$r9, $r10, bne.91382
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91384
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.91381     ! elimjump
bnei.91384:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r7, -52($r29)
	sw	$r8, -56($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r9, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91386
	addi	$r2, $r0, 1
	j	cont.91381     ! elimjump
bnei.91386:
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91388
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.91381     ! elimjump
bnei.91388:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91390
	addi	$r2, $r0, 1
	j	cont.91381     ! elimjump
bnei.91390:
	addi	$r2, $r0, 3
	lw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91392
	addi	$r2, $r0, 1
	j	cont.91381     ! elimjump
bnei.91392:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91391:
cont.91389:
cont.91387:
cont.91385:
cont.91383:
	j	cont.91381
bne.91382:
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
	bnei	$r11, 1, bnei.91394
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
	bclf	bclf.91396
	addi	$r11, $r0, 0
	j	cont.91395
bclf.91396:
	lw	$r11, 16($r10)
	lwcl	$f6, 8($r11)
	lwcl	$f7, 796($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f4
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91398
	addi	$r11, $r0, 0
	j	cont.91397
bclf.91398:
	lwcl	$f6, 4($r9)
	c.eq.s	$f6, $f30
	bclf	bclf.91400
	addi	$r11, $r0, 0
	j	cont.91399
bclf.91400:
	addi	$r11, $r0, 1
cont.91399:
cont.91397:
cont.91395:
	bnei	$r11, 1, bnei.91402
	swcl	$f5, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91393     ! elimjump
bnei.91402:
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
	bclf	bclf.91404
	addi	$r11, $r0, 0
	j	cont.91403
bclf.91404:
	lw	$r11, 16($r10)
	lwcl	$f6, 8($r11)
	lwcl	$f7, 796($r0)
	mul.s	$f7, $f5, $f7
	add.s	$f7, $f7, $f4
	fabs	$f7, $f7
	c.le.s	$f6, $f7
	bclf	bclf.91406
	addi	$r11, $r0, 0
	j	cont.91405
bclf.91406:
	lwcl	$f6, 12($r9)
	c.eq.s	$f6, $f30
	bclf	bclf.91408
	addi	$r11, $r0, 0
	j	cont.91407
bclf.91408:
	addi	$r11, $r0, 1
cont.91407:
cont.91405:
cont.91403:
	bnei	$r11, 1, bnei.91410
	swcl	$f5, 576($r0)
	addi	$r9, $r0, 2
	j	cont.91393     ! elimjump
bnei.91410:
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
	bclf	bclf.91412
	addi	$r9, $r0, 0
	j	cont.91393     ! elimjump
bclf.91412:
	lw	$r10, 16($r10)
	lwcl	$f2, 4($r10)
	lwcl	$f5, 792($r0)
	mul.s	$f5, $f4, $f5
	add.s	$f3, $f5, $f3
	fabs	$f3, $f3
	c.le.s	$f2, $f3
	bclf	bclf.91414
	addi	$r9, $r0, 0
	j	cont.91393     ! elimjump
bclf.91414:
	lwcl	$f2, 20($r9)
	c.eq.s	$f2, $f30
	bclf	bclf.91416
	addi	$r9, $r0, 0
	j	cont.91393     ! elimjump
bclf.91416:
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 3
cont.91415:
cont.91413:
cont.91411:
cont.91409:
cont.91401:
	j	cont.91393
bnei.91394:
	bnei	$r11, 2, bnei.91418
	lwcl	$f5, 0($r9)
	c.le.s	$f30, $f5
	bclf	bclf.91420
	addi	$r9, $r0, 0
	j	cont.91417     ! elimjump
bclf.91420:
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
cont.91419:
	j	cont.91417
bnei.91418:
	lwcl	$f5, 0($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91422
	addi	$r9, $r0, 0
	j	cont.91421
bclf.91422:
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
	bnei	$r11, 0, bnei.91424
	fmove	$f2, $f7
	j	cont.91423
bnei.91424:
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
cont.91423:
	lw	$r11, 4($r10)
	bnei	$r11, 3, bnei.91426
	sub.s	$f2, $f2, $f31
	j	cont.91425
bnei.91426:
cont.91425:
	mul.s	$f3, $f6, $f6
	mul.s	$f2, $f5, $f2
	sub.s	$f2, $f3, $f2
	c.le.s	$f2, $f30
	bclf	bclf.91428
	addi	$r9, $r0, 0
	j	cont.91427
bclf.91428:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91430
	sqrt	$f2, $f2
	add.s	$f2, $f6, $f2
	lwcl	$f3, 16($r9)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91429
bnei.91430:
	sqrt	$f2, $f2
	sub.s	$f2, $f6, $f2
	lwcl	$f3, 16($r9)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	addi	$r9, $r0, 1
cont.91429:
cont.91427:
cont.91421:
cont.91417:
cont.91393:
	sw	$r7, -52($r29)
	sw	$r8, -56($r29)
	bnei	$r9, 0, bnei.91432
	addi	$r2, $r0, 0
	j	cont.91431
bnei.91432:
	lwcl	$f2, 576($r0)
	c.le.s	$f28, $f2
	bclf	bclf.91434
	addi	$r2, $r0, 0
	j	cont.91433
bclf.91434:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91436
	addi	$r2, $r0, 0
	j	cont.91435
bnei.91436:
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
	bnei	$r2, 1, bnei.91438
	addi	$r2, $r0, 1
	j	cont.91437
bnei.91438:
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91440
	addi	$r2, $r0, 0
	j	cont.91439
bnei.91440:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91442
	addi	$r2, $r0, 1
	j	cont.91441
bnei.91442:
	addi	$r2, $r0, 3
	lw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91444
	addi	$r2, $r0, 1
	j	cont.91443
bnei.91444:
	addi	$r2, $r0, 0
cont.91443:
cont.91441:
cont.91439:
cont.91437:
cont.91435:
cont.91433:
cont.91431:
	bnei	$r2, 1, bnei.91446
	lw	$r2, -56($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91448
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.91445     ! elimjump
bnei.91448:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91450
	addi	$r2, $r0, 1
	j	cont.91445     ! elimjump
bnei.91450:
	lw	$r2, -56($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91452
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.91445     ! elimjump
bnei.91452:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91454
	addi	$r2, $r0, 1
	j	cont.91445     ! elimjump
bnei.91454:
	addi	$r2, $r0, 3
	lw	$r3, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.91456
	addi	$r2, $r0, 1
	j	cont.91445     ! elimjump
bnei.91456:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91455:
cont.91453:
cont.91451:
cont.91449:
cont.91447:
	j	cont.91445
bnei.91446:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.91445:
cont.91381:
cont.91379:
	bnei	$r2, 1, bnei.91458
	j	cont.91457
bnei.91458:
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
	bclf	bclf.91460
	j	cont.91459
bclf.91460:
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
cont.91459:
	c.le.s	$f2, $f30
	bclf	bclf.91462
	j	cont.91461
bclf.91462:
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
cont.91461:
cont.91457:
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
	blti	$r2, 0, blti.91464
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r5, -60($r29)
	sw	$r2, -64($r29)
	sw	$r3, -68($r29)
	sw	$r4, -72($r29)
	bnei	$r8, -1, bnei.91466
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91468
	addi	$r2, $r0, 0
	j	cont.91465     ! elimjump
bclf.91468:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91470
	addi	$r2, $r0, 0
	j	cont.91465     ! elimjump
bclf.91470:
	addi	$r2, $r0, 1
cont.91469:
cont.91467:
	j	cont.91465
bnei.91466:
	addi	$r9, $r0, 99
	bne	$r8, $r9, bne.91472
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91474
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91476
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91476:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91478
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91478:
	addi	$r2, $r0, 1
cont.91477:
cont.91475:
	j	cont.91471     ! elimjump
bnei.91474:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r6, -76($r29)
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
	bnei	$r3, -1, bnei.91480
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91482
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91482:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91484
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91484:
	addi	$r2, $r0, 1
cont.91483:
cont.91481:
	j	cont.91471     ! elimjump
bnei.91480:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91486
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91488
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91488:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91490
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91490:
	addi	$r2, $r0, 1
cont.91489:
cont.91487:
	j	cont.91471     ! elimjump
bnei.91486:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91492
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91494
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91494:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91496
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91496:
	addi	$r2, $r0, 1
cont.91495:
cont.91493:
	j	cont.91471     ! elimjump
bnei.91492:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -80($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91498
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91498:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91500
	addi	$r2, $r0, 0
	j	cont.91471     ! elimjump
bclf.91500:
	addi	$r2, $r0, 1
cont.91499:
cont.91497:
cont.91491:
cont.91485:
cont.91479:
cont.91473:
	j	cont.91471
bne.91472:
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
	bnei	$r11, 1, bnei.91502
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
	bclf	bclf.91504
	addi	$r11, $r0, 0
	j	cont.91503
bclf.91504:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91506
	addi	$r11, $r0, 0
	j	cont.91505
bclf.91506:
	lwcl	$f4, 4($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91508
	addi	$r11, $r0, 0
	j	cont.91507
bclf.91508:
	addi	$r11, $r0, 1
cont.91507:
cont.91505:
cont.91503:
	bnei	$r11, 1, bnei.91510
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91501     ! elimjump
bnei.91510:
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
	bclf	bclf.91512
	addi	$r11, $r0, 0
	j	cont.91511
bclf.91512:
	lw	$r11, 16($r9)
	lwcl	$f4, 8($r11)
	lwcl	$f5, 8($r10)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91514
	addi	$r11, $r0, 0
	j	cont.91513
bclf.91514:
	lwcl	$f4, 12($r8)
	c.eq.s	$f4, $f30
	bclf	bclf.91516
	addi	$r11, $r0, 0
	j	cont.91515
bclf.91516:
	addi	$r11, $r0, 1
cont.91515:
cont.91513:
cont.91511:
	bnei	$r11, 1, bnei.91518
	swcl	$f3, 576($r0)
	addi	$r8, $r0, 2
	j	cont.91501     ! elimjump
bnei.91518:
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
	bclf	bclf.91520
	addi	$r8, $r0, 0
	j	cont.91501     ! elimjump
bclf.91520:
	lw	$r9, 16($r9)
	lwcl	$f0, 4($r9)
	lwcl	$f3, 4($r10)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91522
	addi	$r8, $r0, 0
	j	cont.91501     ! elimjump
bclf.91522:
	lwcl	$f0, 20($r8)
	c.eq.s	$f0, $f30
	bclf	bclf.91524
	addi	$r8, $r0, 0
	j	cont.91501     ! elimjump
bclf.91524:
	swcl	$f2, 576($r0)
	addi	$r8, $r0, 3
cont.91523:
cont.91521:
cont.91519:
cont.91517:
cont.91509:
	j	cont.91501
bnei.91502:
	bnei	$r11, 2, bnei.91526
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.91528
	addi	$r8, $r0, 0
	j	cont.91525     ! elimjump
bclf.91528:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91527:
	j	cont.91525
bnei.91526:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.91530
	addi	$r8, $r0, 0
	j	cont.91529
bclf.91530:
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
	bclf	bclf.91532
	addi	$r8, $r0, 0
	j	cont.91531
bclf.91532:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.91534
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
	j	cont.91533
bnei.91534:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r8, $r0, 1
cont.91533:
cont.91531:
cont.91529:
cont.91525:
cont.91501:
	bnei	$r8, 0, bnei.91536
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91538
	addi	$r2, $r0, 0
	j	cont.91535     ! elimjump
bclf.91538:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91540
	addi	$r2, $r0, 0
	j	cont.91535     ! elimjump
bclf.91540:
	addi	$r2, $r0, 1
cont.91539:
cont.91537:
	j	cont.91535
bnei.91536:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.91542
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91544
	addi	$r2, $r0, 0
	j	cont.91541     ! elimjump
bclf.91544:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91546
	addi	$r2, $r0, 0
	j	cont.91541     ! elimjump
bclf.91546:
	addi	$r2, $r0, 1
cont.91545:
cont.91543:
	j	cont.91541
bclf.91542:
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.91548
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91550
	addi	$r2, $r0, 0
	j	cont.91547     ! elimjump
bclf.91550:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91552
	addi	$r2, $r0, 0
	j	cont.91547     ! elimjump
bclf.91552:
	addi	$r2, $r0, 1
cont.91551:
cont.91549:
	j	cont.91547
bnei.91548:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r6, -76($r29)
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
	bnei	$r3, -1, bnei.91554
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91556
	addi	$r2, $r0, 0
	j	cont.91553     ! elimjump
bclf.91556:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91558
	addi	$r2, $r0, 0
	j	cont.91553     ! elimjump
bclf.91558:
	addi	$r2, $r0, 1
cont.91557:
cont.91555:
	j	cont.91553
bnei.91554:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.91560
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91562
	addi	$r2, $r0, 0
	j	cont.91559     ! elimjump
bclf.91562:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91564
	addi	$r2, $r0, 0
	j	cont.91559     ! elimjump
bclf.91564:
	addi	$r2, $r0, 1
cont.91563:
cont.91561:
	j	cont.91559
bnei.91560:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 16($r2)
	bnei	$r3, -1, bnei.91566
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91568
	addi	$r2, $r0, 0
	j	cont.91565     ! elimjump
bclf.91568:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91570
	addi	$r2, $r0, 0
	j	cont.91565     ! elimjump
bclf.91570:
	addi	$r2, $r0, 1
cont.91569:
cont.91567:
	j	cont.91565
bnei.91566:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -60($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 5
	lw	$r3, -80($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
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
cont.91565:
cont.91559:
cont.91553:
cont.91547:
cont.91541:
cont.91535:
cont.91471:
cont.91465:
	bnei	$r2, 1, bnei.91576
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -72($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.91578
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
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -48($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.91463     ! elimjump
bnei.91580:
	lw	$r2, -60($r29)
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
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lwcl	$f1, -48($r29)
	fmove	$f0, $f2
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.91463     ! elimjump
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
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	fmove	$f0, $f2
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91583:
cont.91579:
	j	cont.91463     ! elimjump
bne.91578:
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -48($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91577:
	j	cont.91463     ! elimjump
bnei.91576:
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -48($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.91575:
	j	cont.91463
blti.91464:
cont.91463:
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
bnei.91362:
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
bgti.91356:
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
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91601     ! elimjump
bclf.91604:
	c.le.s	$f0, $f30
	bclf	bclf.91606
	fmove	$f0, $f31
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91601     ! elimjump
bclf.91606:
	fmove	$f0, $f29
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
cont.91605:
cont.91603:
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
	bne	$r4, $r5, bne.91618
	lw	$r4, 4($r2)
	bnei	$r4, -1, bnei.91620
	addi	$r2, $r0, 1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.91617     ! elimjump
bnei.91620:
	sll	$r4, $r4, 2
	lw	$r4, 364($r4)
	addi	$r5, $r0, 0
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91622
	addi	$r2, $r0, 1
	j	cont.91617     ! elimjump
bnei.91622:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91624
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.91617     ! elimjump
bnei.91624:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91626
	addi	$r2, $r0, 1
	j	cont.91617     ! elimjump
bnei.91626:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91628
	addi	$r2, $r0, 1
	j	cont.91617     ! elimjump
bnei.91628:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91627:
cont.91625:
cont.91623:
cont.91621:
cont.91619:
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
	bnei	$r6, 1, bnei.91630
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
	bclf	bclf.91632
	addi	$r6, $r0, 0
	j	cont.91631
bclf.91632:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91634
	addi	$r6, $r0, 0
	j	cont.91633
bclf.91634:
	lwcl	$f4, 4($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.91636
	addi	$r6, $r0, 0
	j	cont.91635
bclf.91636:
	addi	$r6, $r0, 1
cont.91635:
cont.91633:
cont.91631:
	bnei	$r6, 1, bnei.91638
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
	j	cont.91629     ! elimjump
bnei.91638:
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
	bclf	bclf.91640
	addi	$r6, $r0, 0
	j	cont.91639
bclf.91640:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.91642
	addi	$r6, $r0, 0
	j	cont.91641
bclf.91642:
	lwcl	$f4, 12($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.91644
	addi	$r6, $r0, 0
	j	cont.91643
bclf.91644:
	addi	$r6, $r0, 1
cont.91643:
cont.91641:
cont.91639:
	bnei	$r6, 1, bnei.91646
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 2
	j	cont.91629     ! elimjump
bnei.91646:
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
	bclf	bclf.91648
	addi	$r4, $r0, 0
	j	cont.91629     ! elimjump
bclf.91648:
	lw	$r5, 16($r5)
	lwcl	$f0, 4($r5)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.91650
	addi	$r4, $r0, 0
	j	cont.91629     ! elimjump
bclf.91650:
	lwcl	$f0, 20($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.91652
	addi	$r4, $r0, 0
	j	cont.91629     ! elimjump
bclf.91652:
	swcl	$f2, 576($r0)
	addi	$r4, $r0, 3
cont.91651:
cont.91649:
cont.91647:
cont.91645:
cont.91637:
	j	cont.91629
bnei.91630:
	bnei	$r6, 2, bnei.91654
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.91656
	addi	$r4, $r0, 0
	j	cont.91653     ! elimjump
bclf.91656:
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
cont.91655:
	j	cont.91653
bnei.91654:
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.91658
	addi	$r4, $r0, 0
	j	cont.91657
bclf.91658:
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
	bnei	$r6, 0, bnei.91660
	fmove	$f0, $f5
	j	cont.91659
bnei.91660:
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
cont.91659:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.91662
	sub.s	$f0, $f0, $f31
	j	cont.91661
bnei.91662:
cont.91661:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.91664
	addi	$r4, $r0, 0
	j	cont.91663
bclf.91664:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.91666
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r4, $r0, 1
	j	cont.91665
bnei.91666:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r4, $r0, 1
cont.91665:
cont.91663:
cont.91657:
cont.91653:
cont.91629:
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r4, 0, bnei.91668
	addi	$r2, $r0, 0
	j	cont.91667
bnei.91668:
	lwcl	$f0, 576($r0)
	c.le.s	$f28, $f0
	bclf	bclf.91670
	addi	$r2, $r0, 0
	j	cont.91669
bclf.91670:
	lw	$r4, 4($r2)
	bnei	$r4, -1, bnei.91672
	addi	$r2, $r0, 0
	j	cont.91671
bnei.91672:
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
	bnei	$r2, 1, bnei.91674
	addi	$r2, $r0, 1
	j	cont.91673
bnei.91674:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
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
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91680
	addi	$r2, $r0, 1
	j	cont.91679
bnei.91680:
	addi	$r2, $r0, 0
cont.91679:
cont.91677:
cont.91675:
cont.91673:
cont.91671:
cont.91669:
cont.91667:
	bnei	$r2, 1, bnei.91682
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.91684
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.91681     ! elimjump
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
	j	cont.91681     ! elimjump
bnei.91686:
	lw	$r2, -20($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.91688
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.91681     ! elimjump
bnei.91688:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91690
	addi	$r2, $r0, 1
	j	cont.91681     ! elimjump
bnei.91690:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.91692
	addi	$r2, $r0, 1
	j	cont.91681     ! elimjump
bnei.91692:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91691:
cont.91689:
cont.91687:
cont.91685:
cont.91683:
	j	cont.91681
bnei.91682:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.91681:
cont.91617:
cont.91615:
	bnei	$r2, 1, bnei.91694
	jr	$r31
bnei.91694:
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
	bclf	bclf.91696
	fmove	$f0, $f30
	j	cont.91695
bclf.91696:
cont.91695:
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
	blti	$r5, 0, blti.91698
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
	bclf	bclf.91700
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
	bnei	$r9, -1, bnei.91702
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f28
	bclf	bclf.91704
	addi	$r2, $r0, 0
	j	cont.91701     ! elimjump
bclf.91704:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f1
	bclf	bclf.91706
	addi	$r2, $r0, 0
	j	cont.91701     ! elimjump
bclf.91706:
	addi	$r2, $r0, 1
cont.91705:
cont.91703:
	j	cont.91701
bnei.91702:
	addi	$r10, $r0, 99
	bne	$r9, $r10, bne.91708
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91710
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91712
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91712:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91714
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91714:
	addi	$r2, $r0, 1
cont.91713:
cont.91711:
	j	cont.91707     ! elimjump
bnei.91710:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r7, -28($r29)
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
	bnei	$r3, -1, bnei.91716
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91718
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91718:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91720
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91720:
	addi	$r2, $r0, 1
cont.91719:
cont.91717:
	j	cont.91707     ! elimjump
bnei.91716:
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
	bnei	$r3, -1, bnei.91722
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91724
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91724:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91726
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91726:
	addi	$r2, $r0, 1
cont.91725:
cont.91723:
	j	cont.91707     ! elimjump
bnei.91722:
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
	bnei	$r3, -1, bnei.91728
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91730
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91730:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91732
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91732:
	addi	$r2, $r0, 1
cont.91731:
cont.91729:
	j	cont.91707     ! elimjump
bnei.91728:
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
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91734
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91734:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91736
	addi	$r2, $r0, 0
	j	cont.91707     ! elimjump
bclf.91736:
	addi	$r2, $r0, 1
cont.91735:
cont.91733:
cont.91727:
cont.91721:
cont.91715:
cont.91709:
	j	cont.91707
bne.91708:
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
	j	cont.91737     ! elimjump
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
	j	cont.91737     ! elimjump
bclf.91758:
	lwcl	$f1, 20($r9)
	c.eq.s	$f1, $f30
	bclf	bclf.91760
	addi	$r9, $r0, 0
	j	cont.91737     ! elimjump
bclf.91760:
	swcl	$f3, 576($r0)
	addi	$r9, $r0, 3
cont.91759:
cont.91757:
cont.91755:
cont.91753:
cont.91745:
	j	cont.91737
bnei.91738:
	bnei	$r12, 2, bnei.91762
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.91764
	addi	$r9, $r0, 0
	j	cont.91761     ! elimjump
bclf.91764:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91763:
	j	cont.91761
bnei.91762:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.91766
	addi	$r9, $r0, 0
	j	cont.91765
bclf.91766:
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
	bclf	bclf.91768
	addi	$r9, $r0, 0
	j	cont.91767
bclf.91768:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91770
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91769
bnei.91770:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91769:
cont.91767:
cont.91765:
cont.91761:
cont.91737:
	bnei	$r9, 0, bnei.91772
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91774
	addi	$r2, $r0, 0
	j	cont.91771     ! elimjump
bclf.91774:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91776
	addi	$r2, $r0, 0
	j	cont.91771     ! elimjump
bclf.91776:
	addi	$r2, $r0, 1
cont.91775:
cont.91773:
	j	cont.91771
bnei.91772:
	lwcl	$f1, 576($r0)
	lwcl	$f2, 584($r0)
	c.le.s	$f2, $f1
	bclf	bclf.91778
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91780
	addi	$r2, $r0, 0
	j	cont.91777     ! elimjump
bclf.91780:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91782
	addi	$r2, $r0, 0
	j	cont.91777     ! elimjump
bclf.91782:
	addi	$r2, $r0, 1
cont.91781:
cont.91779:
	j	cont.91777
bclf.91778:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91784
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91786
	addi	$r2, $r0, 0
	j	cont.91783     ! elimjump
bclf.91786:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91788
	addi	$r2, $r0, 0
	j	cont.91783     ! elimjump
bclf.91788:
	addi	$r2, $r0, 1
cont.91787:
cont.91785:
	j	cont.91783
bnei.91784:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r7, -28($r29)
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
	bnei	$r3, -1, bnei.91790
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91792
	addi	$r2, $r0, 0
	j	cont.91789     ! elimjump
bclf.91792:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91794
	addi	$r2, $r0, 0
	j	cont.91789     ! elimjump
bclf.91794:
	addi	$r2, $r0, 1
cont.91793:
cont.91791:
	j	cont.91789
bnei.91790:
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
	bnei	$r3, -1, bnei.91796
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91798
	addi	$r2, $r0, 0
	j	cont.91795     ! elimjump
bclf.91798:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91800
	addi	$r2, $r0, 0
	j	cont.91795     ! elimjump
bclf.91800:
	addi	$r2, $r0, 1
cont.91799:
cont.91797:
	j	cont.91795
bnei.91796:
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
	bnei	$r3, -1, bnei.91802
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91804
	addi	$r2, $r0, 0
	j	cont.91801     ! elimjump
bclf.91804:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91806
	addi	$r2, $r0, 0
	j	cont.91801     ! elimjump
bclf.91806:
	addi	$r2, $r0, 1
cont.91805:
cont.91803:
	j	cont.91801
bnei.91802:
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
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91808
	addi	$r2, $r0, 0
	j	cont.91807
bclf.91808:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91810
	addi	$r2, $r0, 0
	j	cont.91809
bclf.91810:
	addi	$r2, $r0, 1
cont.91809:
cont.91807:
cont.91801:
cont.91795:
cont.91789:
cont.91783:
cont.91777:
cont.91771:
cont.91707:
cont.91701:
	bnei	$r2, 1, cont.91699     ! elimjump
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.91814
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
	bclf	bclf.91816
	fmove	$f0, $f30
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91813     ! elimjump
bclf.91816:
	c.le.s	$f0, $f30
	bclf	bclf.91818
	fmove	$f0, $f31
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91813     ! elimjump
bclf.91818:
	fmove	$f0, $f29
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
cont.91817:
cont.91815:
	j	cont.91813
bnei.91814:
	bnei	$r4, 2, bnei.91820
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
	j	cont.91819
bnei.91820:
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
	bnei	$r3, 0, bnei.91822
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.91821
bnei.91822:
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
cont.91821:
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
	bclf	bclf.91824
	fmove	$f0, $f31
	j	cont.91823
bclf.91824:
	bnei	$r3, 1, bnei.91826
	div.s	$f0, $f29, $f0
	j	cont.91825
bnei.91826:
	div.s	$f0, $f31, $f0
cont.91825:
cont.91823:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.91819:
cont.91813:
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
	bnei	$r2, 1, bnei.91828
	j	cont.91699     ! elimjump
bnei.91828:
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
	bclf	bclf.91830
	lwcl	$f0, -20($r29)
	mul.s	$f0, $f0, $f30
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
	j	cont.91699     ! elimjump
bclf.91830:
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
cont.91829:
cont.91827:
	j	cont.91699     ! elimjump
bnei.91812:
cont.91811:
	j	cont.91699
bclf.91700:
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
	bnei	$r9, -1, bnei.91832
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f28
	bclf	bclf.91834
	addi	$r2, $r0, 0
	j	cont.91831     ! elimjump
bclf.91834:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f1
	bclf	bclf.91836
	addi	$r2, $r0, 0
	j	cont.91831     ! elimjump
bclf.91836:
	addi	$r2, $r0, 1
cont.91835:
cont.91833:
	j	cont.91831
bnei.91832:
	addi	$r10, $r0, 99
	bne	$r9, $r10, bne.91838
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91840
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91842
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91842:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91844
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91844:
	addi	$r2, $r0, 1
cont.91843:
cont.91841:
	j	cont.91837     ! elimjump
bnei.91840:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r7, -48($r29)
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
	bnei	$r3, -1, bnei.91846
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91848
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91848:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91850
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91850:
	addi	$r2, $r0, 1
cont.91849:
cont.91847:
	j	cont.91837     ! elimjump
bnei.91846:
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
	bnei	$r3, -1, bnei.91852
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91854
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91854:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91856
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91856:
	addi	$r2, $r0, 1
cont.91855:
cont.91853:
	j	cont.91837     ! elimjump
bnei.91852:
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
	bnei	$r3, -1, bnei.91858
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91860
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91860:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91862
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91862:
	addi	$r2, $r0, 1
cont.91861:
cont.91859:
	j	cont.91837     ! elimjump
bnei.91858:
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
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91864
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91864:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91866
	addi	$r2, $r0, 0
	j	cont.91837     ! elimjump
bclf.91866:
	addi	$r2, $r0, 1
cont.91865:
cont.91863:
cont.91857:
cont.91851:
cont.91845:
cont.91839:
	j	cont.91837
bne.91838:
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
	bnei	$r12, 1, bnei.91868
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
	bclf	bclf.91870
	addi	$r12, $r0, 0
	j	cont.91869
bclf.91870:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91872
	addi	$r12, $r0, 0
	j	cont.91871
bclf.91872:
	lwcl	$f5, 4($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91874
	addi	$r12, $r0, 0
	j	cont.91873
bclf.91874:
	addi	$r12, $r0, 1
cont.91873:
cont.91871:
cont.91869:
	bnei	$r12, 1, bnei.91876
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91867     ! elimjump
bnei.91876:
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
	bclf	bclf.91878
	addi	$r12, $r0, 0
	j	cont.91877
bclf.91878:
	lw	$r12, 16($r10)
	lwcl	$f5, 8($r12)
	lwcl	$f6, 8($r11)
	mul.s	$f6, $f4, $f6
	add.s	$f6, $f6, $f3
	fabs	$f6, $f6
	c.le.s	$f5, $f6
	bclf	bclf.91880
	addi	$r12, $r0, 0
	j	cont.91879
bclf.91880:
	lwcl	$f5, 12($r9)
	c.eq.s	$f5, $f30
	bclf	bclf.91882
	addi	$r12, $r0, 0
	j	cont.91881
bclf.91882:
	addi	$r12, $r0, 1
cont.91881:
cont.91879:
cont.91877:
	bnei	$r12, 1, bnei.91884
	swcl	$f4, 576($r0)
	addi	$r9, $r0, 2
	j	cont.91867     ! elimjump
bnei.91884:
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
	bclf	bclf.91886
	addi	$r9, $r0, 0
	j	cont.91867     ! elimjump
bclf.91886:
	lw	$r10, 16($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f4, 4($r11)
	mul.s	$f4, $f3, $f4
	add.s	$f2, $f4, $f2
	fabs	$f2, $f2
	c.le.s	$f1, $f2
	bclf	bclf.91888
	addi	$r9, $r0, 0
	j	cont.91867     ! elimjump
bclf.91888:
	lwcl	$f1, 20($r9)
	c.eq.s	$f1, $f30
	bclf	bclf.91890
	addi	$r9, $r0, 0
	j	cont.91867     ! elimjump
bclf.91890:
	swcl	$f3, 576($r0)
	addi	$r9, $r0, 3
cont.91889:
cont.91887:
cont.91885:
cont.91883:
cont.91875:
	j	cont.91867
bnei.91868:
	bnei	$r12, 2, bnei.91892
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.91894
	addi	$r9, $r0, 0
	j	cont.91891     ! elimjump
bclf.91894:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91893:
	j	cont.91891
bnei.91892:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.91896
	addi	$r9, $r0, 0
	j	cont.91895
bclf.91896:
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
	bclf	bclf.91898
	addi	$r9, $r0, 0
	j	cont.91897
bclf.91898:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.91900
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
	j	cont.91899
bnei.91900:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r9, $r0, 1
cont.91899:
cont.91897:
cont.91895:
cont.91891:
cont.91867:
	bnei	$r9, 0, bnei.91902
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91904
	addi	$r2, $r0, 0
	j	cont.91901     ! elimjump
bclf.91904:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91906
	addi	$r2, $r0, 0
	j	cont.91901     ! elimjump
bclf.91906:
	addi	$r2, $r0, 1
cont.91905:
cont.91903:
	j	cont.91901
bnei.91902:
	lwcl	$f1, 576($r0)
	lwcl	$f2, 584($r0)
	c.le.s	$f2, $f1
	bclf	bclf.91908
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91910
	addi	$r2, $r0, 0
	j	cont.91907     ! elimjump
bclf.91910:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91912
	addi	$r2, $r0, 0
	j	cont.91907     ! elimjump
bclf.91912:
	addi	$r2, $r0, 1
cont.91911:
cont.91909:
	j	cont.91907
bclf.91908:
	lw	$r9, 4($r8)
	bnei	$r9, -1, bnei.91914
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91916
	addi	$r2, $r0, 0
	j	cont.91913     ! elimjump
bclf.91916:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91918
	addi	$r2, $r0, 0
	j	cont.91913     ! elimjump
bclf.91918:
	addi	$r2, $r0, 1
cont.91917:
cont.91915:
	j	cont.91913
bnei.91914:
	sll	$r9, $r9, 2
	lw	$r9, 364($r9)
	addi	$r10, $r0, 0
	sw	$r7, -48($r29)
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
	bnei	$r3, -1, bnei.91920
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91922
	addi	$r2, $r0, 0
	j	cont.91919     ! elimjump
bclf.91922:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91924
	addi	$r2, $r0, 0
	j	cont.91919     ! elimjump
bclf.91924:
	addi	$r2, $r0, 1
cont.91923:
cont.91921:
	j	cont.91919
bnei.91920:
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
	bnei	$r3, -1, bnei.91926
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91928
	addi	$r2, $r0, 0
	j	cont.91925     ! elimjump
bclf.91928:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91930
	addi	$r2, $r0, 0
	j	cont.91925     ! elimjump
bclf.91930:
	addi	$r2, $r0, 1
cont.91929:
cont.91927:
	j	cont.91925
bnei.91926:
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
	bnei	$r3, -1, bnei.91932
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91934
	addi	$r2, $r0, 0
	j	cont.91931     ! elimjump
bclf.91934:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91936
	addi	$r2, $r0, 0
	j	cont.91931     ! elimjump
bclf.91936:
	addi	$r2, $r0, 1
cont.91935:
cont.91933:
	j	cont.91931
bnei.91932:
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
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 584($r0)
	c.le.s	$f0, $f28
	bclf	bclf.91938
	addi	$r2, $r0, 0
	j	cont.91937
bclf.91938:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.91940
	addi	$r2, $r0, 0
	j	cont.91939
bclf.91940:
	addi	$r2, $r0, 1
cont.91939:
cont.91937:
cont.91931:
cont.91925:
cont.91919:
cont.91913:
cont.91907:
cont.91901:
cont.91837:
cont.91831:
	bnei	$r2, 1, bnei.91942
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -44($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.91944
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
	bclf	bclf.91946
	fmove	$f0, $f30
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91943     ! elimjump
bclf.91946:
	c.le.s	$f0, $f30
	bclf	bclf.91948
	fmove	$f0, $f31
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.91943     ! elimjump
bclf.91948:
	fmove	$f0, $f29
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
cont.91947:
cont.91945:
	j	cont.91943
bnei.91944:
	bnei	$r4, 2, bnei.91950
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
	j	cont.91949
bnei.91950:
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
	bnei	$r3, 0, bnei.91952
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.91951
bnei.91952:
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
cont.91951:
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
	bclf	bclf.91954
	fmove	$f0, $f31
	j	cont.91953
bclf.91954:
	bnei	$r3, 1, bnei.91956
	div.s	$f0, $f29, $f0
	j	cont.91955
bnei.91956:
	div.s	$f0, $f31, $f0
cont.91955:
cont.91953:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.91949:
cont.91943:
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
	bnei	$r2, 1, bnei.91958
	j	cont.91941     ! elimjump
bnei.91958:
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
	bclf	bclf.91960
	lwcl	$f0, -40($r29)
	mul.s	$f0, $f0, $f30
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
	j	cont.91941     ! elimjump
bclf.91960:
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
cont.91959:
cont.91957:
	j	cont.91941
bnei.91942:
cont.91941:
cont.91699:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -2
	blti	$r2, 0, blti.91962
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
	c.le.s	$f30, $f0
	bclf	bclf.91964
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, -60($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5564
bclf.91964:
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, -60($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5564
blti.91962:
	jr	$r31
blti.91698:
	jr	$r31
trace_diffuse_ray_80percent.5592:
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r2, 0, bnei.91966
	j	cont.91965
bnei.91966:
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
cont.91965:
	lw	$r2, -12($r29)
	bnei	$r2, 1, bnei.91968
	j	cont.91967
bnei.91968:
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
cont.91967:
	lw	$r2, -12($r29)
	bnei	$r2, 2, bnei.91970
	j	cont.91969
bnei.91970:
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
cont.91969:
	lw	$r2, -12($r29)
	bnei	$r2, 3, bnei.91972
	bnei	$r2, 4, bnei.91974
	jr	$r31
bnei.91974:
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
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	j	iter_trace_diffuse_rays.5564
bnei.91972:
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
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -12($r29)
	bnei	$r2, 4, bnei.91976
	jr	$r31
bnei.91976:
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
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
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
	bnei	$r2, 0, bnei.91978
	j	cont.91977
bnei.91978:
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
	bclf	bclf.91980
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.91979
bclf.91980:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.91979:
cont.91977:
	lw	$r2, -20($r29)
	bnei	$r2, 1, bnei.91982
	j	cont.91981
bnei.91982:
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
	bclf	bclf.91984
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -28($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.91983
bclf.91984:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -28($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.91983:
cont.91981:
	lw	$r2, -20($r29)
	bnei	$r2, 2, bnei.91986
	bnei	$r2, 3, bnei.91988
	j	cont.91987
bnei.91988:
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
	bclf	bclf.91990
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.91989
bclf.91990:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.91989:
cont.91987:
	lw	$r2, -20($r29)
	bnei	$r2, 4, bnei.91992
	j	cont.91985     ! elimjump
bnei.91992:
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
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	bclf	bclf.91994
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.91985     ! elimjump
bclf.91994:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.91993:
cont.91991:
	j	cont.91985
bnei.91986:
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
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
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
	bclf	bclf.91996
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -40($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.91995
bclf.91996:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -40($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.91995:
	lw	$r2, -20($r29)
	bnei	$r2, 3, bnei.91998
	j	cont.91997
bnei.91998:
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
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
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
	bclf	bclf.92000
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.91999
bclf.92000:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.91999:
cont.91997:
	lw	$r2, -20($r29)
	bnei	$r2, 4, bnei.92002
	j	cont.92001
bnei.92002:
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
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
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
	bclf	bclf.92004
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.92003
bclf.92004:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.92003:
cont.92001:
cont.91985:
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
	bgti	$r3, 4, bgti.92006
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92008
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bnei	$r4, 1, bnei.92010
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
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
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
	j	cont.92009
bnei.92010:
cont.92009:
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.92012
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92014
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.92016
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
bnei.92016:
	addi	$r3, $r3, 1
	j	do_without_neighbors.5662
blti.92014:
	jr	$r31
bgti.92012:
	jr	$r31
blti.92008:
	jr	$r31
bgti.92006:
	jr	$r31
try_exploit_neighbors.5713:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.92018
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.92020
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
	bne	$r10, $r9, bne.92022
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92024
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92026
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92028
	addi	$r9, $r0, 1
	j	cont.92021     ! elimjump
bne.92028:
	addi	$r9, $r0, 0
cont.92027:
	j	cont.92021     ! elimjump
bne.92026:
	addi	$r9, $r0, 0
cont.92025:
	j	cont.92021     ! elimjump
bne.92024:
	addi	$r9, $r0, 0
cont.92023:
	j	cont.92021
bne.92022:
	addi	$r9, $r0, 0
cont.92021:
	bnei	$r9, 1, bnei.92030
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.92032
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
	j	cont.92031
bnei.92032:
cont.92031:
	addi	$r7, $r7, 1
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.92034
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.92036
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
	bne	$r10, $r9, bne.92038
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92040
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92042
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.92044
	addi	$r9, $r0, 1
	j	cont.92037     ! elimjump
bne.92044:
	addi	$r9, $r0, 0
cont.92043:
	j	cont.92037     ! elimjump
bne.92042:
	addi	$r9, $r0, 0
cont.92041:
	j	cont.92037     ! elimjump
bne.92040:
	addi	$r9, $r0, 0
cont.92039:
	j	cont.92037
bne.92038:
	addi	$r9, $r0, 0
cont.92037:
	bnei	$r9, 1, bnei.92046
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.92048
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
	addi	$r7, $r7, 1
	j	try_exploit_neighbors.5713
bnei.92048:
	addi	$r7, $r7, 1
	j	try_exploit_neighbors.5713
bnei.92046:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	addi	$r3, $r7, 0
	j	do_without_neighbors.5662
blti.92036:
	jr	$r31
bgti.92034:
	jr	$r31
bnei.92030:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.92050
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.92052
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	bnei	$r3, 1, bnei.92054
	sw	$r2, -4($r29)
	sw	$r7, -8($r29)
	addi	$r3, $r7, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
bnei.92054:
	addi	$r3, $r7, 1
	j	do_without_neighbors.5662
blti.92052:
	jr	$r31
bgti.92050:
	jr	$r31
blti.92020:
	jr	$r31
bgti.92018:
	jr	$r31
pretrace_diffuse_rays.5772:
	bgti	$r3, 4, bgti.92056
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92058
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -4($r29)
	bnei	$r4, 1, bnei.92060
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
	j	cont.92059
bnei.92060:
cont.92059:
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.92062
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.92064
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.92066
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
	sw	$r3, -24($r29)
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
	bclf	bclf.92068
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.92067
bclf.92068:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.92067:
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
	addi	$r3, $r4, 1
	j	pretrace_diffuse_rays.5772
bnei.92066:
	addi	$r3, $r3, 1
	j	pretrace_diffuse_rays.5772
blti.92064:
	jr	$r31
bgti.92062:
	jr	$r31
blti.92058:
	jr	$r31
bgti.92056:
	jr	$r31
pretrace_pixels.5794:
	addi	$r5, $r0, 0
	blti	$r3, 0, blti.92070
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
	bclf	bclf.92072
	fmove	$f0, $f31
	j	cont.92071
bclf.92072:
	div.s	$f0, $f31, $f0
cont.92071:
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
	blti	$r6, 0, blti.92074
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	bnei	$r6, 1, bnei.92076
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
	sw	$r3, -36($r29)
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
	bclf	bclf.92078
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -48($r29)
	lw	$r3, -44($r29)
	lw	$r4, -40($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.92077
bclf.92078:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r5, $r0, 116
	lw	$r2, -48($r29)
	lw	$r3, -44($r29)
	lw	$r4, -40($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.92077:
	lw	$r2, -36($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	addi	$r3, $r0, 1
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	addi	$r4, $r2, 1
	blti	$r4, 5, blti.92080
	addi	$r4, $r4, -5
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
blti.92080:
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
bnei.92076:
	addi	$r6, $r0, 1
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	addi	$r4, $r2, 1
	blti	$r4, 5, blti.92082
	addi	$r4, $r4, -5
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
blti.92082:
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
blti.92074:
	addi	$r3, $r2, -1
	addi	$r2, $r5, 1
	blti	$r2, 5, blti.92084
	addi	$r2, $r2, -5
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r4, 0
	addi	$r4, $r27, 0
	j	pretrace_pixels.5794
blti.92084:
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r4, 0
	addi	$r4, $r27, 0
	j	pretrace_pixels.5794
blti.92070:
	jr	$r31
scan_pixel.5881:
	lw	$r7, 652($r0)
	bgt	$r7, $r2, bgt.92086
	jr	$r31
bgt.92086:
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
	bgt	$r7, $r8, bgt.92088
	addi	$r7, $r0, 0
	j	cont.92087
bgt.92088:
	bgti	$r3, 0, bgti.92090
	addi	$r7, $r0, 0
	j	cont.92089
bgti.92090:
	lw	$r7, 652($r0)
	addi	$r8, $r2, 1
	bgt	$r7, $r8, bgt.92092
	addi	$r7, $r0, 0
	j	cont.92091
bgt.92092:
	bgti	$r2, 0, bgti.92094
	addi	$r7, $r0, 0
	j	cont.92093
bgti.92094:
	addi	$r7, $r0, 1
cont.92093:
cont.92091:
cont.92089:
cont.92087:
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r7, 1, bnei.92096
	addi	$r7, $r0, 0
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r9, 8($r8)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.92098
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.92100
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.92102
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.92104
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.92106
	addi	$r9, $r0, 1
	j	cont.92099     ! elimjump
bne.92106:
	addi	$r9, $r0, 0
cont.92105:
	j	cont.92099     ! elimjump
bne.92104:
	addi	$r9, $r0, 0
cont.92103:
	j	cont.92099     ! elimjump
bne.92102:
	addi	$r9, $r0, 0
cont.92101:
	j	cont.92099
bne.92100:
	addi	$r9, $r0, 0
cont.92099:
	bnei	$r9, 1, bnei.92108
	lw	$r7, 12($r8)
	lw	$r7, 0($r7)
	bnei	$r7, 1, bnei.92110
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
	addi	$r7, $r0, 1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.92095     ! elimjump
bnei.92110:
	addi	$r7, $r0, 1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.92109:
	j	cont.92095     ! elimjump
bnei.92108:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.92107:
	j	cont.92095     ! elimjump
blti.92098:
cont.92097:
	j	cont.92095
bnei.92096:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	addi	$r8, $r0, 0
	lw	$r9, 8($r7)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.92112
	lw	$r9, 12($r7)
	lw	$r9, 0($r9)
	bnei	$r9, 1, bnei.92114
	sw	$r7, -24($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 1
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92111     ! elimjump
bnei.92114:
	addi	$r8, $r0, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92113:
	j	cont.92111
blti.92112:
cont.92111:
cont.92095:
	lwcl	$f0, 640($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92116
	blti	$r2, 0, blti.92118
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92115     ! elimjump
blti.92118:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92117:
	j	cont.92115
bgt.92116:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92115:
	lwcl	$f0, 644($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92120
	blti	$r2, 0, blti.92122
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92119     ! elimjump
blti.92122:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92121:
	j	cont.92119
bgt.92120:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92119:
	lwcl	$f0, 648($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92124
	blti	$r2, 0, blti.92126
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92123     ! elimjump
blti.92126:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92125:
	j	cont.92123
bgt.92124:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92123:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, 652($r0)
	bgt	$r3, $r2, bgt.92128
	jr	$r31
bgt.92128:
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
	bgt	$r3, $r6, bgt.92130
	addi	$r3, $r0, 0
	j	cont.92129
bgt.92130:
	bgti	$r4, 0, bgti.92132
	addi	$r3, $r0, 0
	j	cont.92131
bgti.92132:
	lw	$r3, 652($r0)
	addi	$r6, $r2, 1
	bgt	$r3, $r6, bgt.92134
	addi	$r3, $r0, 0
	j	cont.92133
bgt.92134:
	bgti	$r2, 0, bgti.92136
	addi	$r3, $r0, 0
	j	cont.92135
bgti.92136:
	addi	$r3, $r0, 1
cont.92135:
cont.92133:
cont.92131:
cont.92129:
	bnei	$r3, 1, bnei.92138
	addi	$r7, $r0, 0
	lw	$r3, -8($r29)
	lw	$r6, -4($r29)
	sw	$r2, -28($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 640($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92140
	blti	$r2, 0, blti.92142
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92139     ! elimjump
blti.92142:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92141:
	j	cont.92139
bgt.92140:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92139:
	lwcl	$f0, 644($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92144
	blti	$r2, 0, blti.92146
	j	cont.92145
blti.92146:
	addi	$r2, $r0, 0
cont.92145:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92148
	blti	$r2, 0, blti.92150
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
blti.92150:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92148:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92144:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92152
	blti	$r2, 0, blti.92154
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
blti.92154:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92152:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bnei.92138:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r5)	!ld var
	addi	$r6, $r0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 640($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92156
	blti	$r2, 0, blti.92158
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92155     ! elimjump
blti.92158:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92157:
	j	cont.92155
bgt.92156:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92155:
	lwcl	$f0, 644($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92160
	blti	$r2, 0, blti.92162
	j	cont.92161
blti.92162:
	addi	$r2, $r0, 0
cont.92161:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92164
	blti	$r2, 0, blti.92166
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
blti.92166:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92164:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92160:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92168
	blti	$r2, 0, blti.92170
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
blti.92170:
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
bgt.92168:
	addi	$r2, $r0, 255
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
scan_line.5902:
	lw	$r7, 656($r0)
	bgt	$r7, $r2, bgt.92172
	jr	$r31
bgt.92172:
	lw	$r7, 656($r0)
	addi	$r7, $r7, -1
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	bgt	$r7, $r2, bgt.92174
	j	cont.92173
bgt.92174:
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
cont.92173:
	addi	$r2, $r0, 0
	lw	$r3, 652($r0)
	bgti	$r3, 0, bgti.92176
	j	cont.92175
bgti.92176:
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
	bgt	$r3, $r6, bgt.92178
	addi	$r3, $r0, 0
	j	cont.92177
bgt.92178:
	bgti	$r4, 0, bgti.92180
	addi	$r3, $r0, 0
	j	cont.92179
bgti.92180:
	lw	$r3, 652($r0)
	bgti	$r3, 1, bgti.92182
	addi	$r3, $r0, 0
	j	cont.92181
bgti.92182:
	addi	$r3, $r0, 0
cont.92181:
cont.92179:
cont.92177:
	bnei	$r3, 1, bnei.92184
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
	lwcl	$f0, 640($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92186
	blti	$r2, 0, blti.92188
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92185     ! elimjump
blti.92188:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92187:
	j	cont.92185
bgt.92186:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92185:
	lwcl	$f0, 644($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92190
	blti	$r2, 0, blti.92192
	j	cont.92191
blti.92192:
	addi	$r2, $r0, 0
cont.92191:
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92194
	blti	$r2, 0, blti.92196
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92183     ! elimjump
blti.92196:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92195:
	j	cont.92183     ! elimjump
bgt.92194:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92193:
	j	cont.92183     ! elimjump
bgt.92190:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92198
	blti	$r2, 0, blti.92200
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92183     ! elimjump
blti.92200:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92199:
	j	cont.92183     ! elimjump
bgt.92198:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92197:
cont.92189:
	j	cont.92183
bnei.92184:
	lw	$r2, 0($r5)
	addi	$r3, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 640($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92202
	blti	$r2, 0, blti.92204
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92201     ! elimjump
blti.92204:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92203:
	j	cont.92201
bgt.92202:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92201:
	lwcl	$f0, 644($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92206
	blti	$r2, 0, blti.92208
	j	cont.92207
blti.92208:
	addi	$r2, $r0, 0
cont.92207:
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92210
	blti	$r2, 0, blti.92212
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92205     ! elimjump
blti.92212:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92211:
	j	cont.92205     ! elimjump
bgt.92210:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92209:
	j	cont.92205
bgt.92206:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.92214
	blti	$r2, 0, blti.92216
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.92213     ! elimjump
blti.92216:
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92215:
	j	cont.92213
bgt.92214:
	addi	$r2, $r0, 255
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.92213:
cont.92205:
cont.92183:
cont.92175:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 2
	blti	$r2, 5, blti.92218
	addi	$r2, $r2, -5
	j	cont.92217
blti.92218:
cont.92217:
	lw	$r4, 656($r0)
	bgt	$r4, $r3, bgt.92220
	jr	$r31
bgt.92220:
	lw	$r4, 656($r0)
	addi	$r4, $r4, -1
	bgt	$r4, $r3, bgt.92222
	addi	$r4, $r0, 0
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	lw	$r7, -12($r29)
	sw	$r2, -28($r29)
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	addi	$r5, $r6, 0
	addi	$r6, $r7, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	addi	$r6, $r3, 2
	blti	$r6, 5, blti.92224
	addi	$r6, $r6, -5
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
blti.92224:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
bgt.92222:
	addi	$r4, $r3, 1
	lwcl	$f0, 668($r0)
	lw	$r5, 664($r0)
	subu	$r4, $r4, $r5
	sw	$r3, -32($r29)
	sw	$r2, -28($r29)
	swcl	$f0, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f1, -36($r29)
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
	lw	$r2, -12($r29)
	lw	$r4, -28($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, -32($r29)
	lw	$r4, -20($r29)
	lw	$r5, -8($r29)
	lw	$r6, -12($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	addi	$r6, $r3, 2
	blti	$r6, 5, blti.92226
	addi	$r6, $r6, -5
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
blti.92226:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
init_line_elements.5972:
	blti	$r3, 0, blti.92228
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
	blti	$r2, 0, blti.92230
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
	blti	$r2, 0, blti.92232
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
	blti	$r2, 0, blti.92234
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
blti.92234:
	addi	$r2, $r5, 0
	jr	$r31
blti.92232:
	addi	$r2, $r5, 0
	jr	$r31
blti.92230:
	addi	$r2, $r5, 0
	jr	$r31
blti.92228:
	jr	$r31
calc_dirvec.6008:
	blti	$r2, 5, blti.92236
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
blti.92236:
	mul.s	$f0, $f1, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	div.s	$f1, $f31, $f0
	c.le.s	$f1, $f31
	bclf	bclf.92238
	c.le.s	$f29, $f1
	bclf	bclf.92240
	addi	$r5, $r0, 0
	j	cont.92237     ! elimjump
bclf.92240:
	addi	$r5, $r0, -1
cont.92239:
	j	cont.92237
bclf.92238:
	addi	$r5, $r0, 1
cont.92237:
	bnei	$r5, 0, bnei.92242
	j	cont.92241
bnei.92242:
	div.s	$f1, $f31, $f1
cont.92241:
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
	bgti	$r2, 0, bgti.92244
	blti	$r2, 0, blti.92246
	j	cont.92243     ! elimjump
blti.92246:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92245:
	j	cont.92243
bgti.92244:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92243:
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.92248
	addi	$r2, $r0, 0
	j	cont.92247
bclf.92248:
	addi	$r2, $r0, 1
cont.92247:
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
	bclf	bclf.92250
	lw	$r2, -48($r29)
	j	cont.92249
bclf.92250:
	lwcl	$f2, -44($r29)
	c.le.s	$f2, $f30
	bclf	bclf.92252
	addi	$r2, $r0, 1
	j	cont.92251
bclf.92252:
	addi	$r2, $r0, 0
cont.92251:
cont.92249:
	c.le.s	$f0, $f1
	bclf	bclf.92254
	j	cont.92253
bclf.92254:
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
cont.92253:
	lwcl	$f2, -36($r29)
	c.le.s	$f0, $f2
	bclf	bclf.92256
	j	cont.92255
bclf.92256:
	sub.s	$f0, $f1, $f0
cont.92255:
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
	bnei	$r2, 1, bnei.92258
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
	j	cont.92257
bnei.92258:
	fneg	$f0, $f0
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -44($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -60($r29)
	fmove	$f0, $f1
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f1, -60($r29)
	div.s	$f0, $f1, $f0
cont.92257:
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
	bclf	bclf.92260
	c.le.s	$f29, $f2
	bclf	bclf.92262
	addi	$r3, $r0, 0
	j	cont.92259     ! elimjump
bclf.92262:
	addi	$r3, $r0, -1
cont.92261:
	j	cont.92259
bclf.92260:
	addi	$r3, $r0, 1
cont.92259:
	bnei	$r3, 0, bnei.92264
	j	cont.92263
bnei.92264:
	div.s	$f2, $f31, $f2
cont.92263:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 16672
	lfh	$f5, 17138
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16824
	div.s	$f5, $f5, $f6
	swcl	$f0, -64($r29)
	sw	$r2, -68($r29)
	swcl	$f1, -72($r29)
	sw	$r3, -76($r29)
	swcl	$f2, -80($r29)
	fmove	$f0, $f4
	fmove	$f1, $f3
	fmove	$f2, $f5
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -80($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -76($r29)
	bgti	$r2, 0, bgti.92266
	blti	$r2, 0, blti.92268
	j	cont.92265     ! elimjump
blti.92268:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92267:
	j	cont.92265
bgti.92266:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.92265:
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.92270
	addi	$r2, $r0, 0
	j	cont.92269
bclf.92270:
	addi	$r2, $r0, 1
cont.92269:
	fabs	$f5, $f0
	swcl	$f4, -84($r29)
	swcl	$f3, -88($r29)
	swcl	$f0, -92($r29)
	sw	$r2, -96($r29)
	swcl	$f2, -100($r29)
	fmove	$f0, $f5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lwcl	$f1, -100($r29)
	c.le.s	$f0, $f1
	bclf	bclf.92272
	lw	$r2, -96($r29)
	j	cont.92271
bclf.92272:
	lwcl	$f2, -92($r29)
	c.le.s	$f2, $f30
	bclf	bclf.92274
	addi	$r2, $r0, 1
	j	cont.92273
bclf.92274:
	addi	$r2, $r0, 0
cont.92273:
cont.92271:
	c.le.s	$f0, $f1
	bclf	bclf.92276
	j	cont.92275
bclf.92276:
	lwcl	$f2, -88($r29)
	sub.s	$f0, $f2, $f0
cont.92275:
	lwcl	$f2, -84($r29)
	c.le.s	$f0, $f2
	bclf	bclf.92278
	j	cont.92277
bclf.92278:
	sub.s	$f0, $f1, $f0
cont.92277:
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
	bnei	$r2, 1, bnei.92280
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -92($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -104($r29)
	fmove	$f0, $f1
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lwcl	$f1, -104($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -72($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -68($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lwcl	$f0, -64($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -12($r29)
	j	calc_dirvec.6008
bnei.92280:
	fneg	$f0, $f0
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -92($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -108($r29)
	fmove	$f0, $f1
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lwcl	$f1, -108($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -72($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -68($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lwcl	$f0, -64($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -12($r29)
	j	calc_dirvec.6008
calc_dirvecs.6068:
	addi	$r5, $r0, 0
	blti	$r2, 0, blti.92282
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
	blti	$r3, 5, blti.92284
	addi	$r3, $r3, -5
	j	cont.92283
blti.92284:
cont.92283:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.92286
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
	blti	$r3, 5, blti.92288
	addi	$r3, $r3, -5
	lw	$r4, -12($r29)
	lwcl	$f0, -8($r29)
	j	calc_dirvecs.6068
blti.92288:
	lw	$r4, -12($r29)
	lwcl	$f0, -8($r29)
	j	calc_dirvecs.6068
blti.92286:
	jr	$r31
blti.92282:
	jr	$r31
calc_dirvec_rows.6098:
	blti	$r2, 0, blti.92290
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
	blti	$r4, 5, blti.92292
	addi	$r4, $r4, -5
	j	cont.92291
blti.92292:
cont.92291:
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
	blti	$r3, 5, blti.92294
	addi	$r3, $r3, -5
	j	cont.92293
blti.92294:
cont.92293:
	lw	$r4, -8($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.92296
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
	blti	$r3, 5, blti.92298
	addi	$r3, $r3, -5
	lw	$r4, -32($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6098
blti.92298:
	lw	$r4, -32($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6098
blti.92296:
	jr	$r31
blti.92290:
	jr	$r31
create_dirvec_elements.6124:
	blti	$r3, 0, blti.92300
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
	blti	$r2, 0, blti.92302
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
	blti	$r2, 0, blti.92304
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
	blti	$r2, 0, blti.92306
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
blti.92306:
	jr	$r31
blti.92304:
	jr	$r31
blti.92302:
	jr	$r31
blti.92300:
	jr	$r31
create_dirvecs.6133:
	blti	$r2, 0, blti.92308
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
	blti	$r2, 0, blti.92310
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
	blti	$r2, 0, blti.92312
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
	blti	$r2, 0, blti.92314
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
blti.92314:
	jr	$r31
blti.92312:
	jr	$r31
blti.92310:
	jr	$r31
blti.92308:
	jr	$r31
init_dirvec_constants.6146:
	blti	$r3, 0, blti.92316
	sll	$r4, $r3, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92318
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -12($r29)
	blti	$r5, 0, blti.92320
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	bnei	$r9, 1, bnei.92322
	addi	$r9, $r0, 6
	fmove	$f0, $f30
	sw	$r3, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r8, -32($r29)
	addi	$r2, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92324
	swcl	$f1, 4($r2)
	j	cont.92323
bclf.92324:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92326
	addi	$r6, $r0, 0
	j	cont.92325
bclf.92326:
	addi	$r6, $r0, 1
cont.92325:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92328
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92327
bne.92328:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92327:
cont.92323:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92330
	swcl	$f1, 12($r2)
	j	cont.92329
bclf.92330:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92332
	addi	$r6, $r0, 0
	j	cont.92331
bclf.92332:
	addi	$r6, $r0, 1
cont.92331:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92334
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92333
bne.92334:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92333:
cont.92329:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92336
	swcl	$f1, 20($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92319     ! elimjump
bclf.92336:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92338
	addi	$r6, $r0, 0
	j	cont.92337
bclf.92338:
	addi	$r6, $r0, 1
cont.92337:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92340
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92319     ! elimjump
bne.92340:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.92339:
cont.92335:
	j	cont.92319     ! elimjump
bnei.92322:
	bnei	$r9, 2, bnei.92342
	addi	$r9, $r0, 4
	fmove	$f0, $f30
	sw	$r3, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r8, -32($r29)
	addi	$r2, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
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
	bclf	bclf.92344
	swcl	$f1, 0($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92319     ! elimjump
bclf.92344:
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
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.92343:
	j	cont.92319     ! elimjump
bnei.92342:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
	sw	$r3, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r8, -32($r29)
	addi	$r2, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -32($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -28($r29)
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
	bnei	$r5, 0, bnei.92346
	fmove	$f0, $f3
	j	cont.92345
bnei.92346:
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
cont.92345:
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
	bnei	$r5, 0, bnei.92348
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92350
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92319     ! elimjump
bclf.92350:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.92349:
	j	cont.92319     ! elimjump
bnei.92348:
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
	bclf	bclf.92352
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.92319     ! elimjump
bclf.92352:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.92351:
cont.92347:
cont.92341:
cont.92321:
	j	cont.92319
blti.92320:
cont.92319:
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92354
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92356
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	j	init_dirvec_constants.6146
blti.92356:
	jr	$r31
blti.92354:
	jr	$r31
blti.92318:
	jr	$r31
blti.92316:
	jr	$r31
init_vecset_constants.6154:
	blti	$r2, 0, blti.92358
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	blti	$r5, 0, blti.92360
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	bnei	$r9, 1, bnei.92362
	addi	$r9, $r0, 6
	fmove	$f0, $f30
	sw	$r4, -12($r29)
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
	bclf	bclf.92364
	swcl	$f1, 4($r2)
	j	cont.92363
bclf.92364:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92366
	addi	$r6, $r0, 0
	j	cont.92365
bclf.92366:
	addi	$r6, $r0, 1
cont.92365:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92368
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92367
bne.92368:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92367:
cont.92363:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92370
	swcl	$f1, 12($r2)
	j	cont.92369
bclf.92370:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92372
	addi	$r6, $r0, 0
	j	cont.92371
bclf.92372:
	addi	$r6, $r0, 1
cont.92371:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92374
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92373
bne.92374:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92373:
cont.92369:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92376
	swcl	$f1, 20($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92359     ! elimjump
bclf.92376:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92378
	addi	$r6, $r0, 0
	j	cont.92377
bclf.92378:
	addi	$r6, $r0, 1
cont.92377:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92380
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92359     ! elimjump
bne.92380:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92379:
cont.92375:
	j	cont.92359     ! elimjump
bnei.92362:
	bnei	$r9, 2, bnei.92382
	addi	$r9, $r0, 4
	fmove	$f0, $f30
	sw	$r4, -12($r29)
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
	bclf	bclf.92384
	swcl	$f1, 0($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92359     ! elimjump
bclf.92384:
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
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92383:
	j	cont.92359     ! elimjump
bnei.92382:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
	sw	$r4, -12($r29)
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
	bnei	$r5, 0, bnei.92386
	fmove	$f0, $f3
	j	cont.92385
bnei.92386:
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
cont.92385:
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
	bnei	$r5, 0, bnei.92388
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92390
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92359     ! elimjump
bclf.92390:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92389:
	j	cont.92359     ! elimjump
bnei.92388:
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
	bclf	bclf.92392
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.92359     ! elimjump
bclf.92392:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.92391:
cont.92387:
cont.92381:
cont.92361:
	j	cont.92359
blti.92360:
cont.92359:
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
	blti	$r2, 0, blti.92394
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
	blti	$r2, 0, blti.92396
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
	blti	$r2, 0, blti.92398
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
blti.92398:
	jr	$r31
blti.92396:
	jr	$r31
blti.92394:
	jr	$r31
blti.92358:
	jr	$r31
setup_rect_reflection.6184:
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
	lw	$r4, -36($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -32($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r4)
	lwcl	$f1, -24($r29)
	swcl	$f1, 8($r4)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -40($r29)
	blti	$r5, 0, blti.92400
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.92402
	addi	$r7, $r0, 6
	fmove	$f2, $f30
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f2
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92404
	swcl	$f1, 4($r2)
	j	cont.92403
bclf.92404:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92406
	addi	$r6, $r0, 0
	j	cont.92405
bclf.92406:
	addi	$r6, $r0, 1
cont.92405:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92408
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92407
bne.92408:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92407:
cont.92403:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92410
	swcl	$f1, 12($r2)
	j	cont.92409
bclf.92410:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92412
	addi	$r6, $r0, 0
	j	cont.92411
bclf.92412:
	addi	$r6, $r0, 1
cont.92411:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92414
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92413
bne.92414:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92413:
cont.92409:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92416
	swcl	$f1, 20($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.92399     ! elimjump
bclf.92416:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92418
	addi	$r6, $r0, 0
	j	cont.92417
bclf.92418:
	addi	$r6, $r0, 1
cont.92417:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92420
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.92399     ! elimjump
bne.92420:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.92419:
cont.92415:
	j	cont.92399     ! elimjump
bnei.92402:
	bnei	$r7, 2, bnei.92422
	addi	$r7, $r0, 4
	fmove	$f2, $f30
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f2
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.92424
	swcl	$f1, 0($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.92399     ! elimjump
bclf.92424:
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
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.92423:
	j	cont.92399     ! elimjump
bnei.92422:
	addi	$r7, $r0, 5
	fmove	$f2, $f30
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	sw	$r6, -52($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f2
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -52($r29)
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
	bnei	$r5, 0, bnei.92426
	fmove	$f0, $f3
	j	cont.92425
bnei.92426:
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
cont.92425:
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
	bnei	$r5, 0, bnei.92428
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92430
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.92399     ! elimjump
bclf.92430:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.92429:
	j	cont.92399     ! elimjump
bnei.92428:
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
	bclf	bclf.92432
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.92399     ! elimjump
bclf.92432:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.92431:
cont.92427:
cont.92421:
cont.92401:
	j	cont.92399
blti.92400:
cont.92399:
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
	sw	$r2, -56($r29)
	sw	$r5, -60($r29)
	swcl	$f1, -64($r29)
	addi	$r2, $r6, 0
	fmove	$f0, $f2
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -68($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f1, -64($r29)
	swcl	$f1, 4($r4)
	lwcl	$f1, -24($r29)
	swcl	$f1, 8($r4)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -72($r29)
	blti	$r5, 0, blti.92434
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.92436
	addi	$r7, $r0, 6
	fmove	$f1, $f30
	sw	$r2, -76($r29)
	sw	$r5, -80($r29)
	sw	$r6, -84($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f1
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92438
	swcl	$f1, 4($r2)
	j	cont.92437
bclf.92438:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92440
	addi	$r6, $r0, 0
	j	cont.92439
bclf.92440:
	addi	$r6, $r0, 1
cont.92439:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92442
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92441
bne.92442:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92441:
cont.92437:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92444
	swcl	$f1, 12($r2)
	j	cont.92443
bclf.92444:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92446
	addi	$r6, $r0, 0
	j	cont.92445
bclf.92446:
	addi	$r6, $r0, 1
cont.92445:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92448
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92447
bne.92448:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92447:
cont.92443:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92450
	swcl	$f1, 20($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.92433     ! elimjump
bclf.92450:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92452
	addi	$r6, $r0, 0
	j	cont.92451
bclf.92452:
	addi	$r6, $r0, 1
cont.92451:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92454
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.92433     ! elimjump
bne.92454:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.92453:
cont.92449:
	j	cont.92433     ! elimjump
bnei.92436:
	bnei	$r7, 2, bnei.92456
	addi	$r7, $r0, 4
	fmove	$f1, $f30
	sw	$r2, -76($r29)
	sw	$r5, -80($r29)
	sw	$r6, -84($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f1
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -84($r29)
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
	bclf	bclf.92458
	swcl	$f1, 0($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.92433     ! elimjump
bclf.92458:
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
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.92457:
	j	cont.92433     ! elimjump
bnei.92456:
	addi	$r7, $r0, 5
	fmove	$f1, $f30
	sw	$r2, -76($r29)
	sw	$r5, -80($r29)
	sw	$r6, -84($r29)
	addi	$r2, $r7, 0
	fmove	$f0, $f1
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -68($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -84($r29)
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
	bnei	$r5, 0, bnei.92460
	fmove	$f0, $f3
	j	cont.92459
bnei.92460:
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
cont.92459:
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
	bnei	$r5, 0, bnei.92462
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92464
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.92433     ! elimjump
bclf.92464:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.92463:
	j	cont.92433     ! elimjump
bnei.92462:
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
	bclf	bclf.92466
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.92433     ! elimjump
bclf.92466:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.92465:
cont.92461:
cont.92455:
cont.92435:
	j	cont.92433
blti.92434:
cont.92433:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -72($r29)
	sw	$r3, 4($r2)
	lw	$r3, -60($r29)
	sw	$r3, 0($r2)
	lw	$r3, -56($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r3, $r2, 2
	lw	$r4, -8($r29)
	addi	$r4, $r4, 3
	lwcl	$f1, 352($r0)
	addi	$r5, $r0, 3
	fmove	$f2, $f30
	sw	$r3, -88($r29)
	sw	$r4, -92($r29)
	swcl	$f1, -96($r29)
	addi	$r2, $r5, 0
	fmove	$f0, $f2
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -100($r29)
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -100($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -96($r29)
	swcl	$f0, 8($r4)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	blti	$r5, 0, blti.92468
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.92470
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r3, -104($r29)
	sw	$r2, -108($r29)
	sw	$r5, -112($r29)
	sw	$r6, -116($r29)
	addi	$r2, $r7, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -100($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92472
	swcl	$f1, 4($r2)
	j	cont.92471
bclf.92472:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92474
	addi	$r6, $r0, 0
	j	cont.92473
bclf.92474:
	addi	$r6, $r0, 1
cont.92473:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92476
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92475
bne.92476:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92475:
cont.92471:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92478
	swcl	$f1, 12($r2)
	j	cont.92477
bclf.92478:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92480
	addi	$r6, $r0, 0
	j	cont.92479
bclf.92480:
	addi	$r6, $r0, 1
cont.92479:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92482
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92481
bne.92482:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92481:
cont.92477:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92484
	swcl	$f1, 20($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92484:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92486
	addi	$r6, $r0, 0
	j	cont.92485
bclf.92486:
	addi	$r6, $r0, 1
cont.92485:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92488
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bne.92488:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92470:
	bnei	$r7, 2, bnei.92490
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r3, -104($r29)
	sw	$r2, -108($r29)
	sw	$r5, -112($r29)
	sw	$r6, -116($r29)
	addi	$r2, $r7, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -100($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -116($r29)
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
	bclf	bclf.92492
	swcl	$f1, 0($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92492:
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
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92490:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r3, -104($r29)
	sw	$r2, -108($r29)
	sw	$r5, -112($r29)
	sw	$r6, -116($r29)
	addi	$r2, $r7, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -100($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -116($r29)
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
	bnei	$r5, 0, bnei.92494
	fmove	$f0, $f3
	j	cont.92493
bnei.92494:
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
cont.92493:
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
	bnei	$r5, 0, bnei.92496
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92498
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92498:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92496:
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
	bclf	bclf.92500
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92500:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -104($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
blti.92468:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	sw	$r2, 1796($r0)
	jr	$r31
setup_surface_reflection.6224:
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
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	swcl	$f1, -16($r29)
	swcl	$f3, -20($r29)
	swcl	$f2, -24($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f4
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
	lw	$r4, -28($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -24($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -20($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -16($r29)
	swcl	$f0, 8($r4)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	blti	$r5, 0, blti.92502
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.92504
	addi	$r7, $r0, 6
	fmove	$f0, $f30
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92506
	swcl	$f1, 4($r2)
	j	cont.92505
bclf.92506:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92508
	addi	$r6, $r0, 0
	j	cont.92507
bclf.92508:
	addi	$r6, $r0, 1
cont.92507:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.92510
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
	j	cont.92509
bne.92510:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.92509:
cont.92505:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92512
	swcl	$f1, 12($r2)
	j	cont.92511
bclf.92512:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92514
	addi	$r6, $r0, 0
	j	cont.92513
bclf.92514:
	addi	$r6, $r0, 1
cont.92513:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.92516
	fneg	$f0, $f0
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
	j	cont.92515
bne.92516:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.92515:
cont.92511:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.92518
	swcl	$f1, 20($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92518:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.92520
	addi	$r6, $r0, 0
	j	cont.92519
bclf.92520:
	addi	$r6, $r0, 1
cont.92519:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.92522
	fneg	$f0, $f0
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bne.92522:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92504:
	bnei	$r7, 2, bnei.92524
	addi	$r7, $r0, 4
	fmove	$f0, $f30
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -44($r29)
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
	bclf	bclf.92526
	swcl	$f1, 0($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92526:
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
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92524:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r7, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 8($r3)
	mul.s	$f3, $f0, $f0
	lw	$r4, -44($r29)
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
	bnei	$r5, 0, bnei.92528
	fmove	$f0, $f3
	j	cont.92527
bnei.92528:
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
cont.92527:
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
	bnei	$r5, 0, bnei.92530
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	c.eq.s	$f0, $f30
	bclf	bclf.92532
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92532:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bnei.92530:
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
	bclf	bclf.92534
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
bclf.92534:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -32($r29)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
blti.92502:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -12($r29)
	swcl	$f0, 8($r2)
	sw	$r3, 4($r2)
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 1076($r4)
	addi	$r2, $r3, 1
	sw	$r2, 1796($r0)
	jr	$r31
rt.6273:
	sw	$r2, 652($r0)
	sw	$r3, 656($r0)
	sra	$r4, $r2, 1
	sw	$r4, 660($r0)
	sra	$r3, $r3, 1
	sw	$r3, 664($r0)
	lfh	$f0, 17152
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lwcl	$f1, -4($r29)
	div.s	$f0, $f1, $f0
	swcl	$f0, 668($r0)
	lw	$r2, 652($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
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
	addi	$r3, $r2, 0
	lw	$r2, -8($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92536
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -44($r29)
	sw	$r3, -48($r29)
	addi	$r2, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -56($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -72($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r3, -72($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r3, -72($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r3, -72($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -80($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -80($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -80($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -80($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -76($r29)
	sw	$r3, 24($r2)
	lw	$r3, -72($r29)
	sw	$r3, 20($r2)
	lw	$r3, -68($r29)
	sw	$r3, 16($r2)
	lw	$r3, -64($r29)
	sw	$r3, 12($r2)
	lw	$r3, -60($r29)
	sw	$r3, 8($r2)
	lw	$r3, -56($r29)
	sw	$r3, 4($r2)
	lw	$r3, -52($r29)
	sw	$r3, 0($r2)
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92538
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
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -108($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r3, -108($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r3, -108($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r3, -108($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -116($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -116($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -116($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -116($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -112($r29)
	sw	$r3, 24($r2)
	lw	$r3, -108($r29)
	sw	$r3, 20($r2)
	lw	$r3, -104($r29)
	sw	$r3, 16($r2)
	lw	$r3, -100($r29)
	sw	$r3, 12($r2)
	lw	$r3, -96($r29)
	sw	$r3, 8($r2)
	lw	$r3, -92($r29)
	sw	$r3, 4($r2)
	lw	$r3, -88($r29)
	sw	$r3, 0($r2)
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.92535     ! elimjump
blti.92538:
	addi	$r2, $r5, 0
cont.92537:
	j	cont.92535
blti.92536:
cont.92535:
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -120($r29)
	sw	$r3, -124($r29)
	addi	$r2, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -132($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -132($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -132($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -132($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -144($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r3, -144($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r3, -144($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r3, -144($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_array
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
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -152($r29)
	sw	$r3, 24($r2)
	lw	$r3, -148($r29)
	sw	$r3, 20($r2)
	lw	$r3, -144($r29)
	sw	$r3, 16($r2)
	lw	$r3, -140($r29)
	sw	$r3, 12($r2)
	lw	$r3, -136($r29)
	sw	$r3, 8($r2)
	lw	$r3, -132($r29)
	sw	$r3, 4($r2)
	lw	$r3, -128($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	lw	$r2, -124($r29)
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92540
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -160($r29)
	sw	$r3, -164($r29)
	addi	$r2, $r4, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_create_float_array
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
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -176($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -184($r29)
	addi	$r2, $r3, 0
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r3, -184($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r3, -184($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r3, -184($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r3, -184($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -188($r29)
	addi	$r2, $r3, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -188($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -188($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -188($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -188($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -196($r29)
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r3, -196($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r3, -196($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r3, -196($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r3, -196($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -192($r29)
	sw	$r3, 24($r2)
	lw	$r3, -188($r29)
	sw	$r3, 20($r2)
	lw	$r3, -184($r29)
	sw	$r3, 16($r2)
	lw	$r3, -180($r29)
	sw	$r3, 12($r2)
	lw	$r3, -176($r29)
	sw	$r3, 8($r2)
	lw	$r3, -172($r29)
	sw	$r3, 4($r2)
	lw	$r3, -168($r29)
	sw	$r3, 0($r2)
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92542
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -200($r29)
	addi	$r2, $r3, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -204($r29)
	addi	$r2, $r3, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -208($r29)
	addi	$r2, $r3, 0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r3, -208($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r3, -208($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r3, -208($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r3, -208($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -212($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -216($r29)
	addi	$r2, $r3, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -220($r29)
	addi	$r2, $r3, 0
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r3, -220($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r3, -220($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r3, -220($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r3, -220($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -224($r29)
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -228($r29)
	addi	$r2, $r3, 0
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -232($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r3, -232($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r3, -232($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r3, -232($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -228($r29)
	sw	$r3, 24($r2)
	lw	$r3, -224($r29)
	sw	$r3, 20($r2)
	lw	$r3, -220($r29)
	sw	$r3, 16($r2)
	lw	$r3, -216($r29)
	sw	$r3, 12($r2)
	lw	$r3, -212($r29)
	sw	$r3, 8($r2)
	lw	$r3, -208($r29)
	sw	$r3, 4($r2)
	lw	$r3, -204($r29)
	sw	$r3, 0($r2)
	lw	$r3, -200($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	j	cont.92539     ! elimjump
blti.92542:
	addi	$r2, $r5, 0
cont.92541:
	j	cont.92539
blti.92540:
cont.92539:
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -236($r29)
	sw	$r3, -240($r29)
	addi	$r2, $r4, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	min_caml_create_float_array
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
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -252($r29)
	addi	$r2, $r3, 0
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
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -264($r29)
	addi	$r2, $r3, 0
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r3, -264($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r3, -264($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r3, -264($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r3, -264($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -268($r29)
	addi	$r2, $r3, 0
	sw	$r31, -272($r29)	!call-dir
	addi	$r29, $r29, -272	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 272
	lw	$r31, -272($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -272($r29)	!call-dir
	addi	$r29, $r29, -272	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 272
	lw	$r31, -272($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -272($r29)
	addi	$r2, $r3, 0
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r3, -272($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r3, -272($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r3, -272($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r3, -272($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -268($r29)
	sw	$r3, 24($r2)
	lw	$r3, -264($r29)
	sw	$r3, 20($r2)
	lw	$r3, -260($r29)
	sw	$r3, 16($r2)
	lw	$r3, -256($r29)
	sw	$r3, 12($r2)
	lw	$r3, -252($r29)
	sw	$r3, 8($r2)
	lw	$r3, -248($r29)
	sw	$r3, 4($r2)
	lw	$r3, -244($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	lw	$r2, -240($r29)
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.92544
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -276($r29)
	sw	$r3, -280($r29)
	addi	$r2, $r4, 0
	sw	$r31, -284($r29)	!call-dir
	addi	$r29, $r29, -284	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 284
	lw	$r31, -284($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -284($r29)
	addi	$r2, $r3, 0
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -288($r29)
	addi	$r2, $r3, 0
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	lw	$r3, -288($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	lw	$r3, -288($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	lw	$r3, -288($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	lw	$r3, -288($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -292($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -296($r29)	!call-dir
	addi	$r29, $r29, -296	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 296
	lw	$r31, -296($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -296($r29)
	addi	$r2, $r3, 0
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -300($r29)
	addi	$r2, $r3, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	lw	$r3, -300($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	lw	$r3, -300($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	lw	$r3, -300($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	lw	$r3, -300($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -304($r29)
	addi	$r2, $r3, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -304($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -304($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -304($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -304($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -308($r29)
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -312($r29)
	addi	$r2, $r3, 0
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	lw	$r3, -312($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	lw	$r3, -312($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	lw	$r3, -312($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	lw	$r3, -312($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -308($r29)
	sw	$r3, 24($r2)
	lw	$r3, -304($r29)
	sw	$r3, 20($r2)
	lw	$r3, -300($r29)
	sw	$r3, 16($r2)
	lw	$r3, -296($r29)
	sw	$r3, 12($r2)
	lw	$r3, -292($r29)
	sw	$r3, 8($r2)
	lw	$r3, -288($r29)
	sw	$r3, 4($r2)
	lw	$r3, -284($r29)
	sw	$r3, 0($r2)
	lw	$r3, -280($r29)
	sll	$r4, $r3, 2
	lw	$r5, -276($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.92546
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -316($r29)
	addi	$r2, $r3, 0
	sw	$r31, -320($r29)	!call-dir
	addi	$r29, $r29, -320	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 320
	lw	$r31, -320($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -320($r29)
	addi	$r2, $r3, 0
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -324($r29)
	addi	$r2, $r3, 0
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -324($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -324($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -324($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -324($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -328($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -332($r29)
	addi	$r2, $r3, 0
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -336($r29)
	addi	$r2, $r3, 0
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	lw	$r3, -336($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	lw	$r3, -336($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	lw	$r3, -336($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	lw	$r3, -336($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -340($r29)	!call-dir
	addi	$r29, $r29, -340	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 340
	lw	$r31, -340($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -340($r29)
	addi	$r2, $r3, 0
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	lw	$r3, -340($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	lw	$r3, -340($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	lw	$r3, -340($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	lw	$r3, -340($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -344($r29)	!call-dir
	addi	$r29, $r29, -344	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 344
	lw	$r31, -344($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -344($r29)
	addi	$r2, $r3, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -348($r29)
	addi	$r2, $r3, 0
	sw	$r31, -352($r29)	!call-dir
	addi	$r29, $r29, -352	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 352
	lw	$r31, -352($r29)	!call-dir
	lw	$r3, -348($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -352($r29)	!call-dir
	addi	$r29, $r29, -352	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 352
	lw	$r31, -352($r29)	!call-dir
	lw	$r3, -348($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -352($r29)	!call-dir
	addi	$r29, $r29, -352	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 352
	lw	$r31, -352($r29)	!call-dir
	lw	$r3, -348($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -352($r29)	!call-dir
	addi	$r29, $r29, -352	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 352
	lw	$r31, -352($r29)	!call-dir
	lw	$r3, -348($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -344($r29)
	sw	$r3, 24($r2)
	lw	$r3, -340($r29)
	sw	$r3, 20($r2)
	lw	$r3, -336($r29)
	sw	$r3, 16($r2)
	lw	$r3, -332($r29)
	sw	$r3, 12($r2)
	lw	$r3, -328($r29)
	sw	$r3, 8($r2)
	lw	$r3, -324($r29)
	sw	$r3, 4($r2)
	lw	$r3, -320($r29)
	sw	$r3, 0($r2)
	lw	$r3, -316($r29)
	sll	$r4, $r3, 2
	lw	$r5, -276($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -352($r29)	!call-dir
	addi	$r29, $r29, -352	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 352
	lw	$r31, -352($r29)	!call-dir
	j	cont.92543     ! elimjump
blti.92546:
	addi	$r2, $r5, 0
cont.92545:
	j	cont.92543
blti.92544:
cont.92543:
	sw	$r2, -352($r29)
	sw	$r31, -356($r29)	!call-dir
	addi	$r29, $r29, -356	!call-dir
	jal	read_screen_settings.3664
	addi	$r29, $r29, 356
	lw	$r31, -356($r29)	!call-dir
	sw	$r31, -356($r29)	!call-dir
	addi	$r29, $r29, -356	!call-dir
	jal	read_light.3742
	addi	$r29, $r29, 356
	lw	$r31, -356($r29)	!call-dir
	addi	$r2, $r0, 0
	sw	$r2, -356($r29)
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	bnei	$r2, 1, bnei.92548
	addi	$r2, $r0, 1
	sw	$r2, -360($r29)
	sw	$r31, -364($r29)	!call-dir
	addi	$r29, $r29, -364	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 364
	lw	$r31, -364($r29)	!call-dir
	bnei	$r2, 1, bnei.92550
	addi	$r2, $r0, 2
	sw	$r2, -364($r29)
	sw	$r31, -368($r29)	!call-dir
	addi	$r29, $r29, -368	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 368
	lw	$r31, -368($r29)	!call-dir
	bnei	$r2, 1, bnei.92552
	addi	$r2, $r0, 3
	sw	$r2, -368($r29)
	sw	$r31, -372($r29)	!call-dir
	addi	$r29, $r29, -372	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 372
	lw	$r31, -372($r29)	!call-dir
	bnei	$r2, 1, bnei.92554
	addi	$r2, $r0, 4
	sw	$r2, -372($r29)
	sw	$r31, -376($r29)	!call-dir
	addi	$r29, $r29, -376	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 376
	lw	$r31, -376($r29)	!call-dir
	bnei	$r2, 1, bnei.92556
	addi	$r2, $r0, 5
	sw	$r31, -376($r29)	!call-dir
	addi	$r29, $r29, -376	!call-dir
	jal	read_object.4009
	addi	$r29, $r29, 376
	lw	$r31, -376($r29)	!call-dir
	j	cont.92547     ! elimjump
bnei.92556:
	lw	$r2, -372($r29)
	sw	$r2, 28($r0)
cont.92555:
	j	cont.92547     ! elimjump
bnei.92554:
	lw	$r2, -368($r29)
	sw	$r2, 28($r0)
cont.92553:
	j	cont.92547     ! elimjump
bnei.92552:
	lw	$r2, -364($r29)
	sw	$r2, 28($r0)
cont.92551:
	j	cont.92547     ! elimjump
bnei.92550:
	lw	$r2, -360($r29)
	sw	$r2, 28($r0)
cont.92549:
	j	cont.92547
bnei.92548:
	lw	$r2, -356($r29)
	sw	$r2, 28($r0)
cont.92547:
	sw	$r31, -376($r29)	!call-dir
	addi	$r29, $r29, -376	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 376
	lw	$r31, -376($r29)	!call-dir
	bnei	$r2, -1, bnei.92558
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -376($r29)	!call-dir
	addi	$r29, $r29, -376	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 376
	lw	$r31, -376($r29)	!call-dir
	j	cont.92557
bnei.92558:
	addi	$r3, $r0, 1
	sw	$r2, -376($r29)
	addi	$r2, $r3, 0
	sw	$r31, -380($r29)	!call-dir
	addi	$r29, $r29, -380	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 380
	lw	$r31, -380($r29)	!call-dir
	lw	$r3, -376($r29)
	sw	$r3, 0($r2)
cont.92557:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.92560
	j	cont.92559
bnei.92560:
	sw	$r2, 364($r0)
	addi	$r2, $r0, 0
	sw	$r31, -380($r29)	!call-dir
	addi	$r29, $r29, -380	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 380
	lw	$r31, -380($r29)	!call-dir
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.92562
	j	cont.92561
bnei.92562:
	sw	$r2, 368($r0)
	addi	$r2, $r0, 2
	sw	$r31, -380($r29)	!call-dir
	addi	$r29, $r29, -380	!call-dir
	jal	read_and_network.4048
	addi	$r29, $r29, 380
	lw	$r31, -380($r29)	!call-dir
cont.92561:
cont.92559:
	sw	$r31, -380($r29)	!call-dir
	addi	$r29, $r29, -380	!call-dir
	jal	read_int.2543
	addi	$r29, $r29, 380
	lw	$r31, -380($r29)	!call-dir
	bnei	$r2, -1, bnei.92564
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -380($r29)	!call-dir
	addi	$r29, $r29, -380	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 380
	lw	$r31, -380($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.92563
bnei.92564:
	addi	$r3, $r0, 1
	sw	$r2, -380($r29)
	addi	$r2, $r3, 0
	sw	$r31, -384($r29)	!call-dir
	addi	$r29, $r29, -384	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 384
	lw	$r31, -384($r29)	!call-dir
	lw	$r3, -380($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.92563:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.92566
	addi	$r2, $r0, 1
	sw	$r31, -384($r29)	!call-dir
	addi	$r29, $r29, -384	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 384
	lw	$r31, -384($r29)	!call-dir
	j	cont.92565
bnei.92566:
	addi	$r2, $r0, 0
	sw	$r3, -384($r29)
	sw	$r31, -388($r29)	!call-dir
	addi	$r29, $r29, -388	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 388
	lw	$r31, -388($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.92568
	addi	$r2, $r0, 2
	sw	$r31, -388($r29)	!call-dir
	addi	$r29, $r29, -388	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 388
	lw	$r31, -388($r29)	!call-dir
	lw	$r3, -384($r29)
	sw	$r3, 0($r2)
	j	cont.92567
bnei.92568:
	addi	$r2, $r0, 2
	sw	$r3, -388($r29)
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	lw	$r3, -388($r29)
	sw	$r3, 4($r2)
	lw	$r3, -384($r29)
	sw	$r3, 0($r2)
cont.92567:
cont.92565:
	sw	$r2, 572($r0)
	addi	$r2, $r0, 80
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 54
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	lw	$r2, 652($r0)
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	lw	$r2, 656($r0)
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 255
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -392($r29)	!call-dir
	addi	$r29, $r29, -392	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 392
	lw	$r31, -392($r29)	!call-dir
	addi	$r2, $r0, 120
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -392($r29)
	addi	$r2, $r3, 0
	sw	$r31, -396($r29)	!call-dir
	addi	$r29, $r29, -396	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 396
	lw	$r31, -396($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -396($r29)
	sw	$r31, -400($r29)	!call-dir
	addi	$r29, $r29, -400	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 400
	lw	$r31, -400($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -396($r29)
	sw	$r2, 0($r3)
	lw	$r2, -392($r29)
	sw	$r31, -400($r29)	!call-dir
	addi	$r29, $r29, -400	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 400
	lw	$r31, -400($r29)	!call-dir
	sw	$r2, 780($r0)
	lw	$r2, 780($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -400($r29)
	addi	$r2, $r3, 0
	sw	$r31, -404($r29)	!call-dir
	addi	$r29, $r29, -404	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 404
	lw	$r31, -404($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -404($r29)
	sw	$r31, -408($r29)	!call-dir
	addi	$r29, $r29, -408	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 408
	lw	$r31, -408($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -404($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -400($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 117
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -408($r29)	!call-dir
	addi	$r29, $r29, -408	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 408
	lw	$r31, -408($r29)	!call-dir
	addi	$r2, $r0, 120
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -408($r29)
	addi	$r2, $r3, 0
	sw	$r31, -412($r29)	!call-dir
	addi	$r29, $r29, -412	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 412
	lw	$r31, -412($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -412($r29)
	sw	$r31, -416($r29)	!call-dir
	addi	$r29, $r29, -416	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 416
	lw	$r31, -416($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -412($r29)
	sw	$r2, 0($r3)
	lw	$r2, -408($r29)
	sw	$r31, -416($r29)	!call-dir
	addi	$r29, $r29, -416	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 416
	lw	$r31, -416($r29)	!call-dir
	sw	$r2, 776($r0)
	lw	$r2, 776($r0)
	addi	$r3, $r0, 118
	sw	$r31, -416($r29)	!call-dir
	addi	$r29, $r29, -416	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 416
	lw	$r31, -416($r29)	!call-dir
	addi	$r2, $r0, 2
	sw	$r31, -416($r29)	!call-dir
	addi	$r29, $r29, -416	!call-dir
	jal	create_dirvecs.6133
	addi	$r29, $r29, 416
	lw	$r31, -416($r29)	!call-dir
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r3, 0
	sw	$r31, -416($r29)	!call-dir
	addi	$r29, $r29, -416	!call-dir
	jal	calc_dirvec_rows.6098
	addi	$r29, $r29, 416
	lw	$r31, -416($r29)	!call-dir
	lw	$r2, 780($r0)
	lw	$r3, 476($r2)
	sw	$r2, -416($r29)
	addi	$r2, $r3, 0
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	addi	$r3, $r0, 118
	lw	$r2, -416($r29)
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	lw	$r2, 776($r0)
	addi	$r3, $r0, 119
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	addi	$r2, $r0, 2
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	init_vecset_constants.6154
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	lwcl	$f0, 344($r0)
	swcl	$f0, 788($r0)
	lwcl	$f0, 348($r0)
	swcl	$f0, 792($r0)
	lwcl	$f0, 352($r0)
	swcl	$f0, 796($r0)
	lw	$r2, 28($r0)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 1040
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.92570
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	bnei	$r4, 2, cont.92569     ! elimjump
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	c.le.s	$f31, $f0
	bclf	bclf.92574
	j	cont.92569     ! elimjump
bclf.92574:
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.92576
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	setup_rect_reflection.6184
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	j	cont.92569     ! elimjump
bnei.92576:
	bnei	$r4, 2, cont.92569     ! elimjump
	sw	$r31, -420($r29)	!call-dir
	addi	$r29, $r29, -420	!call-dir
	jal	setup_surface_reflection.6224
	addi	$r29, $r29, 420
	lw	$r31, -420($r29)	!call-dir
	j	cont.92569     ! elimjump
bnei.92578:
cont.92577:
cont.92575:
cont.92573:
	j	cont.92569     ! elimjump
bnei.92572:
cont.92571:
	j	cont.92569
blti.92570:
cont.92569:
	addi	$r2, $r0, 0
	lwcl	$f0, 668($r0)
	lw	$r3, 664($r0)
	subu	$r3, $r2, $r3
	sw	$r2, -420($r29)
	swcl	$f0, -424($r29)
	addi	$r2, $r3, 0
	sw	$r31, -428($r29)	!call-dir
	addi	$r29, $r29, -428	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 428
	lw	$r31, -428($r29)	!call-dir
	lwcl	$f1, -424($r29)
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
	lw	$r2, -236($r29)
	lw	$r4, -420($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -428($r29)	!call-dir
	addi	$r29, $r29, -428	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 428
	lw	$r31, -428($r29)	!call-dir
	addi	$r3, $r0, 0
	addi	$r2, $r0, 2
	lw	$r4, 656($r0)
	bgti	$r4, 0, bgti.92580
	jr	$r31
bgti.92580:
	lw	$r4, 656($r0)
	addi	$r4, $r4, -1
	bgti	$r4, 0, bgti.92582
	addi	$r2, $r0, 0
	lw	$r4, -120($r29)
	lw	$r5, -236($r29)
	lw	$r6, -352($r29)
	sw	$r31, -428($r29)	!call-dir
	addi	$r29, $r29, -428	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 428
	lw	$r31, -428($r29)	!call-dir
	addi	$r2, $r0, 1
	addi	$r6, $r0, 4
	lw	$r3, -236($r29)
	lw	$r4, -352($r29)
	lw	$r5, -120($r29)
	j	scan_line.5902
bgti.92582:
	addi	$r4, $r0, 1
	lwcl	$f0, 668($r0)
	lw	$r5, 664($r0)
	subu	$r4, $r4, $r5
	sw	$r3, -428($r29)
	sw	$r2, -432($r29)
	swcl	$f0, -436($r29)
	addi	$r2, $r4, 0
	sw	$r31, -440($r29)	!call-dir
	addi	$r29, $r29, -440	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 440
	lw	$r31, -440($r29)	!call-dir
	lwcl	$f1, -436($r29)
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
	lw	$r2, -352($r29)
	lw	$r4, -432($r29)
	fmove	$f20, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f20
	sw	$r31, -440($r29)	!call-dir
	addi	$r29, $r29, -440	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 440
	lw	$r31, -440($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, -428($r29)
	lw	$r4, -120($r29)
	lw	$r5, -236($r29)
	lw	$r6, -352($r29)
	sw	$r31, -440($r29)	!call-dir
	addi	$r29, $r29, -440	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 440
	lw	$r31, -440($r29)	!call-dir
	addi	$r2, $r0, 1
	addi	$r6, $r0, 4
	lw	$r3, -236($r29)
	lw	$r4, -352($r29)
	lw	$r5, -120($r29)
	j	scan_line.5902
min_caml_start:
	ori	$r30, $r0, 1800
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
	addi	$r3, $r2, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	rt.6273
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
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

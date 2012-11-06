	j	.min_caml_start
.read_int_token.406:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.1521
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.1523
	addi	$r2, $r0, 0
	j	.ble_cont.1524
.ble_else.1523:
	addi	$r2, $r0, 1
.ble_cont.1524:
	j	.ble_cont.1522
.ble_else.1521:
	addi	$r2, $r0, 1
.ble_cont.1522:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.1525
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1526
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.1528
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.1529
.beq_else.1528:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.1529:
	j	.beq_cont.1527
.beq_else.1526:
.beq_cont.1527:
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
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1525:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.1530
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1530:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.1531
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
.beq_else.1531:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
.read_float_token1.415:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.1532
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.1534
	addi	$r2, $r0, 0
	j	.ble_cont.1535
.ble_else.1534:
	addi	$r2, $r0, 1
.ble_cont.1535:
	j	.ble_cont.1533
.ble_else.1532:
	addi	$r2, $r0, 1
.ble_cont.1533:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.1536
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1537
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.1539
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.1540
.beq_else.1539:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.1540:
	j	.beq_cont.1538
.beq_else.1537:
.beq_cont.1538:
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
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1536:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.1541
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1541:
	addi	$r2, $r3, 0
	jr	$r31
.read_float_token2.418:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	input	$r2
	addi	$r3, $r0, 48
	bgt	$r3, $r2, .ble_else.1542
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.1544
	addi	$r3, $r0, 0
	j	.ble_cont.1545
.ble_else.1544:
	addi	$r3, $r0, 1
.ble_cont.1545:
	j	.ble_cont.1543
.ble_else.1542:
	addi	$r3, $r0, 1
.ble_cont.1543:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.1546
	lw	$r3, -16($r29)
	lw	$r4, 0($r3)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r2, $r2, -48
	addu	$r2, $r4, $r2
	sw	$r2, 0($r3)
	lw	$r2, -12($r29)
	lw	$r3, 0($r2)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	sw	$r3, 0($r2)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1546:
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, .beq_else.1547
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.1547:
	jr	$r31
.read_float.420:
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
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.1550	! callcls
	j	.mendoi1.1549	! callcls
.mendoi2.1550:	! callcls
	jr	$r27	! callcls
.mendoi1.1549:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 46
	bne	$r2, $r3, .beq_else.1551
	addi	$r2, $r0, 0
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.1554	! callcls
	j	.mendoi1.1553	! callcls
.mendoi2.1554:	! callcls
	jr	$r27	! callcls
.mendoi1.1553:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	add.s	$f0, $f2, $f0
	j	.beq_cont.1552
.beq_else.1551:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
.beq_cont.1552:
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.1555
	jr	$r31
.beq_else.1555:
	fneg	$f0, $f0
	jr	$r31
.mul_sub.422:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.1556
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.1556:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1557
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.1558
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.1558:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1559
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.422	! calldir-tail
.beq_else.1559:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.beq_else.1557:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	addi	$r5, $r0, 0
	sw	$r2, -8($r29)
	bne	$r3, $r5, .beq_else.1560
	addi	$r2, $r0, 0
	j	.beq_cont.1561
.beq_else.1560:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.1562
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	j	.beq_cont.1563
.beq_else.1562:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
.beq_cont.1563:
.beq_cont.1561:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.mul.425:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.1564
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.1565
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.1565:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1566
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.422	! calldir-tail
.beq_else.1566:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.ble_else.1564:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.1567
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.1567:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.1568
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.422	! calldir-tail
.beq_else.1568:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.div_binary_search.428:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	addi	$r7, $r0, 0
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	bgt	$r7, $r3, .ble_else.1569
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	j	.ble_cont.1570
.ble_else.1569:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.ble_cont.1570:
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	subu	$r5, $r4, $r3
	addi	$r6, $r0, 1
	bgt	$r5, $r6, .ble_else.1571
	addi	$r2, $r3, 0
	jr	$r31
.ble_else.1571:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, .ble_else.1572
	bne	$r2, $r5, .beq_else.1573
	lw	$r2, -8($r29)
	jr	$r31
.beq_else.1573:
	lw	$r2, -8($r29)
	addu	$r4, $r3, $r2
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -24($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r4, -16($r29)
	lw	$r5, -8($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, .ble_else.1574
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.1574:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.1575
	bne	$r2, $r3, .beq_else.1576
	lw	$r2, -24($r29)
	jr	$r31
.beq_else.1576:
	lw	$r2, -4($r29)
	lw	$r5, -24($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.428	! calldir-tail
.ble_else.1575:
	lw	$r2, -4($r29)
	lw	$r4, -24($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.428	! calldir-tail
.ble_else.1572:
	lw	$r2, -8($r29)
	addu	$r3, $r2, $r4
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r4, -8($r29)
	lw	$r5, -20($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, .ble_else.1577
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.1577:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.1578
	bne	$r2, $r3, .beq_else.1579
	lw	$r2, -28($r29)
	jr	$r31
.beq_else.1579:
	lw	$r2, -4($r29)
	lw	$r5, -28($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.428	! calldir-tail
.ble_else.1578:
	lw	$r2, -4($r29)
	lw	$r4, -28($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.428	! calldir-tail
.print_int.440:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.1580
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	addi	$r6, $r0, 3
	sra	$r6, $r6, 1
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.1581
	bne	$r2, $r3, .beq_else.1583
	lw	$r2, -16($r29)
	j	.beq_cont.1584
.beq_else.1583:
	lw	$r2, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.beq_cont.1584:
	j	.ble_cont.1582
.ble_else.1581:
	lw	$r2, -12($r29)
	lw	$r4, -16($r29)
	lw	$r5, -4($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.ble_cont.1582:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r2, -28($r29)
	bgt	$r4, $r3, .ble_else.1585
	addi	$r2, $r0, 0
	j	.ble_cont.1586
.ble_else.1585:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1586:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -32($r29)
	sw	$r5, -36($r29)
	sw	$r4, -40($r29)
	sw	$r3, -44($r29)
	sw	$r6, -48($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.1587
	bne	$r2, $r3, .beq_else.1589
	lw	$r2, -48($r29)
	j	.beq_cont.1590
.beq_else.1589:
	lw	$r2, -44($r29)
	lw	$r4, -40($r29)
	lw	$r5, -48($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
.beq_cont.1590:
	j	.ble_cont.1588
.ble_else.1587:
	lw	$r2, -44($r29)
	lw	$r4, -48($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
.ble_cont.1588:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -28($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -52($r29)
	sw	$r2, -56($r29)
	bgt	$r4, $r3, .ble_else.1591
	addi	$r3, $r0, 0
	lw	$r5, -32($r29)
	bne	$r5, $r3, .beq_else.1593
	addi	$r2, $r0, 0
	j	.beq_cont.1594
.beq_else.1593:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1594:
	j	.ble_cont.1592
.ble_else.1591:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1592:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -60($r29)
	sw	$r5, -64($r29)
	sw	$r4, -68($r29)
	sw	$r3, -72($r29)
	sw	$r6, -76($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -56($r29)
	bgt	$r3, $r2, .ble_else.1595
	bne	$r2, $r3, .beq_else.1597
	lw	$r2, -76($r29)
	j	.beq_cont.1598
.beq_else.1597:
	lw	$r2, -72($r29)
	lw	$r4, -68($r29)
	lw	$r5, -76($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.beq_cont.1598:
	j	.ble_cont.1596
.ble_else.1595:
	lw	$r2, -72($r29)
	lw	$r4, -76($r29)
	lw	$r5, -64($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.ble_cont.1596:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -56($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, .ble_else.1599
	addi	$r3, $r0, 0
	lw	$r5, -60($r29)
	bne	$r5, $r3, .beq_else.1601
	addi	$r2, $r0, 0
	j	.beq_cont.1602
.beq_else.1601:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1602:
	j	.ble_cont.1600
.ble_else.1599:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1600:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -88($r29)
	sw	$r5, -92($r29)
	sw	$r4, -96($r29)
	sw	$r3, -100($r29)
	sw	$r6, -104($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -84($r29)
	bgt	$r3, $r2, .ble_else.1603
	bne	$r2, $r3, .beq_else.1605
	lw	$r2, -104($r29)
	j	.beq_cont.1606
.beq_else.1605:
	lw	$r2, -100($r29)
	lw	$r4, -96($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
.beq_cont.1606:
	j	.ble_cont.1604
.ble_else.1603:
	lw	$r2, -100($r29)
	lw	$r4, -104($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
.ble_cont.1604:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -108($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -108($r29)
	sw	$r2, -112($r29)
	bgt	$r4, $r3, .ble_else.1607
	addi	$r3, $r0, 0
	lw	$r5, -88($r29)
	bne	$r5, $r3, .beq_else.1609
	addi	$r2, $r0, 0
	j	.beq_cont.1610
.beq_else.1609:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1610:
	j	.ble_cont.1608
.ble_else.1607:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1608:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -116($r29)
	sw	$r5, -120($r29)
	sw	$r4, -124($r29)
	sw	$r3, -128($r29)
	sw	$r6, -132($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.1611
	bne	$r2, $r3, .beq_else.1613
	lw	$r2, -132($r29)
	j	.beq_cont.1614
.beq_else.1613:
	lw	$r2, -128($r29)
	lw	$r4, -124($r29)
	lw	$r5, -132($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
.beq_cont.1614:
	j	.ble_cont.1612
.ble_else.1611:
	lw	$r2, -128($r29)
	lw	$r4, -132($r29)
	lw	$r5, -120($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
.ble_cont.1612:
	addi	$r3, $r0, 10000
	sw	$r2, -136($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -112($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -136($r29)
	sw	$r2, -140($r29)
	bgt	$r4, $r3, .ble_else.1615
	addi	$r3, $r0, 0
	lw	$r5, -116($r29)
	bne	$r5, $r3, .beq_else.1617
	addi	$r2, $r0, 0
	j	.beq_cont.1618
.beq_else.1617:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1618:
	j	.ble_cont.1616
.ble_else.1615:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1616:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -144($r29)
	sw	$r5, -148($r29)
	sw	$r4, -152($r29)
	sw	$r3, -156($r29)
	sw	$r6, -160($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	lw	$r3, -140($r29)
	bgt	$r3, $r2, .ble_else.1619
	bne	$r2, $r3, .beq_else.1621
	lw	$r2, -160($r29)
	j	.beq_cont.1622
.beq_else.1621:
	lw	$r2, -156($r29)
	lw	$r4, -152($r29)
	lw	$r5, -160($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
.beq_cont.1622:
	j	.ble_cont.1620
.ble_else.1619:
	lw	$r2, -156($r29)
	lw	$r4, -160($r29)
	lw	$r5, -148($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
.ble_cont.1620:
	addi	$r3, $r0, 1000
	sw	$r2, -164($r29)
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lw	$r3, -140($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -164($r29)
	sw	$r2, -168($r29)
	bgt	$r4, $r3, .ble_else.1623
	addi	$r3, $r0, 0
	lw	$r5, -144($r29)
	bne	$r5, $r3, .beq_else.1625
	addi	$r2, $r0, 0
	j	.beq_cont.1626
.beq_else.1625:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1626:
	j	.ble_cont.1624
.ble_else.1623:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1624:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -172($r29)
	sw	$r5, -176($r29)
	sw	$r4, -180($r29)
	sw	$r3, -184($r29)
	sw	$r6, -188($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	lw	$r3, -168($r29)
	bgt	$r3, $r2, .ble_else.1627
	bne	$r2, $r3, .beq_else.1629
	lw	$r2, -188($r29)
	j	.beq_cont.1630
.beq_else.1629:
	lw	$r2, -184($r29)
	lw	$r4, -180($r29)
	lw	$r5, -188($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
.beq_cont.1630:
	j	.ble_cont.1628
.ble_else.1627:
	lw	$r2, -184($r29)
	lw	$r4, -188($r29)
	lw	$r5, -176($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
.ble_cont.1628:
	addi	$r3, $r0, 100
	sw	$r2, -192($r29)
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	lw	$r3, -168($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -192($r29)
	sw	$r2, -196($r29)
	bgt	$r4, $r3, .ble_else.1631
	addi	$r3, $r0, 0
	lw	$r5, -172($r29)
	bne	$r5, $r3, .beq_else.1633
	addi	$r2, $r0, 0
	j	.beq_cont.1634
.beq_else.1633:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1634:
	j	.ble_cont.1632
.ble_else.1631:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1632:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 10
	sra	$r6, $r6, 1
	sw	$r2, -200($r29)
	sw	$r5, -204($r29)
	sw	$r4, -208($r29)
	sw	$r3, -212($r29)
	sw	$r6, -216($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.mul.425	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	lw	$r3, -196($r29)
	bgt	$r3, $r2, .ble_else.1635
	bne	$r2, $r3, .beq_else.1637
	lw	$r2, -216($r29)
	j	.beq_cont.1638
.beq_else.1637:
	lw	$r2, -212($r29)
	lw	$r4, -208($r29)
	lw	$r5, -216($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
.beq_cont.1638:
	j	.ble_cont.1636
.ble_else.1635:
	lw	$r2, -212($r29)
	lw	$r4, -216($r29)
	lw	$r5, -204($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.div_binary_search.428	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
.ble_cont.1636:
	addi	$r3, $r0, 10
	sw	$r2, -220($r29)
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.mul_sub.422	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -196($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -220($r29)
	sw	$r2, -224($r29)
	bgt	$r4, $r3, .ble_else.1639
	addi	$r3, $r0, 0
	lw	$r5, -200($r29)
	bne	$r5, $r3, .beq_else.1641
	addi	$r2, $r0, 0
	j	.beq_cont.1642
.beq_else.1641:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.1642:
	j	.ble_cont.1640
.ble_else.1639:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.1640:
	lw	$r2, -224($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
.ble_else.1580:
	addi	$r3, $r0, 45
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -20($r29)
	subu	$r2, $r0, $r2
	j	.print_int.440	! calldir-tail
.read_and_print.447:
	lw	$r3, 4($r28)
	addi	$r4, $r0, 0
	bgt	$r2, $r4, .ble_else.1643
	jr	$r31
.ble_else.1643:
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.1646	! callcls
	j	.mendoi1.1645	! callcls
.mendoi2.1646:	! callcls
	jr	$r27	! callcls
.mendoi1.1645:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.1647
	jr	$r31
.ble_else.1647:
	lw	$r28, -8($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.1650	! callcls
	j	.mendoi1.1649	! callcls
.mendoi2.1650:	! callcls
	jr	$r27	! callcls
.mendoi1.1649:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.1651
	jr	$r31
.ble_else.1651:
	lw	$r28, -8($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.1654	! callcls
	j	.mendoi1.1653	! callcls
.mendoi2.1654:	! callcls
	jr	$r27	! callcls
.mendoi1.1653:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -20($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.1655
	jr	$r31
.ble_else.1655:
	lw	$r28, -8($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.1658	! callcls
	j	.mendoi1.1657	! callcls
.mendoi2.1658:	! callcls
	jr	$r27	! callcls
.mendoi1.1657:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.min_caml_start:
	lui	$r29, 64	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, .read_int_token.406
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -4($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r0, 1
	addi	$r6, $r0, 0
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, .read_float_token1.415
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -16($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, .read_float_token2.418
	sw	$r6, 0($r5)
	lw	$r6, -20($r29)
	sw	$r6, 8($r5)
	lw	$r7, -24($r29)
	sw	$r7, 4($r5)
	addi	$r8, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, .read_float.420
	sw	$r9, 0($r8)
	sw	$r5, 24($r8)
	sw	$r3, 20($r8)
	sw	$r2, 16($r8)
	sw	$r4, 12($r8)
	sw	$r6, 8($r8)
	sw	$r7, 4($r8)
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	lw	$r28, -8($r29)
	sw	$r8, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.1660	! callcls
	j	.mendoi1.1659	! callcls
.mendoi2.1660:	! callcls
	jr	$r27	! callcls
.mendoi1.1659:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	la	$r4, .read_and_print.447
	sw	$r4, 0($r3)
	lw	$r28, -28($r29)
	sw	$r28, 4($r3)
	addi	$r4, $r0, 0
	bgt	$r2, $r4, .ble_else.1661
	j	.ble_cont.1662
.ble_else.1661:
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.1664	! callcls
	j	.mendoi1.1663	! callcls
.mendoi2.1664:	! callcls
	jr	$r27	! callcls
.mendoi1.1663:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.1665
	j	.ble_cont.1666
.ble_else.1665:
	lw	$r28, -28($r29)
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.1668	! callcls
	j	.mendoi1.1667	! callcls
.mendoi2.1668:	! callcls
	jr	$r27	! callcls
.mendoi1.1667:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -40($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.1669
	j	.ble_cont.1670
.ble_else.1669:
	lw	$r28, -28($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.1672	! callcls
	j	.mendoi1.1671	! callcls
.mendoi2.1672:	! callcls
	jr	$r27	! callcls
.mendoi1.1671:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	mul.s	$f0, $f0, $f0
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.print_int.440	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -44($r29)
	addi	$r2, $r2, -1
	lw	$r28, -32($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.1674	! callcls
	j	.mendoi1.1673	! callcls
.mendoi2.1674:	! callcls
	jr	$r27	! callcls
.mendoi1.1673:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.ble_cont.1670:
.ble_cont.1666:
.ble_cont.1662:
	halt
.min_caml_create_array:		! (引数) r2: size, r3: init elem
	addi	$r4, $r2, 0	! r4にサイズ
	ori	$r5, $r0, 0	! r5はindex <- sizeとの比較用に使うだけ
	addi	$r2, $r30, 0	! 配列の先頭のアドレスを返り値にする
.CREATE_ARRAY_LOOP:
	blt	$r5, $r4, .CREATE_ARRAY_CONTINUE
	jr	$r31
.CREATE_ARRAY_CONTINUE:
	sw	$r3, 0($r30)	! hpに要素を入れる
	addi	$r30, $r30, 4	! hpを１要素分だけ伸ばす
	addi	$r5, $r5, 1	! indexをずらす
	j	.CREATE_ARRAY_LOOP
! * create_float_array
.min_caml_create_float_array:	! (引数) r2: size, f0: init elem(float)
	addi	$r4, $r2, 0
	ori	$r5, $r0, 0
	addi	$r2, $r30, 0
.CREATE_FLOAT_ARRAY_LOOP:
	blt	$r5, $r4, .CREATE_FLOAT_ARRAY_CONTINUE
	jr	$r31
.CREATE_FLOAT_ARRAY_CONTINUE:
	swcl	$f0, 0($r30)	! hpに要素(float)を入れる
	addi	$r30, $r30, 4
	addi	$r5, $r5, 1	
	j	.CREATE_FLOAT_ARRAY_LOOP

	
! * floor		$f0 + MAGICF - MAGICF
.min_caml_floor:
	fmove	$f1, $f0			! ??
	! $f4 <- 0.0
	! fset $f4, 0.0
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0			! if ($f4 <= $f0) goto FLOOR_POSITIVE
	bclf	.FLOOR_NEGATIVE			! 偽だったらジャンプ
.FLOOR_POSITIVE:
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.FLOOR_POSITIVE_RET		! 8388608.0 < argv[0] なら return
.FLOOR_POSITIVE_MAIN:
	fmove	$f1, $f0			! ??
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r30)
	lw	$r3, 0($r30)			! なんでr3に入れる??
	sub.s	$f0, $f0, $f2
	swcl	$f0, 0($r30)
	lw	$r3, 0($r30)
	c.le.s	$f0, $f1			! 
	bclf	.FLOOR_POSITIVE_RET
	jr $r31
.FLOOR_POSITIVE_RET:
	! $f3 <- 1.0
	! fset $f3, 1.0
	lfh	$f3, 16256
	lfl	$f3, 0
	sub.s	$f0, $f0, $f3
	jr	$r31
.FLOOR_NEGATIVE:
	fneg	$f0, $f0
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.FLOOR_NEGATIVE_RET
.FLOOR_NEGATIVE_MAIN:
	add.s	$f0, $f0, $f2
	sub.s	$f0, $f0, $f2
	fneg	$f1, $f1
	c.le.s	$f1, $f0
	bclf	.FLOOR_NEGATIVE_PRE_RET
	j	.FLOOR_NEGATIVE_RET
.FLOOR_NEGATIVE_PRE_RET:
	add.s	$f0, $f0, $f2
	! $f3 <- 1.0
	! fset $f3, 1.0
	lfh	$f3, 16256
	lfl	$f3, 0
	add.s	$f0, $f0, $f3
	sub.s	$f0, $f0, $f2
.FLOOR_NEGATIVE_RET:
	fneg	$f0, $f0
	jr	$r31
	
.min_caml_ceil:
	fneg	$f0, $f0
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	.min_caml_floor
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	fneg	$f0, $f0
	jr	$r31

! * float_of_int
.min_caml_float_of_int:
	blt $r2, $r0, .ITOF_NEGATIVE_MAIN		! if ($r0 <= $r2) goto ITOF_MAIN
.ITOF_MAIN:
	! $f1 <- 8388608.0(0x4b000000)	2**23
	lfh	$f1, 19200
	lfl	$f1, 0
	! $r3 <- 0x4b000000
	lui	$r3, 19200
	ori	$r3, $r3, 0
	! $r4 <- 0x00800000		! r4 <- 2**23
	lui	$r4, 128
	ori	$r4, $r4, 0
	blt	$r2, $r4, .ITOF_SMALL	! argv[0] と 2**23の比較
.ITOF_BIG:
	! $f2 <- 0.0
	lfh	$f2, 0
	lfl	$f2, 0
.ITOF_LOOP:
	subu	$r2, $r2, $r4		! argv[0] から 2**23を引いてく
	add.s	$f2, $f2, $f1		! loop毎に (float)2**23を加算
	blt	$r2, $r4, .ITOF_RET
	j	.ITOF_LOOP
.ITOF_RET:
	addu	$r2, $r2, $r3
	sw	$r2, 0($r30)		! heap上で変換
	lwcl	$f0, 0($r30)
	sub.s	$f0, $f0, $f1
	add.s	$f0, $f0, $f2
	jr $r31
.ITOF_SMALL:
	addu	$r2, $r2, $r3		! r2 <- argv[0] + 0x4b000000
	sw	$r2, 0($r30)		! heap上で r から fへ
	lwcl	$f0, 0($r30)		! 
	sub.s	$f0, $f0, $f1		! (float)2**23で引く
	jr	$r31
.ITOF_NEGATIVE_MAIN:
	subu	$r2, $r0, $r2
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	.ITOF_MAIN
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	fneg	$f0, $f0
	jr	$r31

! * int_of_float	(ftoi)
.min_caml_int_of_float:
	! $f1 <- 0.0
	! fset $f1, 0.0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0		! if (0.0 <= argv[0])
	bclf	.FTOI_NEGATIVE_MAIN	! 偽だったら飛ぶ
.FTOI_POSITIVE_MAIN:
	sw	$r31, -4($r29)		
	addi	$r29, $r29, -4		
	jal	.min_caml_floor		! ??floorする必要はあるの(とりあえずつける)
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)		
	! $f2 <- 8388608.0(0x4b000000)
	lfh	$f2, 19200
	lfl	$f2, 0
	! $r3 <- 0x4b000000	! floatの 2**23
	lui	$r3, 19200
	ori	$r3, $r3, 0
	c.le.s	$f2, $f0	! if (0x4b000000 <= argv[0](floored?))
	bclf	.FTOI_SMALL	! 偽だったら飛ぶ
	! $r4 <- 0x00800000	! intの 2**23
	lui	$r4, 128
	ori	$r4, $r4, 0
	ori	$r2, $r0, 0	! r2 <- 0
.FTOI_LOOP:
	sub.s	$f0, $f0, $f2	! f0 <- argv[0] -. (0x4b000000)
	addu	$r2, $r2, $r4	! r2 に 2**23を足していく
	c.le.s	$f2, $f0	! if (0x4b000000 <= f0)
	bclf	.FTOI_RET	
	j	.FTOI_LOOP	! 真だったらloop
.FTOI_RET:
	add.s	$f0, $f0, $f2	! FTOI_SMALLと同じ流れ
	swcl	$f0, 0($r30)
	lw	$r4, 0($r30)
	subu	$r4, $r4, $r3
	addu	$r2, $r2, $r4	! loop中に重ねた[r2]とsmallで求めた[r4]を加算
	jr	$r31
.FTOI_SMALL:
	add.s	$f0, $f0, $f2	! f0 <- argv[0] +. (2**23)
	swcl	$f0, 0($r30)	! heap上で変換(??)
	lw	$r2, 0($r30)	! heap上で変換(??)
	subu	$r2, $r2, $r3	! r2 <- (int)f0 - (2**23)
	jr	$r31
.FTOI_NEGATIVE_MAIN:
	fneg	$f0, $f0
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	.FTOI_POSITIVE_MAIN
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	subu	$r2, $r0, $r2
	jr	$r31
! * truncate
.min_caml_truncate:
	j	.min_caml_int_of_float

! * sqrt
.min_caml_sqrt:		! 引数 $f0, (r2, f1, f2, f3, f4)
	addi	$r2, $r0, 10
	lfh	$f1, 16256	! $f1 初期値 1.0
	lfl	$f1, 0
	lfh	$f4, 16384	! $f4 定数 2.0
	lfl	$f4, 0
.SQRT_SUB:		! ニュートン法10回, 初期値($f1 1.0)	x $f0, y $f1
	mul.s	$f2, $f1, $f1
	sub.s	$f2, $f2, $f0		! $f2 = y */ y -. x
	mul.s	$f3, $f4, $f1		! $f3 = 2.0 *. y
	div.s	$f2, $f2, $f3		! $f2 = (y */ y -. x) /. (2.0 *. y)
	
!	sw	$r2, -4($r29)
!	swcl	$f0, -8($r29)
!	swcl	$f1, -12($r29)
!	swcl	$f2, -16($r29)
!	swcl	$f4, -24($r29)
!	sw	$r31, -28($r29)
!	addi	$r29, $r29, -28
!	fmove	$f0, $f3
!	jal	.min_caml_myfinv	! $f3 = 1.0 /. $f3
!	fmove	$f3, $f0
!	addi	$r29, $r29, 28
!	lw	$r31, -28($r29)
!	lwcl	$f4, -24($r29)
!	lwcl	$f2, -16($r29)
!	lwcl	$f1, -12($r29)
!	lwcl	$f0, -8($r29)
!	lw	$r2, -4($r29)
!	mul.s	$f2, $f2, $f3
	
	sub.s	$f1, $f1, $f2
	addi	$r2, $r2, -1
	bne	$r2, $r0, .SQRT_SUB	! ループ
	fmove	$f0, $f1
	jr	$r31

! * finv
!.min_caml_myfinv:		! 引数 $f0(a)
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
!	bclt	.FINV_NEGATIVE		! 負だったらnegativeにジャンプ
!.FINV_POSITIVE:
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
!	jal	.FINV_SUB		! ニュートン法
!	lw	$r31, -4($r29)
!
!	mul.s	$f0, $f0, $f8		! exp(inv) * frac(inv)
!	jr	$r31
!.FINV_SUB:				! 1.0〜2.0 ==> 0.0〜1.0	
!	mul.s	$f13, $f11, $f12	! $f2 = 2.0 * x		($f11 * $f14)
!	mul.s	$f14, $f12, $f12	! $f3 = x * x		($f12 * $f12)
!	mul.s	$f14, $f14, $f0		! $f3 = x * x * a	($f14 * $f0)
!	sub.s	$f12, $f13, $f14	! $f1 = 2.0 * x - x * x * a
!	addi	$r3, $r3, -1
!	bne	$r3, $r0, .FINV_SUB
!	fmove	$f0, $f12
!	jr	$r31
!.FINV_NEGATIVE:
!	fneg	$f0, $f0
!	sw	$r31, -4($r29)
!	addi	$r29, $r29, -4
!	jal	.FINV_POSITIVE
!	addi	$r29, $r29, 4
!	lw	$r31, -4($r29)
!	fneg	$f0, $f0
!	jr	$r31

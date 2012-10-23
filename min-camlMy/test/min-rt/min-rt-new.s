	j	.min_caml_start
.fless.2783:
	c.le.s	$f2, $f0
	bclf	.bclt_else.9707
	addi	$r2, $r0, 0
	jr	$r31
.bclt_else.9707:
	addi	$r2, $r0, 1
	jr	$r31
.fispos.2786:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.9708
	addi	$r2, $r0, 0
	jr	$r31
.bclt_else.9708:
	addi	$r2, $r0, 1
	jr	$r31
.fisneg.2788:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.9709
	addi	$r2, $r0, 0
	jr	$r31
.bclt_else.9709:
	addi	$r2, $r0, 1
	jr	$r31
.fiszero.2790:
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.9710
	addi	$r2, $r0, 1
	jr	$r31
.bclt_else.9710:
	addi	$r2, $r0, 0
	jr	$r31
.fabs.2795:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.9711
	jr	$r31
.bclt_else.9711:
	fneg	$f0, $f0
	jr	$r31
.fneg.2799:
	fneg	$f0, $f0
	jr	$r31
.fhalf.2801:
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	jr	$r31
.fsqr.2803:
	mul.s	$f0, $f0, $f0
	jr	$r31
.atan_sub.2808:
	lfh	$f6, 16128
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.9712
	lfh	$f6, 16256
	lfl	$f6, 0
	sub.s	$f6, $f0, $f6
	mul.s	$f8, $f0, $f0
	mul.s	$f8, $f8, $f2
	add.s	$f0, $f0, $f0
	lfh	$f10, 16256
	lfl	$f10, 0
	add.s	$f0, $f0, $f10
	add.s	$f0, $f0, $f4
	div.s	$f4, $f8, $f0
	fmove	$f0, $f6	! g'_args
	j	.atan_sub.2808	! calldir-tail
.bclt_else.9712:
	fmove	$f0, $f4
	jr	$r31
.atan.2812:
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.9713
	lfh	$f2, 49024
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.9715
	addi	$r2, $r0, 0
	j	.bclt_cont.9716
.bclt_else.9715:
	addi	$r2, $r0, -1
.bclt_cont.9716:
	j	.bclt_cont.9714
.bclt_else.9713:
	addi	$r2, $r0, 1
.bclt_cont.9714:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9717
	j	.beq_cont.9718
.beq_else.9717:
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
.beq_cont.9718:
	lfh	$f2, 16688
	lfl	$f2, 0
	mul.s	$f4, $f0, $f0
	lfh	$f6, 0
	lfl	$f6, 0
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.atan_sub.2808	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	add.s	$f0, $f2, $f0
	lwcl	$f2, -8($r29)
	div.s	$f0, $f2, $f0
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bgt	$r3, $r2, .ble_else.9719
	addi	$r2, $r0, 0
	bgt	$r2, $r3, .ble_else.9720
	jr	$r31
.ble_else.9720:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
.ble_else.9719:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
.tan_sub.6788:
	lfh	$f6, 16416
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.9721
	lfh	$f6, 16384
	lfl	$f6, 0
	sub.s	$f6, $f0, $f6
	sub.s	$f0, $f0, $f4
	div.s	$f4, $f2, $f0
	fmove	$f0, $f6	! g'_args
	j	.tan_sub.6788	! calldir-tail
.bclt_else.9721:
	fmove	$f0, $f4
	jr	$r31
.tan.2814:
	lfh	$f2, 16256
	lfl	$f2, 0
	lfh	$f4, 16656
	lfl	$f4, 0
	mul.s	$f6, $f0, $f0
	lfh	$f8, 0
	lfl	$f8, 0
	swcl	$f0, -4($r29)
	swcl	$f2, -8($r29)
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.tan_sub.6788	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -4($r29)
	div.s	$f0, $f2, $f0
	jr	$r31
.sin_sub.2816:
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.9722
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.9723
	jr	$r31
.bclt_else.9723:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.9722:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.sin.2818:
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f4, 16585
	lfl	$f4, 4059
	lfh	$f6, 16329
	lfl	$f6, 4059
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f0, $f8
	bclf	.bclt_else.9724
	addi	$r2, $r0, 0
	j	.bclt_cont.9725
.bclt_else.9724:
	addi	$r2, $r0, 1
.bclt_cont.9725:
	swcl	$f6, -4($r29)
	swcl	$f4, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.9726
	lw	$r2, -12($r29)
	j	.bclt_cont.9727
.bclt_else.9726:
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	bne	$r3, $r2, .beq_else.9728
	addi	$r2, $r0, 1
	j	.beq_cont.9729
.beq_else.9728:
	addi	$r2, $r0, 0
.beq_cont.9729:
.bclt_cont.9727:
	c.le.s	$f0, $f2
	bclf	.bclt_else.9730
	j	.bclt_cont.9731
.bclt_else.9730:
	lwcl	$f4, -8($r29)
	sub.s	$f0, $f4, $f0
.bclt_cont.9731:
	lwcl	$f4, -4($r29)
	c.le.s	$f0, $f4
	bclf	.bclt_else.9732
	j	.bclt_cont.9733
.bclt_else.9732:
	sub.s	$f0, $f2, $f0
.bclt_cont.9733:
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.tan.2814	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lfh	$f2, 16384
	lfl	$f2, 0
	mul.s	$f2, $f2, $f0
	lfh	$f4, 16256
	lfl	$f4, 0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f4, $f0
	div.s	$f0, $f2, $f0
	addi	$r2, $r0, 0
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.9734
	j	.fneg.2799	! calldir-tail
.beq_else.9734:
	jr	$r31
.cos.2820:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	j	.sin.2818	! calldir-tail
.mul10.2822:
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	jr	$r31
.read_int_token.2826:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.9735
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.9737
	addi	$r2, $r0, 0
	j	.ble_cont.9738
.ble_else.9737:
	addi	$r2, $r0, 1
.ble_cont.9738:
	j	.ble_cont.9736
.ble_else.9735:
	addi	$r2, $r0, 1
.ble_cont.9736:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.9739
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.9740
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.9742
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.9743
.beq_else.9742:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.9743:
	j	.beq_cont.9741
.beq_else.9740:
.beq_cont.9741:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sw	$r3, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul10.2822	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	lw	$r4, -12($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9739:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.9744
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9744:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.9745
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
.beq_else.9745:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
.read_int.2829:
	lw	$r2, 12($r28)
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	sw	$r5, 0($r4)
	addi	$r4, $r0, 0
	sw	$r4, 0($r3)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	addi	$r28, $r2, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_float_token1.2835:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.9746
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.9748
	addi	$r2, $r0, 0
	j	.ble_cont.9749
.ble_else.9748:
	addi	$r2, $r0, 1
.ble_cont.9749:
	j	.ble_cont.9747
.ble_else.9746:
	addi	$r2, $r0, 1
.ble_cont.9747:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.9750
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.9751
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.9753
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.9754
.beq_else.9753:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.9754:
	j	.beq_cont.9752
.beq_else.9751:
.beq_cont.9752:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sw	$r3, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul10.2822	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	lw	$r4, -12($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9750:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.9755
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9755:
	addi	$r2, $r3, 0
	jr	$r31
.read_float_token2.2838:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	input	$r2
	addi	$r3, $r0, 48
	bgt	$r3, $r2, .ble_else.9756
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.9758
	addi	$r3, $r0, 0
	j	.ble_cont.9759
.ble_else.9758:
	addi	$r3, $r0, 1
.ble_cont.9759:
	j	.ble_cont.9757
.ble_else.9756:
	addi	$r3, $r0, 1
.ble_cont.9757:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.9760
	lw	$r3, -16($r29)
	lw	$r4, 0($r3)
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul10.2822	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	addi	$r3, $r3, -48
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	sw	$r2, 0($r3)
	lw	$r2, -12($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul10.2822	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9760:
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, .beq_else.9761
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9761:
	jr	$r31
.read_float.2840:
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
	jal	.mendoi2.9764	! callcls
	j	.mendoi1.9763	! callcls
.mendoi2.9764:	! callcls
	jr	$r27	! callcls
.mendoi1.9763:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 46
	bne	$r2, $r3, .beq_else.9765
	addi	$r2, $r0, 0
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9768	! callcls
	j	.mendoi1.9767	! callcls
.mendoi2.9768:	! callcls
	jr	$r27	! callcls
.mendoi1.9767:	! callcls
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
	j	.beq_cont.9766
.beq_else.9765:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
.beq_cont.9766:
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.9769
	jr	$r31
.beq_else.9769:
	fneg	$f0, $f0
	jr	$r31
.mul_sub.2842:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.9770
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9770:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.9771
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.2842	! calldir-tail
.beq_else.9771:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.mul.2845:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.9772
	j	.mul_sub.2842	! calldir-tail
.ble_else.9772:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	j	.mul_sub.2842	! calldir-tail
.div_binary_search.2848:
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
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r4, -16($r29)
	lw	$r5, -20($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, .ble_else.9773
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.9773:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.9774
	bne	$r2, $r3, .beq_else.9775
	lw	$r2, -8($r29)
	jr	$r31
.beq_else.9775:
	lw	$r2, -4($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.9774:
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.print_int.2860:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.9776
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bgt	$r4, $r3, .ble_else.9777
	addi	$r2, $r0, 0
	j	.ble_cont.9778
.ble_else.9777:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9778:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	sw	$r2, -24($r29)
	bgt	$r4, $r3, .ble_else.9779
	addi	$r3, $r0, 0
	lw	$r5, -16($r29)
	bne	$r5, $r3, .beq_else.9781
	addi	$r2, $r0, 0
	j	.beq_cont.9782
.beq_else.9781:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9782:
	j	.ble_cont.9780
.ble_else.9779:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9780:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -24($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	sw	$r2, -36($r29)
	bgt	$r4, $r3, .ble_else.9783
	addi	$r3, $r0, 0
	lw	$r5, -28($r29)
	bne	$r5, $r3, .beq_else.9785
	addi	$r2, $r0, 0
	j	.beq_cont.9786
.beq_else.9785:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9786:
	j	.ble_cont.9784
.ble_else.9783:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9784:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -36($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -44($r29)
	sw	$r2, -48($r29)
	bgt	$r4, $r3, .ble_else.9787
	addi	$r3, $r0, 0
	lw	$r5, -40($r29)
	bne	$r5, $r3, .beq_else.9789
	addi	$r2, $r0, 0
	j	.beq_cont.9790
.beq_else.9789:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9790:
	j	.ble_cont.9788
.ble_else.9787:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9788:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 10000
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -48($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -56($r29)
	sw	$r2, -60($r29)
	bgt	$r4, $r3, .ble_else.9791
	addi	$r3, $r0, 0
	lw	$r5, -52($r29)
	bne	$r5, $r3, .beq_else.9793
	addi	$r2, $r0, 0
	j	.beq_cont.9794
.beq_else.9793:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9794:
	j	.ble_cont.9792
.ble_else.9791:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9792:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -60($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1000
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -60($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -68($r29)
	sw	$r2, -72($r29)
	bgt	$r4, $r3, .ble_else.9795
	addi	$r3, $r0, 0
	lw	$r5, -64($r29)
	bne	$r5, $r3, .beq_else.9797
	addi	$r2, $r0, 0
	j	.beq_cont.9798
.beq_else.9797:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9798:
	j	.ble_cont.9796
.ble_else.9795:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9796:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -72($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 100
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -72($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, .ble_else.9799
	addi	$r3, $r0, 0
	lw	$r5, -76($r29)
	bne	$r5, $r3, .beq_else.9801
	addi	$r2, $r0, 0
	j	.beq_cont.9802
.beq_else.9801:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9802:
	j	.ble_cont.9800
.ble_else.9799:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9800:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r0, 10
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul.2845	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -92($r29)
	sw	$r2, -96($r29)
	bgt	$r4, $r3, .ble_else.9803
	addi	$r3, $r0, 0
	lw	$r5, -88($r29)
	bne	$r5, $r3, .beq_else.9805
	addi	$r2, $r0, 0
	j	.beq_cont.9806
.beq_else.9805:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.9806:
	j	.ble_cont.9804
.ble_else.9803:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.9804:
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
.ble_else.9776:
	addi	$r3, $r0, 45
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -4($r29)
	subu	$r2, $r0, $r2
	j	.print_int.2860	! calldir-tail
.xor.2896:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.9807
	addi	$r2, $r3, 0
	jr	$r31
.beq_else.9807:
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.9808
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.9808:
	addi	$r2, $r0, 0
	jr	$r31
.sgn.2899:
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9809
	lwcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9810
	lfh	$f0, 49024
	lfl	$f0, 0
	jr	$r31
.beq_else.9810:
	lfh	$f0, 16256
	lfl	$f0, 0
	jr	$r31
.beq_else.9809:
	lfh	$f0, 0
	lfl	$f0, 0
	jr	$r31
.fneg_cond.2901:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9811
	j	.fneg.2799	! calldir-tail
.beq_else.9811:
	jr	$r31
.add_mod5.2904:
	addu	$r2, $r2, $r3
	addi	$r3, $r0, 5
	bgt	$r3, $r2, .ble_else.9812
	addi	$r2, $r2, -5
	jr	$r31
.ble_else.9812:
	jr	$r31
.vecset.2907:
	swcl	$f0, 0($r2)
	swcl	$f2, 4($r2)
	swcl	$f4, 8($r2)
	jr	$r31
.vecfill.2912:
	swcl	$f0, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f0, 8($r2)
	jr	$r31
.vecbzero.2915:
	lfh	$f0, 0
	lfl	$f0, 0
	j	.vecfill.2912	! calldir-tail
.veccpy.2917:
	lwcl	$f0, 0($r3)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r2)
	jr	$r31
.vecunit_sgn.2925:
	lwcl	$f0, 0($r2)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lwcl	$f2, -12($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9816
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, .beq_else.9818
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -20($r29)
	div.s	$f0, $f0, $f2
	j	.beq_cont.9819
.beq_else.9818:
	lfh	$f0, 49024
	lfl	$f0, 0
	lwcl	$f2, -20($r29)
	div.s	$f0, $f0, $f2
.beq_cont.9819:
	j	.beq_cont.9817
.beq_else.9816:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.9817:
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f2, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.veciprod.2928:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 0($r3)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	jr	$r31
.veciprod2.2931:
	lwcl	$f6, 0($r2)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 4($r2)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	jr	$r31
.vecaccum.2936:
	lwcl	$f2, 0($r2)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f0, $f4
	add.s	$f2, $f2, $f4
	swcl	$f2, 0($r2)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f0, $f4
	add.s	$f2, $f2, $f4
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r3)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f2, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.vecadd.2940:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 0($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r2)
	lwcl	$f2, 4($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r2)
	lwcl	$f2, 8($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.vecscale.2946:
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f2, $f0
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f2, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.vecaccumv.2949:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 0($r3)
	lwcl	$f4, 0($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r2)
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r2)
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.o_texturetype.2953:
	lw	$r2, 0($r2)
	jr	$r31
.o_form.2955:
	lw	$r2, 4($r2)
	jr	$r31
.o_reflectiontype.2957:
	lw	$r2, 8($r2)
	jr	$r31
.o_isinvert.2959:
	lw	$r2, 24($r2)
	jr	$r31
.o_isrot.2961:
	lw	$r2, 12($r2)
	jr	$r31
.o_param_a.2963:
	lw	$r2, 16($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
.o_param_b.2965:
	lw	$r2, 16($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
.o_param_c.2967:
	lw	$r2, 16($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
.o_param_abc.2969:
	lw	$r2, 16($r2)
	jr	$r31
.o_param_x.2971:
	lw	$r2, 20($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
.o_param_y.2973:
	lw	$r2, 20($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
.o_param_z.2975:
	lw	$r2, 20($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
.o_diffuse.2977:
	lw	$r2, 28($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
.o_hilight.2979:
	lw	$r2, 28($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
.o_color_red.2981:
	lw	$r2, 32($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
.o_color_green.2983:
	lw	$r2, 32($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
.o_color_blue.2985:
	lw	$r2, 32($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
.o_param_r1.2987:
	lw	$r2, 36($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
.o_param_r2.2989:
	lw	$r2, 36($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
.o_param_r3.2991:
	lw	$r2, 36($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
.o_param_ctbl.2993:
	lw	$r2, 40($r2)
	jr	$r31
.p_rgb.2995:
	lw	$r2, 0($r2)
	jr	$r31
.p_intersection_points.2997:
	lw	$r2, 4($r2)
	jr	$r31
.p_surface_ids.2999:
	lw	$r2, 8($r2)
	jr	$r31
.p_calc_diffuse.3001:
	lw	$r2, 12($r2)
	jr	$r31
.p_energy.3003:
	lw	$r2, 16($r2)
	jr	$r31
.p_received_ray_20percent.3005:
	lw	$r2, 20($r2)
	jr	$r31
.p_group_id.3007:
	lw	$r2, 24($r2)
	lw	$r2, 0($r2)
	jr	$r31
.p_set_group_id.3009:
	lw	$r2, 24($r2)
	sw	$r3, 0($r2)
	jr	$r31
.p_nvectors.3012:
	lw	$r2, 28($r2)
	jr	$r31
.d_vec.3014:
	lw	$r2, 0($r2)
	jr	$r31
.d_const.3016:
	lw	$r2, 4($r2)
	jr	$r31
.r_surface_id.3018:
	lw	$r2, 0($r2)
	jr	$r31
.r_dvec.3020:
	lw	$r2, 4($r2)
	jr	$r31
.r_bright.3022:
	lwcl	$f0, 8($r2)
	jr	$r31
.rad.3024:
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	jr	$r31
.read_screen_settings.3026:
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
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9827	! callcls
	j	.mendoi1.9826	! callcls
.mendoi2.9827:	! callcls
	jr	$r27	! callcls
.mendoi1.9826:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9829	! callcls
	j	.mendoi1.9828	! callcls
.mendoi2.9829:	! callcls
	jr	$r27	! callcls
.mendoi1.9828:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9831	! callcls
	j	.mendoi1.9830	! callcls
.mendoi2.9831:	! callcls
	jr	$r27	! callcls
.mendoi1.9830:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9833	! callcls
	j	.mendoi1.9832	! callcls
.mendoi2.9833:	! callcls
	jr	$r27	! callcls
.mendoi1.9832:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r28, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.9835	! callcls
	j	.mendoi1.9834	! callcls
.mendoi2.9835:	! callcls
	jr	$r27	! callcls
.mendoi1.9834:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	swcl	$f0, -44($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f4, $f2, $f0
	lfh	$f6, 17224
	lfl	$f6, 0
	mul.s	$f4, $f4, $f6
	lw	$r2, -16($r29)
	swcl	$f4, 0($r2)
	lfh	$f4, 49992
	lfl	$f4, 0
	lwcl	$f6, -36($r29)
	mul.s	$f4, $f6, $f4
	swcl	$f4, 4($r2)
	lwcl	$f4, -44($r29)
	mul.s	$f8, $f2, $f4
	lfh	$f10, 17224
	lfl	$f10, 0
	mul.s	$f8, $f8, $f10
	swcl	$f8, 8($r2)
	lw	$r3, -12($r29)
	swcl	$f4, 0($r3)
	lfh	$f8, 0
	lfl	$f8, 0
	swcl	$f8, 4($r3)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -36($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -32($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -36($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -24($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -16($r29)
	lwcl	$f2, 0($r3)
	sub.s	$f0, $f0, $f2
	lw	$r4, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r2)
	lwcl	$f2, 8($r3)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 8($r4)
	jr	$r31
.read_light.3028:
	lw	$r2, 16($r28)
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r2, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9838	! callcls
	j	.mendoi1.9837	! callcls
.mendoi2.9838:	! callcls
	jr	$r27	! callcls
.mendoi1.9837:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r28, -12($r29)
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9840	! callcls
	j	.mendoi1.9839	! callcls
.mendoi2.9840:	! callcls
	jr	$r27	! callcls
.mendoi1.9839:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.9842	! callcls
	j	.mendoi1.9841	! callcls
.mendoi2.9842:	! callcls
	jr	$r27	! callcls
.mendoi1.9841:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -20($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9844	! callcls
	j	.mendoi1.9843	! callcls
.mendoi2.9844:	! callcls
	jr	$r27	! callcls
.mendoi1.9843:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	jr	$r31
.rotate_quadratic_matrix.3030:
	lwcl	$f0, 0($r3)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	lwcl	$f4, -20($r29)
	mul.s	$f6, $f4, $f2
	lwcl	$f8, -24($r29)
	lwcl	$f10, -16($r29)
	mul.s	$f12, $f10, $f8
	mul.s	$f12, $f12, $f2
	lwcl	$f14, -12($r29)
	mul.s	$f16, $f14, $f0
	sub.s	$f12, $f12, $f16
	mul.s	$f16, $f14, $f8
	mul.s	$f16, $f16, $f2
	mul.s	$f18, $f10, $f0
	add.s	$f16, $f16, $f18
	mul.s	$f18, $f4, $f0
	mul.s	$f20, $f10, $f8
	mul.s	$f20, $f20, $f0
	mul.s	$f22, $f14, $f2
	add.s	$f20, $f20, $f22
	mul.s	$f22, $f14, $f8
	mul.s	$f0, $f22, $f0
	mul.s	$f2, $f10, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -32($r29)
	swcl	$f16, -36($r29)
	swcl	$f20, -40($r29)
	swcl	$f12, -44($r29)
	swcl	$f18, -48($r29)
	swcl	$f6, -52($r29)
	fmove	$f0, $f8	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -20($r29)
	lwcl	$f4, -16($r29)
	mul.s	$f4, $f4, $f2
	lwcl	$f6, -12($r29)
	mul.s	$f2, $f6, $f2
	lw	$r2, -4($r29)
	lwcl	$f6, 0($r2)
	lwcl	$f8, 4($r2)
	lwcl	$f10, 8($r2)
	lwcl	$f12, -52($r29)
	swcl	$f2, -56($r29)
	swcl	$f4, -60($r29)
	swcl	$f10, -64($r29)
	swcl	$f0, -68($r29)
	swcl	$f8, -72($r29)
	swcl	$f6, -76($r29)
	fmove	$f0, $f12	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -48($r29)
	swcl	$f0, -80($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -80($r29)
	add.s	$f0, $f4, $f0
	lwcl	$f4, -68($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -84($r29)
	add.s	$f0, $f4, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -44($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -40($r29)
	swcl	$f0, -88($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -88($r29)
	add.s	$f0, $f4, $f0
	lwcl	$f4, -60($r29)
	swcl	$f0, -92($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -92($r29)
	add.s	$f0, $f4, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -36($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -32($r29)
	swcl	$f0, -96($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -96($r29)
	add.s	$f0, $f4, $f0
	lwcl	$f4, -56($r29)
	swcl	$f0, -100($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -100($r29)
	add.s	$f0, $f4, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
	lfh	$f0, 16384
	lfl	$f0, 0
	lwcl	$f4, -44($r29)
	lwcl	$f6, -76($r29)
	mul.s	$f8, $f6, $f4
	lwcl	$f10, -36($r29)
	mul.s	$f8, $f8, $f10
	lwcl	$f12, -40($r29)
	lwcl	$f14, -72($r29)
	mul.s	$f16, $f14, $f12
	lwcl	$f18, -32($r29)
	mul.s	$f16, $f16, $f18
	add.s	$f8, $f8, $f16
	lwcl	$f16, -60($r29)
	mul.s	$f20, $f2, $f16
	lwcl	$f22, -56($r29)
	mul.s	$f20, $f20, $f22
	add.s	$f8, $f8, $f20
	mul.s	$f0, $f0, $f8
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lfh	$f0, 16384
	lfl	$f0, 0
	lwcl	$f8, -52($r29)
	mul.s	$f20, $f6, $f8
	mul.s	$f10, $f20, $f10
	lwcl	$f20, -48($r29)
	mul.s	$f24, $f14, $f20
	mul.s	$f18, $f24, $f18
	add.s	$f10, $f10, $f18
	lwcl	$f18, -68($r29)
	mul.s	$f24, $f2, $f18
	mul.s	$f22, $f24, $f22
	add.s	$f10, $f10, $f22
	mul.s	$f0, $f0, $f10
	swcl	$f0, 4($r2)
	lfh	$f0, 16384
	lfl	$f0, 0
	mul.s	$f6, $f6, $f8
	mul.s	$f4, $f6, $f4
	mul.s	$f6, $f14, $f20
	mul.s	$f6, $f6, $f12
	add.s	$f4, $f4, $f6
	mul.s	$f2, $f2, $f18
	mul.s	$f2, $f2, $f16
	add.s	$f2, $f4, $f2
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.read_nth_object.3033:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r5, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.9848	! callcls
	j	.mendoi1.9847	! callcls
.mendoi2.9848:	! callcls
	jr	$r27	! callcls
.mendoi1.9847:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.9849
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9849:
	lw	$r28, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9851	! callcls
	j	.mendoi1.9850	! callcls
.mendoi2.9851:	! callcls
	jr	$r27	! callcls
.mendoi1.9850:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9853	! callcls
	j	.mendoi1.9852	! callcls
.mendoi2.9853:	! callcls
	jr	$r27	! callcls
.mendoi1.9852:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.9855	! callcls
	j	.mendoi1.9854	! callcls
.mendoi2.9855:	! callcls
	jr	$r27	! callcls
.mendoi1.9854:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.9857	! callcls
	j	.mendoi1.9856	! callcls
.mendoi2.9857:	! callcls
	jr	$r27	! callcls
.mendoi1.9856:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.9859	! callcls
	j	.mendoi1.9858	! callcls
.mendoi2.9859:	! callcls
	jr	$r27	! callcls
.mendoi1.9858:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.9861	! callcls
	j	.mendoi1.9860	! callcls
.mendoi2.9861:	! callcls
	jr	$r27	! callcls
.mendoi1.9860:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.9863	! callcls
	j	.mendoi1.9862	! callcls
.mendoi2.9863:	! callcls
	jr	$r27	! callcls
.mendoi1.9862:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.9865	! callcls
	j	.mendoi1.9864	! callcls
.mendoi2.9865:	! callcls
	jr	$r27	! callcls
.mendoi1.9864:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.9867	! callcls
	j	.mendoi1.9866	! callcls
.mendoi2.9867:	! callcls
	jr	$r27	! callcls
.mendoi1.9866:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.9869	! callcls
	j	.mendoi1.9868	! callcls
.mendoi2.9869:	! callcls
	jr	$r27	! callcls
.mendoi1.9868:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 2
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.9871	! callcls
	j	.mendoi1.9870	! callcls
.mendoi2.9871:	! callcls
	jr	$r27	! callcls
.mendoi1.9870:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.9873	! callcls
	j	.mendoi1.9872	! callcls
.mendoi2.9873:	! callcls
	jr	$r27	! callcls
.mendoi1.9872:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.9875	! callcls
	j	.mendoi1.9874	! callcls
.mendoi2.9875:	! callcls
	jr	$r27	! callcls
.mendoi1.9874:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.9877	! callcls
	j	.mendoi1.9876	! callcls
.mendoi2.9877:	! callcls
	jr	$r27	! callcls
.mendoi1.9876:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.9879	! callcls
	j	.mendoi1.9878	! callcls
.mendoi2.9879:	! callcls
	jr	$r27	! callcls
.mendoi1.9878:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	bne	$r4, $r3, .beq_else.9880
	j	.beq_cont.9881
.beq_else.9880:
	lw	$r28, -12($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.9883	! callcls
	j	.mendoi1.9882	! callcls
.mendoi2.9883:	! callcls
	jr	$r27	! callcls
.mendoi1.9882:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.9885	! callcls
	j	.mendoi1.9884	! callcls
.mendoi2.9885:	! callcls
	jr	$r27	! callcls
.mendoi1.9884:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.9887	! callcls
	j	.mendoi1.9886	! callcls
.mendoi2.9887:	! callcls
	jr	$r27	! callcls
.mendoi1.9886:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.rad.3024	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 8($r2)
.beq_cont.9881:
	addi	$r3, $r0, 2
	lw	$r4, -24($r29)
	bne	$r4, $r3, .beq_else.9888
	addi	$r3, $r0, 1
	j	.beq_cont.9889
.beq_else.9888:
	lw	$r3, -44($r29)
.beq_cont.9889:
	addi	$r5, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -60($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -56($r29)
	sw	$r2, 36($r3)
	lw	$r4, -52($r29)
	sw	$r4, 32($r3)
	lw	$r4, -48($r29)
	sw	$r4, 28($r3)
	lw	$r4, -60($r29)
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
	addu	$r1, $r8, $r7
	sw	$r3, 0($r1)
	addi	$r3, $r0, 3
	bne	$r6, $r3, .beq_else.9890
	lwcl	$f0, 0($r4)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9892
	lwcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.sgn.2899	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	swcl	$f0, -68($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -68($r29)
	div.s	$f0, $f2, $f0
	j	.beq_cont.9893
.beq_else.9892:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.9893:
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r2)
	swcl	$f0, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9894
	lwcl	$f0, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.sgn.2899	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	swcl	$f0, -76($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	div.s	$f0, $f2, $f0
	j	.beq_cont.9895
.beq_else.9894:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.9895:
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r2)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9896
	lwcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.sgn.2899	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -80($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -84($r29)
	div.s	$f0, $f2, $f0
	j	.beq_cont.9897
.beq_else.9896:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.9897:
	lw	$r2, -36($r29)
	swcl	$f0, 8($r2)
	j	.beq_cont.9891
.beq_else.9890:
	addi	$r3, $r0, 2
	bne	$r6, $r3, .beq_else.9898
	addi	$r3, $r0, 0
	lw	$r6, -44($r29)
	bne	$r6, $r3, .beq_else.9900
	addi	$r3, $r0, 1
	j	.beq_cont.9901
.beq_else.9900:
	addi	$r3, $r0, 0
.beq_cont.9901:
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.vecunit_sgn.2925	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	j	.beq_cont.9899
.beq_else.9898:
.beq_cont.9899:
.beq_cont.9891:
	addi	$r2, $r0, 0
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.9902
	j	.beq_cont.9903
.beq_else.9902:
	lw	$r2, -36($r29)
	lw	$r3, -56($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.rotate_quadratic_matrix.3030	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
.beq_cont.9903:
	addi	$r2, $r0, 1
	jr	$r31
.read_object.3035:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 60
	bgt	$r5, $r2, .ble_else.9904
	jr	$r31
.ble_else.9904:
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9907	! callcls
	j	.mendoi1.9906	! callcls
.mendoi2.9907:	! callcls
	jr	$r27	! callcls
.mendoi1.9906:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9908
	lw	$r2, -8($r29)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.9908:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_all_object.3037:
	lw	$r28, 4($r28)
	addi	$r2, $r0, 0
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_net_item.3039:
	lw	$r3, 4($r28)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	.mendoi2.9911	! callcls
	j	.mendoi1.9910	! callcls
.mendoi2.9911:	! callcls
	jr	$r27	! callcls
.mendoi1.9910:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.9912
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	.min_caml_create_array	! calldir-tail
.beq_else.9912:
	lw	$r3, -8($r29)
	addi	$r4, $r3, 1
	lw	$r28, -4($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9914	! callcls
	j	.mendoi1.9913	! callcls
.mendoi2.9914:	! callcls
	jr	$r27	! callcls
.mendoi1.9913:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_or_network.3041:
	lw	$r3, 4($r28)
	addi	$r4, $r0, 0
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	.mendoi2.9916	! callcls
	j	.mendoi1.9915	! callcls
.mendoi2.9916:	! callcls
	jr	$r27	! callcls
.mendoi1.9915:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, .beq_else.9917
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	j	.min_caml_create_array	! calldir-tail
.beq_else.9917:
	lw	$r2, -8($r29)
	addi	$r4, $r2, 1
	lw	$r28, -4($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9919	! callcls
	j	.mendoi1.9918	! callcls
.mendoi2.9919:	! callcls
	jr	$r27	! callcls
.mendoi1.9918:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_and_network.3043:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.9921	! callcls
	j	.mendoi1.9920	! callcls
.mendoi2.9921:	! callcls
	jr	$r27	! callcls
.mendoi1.9920:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.9922
	jr	$r31
.beq_else.9922:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_parameter.3045:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	sw	$r7, -4($r29)
	sw	$r3, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r4, -20($r29)
	addi	$r28, $r2, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9925	! callcls
	j	.mendoi1.9924	! callcls
.mendoi2.9925:	! callcls
	jr	$r27	! callcls
.mendoi1.9924:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9927	! callcls
	j	.mendoi1.9926	! callcls
.mendoi2.9927:	! callcls
	jr	$r27	! callcls
.mendoi1.9926:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9929	! callcls
	j	.mendoi1.9928	! callcls
.mendoi2.9929:	! callcls
	jr	$r27	! callcls
.mendoi1.9928:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -12($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9931	! callcls
	j	.mendoi1.9930	! callcls
.mendoi2.9931:	! callcls
	jr	$r27	! callcls
.mendoi1.9930:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.9933	! callcls
	j	.mendoi1.9932	! callcls
.mendoi2.9933:	! callcls
	jr	$r27	! callcls
.mendoi1.9932:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.solver_rect_surface.3047:
	lw	$r7, 4($r28)
	sll	$r8, $r4, 2
	addu	$r1, $r3, $r8
	lwcl	$f6, 0($r1)
	sw	$r7, -4($r29)
	swcl	$f4, -8($r29)
	sw	$r6, -12($r29)
	swcl	$f2, -16($r29)
	sw	$r5, -20($r29)
	swcl	$f0, -24($r29)
	sw	$r3, -28($r29)
	sw	$r4, -32($r29)
	sw	$r2, -36($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9935
	lw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_abc.2969	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4
	lwcl	$f0, 0($r1)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	lwcl	$f0, 0($r1)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fneg_cond.2901	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f0, $f2
	lw	$r2, -32($r29)
	sll	$r2, $r2, 2
	lw	$r3, -28($r29)
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	div.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4
	lwcl	$f2, 0($r1)
	mul.s	$f2, $f0, $f2
	lwcl	$f4, -16($r29)
	add.s	$f2, $f2, $f4
	swcl	$f0, -48($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -20($r29)
	sll	$r2, $r2, 2
	lw	$r3, -40($r29)
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9936
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9936:
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lwcl	$f0, 0($r1)
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -8($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r2, $r2, 2
	lw	$r3, -40($r29)
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9937
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9937:
	lw	$r2, -4($r29)
	lwcl	$f0, -48($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.9935:
	addi	$r2, $r0, 0
	jr	$r31
.solver_rect.3056:
	lw	$r28, 4($r28)
	addi	$r4, $r0, 0
	addi	$r5, $r0, 1
	addi	$r6, $r0, 2
	swcl	$f0, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r28, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9939	! callcls
	j	.mendoi1.9938	! callcls
.mendoi2.9939:	! callcls
	jr	$r27	! callcls
.mendoi1.9938:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9940
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lwcl	$f0, -12($r29)
	lwcl	$f2, -8($r29)
	lwcl	$f4, -4($r29)
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r28, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9942	! callcls
	j	.mendoi1.9941	! callcls
.mendoi2.9942:	! callcls
	jr	$r27	! callcls
.mendoi1.9941:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9943
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lwcl	$f0, -8($r29)
	lwcl	$f2, -4($r29)
	lwcl	$f4, -12($r29)
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r28, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.9945	! callcls
	j	.mendoi1.9944	! callcls
.mendoi2.9945:	! callcls
	jr	$r27	! callcls
.mendoi1.9944:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9946
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9946:
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.9943:
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.9940:
	addi	$r2, $r0, 1
	jr	$r31
.solver_surface.3062:
	lw	$r4, 4($r28)
	sw	$r4, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_abc.2969	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9947
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9947:
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.veciprod2.2931	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.quadratic.3068:
	swcl	$f0, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -12($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -8($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -32($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -16($r29)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_isrot.2961	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9948
	lwcl	$f0, -40($r29)
	jr	$r31
.beq_else.9948:
	lwcl	$f0, -8($r29)
	lwcl	$f2, -12($r29)
	mul.s	$f4, $f2, $f0
	lw	$r2, -16($r29)
	swcl	$f4, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -40($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -4($r29)
	lwcl	$f4, -8($r29)
	mul.s	$f4, $f4, $f2
	lw	$r2, -16($r29)
	swcl	$f0, -48($r29)
	swcl	$f4, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -48($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -12($r29)
	lwcl	$f4, -4($r29)
	mul.s	$f2, $f4, $f2
	lw	$r2, -16($r29)
	swcl	$f0, -56($r29)
	swcl	$f2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	jr	$r31
.bilinear.3073:
	mul.s	$f12, $f0, $f6
	swcl	$f6, -4($r29)
	swcl	$f0, -8($r29)
	swcl	$f10, -12($r29)
	swcl	$f4, -16($r29)
	sw	$r2, -20($r29)
	swcl	$f8, -24($r29)
	swcl	$f2, -28($r29)
	swcl	$f12, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	mul.s	$f6, $f4, $f2
	lw	$r2, -20($r29)
	swcl	$f0, -36($r29)
	swcl	$f6, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -36($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -12($r29)
	lwcl	$f4, -16($r29)
	mul.s	$f6, $f4, $f2
	lw	$r2, -20($r29)
	swcl	$f0, -44($r29)
	swcl	$f6, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -44($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_isrot.2961	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9949
	lwcl	$f0, -52($r29)
	jr	$r31
.beq_else.9949:
	lwcl	$f0, -24($r29)
	lwcl	$f2, -16($r29)
	mul.s	$f4, $f2, $f0
	lwcl	$f6, -12($r29)
	lwcl	$f8, -28($r29)
	mul.s	$f10, $f8, $f6
	add.s	$f4, $f4, $f10
	lw	$r2, -20($r29)
	swcl	$f4, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	mul.s	$f2, $f4, $f2
	lwcl	$f6, -4($r29)
	lwcl	$f8, -16($r29)
	mul.s	$f8, $f8, $f6
	add.s	$f2, $f2, $f8
	lw	$r2, -20($r29)
	swcl	$f0, -60($r29)
	swcl	$f2, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	lwcl	$f4, -8($r29)
	mul.s	$f2, $f4, $f2
	lwcl	$f4, -4($r29)
	lwcl	$f6, -28($r29)
	mul.s	$f4, $f6, $f4
	add.s	$f2, $f2, $f4
	lw	$r2, -20($r29)
	swcl	$f0, -68($r29)
	swcl	$f2, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -68($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -52($r29)
	add.s	$f0, $f2, $f0
	jr	$r31
.solver_second.3081:
	lw	$r4, 4($r28)
	lwcl	$f6, 0($r3)
	lwcl	$f8, 4($r3)
	lwcl	$f10, 8($r3)
	sw	$r4, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	fmove	$f4, $f10	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f6	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9950
	lw	$r2, -24($r29)
	lwcl	$f0, 0($r2)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 8($r2)
	lwcl	$f6, -16($r29)
	lwcl	$f8, -12($r29)
	lwcl	$f10, -8($r29)
	lw	$r2, -20($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.bilinear.3073	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -16($r29)
	lwcl	$f4, -12($r29)
	lwcl	$f6, -8($r29)
	lw	$r2, -20($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, .beq_else.9951
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	j	.beq_cont.9952
.beq_else.9951:
	lwcl	$f0, -36($r29)
.beq_cont.9952:
	lwcl	$f2, -32($r29)
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -28($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9953
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9953:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9954
	lwcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	j	.beq_cont.9955
.beq_else.9954:
	lwcl	$f0, -48($r29)
.beq_cont.9955:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, -28($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.9950:
	addi	$r2, $r0, 0
	jr	$r31
.solver.3087:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r2, $r2, 2
	addu	$r1, $r8, $r2
	lw	$r2, 0($r1)
	lwcl	$f0, 0($r4)
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r7, -16($r29)
	sw	$r2, -20($r29)
	sw	$r4, -24($r29)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -24($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -20($r29)
	swcl	$f0, -32($r29)
	swcl	$f2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -24($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -20($r29)
	swcl	$f0, -40($r29)
	swcl	$f2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.9956
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9956:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.9957
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9957:
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_rect_fast.3091:
	lw	$r5, 4($r28)
	lwcl	$f6, 0($r4)
	sub.s	$f6, $f6, $f0
	lwcl	$f8, 4($r4)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f2
	sw	$r5, -4($r29)
	swcl	$f0, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r4, -16($r29)
	swcl	$f4, -20($r29)
	swcl	$f6, -24($r29)
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	fmove	$f0, $f8	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9958
	addi	$r2, $r0, 0
	j	.beq_cont.9959
.beq_else.9958:
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -20($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9960
	addi	$r2, $r0, 0
	j	.beq_cont.9961
.beq_else.9960:
	lw	$r2, -16($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9962
	addi	$r2, $r0, 1
	j	.beq_cont.9963
.beq_else.9962:
	addi	$r2, $r0, 0
.beq_cont.9963:
.beq_cont.9961:
.beq_cont.9959:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9964
	lw	$r2, -16($r29)
	lwcl	$f0, 8($r2)
	lwcl	$f2, -12($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f4, 12($r2)
	mul.s	$f0, $f0, $f4
	lw	$r3, -28($r29)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f0, $f4
	lwcl	$f6, -8($r29)
	add.s	$f4, $f4, $f6
	swcl	$f0, -44($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9965
	addi	$r2, $r0, 0
	j	.beq_cont.9966
.beq_else.9965:
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -20($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9967
	addi	$r2, $r0, 0
	j	.beq_cont.9968
.beq_else.9967:
	lw	$r2, -16($r29)
	lwcl	$f0, 12($r2)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9969
	addi	$r2, $r0, 1
	j	.beq_cont.9970
.beq_else.9969:
	addi	$r2, $r0, 0
.beq_cont.9970:
.beq_cont.9968:
.beq_cont.9966:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9971
	lw	$r2, -16($r29)
	lwcl	$f0, 16($r2)
	lwcl	$f2, -20($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 20($r2)
	mul.s	$f0, $f0, $f2
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	mul.s	$f2, $f0, $f2
	lwcl	$f4, -8($r29)
	add.s	$f2, $f2, $f4
	swcl	$f0, -56($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9972
	addi	$r2, $r0, 0
	j	.beq_cont.9973
.beq_else.9972:
	lw	$r2, -28($r29)
	lwcl	$f0, 4($r2)
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -12($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9974
	addi	$r2, $r0, 0
	j	.beq_cont.9975
.beq_else.9974:
	lw	$r2, -16($r29)
	lwcl	$f0, 20($r2)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9976
	addi	$r2, $r0, 1
	j	.beq_cont.9977
.beq_else.9976:
	addi	$r2, $r0, 0
.beq_cont.9977:
.beq_cont.9975:
.beq_cont.9973:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9978
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9978:
	lw	$r2, -4($r29)
	lwcl	$f0, -56($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.9971:
	lw	$r2, -4($r29)
	lwcl	$f0, -44($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.9964:
	lw	$r2, -4($r29)
	lwcl	$f0, -24($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.solver_surface_fast.3098:
	lw	$r2, 4($r28)
	lwcl	$f6, 0($r3)
	sw	$r2, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r3, -20($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9979
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9979:
	lw	$r2, -20($r29)
	lwcl	$f0, 4($r2)
	lwcl	$f2, -16($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, -12($r29)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r2)
	lwcl	$f4, -8($r29)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.solver_second_fast.3104:
	lw	$r4, 4($r28)
	lwcl	$f6, 0($r3)
	sw	$r4, -4($r29)
	swcl	$f6, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f4, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	sw	$r3, -28($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9980
	lw	$r2, -28($r29)
	lwcl	$f0, 4($r2)
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f4, 8($r2)
	lwcl	$f6, -20($r29)
	mul.s	$f4, $f4, $f6
	add.s	$f0, $f0, $f4
	lwcl	$f4, 12($r2)
	lwcl	$f8, -16($r29)
	mul.s	$f4, $f4, $f8
	add.s	$f0, $f0, $f4
	lw	$r3, -12($r29)
	swcl	$f0, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	fmove	$f4, $f8	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f6	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, .beq_else.9981
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	j	.beq_cont.9982
.beq_else.9981:
	lwcl	$f0, -36($r29)
.beq_cont.9982:
	lwcl	$f2, -32($r29)
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -8($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9983
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9983:
	lw	$r2, -12($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9984
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	.beq_cont.9985
.beq_else.9984:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -32($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
.beq_cont.9985:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.9980:
	addi	$r2, $r0, 0
	jr	$r31
.solver_fast.3110:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r8, $r9
	lw	$r8, 0($r1)
	lwcl	$f0, 0($r4)
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r7, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	sw	$r8, -24($r29)
	sw	$r4, -28($r29)
	swcl	$f0, -32($r29)
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -24($r29)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -24($r29)
	swcl	$f0, -44($r29)
	swcl	$f2, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.d_const.3016	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	lw	$r3, -24($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.9986
	lw	$r2, -20($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lwcl	$f0, -36($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -24($r29)
	lw	$r4, -56($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9986:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.9987
	lwcl	$f0, -36($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -24($r29)
	lw	$r3, -56($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9987:
	lwcl	$f0, -36($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -24($r29)
	lw	$r3, -56($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_surface_fast2.3114:
	lw	$r2, 4($r28)
	lwcl	$f0, 0($r3)
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9988
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9988:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 12($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.solver_second_fast2.3121:
	lw	$r5, 4($r28)
	lwcl	$f6, 0($r3)
	sw	$r5, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f6, -12($r29)
	sw	$r4, -16($r29)
	swcl	$f4, -20($r29)
	swcl	$f2, -24($r29)
	swcl	$f0, -28($r29)
	sw	$r3, -32($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9989
	lw	$r2, -32($r29)
	lwcl	$f0, 4($r2)
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, -24($r29)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r2)
	lwcl	$f4, -20($r29)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lw	$r3, -16($r29)
	lwcl	$f2, 12($r3)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -12($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9990
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.9990:
	lw	$r2, -8($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9991
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -32($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	.beq_cont.9992
.beq_else.9991:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -32($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
.beq_cont.9992:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.9989:
	addi	$r2, $r0, 0
	jr	$r31
.solver_fast2.3128:
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	sll	$r8, $r2, 2
	addu	$r1, $r7, $r8
	lw	$r7, 0($r1)
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r6, -12($r29)
	sw	$r7, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_param_ctbl.2993	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f0, 0($r2)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 8($r2)
	lw	$r3, -24($r29)
	sw	$r2, -28($r29)
	swcl	$f4, -32($r29)
	swcl	$f2, -36($r29)
	swcl	$f0, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.d_const.3016	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	lw	$r3, -16($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.9993
	lw	$r2, -24($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	lw	$r2, -16($r29)
	lw	$r4, -44($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9993:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.9994
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	lw	$r2, -16($r29)
	lw	$r3, -44($r29)
	lw	$r4, -28($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.9994:
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	lw	$r2, -16($r29)
	lw	$r3, -44($r29)
	lw	$r4, -28($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.setup_rect_table.3131:
	addi	$r4, $r0, 6
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9995
	lw	$r2, -4($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fneg_cond.2901	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -8($r29)
	lwcl	$f2, 0($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 4($r2)
	j	.beq_cont.9996
.beq_else.9995:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 4($r2)
.beq_cont.9996:
	lw	$r3, -8($r29)
	lwcl	$f0, 4($r3)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9997
	lw	$r2, -4($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 4($r3)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fneg_cond.2901	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -8($r29)
	lwcl	$f2, 4($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 12($r2)
	j	.beq_cont.9998
.beq_else.9997:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
.beq_cont.9998:
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.9999
	lw	$r2, -4($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg_cond.2901	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 16($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -8($r29)
	lwcl	$f2, 8($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 20($r2)
	j	.beq_cont.10000
.beq_else.9999:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 20($r2)
.beq_cont.10000:
	jr	$r31
.setup_surface_table.3134:
	addi	$r4, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -4($r29)
	sw	$r2, -12($r29)
	swcl	$f0, -16($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -20($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -4($r29)
	swcl	$f0, -28($r29)
	swcl	$f2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -28($r29)
	add.s	$f0, $f2, $f0
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10001
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	j	.beq_cont.10002
.beq_else.10001:
	lfh	$f0, 49024
	lfl	$f0, 0
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
.beq_cont.10002:
	jr	$r31
.setup_second_table.3137:
	addi	$r4, $r0, 5
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f2, 4($r3)
	lwcl	$f4, 8($r3)
	lw	$r4, -4($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -24($r29)
	swcl	$f2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -32($r29)
	swcl	$f2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, -16($r29)
	swcl	$f2, 0($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_isrot.2961	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10003
	lw	$r2, -12($r29)
	lwcl	$f0, -24($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -40($r29)
	swcl	$f0, 12($r2)
	j	.beq_cont.10004
.beq_else.10003:
	lw	$r2, -8($r29)
	lwcl	$f0, 8($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -48($r29)
	swcl	$f2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -48($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	lw	$r4, -4($r29)
	swcl	$f0, -56($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -60($r29)
	swcl	$f2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -8($r29)
	lwcl	$f0, 4($r3)
	lw	$r4, -4($r29)
	swcl	$f0, -68($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -68($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	lw	$r2, -4($r29)
	swcl	$f0, -72($r29)
	swcl	$f2, -76($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
.beq_cont.10004:
	lwcl	$f0, -16($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.fiszero.2790	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10005
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -16($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -12($r29)
	swcl	$f0, 16($r2)
	j	.beq_cont.10006
.beq_else.10005:
.beq_cont.10006:
	lw	$r2, -12($r29)
	jr	$r31
.iter_setup_dirvec_constants.3140:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.10007
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.d_const.3016	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.10008
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.10009
.beq_else.10008:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.10010
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.10011
.beq_else.10010:
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.10011:
.beq_cont.10009:
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10007:
	jr	$r31
.setup_dirvec_constants.3143:
	lw	$r3, 8($r28)
	lw	$r28, 4($r28)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.setup_startp_constants.3145:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.10013
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_ctbl.2993	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -16($r29)
	sw	$r2, -24($r29)
	swcl	$f0, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -12($r29)
	lwcl	$f0, 4($r3)
	lw	$r4, -16($r29)
	swcl	$f0, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -12($r29)
	lwcl	$f0, 8($r3)
	lw	$r4, -16($r29)
	swcl	$f0, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 2
	lw	$r4, -24($r29)
	bne	$r4, $r3, .beq_else.10014
	lw	$r3, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_abc.2969	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f2, 4($r3)
	lwcl	$f4, 8($r3)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.veciprod2.2931	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, 12($r2)
	j	.beq_cont.10015
.beq_else.10014:
	addi	$r3, $r0, 2
	bgt	$r4, $r3, .ble_else.10016
	j	.ble_cont.10017
.ble_else.10016:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 8($r2)
	lw	$r3, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	bne	$r3, $r2, .beq_else.10018
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.10019
.beq_else.10018:
.beq_cont.10019:
	lw	$r2, -20($r29)
	swcl	$f0, 12($r2)
.ble_cont.10017:
.beq_cont.10015:
	lw	$r2, -8($r29)
	addi	$r3, $r2, -1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10013:
	jr	$r31
.setup_startp.3148:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.is_rect_outside.3150:
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10021
	addi	$r2, $r0, 0
	j	.beq_cont.10022
.beq_else.10021:
	lwcl	$f0, -8($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10023
	addi	$r2, $r0, 0
	j	.beq_cont.10024
.beq_else.10023:
	lwcl	$f0, -4($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
.beq_cont.10024:
.beq_cont.10022:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10025
	lw	$r2, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10026
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.10026:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10025:
	lw	$r2, -12($r29)
	j	.o_isinvert.2959	! calldir-tail
.is_plane_outside.3155:
	sw	$r2, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_abc.2969	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.veciprod2.2931	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -4($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f0, -20($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10027
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.10027:
	addi	$r2, $r0, 0
	jr	$r31
.is_second_outside.3160:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, .beq_else.10028
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	j	.beq_cont.10029
.beq_else.10028:
	lwcl	$f0, -8($r29)
.beq_cont.10029:
	lw	$r2, -4($r29)
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lwcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.xor.2896	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10030
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.10030:
	addi	$r2, $r0, 0
	jr	$r31
.is_outside.3165:
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -4($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.10031
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	.is_rect_outside.3150	! calldir-tail
.beq_else.10031:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.10032
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	.is_plane_outside.3155	! calldir-tail
.beq_else.10032:
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	.is_second_outside.3160	! calldir-tail
.check_all_inside.3170:
	lw	$r4, 4($r28)
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5
	lw	$r5, 0($r1)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.10033
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.10033:
	sll	$r5, $r5, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10034
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lwcl	$f0, -12($r29)
	lwcl	$f2, -8($r29)
	lwcl	$f4, -4($r29)
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10034:
	addi	$r2, $r0, 0
	jr	$r31
.shadow_check_and_group.3176:
	lw	$r4, 28($r28)
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	sll	$r11, $r2, 2
	addu	$r1, $r3, $r11
	lw	$r11, 0($r1)
	addi	$r12, $r0, -1
	bne	$r11, $r12, .beq_else.10035
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10035:
	sll	$r11, $r2, 2
	addu	$r1, $r3, $r11
	lw	$r11, 0($r1)
	sw	$r10, -4($r29)
	sw	$r9, -8($r29)
	sw	$r8, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	sw	$r6, -28($r29)
	sw	$r11, -32($r29)
	sw	$r5, -36($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r9, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.10037	! callcls
	j	.mendoi1.10036	! callcls
.mendoi2.10037:	! callcls
	jr	$r27	! callcls
.mendoi1.10036:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	addi	$r3, $r0, 0
	swcl	$f0, -40($r29)
	bne	$r2, $r3, .beq_else.10038
	addi	$r2, $r0, 0
	j	.beq_cont.10039
.beq_else.10038:
	lfh	$f2, 48716
	lfl	$f2, 52429
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
.beq_cont.10039:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10040
	lw	$r2, -32($r29)
	sll	$r2, $r2, 2
	lw	$r3, -28($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10041
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10041:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10040:
	lfh	$f0, 15395
	lfl	$f0, 55050
	lwcl	$f2, -40($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	lw	$r3, -8($r29)
	lwcl	$f4, 0($r3)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r2)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r3)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 8($r3)
	add.s	$f0, $f0, $f6
	addi	$r2, $r0, 0
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.10043	! callcls
	j	.mendoi1.10042	! callcls
.mendoi2.10043:	! callcls
	jr	$r27	! callcls
.mendoi1.10042:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10044
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10044:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_group.3179:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sll	$r6, $r2, 2
	addu	$r1, $r3, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, -1
	bne	$r6, $r7, .beq_else.10045
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10045:
	sll	$r6, $r6, 2
	addu	$r1, $r5, $r6
	lw	$r5, 0($r1)
	addi	$r6, $r0, 0
	sw	$r3, -4($r29)
	sw	$r28, -8($r29)
	sw	$r2, -12($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.10047	! callcls
	j	.mendoi1.10046	! callcls
.mendoi2.10047:	! callcls
	jr	$r27	! callcls
.mendoi1.10046:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10048
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10048:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_matrix.3182:
	lw	$r4, 20($r28)
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r3, $r9
	lw	$r9, 0($r1)
	lw	$r10, 0($r9)
	addi	$r11, $r0, -1
	bne	$r10, $r11, .beq_else.10049
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10049:
	addi	$r11, $r0, 99
	sw	$r9, -4($r29)
	sw	$r6, -8($r29)
	sw	$r3, -12($r29)
	sw	$r28, -16($r29)
	sw	$r2, -20($r29)
	bne	$r10, $r11, .beq_else.10050
	addi	$r2, $r0, 1
	j	.beq_cont.10051
.beq_else.10050:
	sw	$r5, -24($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r8, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.10053	! callcls
	j	.mendoi1.10052	! callcls
.mendoi2.10053:	! callcls
	jr	$r27	! callcls
.mendoi1.10052:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10054
	addi	$r2, $r0, 0
	j	.beq_cont.10055
.beq_else.10054:
	lw	$r2, -24($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10056
	addi	$r2, $r0, 0
	j	.beq_cont.10057
.beq_else.10056:
	addi	$r2, $r0, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.10059	! callcls
	j	.mendoi1.10058	! callcls
.mendoi2.10059:	! callcls
	jr	$r27	! callcls
.mendoi1.10058:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10060
	addi	$r2, $r0, 0
	j	.beq_cont.10061
.beq_else.10060:
	addi	$r2, $r0, 1
.beq_cont.10061:
.beq_cont.10057:
.beq_cont.10055:
.beq_cont.10051:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10062
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10062:
	addi	$r2, $r0, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.10064	! callcls
	j	.mendoi1.10063	! callcls
.mendoi2.10064:	! callcls
	jr	$r27	! callcls
.mendoi1.10063:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10065
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10065:
	addi	$r2, $r0, 1
	jr	$r31
.solve_each_element.3185:
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
	addu	$r1, $r3, $r14
	lw	$r14, 0($r1)
	addi	$r15, $r0, -1
	bne	$r14, $r15, .beq_else.10066
	jr	$r31
.beq_else.10066:
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
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.10069	! callcls
	j	.mendoi1.10068	! callcls
.mendoi2.10069:	! callcls
	jr	$r27	! callcls
.mendoi1.10068:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10070
	lw	$r2, -52($r29)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10071
	jr	$r31
.beq_else.10071:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10070:
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -56($r29)
	swcl	$f2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10073
	j	.beq_cont.10074
.beq_else.10073:
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10075
	j	.beq_cont.10076
.beq_else.10075:
	lfh	$f0, 15395
	lfl	$f0, 55050
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -32($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	lw	$r3, -20($r29)
	lwcl	$f4, 0($r3)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r2)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r3)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 8($r3)
	add.s	$f6, $f6, $f8
	addi	$r3, $r0, 0
	lw	$r4, -36($r29)
	lw	$r28, -16($r29)
	swcl	$f6, -64($r29)
	swcl	$f4, -68($r29)
	swcl	$f2, -72($r29)
	swcl	$f0, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.10078	! callcls
	j	.mendoi1.10077	! callcls
.mendoi2.10078:	! callcls
	jr	$r27	! callcls
.mendoi1.10077:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10079
	j	.beq_cont.10080
.beq_else.10079:
	lw	$r2, -24($r29)
	lwcl	$f0, -76($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -72($r29)
	lwcl	$f2, -68($r29)
	lwcl	$f4, -64($r29)
	lw	$r2, -12($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -52($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -56($r29)
	sw	$r3, 0($r2)
.beq_cont.10080:
.beq_cont.10076:
.beq_cont.10074:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network.3189:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.10081
	jr	$r31
.beq_else.10081:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r6, 0($r1)
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10084	! callcls
	j	.mendoi1.10083	! callcls
.mendoi2.10084:	! callcls
	jr	$r27	! callcls
.mendoi1.10083:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix.3193:
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r10, $r2, 2
	addu	$r1, $r3, $r10
	lw	$r10, 0($r1)
	lw	$r11, 0($r10)
	addi	$r12, $r0, -1
	bne	$r11, $r12, .beq_else.10085
	jr	$r31
.beq_else.10085:
	addi	$r12, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	bne	$r11, $r12, .beq_else.10087
	addi	$r5, $r0, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10090	! callcls
	j	.mendoi1.10089	! callcls
.mendoi2.10090:	! callcls
	jr	$r27	! callcls
.mendoi1.10089:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	j	.beq_cont.10088
.beq_else.10087:
	sw	$r10, -20($r29)
	sw	$r9, -24($r29)
	sw	$r5, -28($r29)
	sw	$r7, -32($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10092	! callcls
	j	.mendoi1.10091	! callcls
.mendoi2.10092:	! callcls
	jr	$r27	! callcls
.mendoi1.10091:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10093
	j	.beq_cont.10094
.beq_else.10093:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f2, 0($r2)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10095
	j	.beq_cont.10096
.beq_else.10095:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	lw	$r28, -24($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10098	! callcls
	j	.mendoi1.10097	! callcls
.mendoi2.10098:	! callcls
	jr	$r27	! callcls
.mendoi1.10097:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
.beq_cont.10096:
.beq_cont.10094:
.beq_cont.10088:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.judge_intersection.3197:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	addi	$r6, $r0, 0
	lw	$r5, 0($r5)
	sw	$r4, -4($r29)
	addi	$r4, $r2, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -8($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -8	! callcls
	jal	.mendoi2.10100	! callcls
	j	.mendoi1.10099	! callcls
.mendoi2.10100:	! callcls
	jr	$r27	! callcls
.mendoi1.10099:	! callcls
	addi	$r29, $r29, 8	! callcls
	lw	$r31, -8($r29)	! callcls
	lw	$r2, -4($r29)
	lwcl	$f2, 0($r2)
	lfh	$f0, 48588
	lfl	$f0, 52429
	swcl	$f2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10101
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10101:
	lfh	$f2, 19646
	lfl	$f2, 48160
	lwcl	$f0, -8($r29)
	j	.fless.2783	! calldir-tail
.solve_each_element_fast.3199:
	lw	$r5, 36($r28)
	lw	$r6, 32($r28)
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	sw	$r10, -4($r29)
	sw	$r12, -8($r29)
	sw	$r11, -12($r29)
	sw	$r13, -16($r29)
	sw	$r6, -20($r29)
	sw	$r5, -24($r29)
	sw	$r8, -28($r29)
	sw	$r28, -32($r29)
	sw	$r9, -36($r29)
	sw	$r4, -40($r29)
	sw	$r7, -44($r29)
	sw	$r3, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	addi	$r6, $r0, -1
	bne	$r4, $r6, .beq_else.10102
	jr	$r31
.beq_else.10102:
	lw	$r6, -40($r29)
	lw	$r28, -44($r29)
	sw	$r2, -56($r29)
	sw	$r4, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.10105	! callcls
	j	.mendoi1.10104	! callcls
.mendoi2.10105:	! callcls
	jr	$r27	! callcls
.mendoi1.10104:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10106
	lw	$r2, -60($r29)
	sll	$r2, $r2, 2
	lw	$r3, -36($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10107
	jr	$r31
.beq_else.10107:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -40($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10106:
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -64($r29)
	swcl	$f2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10109
	j	.beq_cont.10110
.beq_else.10109:
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f0, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10111
	j	.beq_cont.10112
.beq_else.10111:
	lfh	$f0, 15395
	lfl	$f0, 55050
	lwcl	$f2, -68($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -56($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	lw	$r3, -20($r29)
	lwcl	$f4, 0($r3)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r2)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r3)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 8($r3)
	add.s	$f6, $f6, $f8
	addi	$r2, $r0, 0
	lw	$r3, -48($r29)
	lw	$r28, -16($r29)
	swcl	$f6, -72($r29)
	swcl	$f4, -76($r29)
	swcl	$f2, -80($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.10114	! callcls
	j	.mendoi1.10113	! callcls
.mendoi2.10114:	! callcls
	jr	$r27	! callcls
.mendoi1.10113:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10115
	j	.beq_cont.10116
.beq_else.10115:
	lw	$r2, -24($r29)
	lwcl	$f0, -84($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -80($r29)
	lwcl	$f2, -76($r29)
	lwcl	$f4, -72($r29)
	lw	$r2, -12($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -60($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -64($r29)
	sw	$r3, 0($r2)
.beq_cont.10116:
.beq_cont.10112:
.beq_cont.10110:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -40($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network_fast.3203:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.10117
	jr	$r31
.beq_else.10117:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r6, 0($r1)
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10120	! callcls
	j	.mendoi1.10119	! callcls
.mendoi2.10120:	! callcls
	jr	$r27	! callcls
.mendoi1.10119:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix_fast.3207:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r3, $r9
	lw	$r9, 0($r1)
	lw	$r10, 0($r9)
	addi	$r11, $r0, -1
	bne	$r10, $r11, .beq_else.10121
	jr	$r31
.beq_else.10121:
	addi	$r11, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	bne	$r10, $r11, .beq_else.10123
	addi	$r5, $r0, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10126	! callcls
	j	.mendoi1.10125	! callcls
.mendoi2.10126:	! callcls
	jr	$r27	! callcls
.mendoi1.10125:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	j	.beq_cont.10124
.beq_else.10123:
	sw	$r9, -20($r29)
	sw	$r8, -24($r29)
	sw	$r5, -28($r29)
	sw	$r7, -32($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10128	! callcls
	j	.mendoi1.10127	! callcls
.mendoi2.10128:	! callcls
	jr	$r27	! callcls
.mendoi1.10127:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10129
	j	.beq_cont.10130
.beq_else.10129:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f2, 0($r2)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10131
	j	.beq_cont.10132
.beq_else.10131:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	lw	$r28, -24($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10134	! callcls
	j	.mendoi1.10133	! callcls
.mendoi2.10134:	! callcls
	jr	$r27	! callcls
.mendoi1.10133:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
.beq_cont.10132:
.beq_cont.10130:
.beq_cont.10124:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.judge_intersection_fast.3211:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	addi	$r6, $r0, 0
	lw	$r5, 0($r5)
	sw	$r4, -4($r29)
	addi	$r4, $r2, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -8($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -8	! callcls
	jal	.mendoi2.10136	! callcls
	j	.mendoi1.10135	! callcls
.mendoi2.10136:	! callcls
	jr	$r27	! callcls
.mendoi1.10135:	! callcls
	addi	$r29, $r29, 8	! callcls
	lw	$r31, -8($r29)	! callcls
	lw	$r2, -4($r29)
	lwcl	$f2, 0($r2)
	lfh	$f0, 48588
	lfl	$f0, 52429
	swcl	$f2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10137
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10137:
	lfh	$f2, 19646
	lfl	$f2, 48160
	lwcl	$f0, -8($r29)
	j	.fless.2783	! calldir-tail
.get_nvector_rect.3213:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lw	$r4, 0($r4)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.vecbzero.2915	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	addi	$r2, $r2, -1
	sll	$r2, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r2
	lwcl	$f0, 0($r1)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sgn.2899	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -4($r29)
	addu	$r1, $r3, $r2
	swcl	$f0, 0($r1)
	jr	$r31
.get_nvector_plane.3215:
	lw	$r3, 4($r28)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	jr	$r31
.get_nvector_second.3217:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lwcl	$f0, 0($r4)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 4($r2)
	lw	$r3, -8($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -8($r29)
	swcl	$f0, -28($r29)
	swcl	$f2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_isrot.2961	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10140
	lw	$r2, -4($r29)
	lwcl	$f0, -40($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -44($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -48($r29)
	swcl	$f0, 8($r2)
	j	.beq_cont.10141
.beq_else.10140:
	lw	$r2, -8($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -52($r29)
	add.s	$f0, $f4, $f0
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -40($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.o_param_r3.2991	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -44($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_param_r2.2989	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.o_param_r1.2987	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fhalf.2801	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -48($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
.beq_cont.10141:
	lw	$r3, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.o_isinvert.2959	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	j	.vecunit_sgn.2925	! calldir-tail
.get_nvector.3219:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.10142
	lw	$r2, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10142:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.10143
	lw	$r2, -8($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10143:
	lw	$r2, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.utexture.3222:
	lw	$r4, 4($r28)
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.o_texturetype.2953	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_color_red.2981	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_color_green.2983	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_color_blue.2985	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 1
	lw	$r4, -16($r29)
	bne	$r4, $r3, .beq_else.10144
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 15692
	lfl	$f2, 52429
	mul.s	$f2, $f0, $f2
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 16800
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16672
	lfl	$f2, 0
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -4($r29)
	lwcl	$f0, 8($r3)
	lw	$r3, -12($r29)
	sw	$r2, -28($r29)
	swcl	$f0, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 15692
	lfl	$f2, 52429
	mul.s	$f2, $f0, $f2
	swcl	$f0, -36($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lfh	$f2, 16800
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16672
	lfl	$f2, 0
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -28($r29)
	bne	$r4, $r3, .beq_else.10145
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10147
	lfh	$f0, 17279
	lfl	$f0, 0
	j	.beq_cont.10148
.beq_else.10147:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.10148:
	j	.beq_cont.10146
.beq_else.10145:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10149
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.10150
.beq_else.10149:
	lfh	$f0, 17279
	lfl	$f0, 0
.beq_cont.10150:
.beq_cont.10146:
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.10144:
	addi	$r3, $r0, 2
	bne	$r4, $r3, .beq_else.10152
	lw	$r3, -4($r29)
	lwcl	$f0, 4($r3)
	lfh	$f2, 16000
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f2, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f2, 0($r2)
	lfh	$f2, 17279
	lfl	$f2, 0
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f2, $f0
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.10152:
	addi	$r3, $r0, 3
	bne	$r4, $r3, .beq_else.10154
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	lwcl	$f2, 8($r2)
	lw	$r2, -12($r29)
	swcl	$f0, -44($r29)
	swcl	$f2, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -44($r29)
	swcl	$f0, -52($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	swcl	$f0, -56($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lfh	$f2, 16672
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	mul.s	$f0, $f0, $f2
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f2, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f2, 4($r2)
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f2, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.10154:
	addi	$r3, $r0, 4
	bne	$r4, $r3, .beq_else.10156
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -64($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.o_param_x.2971	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -68($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	lwcl	$f2, 8($r2)
	lw	$r3, -12($r29)
	swcl	$f0, -72($r29)
	swcl	$f2, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.o_param_z.2975	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -80($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -84($r29)
	swcl	$f0, -88($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f2, -88($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	swcl	$f0, -92($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lfh	$f2, 14545
	lfl	$f2, 46871
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10157
	lwcl	$f0, -72($r29)
	lwcl	$f2, -84($r29)
	div.s	$f0, $f2, $f0
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.atan.2812	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.10158
.beq_else.10157:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.10158:
	swcl	$f0, -96($r29)
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lwcl	$f2, -96($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	lwcl	$f2, 4($r2)
	lw	$r2, -12($r29)
	swcl	$f0, -100($r29)
	swcl	$f2, -104($r29)
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.o_param_y.2973	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lwcl	$f2, -104($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -108($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lwcl	$f2, -108($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -92($r29)
	swcl	$f0, -112($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lfh	$f2, 14545
	lfl	$f2, 46871
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10159
	lwcl	$f0, -92($r29)
	lwcl	$f2, -112($r29)
	div.s	$f0, $f2, $f0
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fabs.2795	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.atan.2812	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.10160
.beq_else.10159:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.10160:
	swcl	$f0, -116($r29)
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	lwcl	$f2, -116($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 15897
	lfl	$f2, 39322
	lfh	$f4, 16128
	lfl	$f4, 0
	lwcl	$f6, -100($r29)
	sub.s	$f4, $f4, $f6
	swcl	$f0, -120($r29)
	swcl	$f2, -124($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lwcl	$f2, -124($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16128
	lfl	$f2, 0
	lwcl	$f4, -120($r29)
	sub.s	$f2, $f2, $f4
	swcl	$f0, -128($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lwcl	$f2, -128($r29)
	sub.s	$f0, $f2, $f0
	swcl	$f0, -132($r29)
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10161
	lwcl	$f0, -132($r29)
	j	.beq_cont.10162
.beq_else.10161:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.10162:
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f2, $f0
	lfh	$f2, 16025
	lfl	$f2, 39322
	div.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.10156:
	jr	$r31
.add_light.3225:
	lw	$r2, 8($r28)
	lw	$r3, 4($r28)
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10165
	j	.beq_cont.10166
.beq_else.10165:
	lwcl	$f0, -12($r29)
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.vecaccum.2936	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.beq_cont.10166:
	lwcl	$f0, -8($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10167
	jr	$r31
.beq_else.10167:
	lwcl	$f0, -8($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -4($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	add.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lwcl	$f2, 4($r2)
	add.s	$f2, $f2, $f0
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r2)
	add.s	$f0, $f2, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.trace_reflections.3229:
	lw	$r4, 32($r28)
	lw	$r5, 28($r28)
	lw	$r6, 24($r28)
	lw	$r7, 20($r28)
	lw	$r8, 16($r28)
	lw	$r9, 12($r28)
	lw	$r10, 8($r28)
	lw	$r11, 4($r28)
	addi	$r12, $r0, 0
	bgt	$r12, $r2, .ble_else.10170
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r5, 0($r1)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r11, -16($r29)
	sw	$r3, -20($r29)
	swcl	$f0, -24($r29)
	sw	$r7, -28($r29)
	sw	$r4, -32($r29)
	sw	$r6, -36($r29)
	sw	$r5, -40($r29)
	sw	$r9, -44($r29)
	sw	$r10, -48($r29)
	sw	$r8, -52($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.r_dvec.3020	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r28, -52($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10172	! callcls
	j	.mendoi1.10171	! callcls
.mendoi2.10172:	! callcls
	jr	$r27	! callcls
.mendoi1.10171:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10173
	j	.beq_cont.10174
.beq_else.10173:
	lw	$r2, -48($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -44($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -40($r29)
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.r_surface_id.3018	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	bne	$r3, $r2, .beq_else.10175
	addi	$r2, $r0, 0
	lw	$r3, -36($r29)
	lw	$r3, 0($r3)
	lw	$r28, -32($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.10178	! callcls
	j	.mendoi1.10177	! callcls
.mendoi2.10178:	! callcls
	jr	$r27	! callcls
.mendoi1.10177:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10179
	lw	$r2, -56($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -40($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.r_bright.3022	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f4, $f0, $f2
	lwcl	$f6, -64($r29)
	mul.s	$f4, $f4, $f6
	lw	$r2, -56($r29)
	swcl	$f4, -68($r29)
	swcl	$f0, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f2, $f2, $f0
	lwcl	$f0, -68($r29)
	lwcl	$f4, -12($r29)
	lw	$r28, -16($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.10182	! callcls
	j	.mendoi1.10181	! callcls
.mendoi2.10182:	! callcls
	jr	$r27	! callcls
.mendoi1.10181:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.10180
.beq_else.10179:
.beq_cont.10180:
	j	.beq_cont.10176
.beq_else.10175:
.beq_cont.10176:
.beq_cont.10174:
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lwcl	$f0, -24($r29)
	lwcl	$f2, -12($r29)
	lw	$r3, -20($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10170:
	jr	$r31
.trace_ray.3234:
	lw	$r5, 80($r28)
	lw	$r6, 76($r28)
	lw	$r7, 72($r28)
	lw	$r8, 68($r28)
	lw	$r9, 64($r28)
	lw	$r10, 60($r28)
	lw	$r11, 56($r28)
	lw	$r12, 52($r28)
	lw	$r13, 48($r28)
	lw	$r14, 44($r28)
	lw	$r15, 40($r28)
	lw	$r16, 36($r28)
	lw	$r17, 32($r28)
	lw	$r18, 28($r28)
	lw	$r19, 24($r28)
	lw	$r20, 20($r28)
	lw	$r21, 16($r28)
	lw	$r22, 12($r28)
	lw	$r23, 8($r28)
	lw	$r24, 4($r28)
	addi	$r25, $r0, 4
	bgt	$r2, $r25, .ble_else.10184
	sw	$r28, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r7, -12($r29)
	sw	$r6, -16($r29)
	sw	$r16, -20($r29)
	sw	$r11, -24($r29)
	sw	$r24, -28($r29)
	sw	$r10, -32($r29)
	sw	$r13, -36($r29)
	sw	$r15, -40($r29)
	sw	$r8, -44($r29)
	sw	$r4, -48($r29)
	sw	$r19, -52($r29)
	sw	$r5, -56($r29)
	sw	$r20, -60($r29)
	sw	$r9, -64($r29)
	sw	$r22, -68($r29)
	sw	$r14, -72($r29)
	sw	$r21, -76($r29)
	sw	$r12, -80($r29)
	sw	$r23, -84($r29)
	swcl	$f0, -88($r29)
	sw	$r17, -92($r29)
	sw	$r2, -96($r29)
	sw	$r3, -100($r29)
	sw	$r18, -104($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.p_surface_ids.2999	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -100($r29)
	lw	$r28, -104($r29)
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -112($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -112	! callcls
	jal	.mendoi2.10186	! callcls
	j	.mendoi1.10185	! callcls
.mendoi2.10186:	! callcls
	jr	$r27	! callcls
.mendoi1.10185:	! callcls
	addi	$r29, $r29, 112	! callcls
	lw	$r31, -112($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10187
	addi	$r2, $r0, -1
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.10188
	jr	$r31
.beq_else.10188:
	lw	$r2, -100($r29)
	lw	$r3, -92($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	swcl	$f0, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10190
	jr	$r31
.beq_else.10190:
	lwcl	$f0, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lwcl	$f2, -112($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -84($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -80($r29)
	lwcl	$f2, 0($r2)
	add.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lwcl	$f2, 4($r2)
	add.s	$f2, $f2, $f0
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r2)
	add.s	$f0, $f2, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.10187:
	lw	$r2, -76($r29)
	lw	$r2, 0($r2)
	sll	$r3, $r2, 2
	lw	$r4, -72($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	sw	$r2, -116($r29)
	sw	$r3, -120($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.o_reflectiontype.2957	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -120($r29)
	lw	$r3, -100($r29)
	lw	$r28, -68($r29)
	swcl	$f0, -128($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.10194	! callcls
	j	.mendoi1.10193	! callcls
.mendoi2.10194:	! callcls
	jr	$r27	! callcls
.mendoi1.10193:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, -60($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r2, -120($r29)
	lw	$r3, -60($r29)
	lw	$r28, -56($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.10196	! callcls
	j	.mendoi1.10195	! callcls
.mendoi2.10196:	! callcls
	jr	$r27	! callcls
.mendoi1.10195:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lw	$r2, -116($r29)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	lw	$r2, -48($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.p_intersection_points.2997	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	lw	$r4, -60($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r2, -48($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.p_calc_diffuse.3001	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -120($r29)
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lfh	$f2, 16128
	lfl	$f2, 0
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10197
	addi	$r2, $r0, 1
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -132($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	lw	$r2, -48($r29)
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.p_energy.3003	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r5, -44($r29)
	sw	$r2, -136($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r2, -96($r29)
	sll	$r3, $r2, 2
	lw	$r4, -136($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lfh	$f0, 15232
	lfl	$f0, 0
	lwcl	$f2, -128($r29)
	mul.s	$f0, $f0, $f2
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.vecscale.2946	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r2, -48($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.p_nvectors.3012	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	lw	$r4, -40($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	j	.beq_cont.10198
.beq_else.10197:
	addi	$r2, $r0, 0
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -132($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.10198:
	lfh	$f0, 49152
	lfl	$f0, 0
	lw	$r2, -100($r29)
	lw	$r3, -40($r29)
	swcl	$f0, -140($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lwcl	$f2, -140($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -100($r29)
	lw	$r3, -40($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.vecaccum.2936	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r2, -120($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.o_hilight.2979	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f2, $f0
	addi	$r2, $r0, 0
	lw	$r3, -36($r29)
	lw	$r3, 0($r3)
	lw	$r28, -32($r29)
	swcl	$f0, -144($r29)
	sw	$r31, -148($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -148	! callcls
	jal	.mendoi2.10200	! callcls
	j	.mendoi1.10199	! callcls
.mendoi2.10200:	! callcls
	jr	$r27	! callcls
.mendoi1.10199:	! callcls
	addi	$r29, $r29, 148	! callcls
	lw	$r31, -148($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10201
	lw	$r2, -40($r29)
	lw	$r3, -92($r29)
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	lwcl	$f2, -128($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -100($r29)
	lw	$r3, -92($r29)
	swcl	$f0, -148($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -148($r29)
	lwcl	$f4, -144($r29)
	lw	$r28, -28($r29)
	sw	$r31, -152($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -152	! callcls
	jal	.mendoi2.10204	! callcls
	j	.mendoi1.10203	! callcls
.mendoi2.10204:	! callcls
	jr	$r27	! callcls
.mendoi1.10203:	! callcls
	addi	$r29, $r29, 152	! callcls
	lw	$r31, -152($r29)	! callcls
	j	.beq_cont.10202
.beq_else.10201:
.beq_cont.10202:
	lw	$r2, -60($r29)
	lw	$r28, -24($r29)
	sw	$r31, -152($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -152	! callcls
	jal	.mendoi2.10206	! callcls
	j	.mendoi1.10205	! callcls
.mendoi2.10206:	! callcls
	jr	$r27	! callcls
.mendoi1.10205:	! callcls
	addi	$r29, $r29, 152	! callcls
	lw	$r31, -152($r29)	! callcls
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lwcl	$f0, -128($r29)
	lwcl	$f2, -144($r29)
	lw	$r3, -100($r29)
	lw	$r28, -16($r29)
	sw	$r31, -152($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -152	! callcls
	jal	.mendoi2.10208	! callcls
	j	.mendoi1.10207	! callcls
.mendoi2.10208:	! callcls
	jr	$r27	! callcls
.mendoi1.10207:	! callcls
	addi	$r29, $r29, 152	! callcls
	lw	$r31, -152($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -88($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10209
	jr	$r31
.beq_else.10209:
	addi	$r2, $r0, 4
	lw	$r3, -96($r29)
	bgt	$r2, $r3, .ble_else.10211
	j	.ble_cont.10212
.ble_else.10211:
	addi	$r2, $r3, 1
	addi	$r4, $r0, -1
	sll	$r2, $r2, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r2
	sw	$r4, 0($r1)
.ble_cont.10212:
	addi	$r2, $r0, 2
	lw	$r4, -124($r29)
	bne	$r4, $r2, .beq_else.10213
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r2, -120($r29)
	swcl	$f0, -152($r29)
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	lwcl	$f2, -152($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -96($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lwcl	$f2, 0($r3)
	lwcl	$f4, -8($r29)
	add.s	$f2, $f4, $f2
	lw	$r3, -100($r29)
	lw	$r4, -48($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10213:
	jr	$r31
.ble_else.10184:
	jr	$r31
.trace_diffuse_ray.3240:
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
	addi	$r28, $r10, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.10217	! callcls
	j	.mendoi1.10216	! callcls
.mendoi2.10217:	! callcls
	jr	$r27	! callcls
.mendoi1.10216:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10218
	jr	$r31
.beq_else.10218:
	lw	$r2, -52($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -44($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	lw	$r28, -40($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10221	! callcls
	j	.mendoi1.10220	! callcls
.mendoi2.10221:	! callcls
	jr	$r27	! callcls
.mendoi1.10220:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	lw	$r3, -32($r29)
	lw	$r28, -36($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10223	! callcls
	j	.mendoi1.10222	! callcls
.mendoi2.10223:	! callcls
	jr	$r27	! callcls
.mendoi1.10222:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	lw	$r3, 0($r3)
	lw	$r28, -24($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10225	! callcls
	j	.mendoi1.10224	! callcls
.mendoi2.10225:	! callcls
	jr	$r27	! callcls
.mendoi1.10224:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10226
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fispos.2786	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10227
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.10228
.beq_else.10227:
	lwcl	$f0, -60($r29)
.beq_cont.10228:
	lwcl	$f2, -12($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -56($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	j	.vecaccum.2936	! calldir-tail
.beq_else.10226:
	jr	$r31
.iter_trace_diffuse_rays.3243:
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	bgt	$r7, $r5, .ble_else.10230
	sll	$r7, $r5, 2
	addu	$r1, $r2, $r7
	lw	$r7, 0($r1)
	sw	$r4, -4($r29)
	sw	$r28, -8($r29)
	sw	$r6, -12($r29)
	sw	$r2, -16($r29)
	sw	$r5, -20($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fisneg.2788	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10231
	lw	$r2, -20($r29)
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lfh	$f0, 17174
	lfl	$f0, 0
	lwcl	$f2, -28($r29)
	div.s	$f0, $f2, $f0
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.10234	! callcls
	j	.mendoi1.10233	! callcls
.mendoi2.10234:	! callcls
	jr	$r27	! callcls
.mendoi1.10233:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	j	.beq_cont.10232
.beq_else.10231:
	lw	$r2, -20($r29)
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lfh	$f0, 49942
	lfl	$f0, 0
	lwcl	$f2, -28($r29)
	div.s	$f0, $f2, $f0
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.10236	! callcls
	j	.mendoi1.10235	! callcls
.mendoi2.10236:	! callcls
	jr	$r27	! callcls
.mendoi1.10235:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
.beq_cont.10232:
	lw	$r2, -20($r29)
	addi	$r5, $r2, -2
	lw	$r2, -16($r29)
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10230:
	jr	$r31
.trace_diffuse_rays.3248:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r6, -16($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10239	! callcls
	j	.mendoi1.10238	! callcls
.mendoi2.10239:	! callcls
	jr	$r27	! callcls
.mendoi1.10238:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_diffuse_ray_80percent.3252:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	bne	$r2, $r7, .beq_else.10240
	j	.beq_cont.10241
.beq_else.10240:
	lw	$r7, 0($r6)
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10243	! callcls
	j	.mendoi1.10242	! callcls
.mendoi2.10243:	! callcls
	jr	$r27	! callcls
.mendoi1.10242:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
.beq_cont.10241:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.10244
	j	.beq_cont.10245
.beq_else.10244:
	lw	$r2, -16($r29)
	lw	$r4, 4($r2)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r28, -12($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10247	! callcls
	j	.mendoi1.10246	! callcls
.mendoi2.10247:	! callcls
	jr	$r27	! callcls
.mendoi1.10246:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
.beq_cont.10245:
	addi	$r2, $r0, 2
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.10248
	j	.beq_cont.10249
.beq_else.10248:
	lw	$r2, -16($r29)
	lw	$r4, 8($r2)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r28, -12($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10251	! callcls
	j	.mendoi1.10250	! callcls
.mendoi2.10251:	! callcls
	jr	$r27	! callcls
.mendoi1.10250:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
.beq_cont.10249:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.10252
	j	.beq_cont.10253
.beq_else.10252:
	lw	$r2, -16($r29)
	lw	$r4, 12($r2)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	lw	$r28, -12($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10255	! callcls
	j	.mendoi1.10254	! callcls
.mendoi2.10255:	! callcls
	jr	$r27	! callcls
.mendoi1.10254:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
.beq_cont.10253:
	addi	$r2, $r0, 4
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.10256
	jr	$r31
.beq_else.10256:
	lw	$r2, -16($r29)
	lw	$r2, 16($r2)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_diffuse_using_1point.3256:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.p_nvectors.3012	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.p_intersection_points.2997	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.p_energy.3003	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, -12($r29)
	sw	$r2, -36($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.p_group_id.3007	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	sll	$r5, $r3, 2
	lw	$r6, -32($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	lw	$r28, -8($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.10259	! callcls
	j	.mendoi1.10258	! callcls
.mendoi2.10259:	! callcls
	jr	$r27	! callcls
.mendoi1.10258:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -36($r29)
	addu	$r1, $r3, $r2
	lw	$r3, 0($r1)
	lw	$r2, -4($r29)
	lw	$r4, -12($r29)
	j	.vecaccumv.2949	! calldir-tail
.calc_diffuse_using_5points.3259:
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r3, $r9
	lw	$r3, 0($r1)
	sw	$r7, -4($r29)
	sw	$r8, -8($r29)
	sw	$r6, -12($r29)
	sw	$r5, -16($r29)
	sw	$r4, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	addi	$r4, $r3, -1
	sll	$r4, $r4, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	sw	$r2, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -24($r29)
	addi	$r4, $r3, 1
	sll	$r4, $r4, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	sw	$r2, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	sw	$r2, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, -8($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.vecadd.2940	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.vecadd.2940	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -40($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.vecadd.2940	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -44($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.vecadd.2940	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r3, -20($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.p_energy.3003	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r3, 0($r1)
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	j	.vecaccumv.2949	! calldir-tail
.do_without_neighbors.3265:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 4
	bgt	$r3, $r5, .ble_else.10260
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.p_surface_ids.2999	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -16($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r2, $r5
	lw	$r2, 0($r1)
	bgt	$r3, $r2, .ble_else.10261
	lw	$r2, -12($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.p_calc_diffuse.3001	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.10262
	j	.beq_cont.10263
.beq_else.10262:
	lw	$r2, -12($r29)
	lw	$r28, -8($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.10265	! callcls
	j	.mendoi1.10264	! callcls
.mendoi2.10265:	! callcls
	jr	$r27	! callcls
.mendoi1.10264:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
.beq_cont.10263:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10261:
	jr	$r31
.ble_else.10260:
	jr	$r31
.neighbors_exist.3268:
	lw	$r4, 4($r28)
	lw	$r5, 4($r4)
	addi	$r6, $r3, 1
	bgt	$r5, $r6, .ble_else.10268
	addi	$r2, $r0, 0
	jr	$r31
.ble_else.10268:
	addi	$r5, $r0, 0
	bgt	$r3, $r5, .ble_else.10269
	addi	$r2, $r0, 0
	jr	$r31
.ble_else.10269:
	lw	$r3, 0($r4)
	addi	$r4, $r2, 1
	bgt	$r3, $r4, .ble_else.10270
	addi	$r2, $r0, 0
	jr	$r31
.ble_else.10270:
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.10271
	addi	$r2, $r0, 0
	jr	$r31
.ble_else.10271:
	addi	$r2, $r0, 1
	jr	$r31
.get_surface_id.3272:
	sw	$r3, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.p_surface_ids.2999	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	jr	$r31
.neighbors_are_available.3275:
	sll	$r7, $r2, 2
	addu	$r1, $r4, $r7
	lw	$r7, 0($r1)
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, -12($r29)
	sw	$r2, -24($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, .beq_else.10272
	lw	$r2, -20($r29)
	sll	$r4, $r2, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, -12($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, .beq_else.10273
	lw	$r2, -20($r29)
	addi	$r4, $r2, -1
	sll	$r4, $r4, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -12($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, .beq_else.10274
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r2, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r4, -12($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, .beq_else.10275
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.10275:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10274:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10273:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.10272:
	addi	$r2, $r0, 0
	jr	$r31
.try_exploit_neighbors.3281:
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r10, $r2, 2
	addu	$r1, $r5, $r10
	lw	$r10, 0($r1)
	addi	$r11, $r0, 4
	bgt	$r7, $r11, .ble_else.10276
	addi	$r11, $r0, 0
	sw	$r3, -4($r29)
	sw	$r28, -8($r29)
	sw	$r9, -12($r29)
	sw	$r10, -16($r29)
	sw	$r8, -20($r29)
	sw	$r7, -24($r29)
	sw	$r6, -28($r29)
	sw	$r5, -32($r29)
	sw	$r4, -36($r29)
	sw	$r2, -40($r29)
	sw	$r11, -44($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	bgt	$r3, $r2, .ble_else.10277
	lw	$r2, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r6, -24($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.neighbors_are_available.3275	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10278
	lw	$r2, -40($r29)
	sll	$r2, $r2, 2
	lw	$r3, -32($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -24($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10278:
	lw	$r2, -16($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.p_calc_diffuse.3001	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r6, -24($r29)
	sll	$r3, $r6, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10279
	j	.beq_cont.10280
.beq_else.10279:
	lw	$r2, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r28, -12($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.10282	! callcls
	j	.mendoi1.10281	! callcls
.mendoi2.10282:	! callcls
	jr	$r27	! callcls
.mendoi1.10281:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.10280:
	lw	$r2, -24($r29)
	addi	$r7, $r2, 1
	lw	$r2, -40($r29)
	lw	$r3, -4($r29)
	lw	$r4, -36($r29)
	lw	$r5, -32($r29)
	lw	$r6, -28($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10277:
	jr	$r31
.ble_else.10276:
	jr	$r31
.write_ppm_header.3288:
	lw	$r2, 4($r28)
	addi	$r3, $r0, 80
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 51
	output	$r2
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -4($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lw	$r2, 4($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	addi	$r2, $r0, 255
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	jr	$r31
.write_rgb_element.3290:
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.10285
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.10287
	j	.ble_cont.10288
.ble_else.10287:
	addi	$r2, $r0, 0
.ble_cont.10288:
	j	.ble_cont.10286
.ble_else.10285:
	addi	$r2, $r0, 255
.ble_cont.10286:
	j	.print_int.2860	! calldir-tail
.write_rgb.3292:
	lw	$r2, 4($r28)
	lwcl	$f0, 0($r2)
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.write_rgb_element.3290	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.write_rgb_element.3290	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.write_rgb_element.3290	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	jr	$r31
.pretrace_diffuse_rays.3294:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 4
	bgt	$r3, $r7, .ble_else.10289
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.get_surface_id.3272	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.10290
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.p_calc_diffuse.3001	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.10291
	j	.beq_cont.10292
.beq_else.10291:
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.p_group_id.3007	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.vecbzero.2915	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.p_nvectors.3012	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.p_intersection_points.2997	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -20($r29)
	sll	$r5, $r4, 2
	lw	$r6, -32($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	sll	$r6, $r4, 2
	addu	$r1, $r2, $r6
	lw	$r2, 0($r1)
	lw	$r28, -8($r29)
	addi	$r4, $r2, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10294	! callcls
	j	.mendoi1.10293	! callcls
.mendoi2.10294:	! callcls
	jr	$r27	! callcls
.mendoi1.10293:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -24($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.p_received_ray_20percent.3005	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	lw	$r4, -16($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
.beq_cont.10292:
	lw	$r2, -20($r29)
	addi	$r3, $r2, 1
	lw	$r2, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10290:
	jr	$r31
.ble_else.10289:
	jr	$r31
.pretrace_pixels.3297:
	lw	$r5, 36($r28)
	lw	$r6, 32($r28)
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	addi	$r14, $r0, 0
	bgt	$r14, $r3, .ble_else.10297
	lwcl	$f6, 0($r9)
	lw	$r9, 0($r13)
	subu	$r9, $r3, $r9
	sw	$r28, -4($r29)
	sw	$r12, -8($r29)
	sw	$r4, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r5, -28($r29)
	sw	$r7, -32($r29)
	sw	$r10, -36($r29)
	swcl	$f4, -40($r29)
	swcl	$f2, -44($r29)
	sw	$r11, -48($r29)
	swcl	$f0, -52($r29)
	sw	$r8, -56($r29)
	swcl	$f6, -60($r29)
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -56($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f4, -52($r29)
	add.s	$f2, $f2, $f4
	lw	$r3, -48($r29)
	swcl	$f2, 0($r3)
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f6, -44($r29)
	add.s	$f2, $f2, $f6
	swcl	$f2, 4($r3)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -40($r29)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r3)
	addi	$r2, $r0, 0
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.vecunit_sgn.2925	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -36($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.vecbzero.2915	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -32($r29)
	lw	$r3, -28($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r2, $r0, 0
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lfh	$f2, 0
	lfl	$f2, 0
	lw	$r6, -48($r29)
	lw	$r28, -16($r29)
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.10299	! callcls
	j	.mendoi1.10298	! callcls
.mendoi2.10299:	! callcls
	jr	$r27	! callcls
.mendoi1.10298:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.p_rgb.2995	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.p_set_group_id.3009	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.10301	! callcls
	j	.mendoi1.10300	! callcls
.mendoi2.10301:	! callcls
	jr	$r27	! callcls
.mendoi1.10300:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 1
	lw	$r4, -12($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.add_mod5.2904	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r4, $r2, 0	! calldir
	lwcl	$f0, -52($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -40($r29)
	lw	$r2, -20($r29)
	lw	$r3, -64($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10297:
	jr	$r31
.pretrace_line.3304:
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
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lw	$r3, -20($r29)
	lwcl	$f4, 0($r3)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r2)
	mul.s	$f4, $f0, $f4
	lwcl	$f6, 4($r3)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	mul.s	$f0, $f0, $f6
	lwcl	$f6, 8($r3)
	add.s	$f0, $f0, $f6
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.scan_pixel.3308:
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	lw	$r11, 0($r11)
	bgt	$r11, $r2, .ble_else.10303
	jr	$r31
.ble_else.10303:
	sll	$r11, $r2, 2
	addu	$r1, $r5, $r11
	lw	$r11, 0($r1)
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r4, -12($r29)
	sw	$r8, -16($r29)
	sw	$r12, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	sw	$r10, -40($r29)
	sw	$r9, -44($r29)
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.p_rgb.2995	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	lw	$r28, -40($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.10306	! callcls
	j	.mendoi1.10305	! callcls
.mendoi2.10306:	! callcls
	jr	$r27	! callcls
.mendoi1.10305:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10307
	lw	$r2, -36($r29)
	sll	$r3, $r2, 2
	lw	$r4, -24($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.10310	! callcls
	j	.mendoi1.10309	! callcls
.mendoi2.10310:	! callcls
	jr	$r27	! callcls
.mendoi1.10309:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	j	.beq_cont.10308
.beq_else.10307:
	addi	$r7, $r0, 0
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -12($r29)
	lw	$r5, -24($r29)
	lw	$r6, -28($r29)
	lw	$r28, -16($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.10312	! callcls
	j	.mendoi1.10311	! callcls
.mendoi2.10312:	! callcls
	jr	$r27	! callcls
.mendoi1.10311:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.10308:
	lw	$r28, -8($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.10314	! callcls
	j	.mendoi1.10313	! callcls
.mendoi2.10314:	! callcls
	jr	$r27	! callcls
.mendoi1.10313:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -32($r29)
	lw	$r4, -12($r29)
	lw	$r5, -24($r29)
	lw	$r6, -28($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.scan_line.3314:
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	lw	$r10, 4($r9)
	bgt	$r10, $r2, .ble_else.10315
	jr	$r31
.ble_else.10315:
	lw	$r9, 4($r9)
	addi	$r9, $r9, -1
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r7, -28($r29)
	bgt	$r9, $r2, .ble_else.10317
	j	.ble_cont.10318
.ble_else.10317:
	addi	$r9, $r2, 1
	addi	$r4, $r6, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.10320	! callcls
	j	.mendoi1.10319	! callcls
.mendoi2.10320:	! callcls
	jr	$r27	! callcls
.mendoi1.10319:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
.ble_cont.10318:
	addi	$r2, $r0, 0
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	lw	$r5, -16($r29)
	lw	$r6, -12($r29)
	lw	$r28, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.10322	! callcls
	j	.mendoi1.10321	! callcls
.mendoi2.10322:	! callcls
	jr	$r27	! callcls
.mendoi1.10321:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 2
	lw	$r4, -8($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.add_mod5.2904	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r6, $r2, 0	! calldir
	lw	$r2, -32($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.create_float5x3array.3320:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r3, 0
	jr	$r31
.create_pixel.3322:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.create_float5x3array.3320	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.create_float5x3array.3320	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.create_float5x3array.3320	! calldir
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
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.create_float5x3array.3320	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -28($r29)
	sw	$r2, 24($r3)
	lw	$r2, -24($r29)
	sw	$r2, 20($r3)
	lw	$r2, -20($r29)
	sw	$r2, 16($r3)
	lw	$r2, -16($r29)
	sw	$r2, 12($r3)
	lw	$r2, -12($r29)
	sw	$r2, 8($r3)
	lw	$r2, -8($r29)
	sw	$r2, 4($r3)
	lw	$r2, -4($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	jr	$r31
.init_line_elements.3324:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.10323
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	j	.init_line_elements.3324	! calldir-tail
.ble_else.10323:
	jr	$r31
.create_pixelline.3327:
	lw	$r2, 4($r28)
	lw	$r3, 0($r2)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -4($r29)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -2
	j	.init_line_elements.3324	! calldir-tail
.tan.3329:
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lwcl	$f2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.cos.2820	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	div.s	$f0, $f2, $f0
	jr	$r31
.adjust_position.3331:
	mul.s	$f0, $f0, $f0
	lfh	$f4, 15820
	lfl	$f4, 52429
	add.s	$f0, $f0, $f4
	swcl	$f2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f0, -8($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.atan.2812	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -4($r29)
	mul.s	$f0, $f0, $f2
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.tan.3329	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	mul.s	$f0, $f0, $f2
	jr	$r31
.calc_dirvec.3334:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 5
	bgt	$r6, $r2, .ble_else.10324
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fsqr.2803	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	add.s	$f0, $f2, $f0
	lfh	$f2, 16256
	lfl	$f2, 0
	add.s	$f0, $f0, $f2
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -16($r29)
	div.s	$f2, $f2, $f0
	lwcl	$f4, -20($r29)
	div.s	$f4, $f4, $f0
	lfh	$f6, 16256
	lfl	$f6, 0
	div.s	$f0, $f6, $f0
	lw	$r2, -12($r29)
	sll	$r2, $r2, 2
	lw	$r3, -8($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	sw	$r2, -28($r29)
	swcl	$f0, -32($r29)
	swcl	$f4, -36($r29)
	swcl	$f2, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r3, $r2, 40
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -36($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -40($r29)
	lwcl	$f2, -32($r29)
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r3, $r2, 80
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -36($r29)
	swcl	$f0, -52($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -32($r29)
	lwcl	$f2, -52($r29)
	lw	$r2, -48($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -36($r29)
	swcl	$f0, -60($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -32($r29)
	swcl	$f0, -64($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -60($r29)
	lwcl	$f2, -64($r29)
	lw	$r2, -56($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r3, $r2, 41
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -32($r29)
	swcl	$f0, -72($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -72($r29)
	lwcl	$f4, -36($r29)
	lw	$r2, -68($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r2, -4($r29)
	addi	$r2, $r2, 81
	sll	$r2, $r2, 2
	lw	$r3, -28($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f0, -32($r29)
	sw	$r2, -76($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -36($r29)
	lw	$r2, -76($r29)
	j	.vecset.2907	! calldir-tail
.ble_else.10324:
	swcl	$f4, -80($r29)
	sw	$r4, -4($r29)
	sw	$r3, -12($r29)
	sw	$r28, -84($r29)
	swcl	$f6, -88($r29)
	sw	$r2, -92($r29)
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.adjust_position.3331	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r2, -92($r29)
	addi	$r2, $r2, 1
	lwcl	$f2, -88($r29)
	swcl	$f0, -96($r29)
	sw	$r2, -100($r29)
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.adjust_position.3331	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -96($r29)
	lwcl	$f4, -80($r29)
	lwcl	$f6, -88($r29)
	lw	$r2, -100($r29)
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	lw	$r28, -84($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_dirvecs.3342:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.10325
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r5, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16230
	lfl	$f2, 26214
	sub.s	$f4, $f0, $f2
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f2, 0
	lfl	$f2, 0
	lwcl	$f6, -12($r29)
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	lw	$r28, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.10327	! callcls
	j	.mendoi1.10326	! callcls
.mendoi2.10327:	! callcls
	jr	$r27	! callcls
.mendoi1.10326:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f4, $f0, $f2
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f2, 0
	lfl	$f2, 0
	lw	$r3, -16($r29)
	addi	$r4, $r3, 2
	lwcl	$f6, -12($r29)
	lw	$r5, -20($r29)
	lw	$r28, -24($r29)
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.10329	! callcls
	j	.mendoi1.10328	! callcls
.mendoi2.10329:	! callcls
	jr	$r27	! callcls
.mendoi1.10328:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 1
	lw	$r4, -20($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.add_mod5.2904	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lwcl	$f0, -12($r29)
	lw	$r2, -28($r29)
	lw	$r4, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10325:
	jr	$r31
.calc_dirvec_rows.3347:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.10331
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16230
	lfl	$f2, 26214
	sub.s	$f0, $f0, $f2
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10333	! callcls
	j	.mendoi1.10332	! callcls
.mendoi2.10333:	! callcls
	jr	$r27	! callcls
.mendoi1.10332:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 2
	lw	$r4, -16($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.add_mod5.2904	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -12($r29)
	addi	$r4, $r2, 4
	lw	$r2, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10331:
	jr	$r31
.create_dirvec.3351:
	lw	$r2, 4($r28)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -8($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	jr	$r31
.create_dirvec_elements.3353:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.10335
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.10337	! callcls
	j	.mendoi1.10336	! callcls
.mendoi2.10337:	! callcls
	jr	$r27	! callcls
.mendoi1.10336:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	lw	$r28, -4($r29)
	addi	$r2, $r5, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10335:
	jr	$r31
.create_dirvecs.3356:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.10339
	addi	$r6, $r0, 120
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r6, -20($r29)
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10341	! callcls
	j	.mendoi1.10340	! callcls
.mendoi2.10341:	! callcls
	jr	$r27	! callcls
.mendoi1.10340:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	sll	$r2, $r3, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	addi	$r4, $r0, 118
	lw	$r28, -8($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.10343	! callcls
	j	.mendoi1.10342	! callcls
.mendoi2.10343:	! callcls
	jr	$r27	! callcls
.mendoi1.10342:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10339:
	jr	$r31
.init_dirvec_constants.3358:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.10345
	sll	$r5, $r3, 2
	addu	$r1, $r2, $r5
	lw	$r5, 0($r1)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.10347	! callcls
	j	.mendoi1.10346	! callcls
.mendoi2.10347:	! callcls
	jr	$r27	! callcls
.mendoi1.10346:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10345:
	jr	$r31
.init_vecset_constants.3361:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r2, .ble_else.10349
	sll	$r5, $r2, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	addi	$r5, $r0, 119
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	.mendoi2.10351	! callcls
	j	.mendoi1.10350	! callcls
.mendoi2.10351:	! callcls
	jr	$r27	! callcls
.mendoi1.10350:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.10349:
	jr	$r31
.init_dirvecs.3363:
	lw	$r2, 12($r28)
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 4
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	.mendoi2.10354	! callcls
	j	.mendoi1.10353	! callcls
.mendoi2.10354:	! callcls
	jr	$r27	! callcls
.mendoi1.10353:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	.mendoi2.10356	! callcls
	j	.mendoi1.10355	! callcls
.mendoi2.10356:	! callcls
	jr	$r27	! callcls
.mendoi1.10355:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.add_reflection.3365:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r28, 4($r28)
	sw	$r5, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r4, -20($r29)
	swcl	$f6, -24($r29)
	swcl	$f4, -28($r29)
	swcl	$f2, -32($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.10358	! callcls
	j	.mendoi1.10357	! callcls
.mendoi2.10358:	! callcls
	jr	$r27	! callcls
.mendoi1.10357:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f0, -32($r29)
	lwcl	$f2, -28($r29)
	lwcl	$f4, -24($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.vecset.2907	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -36($r29)
	lw	$r28, -20($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.10360	! callcls
	j	.mendoi1.10359	! callcls
.mendoi2.10360:	! callcls
	jr	$r27	! callcls
.mendoi1.10359:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -16($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -36($r29)
	sw	$r3, 4($r2)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3
	sw	$r2, 0($r1)
	jr	$r31
.setup_rect_reflection.3372:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r2, $r2, 2
	lw	$r7, 0($r4)
	lfh	$f0, 16256
	lfl	$f0, 0
	sw	$r4, -4($r29)
	sw	$r7, -8($r29)
	sw	$r6, -12($r29)
	sw	$r2, -16($r29)
	sw	$r5, -20($r29)
	swcl	$f0, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -20($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -36($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fneg.2799	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	fmove	$f6, $f0
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r4, -20($r29)
	lwcl	$f2, 0($r4)
	lwcl	$f0, -28($r29)
	lwcl	$f4, -36($r29)
	lw	$r5, -8($r29)
	lw	$r28, -12($r29)
	swcl	$f6, -40($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.10363	! callcls
	j	.mendoi1.10362	! callcls
.mendoi2.10363:	! callcls
	jr	$r27	! callcls
.mendoi1.10362:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	lw	$r4, -16($r29)
	addi	$r5, $r4, 2
	lw	$r6, -20($r29)
	lwcl	$f4, 4($r6)
	lwcl	$f0, -28($r29)
	lwcl	$f2, -32($r29)
	lwcl	$f6, -40($r29)
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.10365	! callcls
	j	.mendoi1.10364	! callcls
.mendoi2.10365:	! callcls
	jr	$r27	! callcls
.mendoi1.10364:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r3, $r2, 2
	lw	$r4, -16($r29)
	addi	$r4, $r4, 3
	lw	$r5, -20($r29)
	lwcl	$f6, 8($r5)
	lwcl	$f0, -28($r29)
	lwcl	$f2, -32($r29)
	lwcl	$f4, -36($r29)
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.10367	! callcls
	j	.mendoi1.10366	! callcls
.mendoi2.10367:	! callcls
	jr	$r27	! callcls
.mendoi1.10366:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, 3
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.setup_surface_reflection.3375:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r2, $r2, 2
	addi	$r2, $r2, 1
	lw	$r7, 0($r4)
	lfh	$f0, 16256
	lfl	$f0, 0
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r7, -12($r29)
	sw	$r6, -16($r29)
	sw	$r5, -20($r29)
	sw	$r3, -24($r29)
	swcl	$f0, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -24($r29)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.o_param_abc.2969	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.veciprod.2928	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lfh	$f2, 16384
	lfl	$f2, 0
	lw	$r2, -24($r29)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.o_param_a.2963	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	lwcl	$f4, 0($r2)
	sub.s	$f0, $f0, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	lw	$r3, -24($r29)
	swcl	$f0, -44($r29)
	swcl	$f4, -48($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.o_param_b.2965	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	lwcl	$f4, 4($r2)
	sub.s	$f0, $f0, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	lw	$r3, -24($r29)
	swcl	$f0, -52($r29)
	swcl	$f4, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.o_param_c.2967	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	lwcl	$f2, 8($r2)
	sub.s	$f6, $f0, $f2
	lwcl	$f0, -32($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r28, -16($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10370	! callcls
	j	.mendoi1.10369	! callcls
.mendoi2.10370:	! callcls
	jr	$r27	! callcls
.mendoi1.10369:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.setup_reflections.3378:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.10372
	sll	$r6, $r2, 2
	addu	$r1, $r5, $r6
	lw	$r5, 0($r1)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_reflectiontype.2957	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.10373
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_diffuse.2977	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.fless.2783	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.10374
	jr	$r31
.beq_else.10374:
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.o_form.2955	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.10376
	lw	$r2, -8($r29)
	lw	$r3, -16($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10376:
	addi	$r3, $r0, 2
	bne	$r2, $r3, .beq_else.10377
	lw	$r2, -8($r29)
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.10377:
	jr	$r31
.beq_else.10373:
	jr	$r31
.ble_else.10372:
	jr	$r31
.rt.3380:
	lw	$r4, 56($r28)
	lw	$r5, 52($r28)
	lw	$r6, 48($r28)
	lw	$r7, 44($r28)
	lw	$r8, 40($r28)
	lw	$r9, 36($r28)
	lw	$r10, 32($r28)
	lw	$r11, 28($r28)
	lw	$r12, 24($r28)
	lw	$r13, 20($r28)
	lw	$r14, 16($r28)
	lw	$r15, 12($r28)
	lw	$r16, 8($r28)
	lw	$r17, 4($r28)
	sw	$r2, 0($r15)
	sw	$r3, 4($r15)
	sra	$r15, $r2, 1
	sw	$r15, 0($r16)
	sra	$r3, $r3, 1
	sw	$r3, 4($r16)
	lfh	$f0, 17152
	lfl	$f0, 0
	sw	$r8, -4($r29)
	sw	$r10, -8($r29)
	sw	$r5, -12($r29)
	sw	$r11, -16($r29)
	sw	$r6, -20($r29)
	sw	$r13, -24($r29)
	sw	$r12, -28($r29)
	sw	$r14, -32($r29)
	sw	$r4, -36($r29)
	sw	$r9, -40($r29)
	sw	$r17, -44($r29)
	sw	$r7, -48($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -48($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -44($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.10382	! callcls
	j	.mendoi1.10381	! callcls
.mendoi2.10382:	! callcls
	jr	$r27	! callcls
.mendoi1.10381:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r28, -44($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.10384	! callcls
	j	.mendoi1.10383	! callcls
.mendoi2.10384:	! callcls
	jr	$r27	! callcls
.mendoi1.10383:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r28, -44($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.10386	! callcls
	j	.mendoi1.10385	! callcls
.mendoi2.10386:	! callcls
	jr	$r27	! callcls
.mendoi1.10385:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r28, -40($r29)
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10388	! callcls
	j	.mendoi1.10387	! callcls
.mendoi2.10388:	! callcls
	jr	$r27	! callcls
.mendoi1.10387:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r28, -36($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10390	! callcls
	j	.mendoi1.10389	! callcls
.mendoi2.10390:	! callcls
	jr	$r27	! callcls
.mendoi1.10389:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r28, -32($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10392	! callcls
	j	.mendoi1.10391	! callcls
.mendoi2.10392:	! callcls
	jr	$r27	! callcls
.mendoi1.10391:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -28($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.d_vec.3014	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.veccpy.2917	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r2, -28($r29)
	lw	$r28, -20($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10394	! callcls
	j	.mendoi1.10393	! callcls
.mendoi2.10394:	! callcls
	jr	$r27	! callcls
.mendoi1.10393:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r28, -12($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10396	! callcls
	j	.mendoi1.10395	! callcls
.mendoi2.10396:	! callcls
	jr	$r27	! callcls
.mendoi1.10395:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r2, -60($r29)
	lw	$r28, -8($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.10398	! callcls
	j	.mendoi1.10397	! callcls
.mendoi2.10398:	! callcls
	jr	$r27	! callcls
.mendoi1.10397:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r2, $r0, 0
	addi	$r6, $r0, 2
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	lw	$r5, -64($r29)
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
	la	$r4, .read_int_token.2826
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -4($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, .read_int.2829
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r2, 8($r5)
	sw	$r4, 4($r5)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r5, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, .read_float_token1.2835
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -12($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, .read_float_token2.2838
	sw	$r6, 0($r5)
	lw	$r6, -16($r29)
	sw	$r6, 8($r5)
	lw	$r7, -20($r29)
	sw	$r7, 4($r5)
	addi	$r8, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, .read_float.2840
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
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
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
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 17279
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 50
	addi	$r4, $r0, 1
	addi	$r5, $r0, -1
	sw	$r2, -48($r29)
	sw	$r3, -52($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	lw	$r5, 0($r2)
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -120($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -140($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r0, 0
	addi	$r4, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r4)
	lw	$r2, -140($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r4, 0
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 60
	lw	$r4, -148($r29)
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -152($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -160($r29)
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -160($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	addi	$r3, $r0, 180
	addi	$r4, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	swcl	$f0, 8($r5)
	sw	$r2, 4($r5)
	sw	$r4, 0($r5)
	addi	$r2, $r5, 0
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -164($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r4, .read_screen_settings.3026
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
	la	$r10, .read_light.3028
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
	la	$r14, .read_nth_object.3033
	sw	$r14, 0($r13)
	sw	$r10, 12($r13)
	sw	$r8, 8($r13)
	lw	$r8, -32($r29)
	sw	$r8, 4($r13)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, .read_object.3035
	sw	$r15, 0($r14)
	sw	$r13, 8($r14)
	lw	$r13, -28($r29)
	sw	$r13, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .read_all_object.3037
	sw	$r16, 0($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .read_net_item.3039
	sw	$r16, 0($r14)
	sw	$r10, 4($r14)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .read_or_network.3041
	sw	$r16, 0($r10)
	sw	$r14, 4($r10)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, .read_and_network.3043
	sw	$r17, 0($r16)
	sw	$r14, 8($r16)
	lw	$r14, -56($r29)
	sw	$r14, 4($r16)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 28
	la	$r18, .read_parameter.3045
	sw	$r18, 0($r17)
	sw	$r3, 24($r17)
	sw	$r10, 20($r17)
	sw	$r9, 16($r17)
	sw	$r16, 12($r17)
	sw	$r15, 8($r17)
	lw	$r3, -64($r29)
	sw	$r3, 4($r17)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r10, .solver_rect_surface.3047
	sw	$r10, 0($r9)
	lw	$r10, -68($r29)
	sw	$r10, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .solver_rect.3056
	sw	$r16, 0($r15)
	sw	$r9, 4($r15)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .solver_surface.3062
	sw	$r16, 0($r9)
	sw	$r10, 4($r9)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, .solver_second.3081
	sw	$r18, 0($r16)
	sw	$r10, 4($r16)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 20
	la	$r19, .solver.3087
	sw	$r19, 0($r18)
	sw	$r9, 16($r18)
	sw	$r16, 12($r18)
	sw	$r15, 8($r18)
	sw	$r8, 4($r18)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .solver_rect_fast.3091
	sw	$r15, 0($r9)
	sw	$r10, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .solver_surface_fast.3098
	sw	$r16, 0($r15)
	sw	$r10, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, .solver_second_fast.3104
	sw	$r19, 0($r16)
	sw	$r10, 4($r16)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 20
	la	$r20, .solver_fast.3110
	sw	$r20, 0($r19)
	sw	$r15, 16($r19)
	sw	$r16, 12($r19)
	sw	$r9, 8($r19)
	sw	$r8, 4($r19)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .solver_surface_fast2.3114
	sw	$r16, 0($r15)
	sw	$r10, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r20, .solver_second_fast2.3121
	sw	$r20, 0($r16)
	sw	$r10, 4($r16)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 20
	la	$r21, .solver_fast2.3128
	sw	$r21, 0($r20)
	sw	$r15, 16($r20)
	sw	$r16, 12($r20)
	sw	$r9, 8($r20)
	sw	$r8, 4($r20)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .iter_setup_dirvec_constants.3140
	sw	$r15, 0($r9)
	sw	$r8, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 12
	la	$r16, .setup_dirvec_constants.3143
	sw	$r16, 0($r15)
	sw	$r13, 8($r15)
	sw	$r9, 4($r15)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .setup_startp_constants.3145
	sw	$r16, 0($r9)
	sw	$r8, 4($r9)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 16
	la	$r21, .setup_startp.3148
	sw	$r21, 0($r16)
	lw	$r21, -120($r29)
	sw	$r21, 12($r16)
	sw	$r9, 8($r16)
	sw	$r13, 4($r16)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r22, .check_all_inside.3170
	sw	$r22, 0($r9)
	sw	$r8, 4($r9)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 32
	la	$r23, .shadow_check_and_group.3176
	sw	$r23, 0($r22)
	sw	$r19, 28($r22)
	sw	$r10, 24($r22)
	sw	$r8, 20($r22)
	lw	$r23, -156($r29)
	sw	$r23, 16($r22)
	sw	$r11, 12($r22)
	lw	$r24, -80($r29)
	sw	$r24, 8($r22)
	sw	$r9, 4($r22)
	addi	$r25, $r30, 0
	addi	$r30, $r30, 12
	la	$r26, .shadow_check_one_or_group.3179
	sw	$r26, 0($r25)
	sw	$r22, 8($r25)
	sw	$r14, 4($r25)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 24
	la	$r26, .shadow_check_one_or_matrix.3182
	sw	$r26, 0($r22)
	sw	$r19, 20($r22)
	sw	$r10, 16($r22)
	sw	$r25, 12($r22)
	sw	$r23, 8($r22)
	sw	$r24, 4($r22)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 40
	la	$r25, .solve_each_element.3185
	sw	$r25, 0($r19)
	lw	$r25, -76($r29)
	sw	$r25, 36($r19)
	lw	$r26, -116($r29)
	sw	$r26, 32($r19)
	sw	$r10, 28($r19)
	sw	$r18, 24($r19)
	sw	$r8, 20($r19)
	lw	$r27, -72($r29)
	sw	$r27, 16($r19)
	sw	$r24, 12($r19)
	lw	$r28, -84($r29)
	sw	$r28, 8($r19)
	sw	$r9, 4($r19)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 12
	sw	$r17, -168($r29)
	la	$r17, .solve_one_or_network.3189
	sw	$r17, 0($r23)
	sw	$r19, 8($r23)
	sw	$r14, 4($r23)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 24
	la	$r19, .trace_or_matrix.3193
	sw	$r19, 0($r17)
	sw	$r25, 20($r17)
	sw	$r26, 16($r17)
	sw	$r10, 12($r17)
	sw	$r18, 8($r17)
	sw	$r23, 4($r17)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 16
	la	$r19, .judge_intersection.3197
	sw	$r19, 0($r18)
	sw	$r17, 12($r18)
	sw	$r25, 8($r18)
	sw	$r3, 4($r18)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 40
	la	$r19, .solve_each_element_fast.3199
	sw	$r19, 0($r17)
	sw	$r25, 36($r17)
	sw	$r21, 32($r17)
	sw	$r20, 28($r17)
	sw	$r10, 24($r17)
	sw	$r8, 20($r17)
	sw	$r27, 16($r17)
	sw	$r24, 12($r17)
	sw	$r28, 8($r17)
	sw	$r9, 4($r17)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r19, .solve_one_or_network_fast.3203
	sw	$r19, 0($r9)
	sw	$r17, 8($r9)
	sw	$r14, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 20
	la	$r17, .trace_or_matrix_fast.3207
	sw	$r17, 0($r14)
	sw	$r25, 16($r14)
	sw	$r20, 12($r14)
	sw	$r10, 8($r14)
	sw	$r9, 4($r14)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 16
	la	$r10, .judge_intersection_fast.3211
	sw	$r10, 0($r9)
	sw	$r14, 12($r9)
	sw	$r25, 8($r9)
	sw	$r3, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r14, .get_nvector_rect.3213
	sw	$r14, 0($r10)
	lw	$r14, -88($r29)
	sw	$r14, 8($r10)
	sw	$r27, 4($r10)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, .get_nvector_plane.3215
	sw	$r19, 0($r17)
	sw	$r14, 4($r17)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r20, .get_nvector_second.3217
	sw	$r20, 0($r19)
	sw	$r14, 8($r19)
	sw	$r24, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 16
	la	$r21, .get_nvector.3219
	sw	$r21, 0($r20)
	sw	$r19, 12($r20)
	sw	$r10, 8($r20)
	sw	$r17, 4($r20)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r17, .utexture.3222
	sw	$r17, 0($r10)
	lw	$r17, -92($r29)
	sw	$r17, 4($r10)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r21, .add_light.3225
	sw	$r21, 0($r19)
	sw	$r17, 8($r19)
	lw	$r21, -100($r29)
	sw	$r21, 4($r19)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 36
	sw	$r15, -172($r29)
	la	$r15, .trace_reflections.3229
	sw	$r15, 0($r23)
	sw	$r22, 32($r23)
	lw	$r15, -164($r29)
	sw	$r15, 28($r23)
	sw	$r3, 24($r23)
	sw	$r14, 20($r23)
	sw	$r9, 16($r23)
	sw	$r27, 12($r23)
	sw	$r28, 8($r23)
	sw	$r19, 4($r23)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 84
	la	$r13, .trace_ray.3234
	sw	$r13, 0($r15)
	sw	$r10, 80($r15)
	sw	$r23, 76($r15)
	sw	$r25, 72($r15)
	sw	$r17, 68($r15)
	sw	$r26, 64($r15)
	sw	$r22, 60($r15)
	sw	$r16, 56($r15)
	sw	$r21, 52($r15)
	sw	$r3, 48($r15)
	sw	$r8, 44($r15)
	sw	$r14, 40($r15)
	sw	$r2, 36($r15)
	sw	$r11, 32($r15)
	sw	$r18, 28($r15)
	sw	$r27, 24($r15)
	sw	$r24, 20($r15)
	sw	$r28, 16($r15)
	sw	$r20, 12($r15)
	sw	$r12, 8($r15)
	sw	$r19, 4($r15)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 52
	la	$r13, .trace_diffuse_ray.3240
	sw	$r13, 0($r12)
	sw	$r10, 48($r12)
	sw	$r17, 44($r12)
	sw	$r22, 40($r12)
	sw	$r3, 36($r12)
	sw	$r8, 32($r12)
	sw	$r14, 28($r12)
	sw	$r11, 24($r12)
	sw	$r9, 20($r12)
	sw	$r24, 16($r12)
	sw	$r28, 12($r12)
	sw	$r20, 8($r12)
	lw	$r3, -96($r29)
	sw	$r3, 4($r12)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r10, .iter_trace_diffuse_rays.3243
	sw	$r10, 0($r9)
	sw	$r12, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r12, .trace_diffuse_rays.3248
	sw	$r12, 0($r10)
	sw	$r16, 8($r10)
	sw	$r9, 4($r10)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r12, .trace_diffuse_ray_80percent.3252
	sw	$r12, 0($r9)
	sw	$r10, 8($r9)
	lw	$r12, -144($r29)
	sw	$r12, 4($r9)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, .calc_diffuse_using_1point.3256
	sw	$r14, 0($r13)
	sw	$r9, 12($r13)
	sw	$r21, 8($r13)
	sw	$r3, 4($r13)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r14, .calc_diffuse_using_5points.3259
	sw	$r14, 0($r9)
	sw	$r21, 8($r9)
	sw	$r3, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .do_without_neighbors.3265
	sw	$r16, 0($r14)
	sw	$r13, 4($r14)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .neighbors_exist.3268
	sw	$r16, 0($r13)
	lw	$r16, -104($r29)
	sw	$r16, 4($r13)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 12
	la	$r18, .try_exploit_neighbors.3281
	sw	$r18, 0($r17)
	sw	$r14, 8($r17)
	sw	$r9, 4($r17)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, .write_ppm_header.3288
	sw	$r18, 0($r9)
	sw	$r16, 4($r9)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, .write_rgb.3292
	sw	$r19, 0($r18)
	sw	$r21, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 16
	la	$r20, .pretrace_diffuse_rays.3294
	sw	$r20, 0($r19)
	sw	$r10, 12($r19)
	sw	$r12, 8($r19)
	sw	$r3, 4($r19)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 40
	la	$r10, .pretrace_pixels.3297
	sw	$r10, 0($r3)
	sw	$r4, 36($r3)
	sw	$r15, 32($r3)
	sw	$r26, 28($r3)
	sw	$r7, 24($r3)
	lw	$r4, -112($r29)
	sw	$r4, 20($r3)
	sw	$r21, 16($r3)
	lw	$r7, -136($r29)
	sw	$r7, 12($r3)
	sw	$r19, 8($r3)
	lw	$r7, -108($r29)
	sw	$r7, 4($r3)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 28
	la	$r15, .pretrace_line.3304
	sw	$r15, 0($r10)
	sw	$r5, 24($r10)
	sw	$r6, 20($r10)
	sw	$r4, 16($r10)
	sw	$r3, 12($r10)
	sw	$r16, 8($r10)
	sw	$r7, 4($r10)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r5, .scan_pixel.3308
	sw	$r5, 0($r3)
	sw	$r18, 24($r3)
	sw	$r17, 20($r3)
	sw	$r21, 16($r3)
	sw	$r13, 12($r3)
	sw	$r16, 8($r3)
	sw	$r14, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, .scan_line.3314
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r10, 8($r5)
	sw	$r16, 4($r5)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	la	$r6, .create_pixelline.3327
	sw	$r6, 0($r3)
	sw	$r16, 4($r3)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r13, .calc_dirvec.3334
	sw	$r13, 0($r6)
	sw	$r12, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, .calc_dirvecs.3342
	sw	$r14, 0($r13)
	sw	$r6, 4($r13)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, .calc_dirvec_rows.3347
	sw	$r14, 0($r6)
	sw	$r13, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, .create_dirvec.3351
	sw	$r14, 0($r13)
	lw	$r14, -28($r29)
	sw	$r14, 4($r13)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r17, .create_dirvec_elements.3353
	sw	$r17, 0($r15)
	sw	$r13, 4($r15)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, .create_dirvecs.3356
	sw	$r18, 0($r17)
	sw	$r12, 12($r17)
	sw	$r15, 8($r17)
	sw	$r13, 4($r17)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, .init_dirvec_constants.3358
	sw	$r18, 0($r15)
	lw	$r18, -172($r29)
	sw	$r18, 4($r15)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r20, .init_vecset_constants.3361
	sw	$r20, 0($r19)
	sw	$r15, 8($r19)
	sw	$r12, 4($r19)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, .init_dirvecs.3363
	sw	$r15, 0($r12)
	sw	$r19, 12($r12)
	sw	$r17, 8($r12)
	sw	$r6, 4($r12)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, .add_reflection.3365
	sw	$r15, 0($r6)
	sw	$r18, 12($r6)
	lw	$r15, -164($r29)
	sw	$r15, 8($r6)
	sw	$r13, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, .setup_rect_reflection.3372
	sw	$r15, 0($r13)
	sw	$r2, 12($r13)
	sw	$r11, 8($r13)
	sw	$r6, 4($r13)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r17, .setup_surface_reflection.3375
	sw	$r17, 0($r15)
	sw	$r2, 12($r15)
	sw	$r11, 8($r15)
	sw	$r6, 4($r15)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, .setup_reflections.3378
	sw	$r6, 0($r2)
	sw	$r15, 12($r2)
	sw	$r13, 8($r2)
	sw	$r8, 4($r2)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 60
	la	$r6, .rt.3380
	sw	$r6, 0($r28)
	sw	$r9, 56($r28)
	sw	$r2, 52($r28)
	sw	$r18, 48($r28)
	sw	$r4, 44($r28)
	sw	$r5, 40($r28)
	lw	$r2, -168($r29)
	sw	$r2, 36($r28)
	sw	$r10, 32($r28)
	sw	$r14, 28($r28)
	lw	$r2, -156($r29)
	sw	$r2, 24($r28)
	sw	$r11, 20($r28)
	sw	$r12, 16($r28)
	sw	$r16, 12($r28)
	sw	$r7, 8($r28)
	sw	$r3, 4($r28)
	addi	$r2, $r0, 128
	addi	$r3, $r0, 128
	sw	$r31, -176($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -176	! callcls
	jal	.mendoi2.10400	! callcls
	j	.mendoi1.10399	! callcls
.mendoi2.10400:	! callcls
	jr	$r27	! callcls
.mendoi1.10399:	! callcls
	addi	$r29, $r29, 176	! callcls
	lw	$r31, -176($r29)	! callcls
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
.min_caml_sqrt:		! 引数: $f0
	addi	$r2, $r0, 10
	lfh	$f1, 16256
	lfl	$f1, 0
.SQRT_SUB:		! ニュートン法10回, 初期値($f1: 1.0)	x: $f0, y: $f1
	mul.s	$f2, $f1, $f1
	sub.s	$f2, $f2, $f0		! $f2 = y */ y -. x
	lfh	$f3, 16384
	lfl	$f3, 0
	mul.s	$f3, $f3, $f1		! $f3 = 2.0 *. y
	div.s	$f2, $f2, $f3		! $f2 = (y */ y -. x) /. (2.0 *. y)
	sub.s	$f1, $f1, $f2
	addi	$r2, $r2, -1
	bne	$r2, $r0, .SQRT_SUB	! ループ
	fmove	$f0, $f1
	jr	$r31

	
	
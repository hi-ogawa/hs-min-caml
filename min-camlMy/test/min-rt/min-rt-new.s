	j	min_caml_start
fless.2795:
	c.le.s	$f2, $f0
	bclf	bclt_else.9751
	addi	$r2, $r0, 0
	jr	$r31
bclt_else.9751:
	addi	$r2, $r0, 1
	jr	$r31
fispos.2798:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	bclt_else.9752
	addi	$r2, $r0, 0
	jr	$r31
bclt_else.9752:
	addi	$r2, $r0, 1
	jr	$r31
fisneg.2800:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclt_else.9753
	addi	$r2, $r0, 0
	jr	$r31
bclt_else.9753:
	addi	$r2, $r0, 1
	jr	$r31
fiszero.2802:
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	bclt_else.9754
	addi	$r2, $r0, 1
	jr	$r31
bclt_else.9754:
	addi	$r2, $r0, 0
	jr	$r31
fabs.2807:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclt_else.9755
	jr	$r31
bclt_else.9755:
	fneg	$f0, $f0
	jr	$r31
fneg.2811:
	fneg	$f0, $f0
	jr	$r31
fhalf.2813:
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	jr	$r31
fsqr.2815:
	mul.s	$f0, $f0, $f0
	jr	$r31
next.6851:
	lwcl	$f2, 4($r28)
	mul.s	$f4, $f0, $f0
	sub.s	$f2, $f4, $f2
	lfh	$f4, 16384
	lfl	$f4, 0
	mul.s	$f4, $f4, $f0
	div.s	$f2, $f2, $f4
	sub.s	$f0, $f0, $f2
	jr	$r31
sub_sqrt.6853:
	lw	$r3, 4($r28)
	addi	$r4, $r0, 0
	bgt	$r4, $r2, ble_else.9756
	swcl	$f0, -4($r29)
	sw	$r28, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.9758	! callcls
	j	mendoi1.9757	! callcls
mendoi2.9758:	! callcls
	jr	$r27	! callcls
mendoi1.9757:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	lwcl	$f2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.9756:
	jr	$r31
sqrt.2817:
	addi	$r28, $r30, 0
	addi	$r30, $r30, 8
	la	$r2, next.6851
	sw	$r2, 0($r28)
	swcl	$f0, 4($r28)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 8
	la	$r3, sub_sqrt.6853
	sw	$r3, 0($r2)
	sw	$r28, 4($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -8	! callcls
	jal	mendoi2.9760	! callcls
	j	mendoi1.9759	! callcls
mendoi2.9760:	! callcls
	jr	$r27	! callcls
mendoi1.9759:	! callcls
	addi	$r29, $r29, 8	! callcls
	lw	$r31, -8($r29)	! callcls
	lfh	$f2, 16256
	lfl	$f2, 0
	addi	$r2, $r0, 15
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
atan_sub.2822:
	lfh	$f6, 16128
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	bclt_else.9761
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
	j	atan_sub.2822	! calldir-tail
bclt_else.9761:
	fmove	$f0, $f4
	jr	$r31
atan.2826:
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	bclt_else.9762
	lfh	$f2, 49024
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclt_else.9764
	addi	$r2, $r0, 0
	j	bclt_cont.9765
bclt_else.9764:
	addi	$r2, $r0, -1
bclt_cont.9765:
	j	bclt_cont.9763
bclt_else.9762:
	addi	$r2, $r0, 1
bclt_cont.9763:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9766
	j	beq_cont.9767
beq_else.9766:
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
beq_cont.9767:
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
	jal	atan_sub.2822	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	add.s	$f0, $f2, $f0
	lwcl	$f2, -8($r29)
	div.s	$f0, $f2, $f0
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bgt	$r3, $r2, ble_else.9768
	addi	$r2, $r0, 0
	bgt	$r2, $r3, ble_else.9769
	jr	$r31
ble_else.9769:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
ble_else.9768:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
tan_sub.6802:
	lfh	$f6, 16416
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	bclt_else.9770
	lfh	$f6, 16384
	lfl	$f6, 0
	sub.s	$f6, $f0, $f6
	sub.s	$f0, $f0, $f4
	div.s	$f4, $f2, $f0
	fmove	$f0, $f6	! g'_args
	j	tan_sub.6802	! calldir-tail
bclt_else.9770:
	fmove	$f0, $f4
	jr	$r31
tan.2828:
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
	jal	tan_sub.6802	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -4($r29)
	div.s	$f0, $f2, $f0
	jr	$r31
sin_sub.2830:
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	bclt_else.9771
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	bclt_else.9772
	jr	$r31
bclt_else.9772:
	add.s	$f0, $f0, $f2
	j	sin_sub.2830	! calldir-tail
bclt_else.9771:
	sub.s	$f0, $f0, $f2
	j	sin_sub.2830	! calldir-tail
sin.2832:
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f4, 16585
	lfl	$f4, 4059
	lfh	$f6, 16329
	lfl	$f6, 4059
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f0, $f8
	bclf	bclt_else.9773
	addi	$r2, $r0, 0
	j	bclt_cont.9774
bclt_else.9773:
	addi	$r2, $r0, 1
bclt_cont.9774:
	swcl	$f6, -4($r29)
	swcl	$f4, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	sin_sub.2830	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	bclt_else.9775
	lw	$r2, -12($r29)
	j	bclt_cont.9776
bclt_else.9775:
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	bne	$r3, $r2, beq_else.9777
	addi	$r2, $r0, 1
	j	beq_cont.9778
beq_else.9777:
	addi	$r2, $r0, 0
beq_cont.9778:
bclt_cont.9776:
	c.le.s	$f0, $f2
	bclf	bclt_else.9779
	j	bclt_cont.9780
bclt_else.9779:
	lwcl	$f4, -8($r29)
	sub.s	$f0, $f4, $f0
bclt_cont.9780:
	lwcl	$f4, -4($r29)
	c.le.s	$f0, $f4
	bclf	bclt_else.9781
	j	bclt_cont.9782
bclt_else.9781:
	sub.s	$f0, $f2, $f0
bclt_cont.9782:
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	tan.2828	! calldir
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
	bne	$r3, $r2, beq_else.9783
	j	fneg.2811	! calldir-tail
beq_else.9783:
	jr	$r31
cos.2834:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	j	sin.2832	! calldir-tail
mul10.2836:
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	jr	$r31
read_int_token.2840:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, ble_else.9784
	addi	$r2, $r0, 57
	bgt	$r3, $r2, ble_else.9786
	addi	$r2, $r0, 0
	j	ble_cont.9787
ble_else.9786:
	addi	$r2, $r0, 1
ble_cont.9787:
	j	ble_cont.9785
ble_else.9784:
	addi	$r2, $r0, 1
ble_cont.9785:
	addi	$r4, $r0, 0
	bne	$r2, $r4, beq_else.9788
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, beq_else.9789
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, beq_else.9791
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	beq_cont.9792
beq_else.9791:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
beq_cont.9792:
	j	beq_cont.9790
beq_else.9789:
beq_cont.9790:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sw	$r3, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	mul10.2836	! calldir
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
beq_else.9788:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, beq_else.9793
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.9793:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.9794
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
beq_else.9794:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
read_int.2843:
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
read_float_token1.2849:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, ble_else.9795
	addi	$r2, $r0, 57
	bgt	$r3, $r2, ble_else.9797
	addi	$r2, $r0, 0
	j	ble_cont.9798
ble_else.9797:
	addi	$r2, $r0, 1
ble_cont.9798:
	j	ble_cont.9796
ble_else.9795:
	addi	$r2, $r0, 1
ble_cont.9796:
	addi	$r4, $r0, 0
	bne	$r2, $r4, beq_else.9799
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, beq_else.9800
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, beq_else.9802
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	beq_cont.9803
beq_else.9802:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
beq_cont.9803:
	j	beq_cont.9801
beq_else.9800:
beq_cont.9801:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sw	$r3, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	mul10.2836	! calldir
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
beq_else.9799:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, beq_else.9804
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.9804:
	addi	$r2, $r3, 0
	jr	$r31
read_float_token2.2852:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	input	$r2
	addi	$r3, $r0, 48
	bgt	$r3, $r2, ble_else.9805
	addi	$r3, $r0, 57
	bgt	$r2, $r3, ble_else.9807
	addi	$r3, $r0, 0
	j	ble_cont.9808
ble_else.9807:
	addi	$r3, $r0, 1
ble_cont.9808:
	j	ble_cont.9806
ble_else.9805:
	addi	$r3, $r0, 1
ble_cont.9806:
	addi	$r4, $r0, 0
	bne	$r3, $r4, beq_else.9809
	lw	$r3, -16($r29)
	lw	$r4, 0($r3)
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	mul10.2836	! calldir
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
	jal	mul10.2836	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 1
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.9809:
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, beq_else.9810
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.9810:
	jr	$r31
read_float.2854:
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
	jal	mendoi2.9813	! callcls
	j	mendoi1.9812	! callcls
mendoi2.9813:	! callcls
	jr	$r27	! callcls
mendoi1.9812:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 46
	bne	$r2, $r3, beq_else.9814
	addi	$r2, $r0, 0
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9817	! callcls
	j	mendoi1.9816	! callcls
mendoi2.9817:	! callcls
	jr	$r27	! callcls
mendoi1.9816:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -24($r29)
	add.s	$f0, $f2, $f0
	j	beq_cont.9815
beq_else.9814:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
beq_cont.9815:
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.9818
	jr	$r31
beq_else.9818:
	fneg	$f0, $f0
	jr	$r31
mul_sub.2856:
	addi	$r4, $r0, 0
	bne	$r3, $r4, beq_else.9819
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9819:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, beq_else.9820
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2856	! calldir-tail
beq_else.9820:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	mul_sub.2856	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2859:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, ble_else.9821
	j	mul_sub.2856	! calldir-tail
ble_else.9821:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	j	mul_sub.2856	! calldir-tail
div_binary_search.2862:
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
	jal	mul.2859	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r4, -16($r29)
	lw	$r5, -20($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, ble_else.9822
	addi	$r2, $r4, 0
	jr	$r31
ble_else.9822:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, ble_else.9823
	bne	$r2, $r3, beq_else.9824
	lw	$r2, -8($r29)
	jr	$r31
beq_else.9824:
	lw	$r2, -4($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	div_binary_search.2862	! calldir-tail
ble_else.9823:
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	div_binary_search.2862	! calldir-tail
print_int.2874:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, ble_else.9825
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bgt	$r4, $r3, ble_else.9826
	addi	$r2, $r0, 0
	j	ble_cont.9827
ble_else.9826:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9827:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	sw	$r2, -24($r29)
	bgt	$r4, $r3, ble_else.9828
	addi	$r3, $r0, 0
	lw	$r5, -16($r29)
	bne	$r5, $r3, beq_else.9830
	addi	$r2, $r0, 0
	j	beq_cont.9831
beq_else.9830:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9831:
	j	ble_cont.9829
ble_else.9828:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9829:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -24($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	sw	$r2, -36($r29)
	bgt	$r4, $r3, ble_else.9832
	addi	$r3, $r0, 0
	lw	$r5, -28($r29)
	bne	$r5, $r3, beq_else.9834
	addi	$r2, $r0, 0
	j	beq_cont.9835
beq_else.9834:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9835:
	j	ble_cont.9833
ble_else.9832:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9833:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -36($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -44($r29)
	sw	$r2, -48($r29)
	bgt	$r4, $r3, ble_else.9836
	addi	$r3, $r0, 0
	lw	$r5, -40($r29)
	bne	$r5, $r3, beq_else.9838
	addi	$r2, $r0, 0
	j	beq_cont.9839
beq_else.9838:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9839:
	j	ble_cont.9837
ble_else.9836:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9837:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 10000
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -48($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -56($r29)
	sw	$r2, -60($r29)
	bgt	$r4, $r3, ble_else.9840
	addi	$r3, $r0, 0
	lw	$r5, -52($r29)
	bne	$r5, $r3, beq_else.9842
	addi	$r2, $r0, 0
	j	beq_cont.9843
beq_else.9842:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9843:
	j	ble_cont.9841
ble_else.9840:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9841:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -60($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1000
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -60($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -68($r29)
	sw	$r2, -72($r29)
	bgt	$r4, $r3, ble_else.9844
	addi	$r3, $r0, 0
	lw	$r5, -64($r29)
	bne	$r5, $r3, beq_else.9846
	addi	$r2, $r0, 0
	j	beq_cont.9847
beq_else.9846:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9847:
	j	ble_cont.9845
ble_else.9844:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9845:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -72($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 100
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -72($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, ble_else.9848
	addi	$r3, $r0, 0
	lw	$r5, -76($r29)
	bne	$r5, $r3, beq_else.9850
	addi	$r2, $r0, 0
	j	beq_cont.9851
beq_else.9850:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9851:
	j	ble_cont.9849
ble_else.9848:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9849:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	div_binary_search.2862	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r0, 10
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	mul.2859	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -92($r29)
	sw	$r2, -96($r29)
	bgt	$r4, $r3, ble_else.9852
	addi	$r3, $r0, 0
	lw	$r5, -88($r29)
	bne	$r5, $r3, beq_else.9854
	addi	$r2, $r0, 0
	j	beq_cont.9855
beq_else.9854:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
beq_cont.9855:
	j	ble_cont.9853
ble_else.9852:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
ble_cont.9853:
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
ble_else.9825:
	addi	$r3, $r0, 45
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -4($r29)
	subu	$r2, $r0, $r2
	j	print_int.2874	! calldir-tail
xor.2910:
	addi	$r4, $r0, 0
	bne	$r2, $r4, beq_else.9856
	addi	$r2, $r3, 0
	jr	$r31
beq_else.9856:
	addi	$r2, $r0, 0
	bne	$r3, $r2, beq_else.9857
	addi	$r2, $r0, 1
	jr	$r31
beq_else.9857:
	addi	$r2, $r0, 0
	jr	$r31
sgn.2913:
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9858
	lwcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9859
	lfh	$f0, 49024
	lfl	$f0, 0
	jr	$r31
beq_else.9859:
	lfh	$f0, 16256
	lfl	$f0, 0
	jr	$r31
beq_else.9858:
	lfh	$f0, 0
	lfl	$f0, 0
	jr	$r31
fneg_cond.2915:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9860
	j	fneg.2811	! calldir-tail
beq_else.9860:
	jr	$r31
add_mod5.2918:
	addu	$r2, $r2, $r3
	addi	$r3, $r0, 5
	bgt	$r3, $r2, ble_else.9861
	addi	$r2, $r2, -5
	jr	$r31
ble_else.9861:
	jr	$r31
vecset.2921:
	swcl	$f0, 0($r2)
	swcl	$f2, 4($r2)
	swcl	$f4, 8($r2)
	jr	$r31
vecfill.2926:
	swcl	$f0, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f0, 8($r2)
	jr	$r31
vecbzero.2929:
	lfh	$f0, 0
	lfl	$f0, 0
	j	vecfill.2926	! calldir-tail
veccpy.2931:
	lwcl	$f0, 0($r3)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r2)
	jr	$r31
vecunit_sgn.2939:
	lwcl	$f0, 0($r2)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9865
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, beq_else.9867
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -20($r29)
	div.s	$f0, $f0, $f2
	j	beq_cont.9868
beq_else.9867:
	lfh	$f0, 49024
	lfl	$f0, 0
	lwcl	$f2, -20($r29)
	div.s	$f0, $f0, $f2
beq_cont.9868:
	j	beq_cont.9866
beq_else.9865:
	lfh	$f0, 16256
	lfl	$f0, 0
beq_cont.9866:
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
veciprod.2942:
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
veciprod2.2945:
	lwcl	$f6, 0($r2)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 4($r2)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	jr	$r31
vecaccum.2950:
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
vecadd.2954:
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
vecscale.2960:
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
vecaccumv.2963:
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
o_texturetype.2967:
	lw	$r2, 0($r2)
	jr	$r31
o_form.2969:
	lw	$r2, 4($r2)
	jr	$r31
o_reflectiontype.2971:
	lw	$r2, 8($r2)
	jr	$r31
o_isinvert.2973:
	lw	$r2, 24($r2)
	jr	$r31
o_isrot.2975:
	lw	$r2, 12($r2)
	jr	$r31
o_param_a.2977:
	lw	$r2, 16($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
o_param_b.2979:
	lw	$r2, 16($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
o_param_c.2981:
	lw	$r2, 16($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
o_param_abc.2983:
	lw	$r2, 16($r2)
	jr	$r31
o_param_x.2985:
	lw	$r2, 20($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
o_param_y.2987:
	lw	$r2, 20($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
o_param_z.2989:
	lw	$r2, 20($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
o_diffuse.2991:
	lw	$r2, 28($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
o_hilight.2993:
	lw	$r2, 28($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
o_color_red.2995:
	lw	$r2, 32($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
o_color_green.2997:
	lw	$r2, 32($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
o_color_blue.2999:
	lw	$r2, 32($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
o_param_r1.3001:
	lw	$r2, 36($r2)
	lwcl	$f0, 0($r2)
	jr	$r31
o_param_r2.3003:
	lw	$r2, 36($r2)
	lwcl	$f0, 4($r2)
	jr	$r31
o_param_r3.3005:
	lw	$r2, 36($r2)
	lwcl	$f0, 8($r2)
	jr	$r31
o_param_ctbl.3007:
	lw	$r2, 40($r2)
	jr	$r31
p_rgb.3009:
	lw	$r2, 0($r2)
	jr	$r31
p_intersection_points.3011:
	lw	$r2, 4($r2)
	jr	$r31
p_surface_ids.3013:
	lw	$r2, 8($r2)
	jr	$r31
p_calc_diffuse.3015:
	lw	$r2, 12($r2)
	jr	$r31
p_energy.3017:
	lw	$r2, 16($r2)
	jr	$r31
p_received_ray_20percent.3019:
	lw	$r2, 20($r2)
	jr	$r31
p_group_id.3021:
	lw	$r2, 24($r2)
	lw	$r2, 0($r2)
	jr	$r31
p_set_group_id.3023:
	lw	$r2, 24($r2)
	sw	$r3, 0($r2)
	jr	$r31
p_nvectors.3026:
	lw	$r2, 28($r2)
	jr	$r31
d_vec.3028:
	lw	$r2, 0($r2)
	jr	$r31
d_const.3030:
	lw	$r2, 4($r2)
	jr	$r31
r_surface_id.3032:
	lw	$r2, 0($r2)
	jr	$r31
r_dvec.3034:
	lw	$r2, 4($r2)
	jr	$r31
r_bright.3036:
	lwcl	$f0, 8($r2)
	jr	$r31
rad.3038:
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	jr	$r31
read_screen_settings.3040:
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
	jal	mendoi2.9876	! callcls
	j	mendoi1.9875	! callcls
mendoi2.9876:	! callcls
	jr	$r27	! callcls
mendoi1.9875:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.9878	! callcls
	j	mendoi1.9877	! callcls
mendoi2.9878:	! callcls
	jr	$r27	! callcls
mendoi1.9877:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.9880	! callcls
	j	mendoi1.9879	! callcls
mendoi2.9880:	! callcls
	jr	$r27	! callcls
mendoi1.9879:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.9882	! callcls
	j	mendoi1.9881	! callcls
mendoi2.9882:	! callcls
	jr	$r27	! callcls
mendoi1.9881:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r28, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	mendoi2.9884	! callcls
	j	mendoi1.9883	! callcls
mendoi2.9884:	! callcls
	jr	$r27	! callcls
mendoi1.9883:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	swcl	$f0, -44($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sin.2832	! calldir
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
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -36($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -32($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -36($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fneg.2811	! calldir
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
read_light.3042:
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
	jal	mendoi2.9887	! callcls
	j	mendoi1.9886	! callcls
mendoi2.9887:	! callcls
	jr	$r27	! callcls
mendoi1.9886:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r28, -12($r29)
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.9889	! callcls
	j	mendoi1.9888	! callcls
mendoi2.9889:	! callcls
	jr	$r27	! callcls
mendoi1.9888:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	mendoi2.9891	! callcls
	j	mendoi1.9890	! callcls
mendoi2.9891:	! callcls
	jr	$r27	! callcls
mendoi1.9890:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -20($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	cos.2834	! calldir
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
	jal	mendoi2.9893	! callcls
	j	mendoi1.9892	! callcls
mendoi2.9893:	! callcls
	jr	$r27	! callcls
mendoi1.9892:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	jr	$r31
rotate_quadratic_matrix.3044:
	lwcl	$f0, 0($r3)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	sin.2832	! calldir
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
	jal	fneg.2811	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -48($r29)
	swcl	$f0, -80($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -40($r29)
	swcl	$f0, -88($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -32($r29)
	swcl	$f0, -96($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
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
read_nth_object.3047:
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
	jal	mendoi2.9897	! callcls
	j	mendoi1.9896	! callcls
mendoi2.9897:	! callcls
	jr	$r27	! callcls
mendoi1.9896:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, beq_else.9898
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9898:
	lw	$r28, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9900	! callcls
	j	mendoi1.9899	! callcls
mendoi2.9900:	! callcls
	jr	$r27	! callcls
mendoi1.9899:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.9902	! callcls
	j	mendoi1.9901	! callcls
mendoi2.9902:	! callcls
	jr	$r27	! callcls
mendoi1.9901:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	mendoi2.9904	! callcls
	j	mendoi1.9903	! callcls
mendoi2.9904:	! callcls
	jr	$r27	! callcls
mendoi1.9903:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	mendoi2.9906	! callcls
	j	mendoi1.9905	! callcls
mendoi2.9906:	! callcls
	jr	$r27	! callcls
mendoi1.9905:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	mendoi2.9908	! callcls
	j	mendoi1.9907	! callcls
mendoi2.9908:	! callcls
	jr	$r27	! callcls
mendoi1.9907:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	mendoi2.9910	! callcls
	j	mendoi1.9909	! callcls
mendoi2.9910:	! callcls
	jr	$r27	! callcls
mendoi1.9909:	! callcls
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
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	mendoi2.9912	! callcls
	j	mendoi1.9911	! callcls
mendoi2.9912:	! callcls
	jr	$r27	! callcls
mendoi1.9911:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	mendoi2.9914	! callcls
	j	mendoi1.9913	! callcls
mendoi2.9914:	! callcls
	jr	$r27	! callcls
mendoi1.9913:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	mendoi2.9916	! callcls
	j	mendoi1.9915	! callcls
mendoi2.9916:	! callcls
	jr	$r27	! callcls
mendoi1.9915:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	mendoi2.9918	! callcls
	j	mendoi1.9917	! callcls
mendoi2.9918:	! callcls
	jr	$r27	! callcls
mendoi1.9917:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 2
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	mendoi2.9920	! callcls
	j	mendoi1.9919	! callcls
mendoi2.9920:	! callcls
	jr	$r27	! callcls
mendoi1.9919:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	mendoi2.9922	! callcls
	j	mendoi1.9921	! callcls
mendoi2.9922:	! callcls
	jr	$r27	! callcls
mendoi1.9921:	! callcls
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
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	mendoi2.9924	! callcls
	j	mendoi1.9923	! callcls
mendoi2.9924:	! callcls
	jr	$r27	! callcls
mendoi1.9923:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	mendoi2.9926	! callcls
	j	mendoi1.9925	! callcls
mendoi2.9926:	! callcls
	jr	$r27	! callcls
mendoi1.9925:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	mendoi2.9928	! callcls
	j	mendoi1.9927	! callcls
mendoi2.9928:	! callcls
	jr	$r27	! callcls
mendoi1.9927:	! callcls
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
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	bne	$r4, $r3, beq_else.9929
	j	beq_cont.9930
beq_else.9929:
	lw	$r28, -12($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.9932	! callcls
	j	mendoi1.9931	! callcls
mendoi2.9932:	! callcls
	jr	$r27	! callcls
mendoi1.9931:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.9934	! callcls
	j	mendoi1.9933	! callcls
mendoi2.9934:	! callcls
	jr	$r27	! callcls
mendoi1.9933:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.9936	! callcls
	j	mendoi1.9935	! callcls
mendoi2.9936:	! callcls
	jr	$r27	! callcls
mendoi1.9935:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	rad.3038	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -56($r29)
	swcl	$f0, 8($r2)
beq_cont.9930:
	addi	$r3, $r0, 2
	lw	$r4, -24($r29)
	bne	$r4, $r3, beq_else.9937
	addi	$r3, $r0, 1
	j	beq_cont.9938
beq_else.9937:
	lw	$r3, -44($r29)
beq_cont.9938:
	addi	$r5, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -60($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	min_caml_create_float_array	! calldir
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
	bne	$r6, $r3, beq_else.9939
	lwcl	$f0, 0($r4)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9941
	lwcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	sgn.2913	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	swcl	$f0, -68($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -68($r29)
	div.s	$f0, $f2, $f0
	j	beq_cont.9942
beq_else.9941:
	lfh	$f0, 0
	lfl	$f0, 0
beq_cont.9942:
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r2)
	swcl	$f0, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9943
	lwcl	$f0, -72($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	sgn.2913	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	swcl	$f0, -76($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	div.s	$f0, $f2, $f0
	j	beq_cont.9944
beq_else.9943:
	lfh	$f0, 0
	lfl	$f0, 0
beq_cont.9944:
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r2)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9945
	lwcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	sgn.2913	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -80($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -84($r29)
	div.s	$f0, $f2, $f0
	j	beq_cont.9946
beq_else.9945:
	lfh	$f0, 0
	lfl	$f0, 0
beq_cont.9946:
	lw	$r2, -36($r29)
	swcl	$f0, 8($r2)
	j	beq_cont.9940
beq_else.9939:
	addi	$r3, $r0, 2
	bne	$r6, $r3, beq_else.9947
	addi	$r3, $r0, 0
	lw	$r6, -44($r29)
	bne	$r6, $r3, beq_else.9949
	addi	$r3, $r0, 1
	j	beq_cont.9950
beq_else.9949:
	addi	$r3, $r0, 0
beq_cont.9950:
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	vecunit_sgn.2939	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	j	beq_cont.9948
beq_else.9947:
beq_cont.9948:
beq_cont.9940:
	addi	$r2, $r0, 0
	lw	$r3, -32($r29)
	bne	$r3, $r2, beq_else.9951
	j	beq_cont.9952
beq_else.9951:
	lw	$r2, -36($r29)
	lw	$r3, -56($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	rotate_quadratic_matrix.3044	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
beq_cont.9952:
	addi	$r2, $r0, 1
	jr	$r31
read_object.3049:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 60
	bgt	$r5, $r2, ble_else.9953
	jr	$r31
ble_else.9953:
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.9956	! callcls
	j	mendoi1.9955	! callcls
mendoi2.9956:	! callcls
	jr	$r27	! callcls
mendoi1.9955:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9957
	lw	$r2, -8($r29)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	jr	$r31
beq_else.9957:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
read_all_object.3051:
	lw	$r28, 4($r28)
	addi	$r2, $r0, 0
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
read_net_item.3053:
	lw	$r3, 4($r28)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	mendoi2.9960	! callcls
	j	mendoi1.9959	! callcls
mendoi2.9960:	! callcls
	jr	$r27	! callcls
mendoi1.9959:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, beq_else.9961
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array	! calldir-tail
beq_else.9961:
	lw	$r3, -8($r29)
	addi	$r4, $r3, 1
	lw	$r28, -4($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.9963	! callcls
	j	mendoi1.9962	! callcls
mendoi2.9963:	! callcls
	jr	$r27	! callcls
mendoi1.9962:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
read_or_network.3055:
	lw	$r3, 4($r28)
	addi	$r4, $r0, 0
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	mendoi2.9965	! callcls
	j	mendoi1.9964	! callcls
mendoi2.9965:	! callcls
	jr	$r27	! callcls
mendoi1.9964:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, beq_else.9966
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array	! calldir-tail
beq_else.9966:
	lw	$r2, -8($r29)
	addi	$r4, $r2, 1
	lw	$r28, -4($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.9968	! callcls
	j	mendoi1.9967	! callcls
mendoi2.9968:	! callcls
	jr	$r27	! callcls
mendoi1.9967:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
read_and_network.3057:
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
	jal	mendoi2.9970	! callcls
	j	mendoi1.9969	! callcls
mendoi2.9970:	! callcls
	jr	$r27	! callcls
mendoi1.9969:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, beq_else.9971
	jr	$r31
beq_else.9971:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
read_parameter.3059:
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
	jal	mendoi2.9974	! callcls
	j	mendoi1.9973	! callcls
mendoi2.9974:	! callcls
	jr	$r27	! callcls
mendoi1.9973:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9976	! callcls
	j	mendoi1.9975	! callcls
mendoi2.9976:	! callcls
	jr	$r27	! callcls
mendoi1.9975:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r28, -16($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9978	! callcls
	j	mendoi1.9977	! callcls
mendoi2.9978:	! callcls
	jr	$r27	! callcls
mendoi1.9977:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -12($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9980	! callcls
	j	mendoi1.9979	! callcls
mendoi2.9980:	! callcls
	jr	$r27	! callcls
mendoi1.9979:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.9982	! callcls
	j	mendoi1.9981	! callcls
mendoi2.9982:	! callcls
	jr	$r27	! callcls
mendoi1.9981:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
solver_rect_surface.3061:
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
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9984
	lw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_abc.2983	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_isinvert.2973	! calldir
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
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	lwcl	$f0, 0($r1)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	fneg_cond.2915	! calldir
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
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -20($r29)
	sll	$r2, $r2, 2
	lw	$r3, -40($r29)
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9985
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9985:
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
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -12($r29)
	sll	$r2, $r2, 2
	lw	$r3, -40($r29)
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9986
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9986:
	lw	$r2, -4($r29)
	lwcl	$f0, -48($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
beq_else.9984:
	addi	$r2, $r0, 0
	jr	$r31
solver_rect.3070:
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
	jal	mendoi2.9988	! callcls
	j	mendoi1.9987	! callcls
mendoi2.9988:	! callcls
	jr	$r27	! callcls
mendoi1.9987:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9989
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
	jal	mendoi2.9991	! callcls
	j	mendoi1.9990	! callcls
mendoi2.9991:	! callcls
	jr	$r27	! callcls
mendoi1.9990:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9992
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
	jal	mendoi2.9994	! callcls
	j	mendoi1.9993	! callcls
mendoi2.9994:	! callcls
	jr	$r27	! callcls
mendoi1.9993:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9995
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9995:
	addi	$r2, $r0, 3
	jr	$r31
beq_else.9992:
	addi	$r2, $r0, 2
	jr	$r31
beq_else.9989:
	addi	$r2, $r0, 1
	jr	$r31
solver_surface.3076:
	lw	$r4, 4($r28)
	sw	$r4, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_abc.2983	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9996
	addi	$r2, $r0, 0
	jr	$r31
beq_else.9996:
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	veciprod2.2945	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
quadratic.3082:
	swcl	$f0, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -12($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	o_param_b.2979	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -16($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_c.2981	! calldir
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
	jal	o_isrot.2975	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9997
	lwcl	$f0, -40($r29)
	jr	$r31
beq_else.9997:
	lwcl	$f0, -8($r29)
	lwcl	$f2, -12($r29)
	mul.s	$f4, $f2, $f0
	lw	$r2, -16($r29)
	swcl	$f4, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	o_param_r1.3001	! calldir
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
	jal	o_param_r2.3003	! calldir
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
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	jr	$r31
bilinear.3087:
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
	jal	o_param_a.2977	! calldir
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
	jal	o_param_b.2979	! calldir
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
	jal	o_param_c.2981	! calldir
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
	jal	o_isrot.2975	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9998
	lwcl	$f0, -52($r29)
	jr	$r31
beq_else.9998:
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
	jal	o_param_r1.3001	! calldir
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
	jal	o_param_r2.3003	! calldir
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
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -68($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	fhalf.2813	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -52($r29)
	add.s	$f0, $f2, $f0
	jr	$r31
solver_second.3095:
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
	jal	quadratic.3082	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.9999
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
	jal	bilinear.3087	! calldir
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
	jal	quadratic.3082	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, beq_else.10000
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	j	beq_cont.10001
beq_else.10000:
	lwcl	$f0, -36($r29)
beq_cont.10001:
	lwcl	$f2, -32($r29)
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -28($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10002
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10002:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10003
	lwcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	j	beq_cont.10004
beq_else.10003:
	lwcl	$f0, -48($r29)
beq_cont.10004:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, -28($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
beq_else.9999:
	addi	$r2, $r0, 0
	jr	$r31
solver.3101:
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
	jal	o_param_x.2985	! calldir
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
	jal	o_param_y.2987	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10005
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10005:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10006
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10006:
	lwcl	$f0, -32($r29)
	lwcl	$f2, -40($r29)
	lwcl	$f4, -48($r29)
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
solver_rect_fast.3105:
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
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10007
	addi	$r2, $r0, 0
	j	beq_cont.10008
beq_else.10007:
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -20($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10009
	addi	$r2, $r0, 0
	j	beq_cont.10010
beq_else.10009:
	lw	$r2, -16($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10011
	addi	$r2, $r0, 1
	j	beq_cont.10012
beq_else.10011:
	addi	$r2, $r0, 0
beq_cont.10012:
beq_cont.10010:
beq_cont.10008:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10013
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
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10014
	addi	$r2, $r0, 0
	j	beq_cont.10015
beq_else.10014:
	lw	$r2, -28($r29)
	lwcl	$f0, 8($r2)
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -20($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10016
	addi	$r2, $r0, 0
	j	beq_cont.10017
beq_else.10016:
	lw	$r2, -16($r29)
	lwcl	$f0, 12($r2)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10018
	addi	$r2, $r0, 1
	j	beq_cont.10019
beq_else.10018:
	addi	$r2, $r0, 0
beq_cont.10019:
beq_cont.10017:
beq_cont.10015:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10020
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
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10021
	addi	$r2, $r0, 0
	j	beq_cont.10022
beq_else.10021:
	lw	$r2, -28($r29)
	lwcl	$f0, 4($r2)
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -12($r29)
	add.s	$f0, $f0, $f4
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -32($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10023
	addi	$r2, $r0, 0
	j	beq_cont.10024
beq_else.10023:
	lw	$r2, -16($r29)
	lwcl	$f0, 20($r2)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10025
	addi	$r2, $r0, 1
	j	beq_cont.10026
beq_else.10025:
	addi	$r2, $r0, 0
beq_cont.10026:
beq_cont.10024:
beq_cont.10022:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10027
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10027:
	lw	$r2, -4($r29)
	lwcl	$f0, -56($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 3
	jr	$r31
beq_else.10020:
	lw	$r2, -4($r29)
	lwcl	$f0, -44($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 2
	jr	$r31
beq_else.10013:
	lw	$r2, -4($r29)
	lwcl	$f0, -24($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
solver_surface_fast.3112:
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
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10028
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10028:
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
solver_second_fast.3118:
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
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10029
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
	jal	quadratic.3082	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, beq_else.10030
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	j	beq_cont.10031
beq_else.10030:
	lwcl	$f0, -36($r29)
beq_cont.10031:
	lwcl	$f2, -32($r29)
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -8($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10032
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10032:
	lw	$r2, -12($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10033
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	beq_cont.10034
beq_else.10033:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -32($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -28($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
beq_cont.10034:
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10029:
	addi	$r2, $r0, 0
	jr	$r31
solver_fast.3124:
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
	jal	o_param_x.2985	! calldir
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
	jal	o_param_y.2987	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	d_const.3030	! calldir
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
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10035
	lw	$r2, -20($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	d_vec.3028	! calldir
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
beq_else.10035:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10036
	lwcl	$f0, -36($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -24($r29)
	lw	$r3, -56($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10036:
	lwcl	$f0, -36($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -24($r29)
	lw	$r3, -56($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
solver_surface_fast2.3128:
	lw	$r2, 4($r28)
	lwcl	$f0, 0($r3)
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10037
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10037:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 12($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
solver_second_fast2.3135:
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
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10038
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -12($r29)
	mul.s	$f2, $f4, $f2
	sub.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10039
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10039:
	lw	$r2, -8($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10040
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -32($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	beq_cont.10041
beq_else.10040:
	lwcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -32($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
beq_cont.10041:
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10038:
	addi	$r2, $r0, 0
	jr	$r31
solver_fast2.3142:
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
	jal	o_param_ctbl.3007	! calldir
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
	jal	d_const.3030	! calldir
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
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10042
	lw	$r2, -24($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	d_vec.3028	! calldir
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
beq_else.10042:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10043
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	lw	$r2, -16($r29)
	lw	$r3, -44($r29)
	lw	$r4, -28($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10043:
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	lw	$r2, -16($r29)
	lw	$r3, -44($r29)
	lw	$r4, -28($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
setup_rect_table.3145:
	addi	$r4, $r0, 6
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10044
	lw	$r2, -4($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fneg_cond.2915	! calldir
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
	j	beq_cont.10045
beq_else.10044:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 4($r2)
beq_cont.10045:
	lw	$r3, -8($r29)
	lwcl	$f0, 4($r3)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10046
	lw	$r2, -4($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 4($r3)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fneg_cond.2915	! calldir
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
	j	beq_cont.10047
beq_else.10046:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
beq_cont.10047:
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10048
	lw	$r2, -4($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg_cond.2915	! calldir
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
	j	beq_cont.10049
beq_else.10048:
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 20($r2)
beq_cont.10049:
	jr	$r31
setup_surface_table.3148:
	addi	$r4, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_float_array	! calldir
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
	jal	o_param_a.2977	! calldir
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
	jal	o_param_b.2979	! calldir
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
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -28($r29)
	add.s	$f0, $f2, $f0
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10050
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -12($r29)
	swcl	$f0, 0($r2)
	j	beq_cont.10051
beq_else.10050:
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
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	div.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
beq_cont.10051:
	jr	$r31
setup_second_table.3151:
	addi	$r4, $r0, 5
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_float_array	! calldir
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
	jal	quadratic.3082	! calldir
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
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fneg.2811	! calldir
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
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fneg.2811	! calldir
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
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg.2811	! calldir
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
	jal	o_isrot.2975	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10052
	lw	$r2, -12($r29)
	lwcl	$f0, -24($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -40($r29)
	swcl	$f0, 12($r2)
	j	beq_cont.10053
beq_else.10052:
	lw	$r2, -8($r29)
	lwcl	$f0, 8($r2)
	lw	$r3, -4($r29)
	swcl	$f0, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	o_param_r2.3003	! calldir
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
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -48($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fhalf.2813	! calldir
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
	jal	o_param_r1.3001	! calldir
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
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	fhalf.2813	! calldir
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
	jal	o_param_r1.3001	! calldir
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
	jal	o_param_r2.3003	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	fhalf.2813	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, 12($r2)
beq_cont.10053:
	lwcl	$f0, -16($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	fiszero.2802	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10054
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -16($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -12($r29)
	swcl	$f0, 16($r2)
	j	beq_cont.10055
beq_else.10054:
beq_cont.10055:
	lw	$r2, -12($r29)
	jr	$r31
iter_setup_dirvec_constants.3154:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, ble_else.10056
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	d_const.3030	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10057
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	setup_rect_table.3145	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	beq_cont.10058
beq_else.10057:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10059
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	setup_surface_table.3148	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	beq_cont.10060
beq_else.10059:
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	setup_second_table.3151	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
beq_cont.10060:
beq_cont.10058:
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10056:
	jr	$r31
setup_dirvec_constants.3157:
	lw	$r3, 8($r28)
	lw	$r28, 4($r28)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
setup_startp_constants.3159:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, ble_else.10062
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
	jal	o_param_ctbl.3007	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_form.2969	! calldir
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
	jal	o_param_x.2985	! calldir
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
	jal	o_param_y.2987	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 2
	lw	$r4, -24($r29)
	bne	$r4, $r3, beq_else.10063
	lw	$r3, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_abc.2983	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -20($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f2, 4($r3)
	lwcl	$f4, 8($r3)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	veciprod2.2945	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -20($r29)
	swcl	$f0, 12($r2)
	j	beq_cont.10064
beq_else.10063:
	addi	$r3, $r0, 2
	bgt	$r4, $r3, ble_else.10065
	j	ble_cont.10066
ble_else.10065:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 8($r2)
	lw	$r3, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	quadratic.3082	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	bne	$r3, $r2, beq_else.10067
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	beq_cont.10068
beq_else.10067:
beq_cont.10068:
	lw	$r2, -20($r29)
	swcl	$f0, 12($r2)
ble_cont.10066:
beq_cont.10064:
	lw	$r2, -8($r29)
	addi	$r3, $r2, -1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10062:
	jr	$r31
setup_startp.3162:
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
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
is_rect_outside.3164:
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10070
	addi	$r2, $r0, 0
	j	beq_cont.10071
beq_else.10070:
	lwcl	$f0, -8($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10072
	addi	$r2, $r0, 0
	j	beq_cont.10073
beq_else.10072:
	lwcl	$f0, -4($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
beq_cont.10073:
beq_cont.10071:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10074
	lw	$r2, -12($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10075
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10075:
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10074:
	lw	$r2, -12($r29)
	j	o_isinvert.2973	! calldir-tail
is_plane_outside.3169:
	sw	$r2, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_param_abc.2983	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	veciprod2.2945	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -4($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f0, -20($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10076
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10076:
	addi	$r2, $r0, 0
	jr	$r31
is_second_outside.3174:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	quadratic.3082	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 3
	bne	$r2, $r3, beq_else.10077
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	j	beq_cont.10078
beq_else.10077:
	lwcl	$f0, -8($r29)
beq_cont.10078:
	lw	$r2, -4($r29)
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lwcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	xor.2910	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10079
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10079:
	addi	$r2, $r0, 0
	jr	$r31
is_outside.3179:
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_param_x.2985	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_y.2987	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -4($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10080
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	is_rect_outside.3164	! calldir-tail
beq_else.10080:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10081
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	is_plane_outside.3169	! calldir-tail
beq_else.10081:
	lwcl	$f0, -20($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f4, -28($r29)
	lw	$r2, -12($r29)
	j	is_second_outside.3174	! calldir-tail
check_all_inside.3184:
	lw	$r4, 4($r28)
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5
	lw	$r5, 0($r1)
	addi	$r6, $r0, -1
	bne	$r5, $r6, beq_else.10082
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10082:
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
	jal	is_outside.3179	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10083
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lwcl	$f0, -12($r29)
	lwcl	$f2, -8($r29)
	lwcl	$f4, -4($r29)
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10083:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_and_group.3190:
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
	bne	$r11, $r12, beq_else.10084
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10084:
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
	jal	mendoi2.10086	! callcls
	j	mendoi1.10085	! callcls
mendoi2.10086:	! callcls
	jr	$r27	! callcls
mendoi1.10085:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	addi	$r3, $r0, 0
	swcl	$f0, -40($r29)
	bne	$r2, $r3, beq_else.10087
	addi	$r2, $r0, 0
	j	beq_cont.10088
beq_else.10087:
	lfh	$f2, 48716
	lfl	$f2, 52429
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
beq_cont.10088:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10089
	lw	$r2, -32($r29)
	sll	$r2, $r2, 2
	lw	$r3, -28($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10090
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10090:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10089:
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
	jal	mendoi2.10092	! callcls
	j	mendoi1.10091	! callcls
mendoi2.10092:	! callcls
	jr	$r27	! callcls
mendoi1.10091:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10093
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10093:
	addi	$r2, $r0, 1
	jr	$r31
shadow_check_one_or_group.3193:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sll	$r6, $r2, 2
	addu	$r1, $r3, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, -1
	bne	$r6, $r7, beq_else.10094
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10094:
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
	jal	mendoi2.10096	! callcls
	j	mendoi1.10095	! callcls
mendoi2.10096:	! callcls
	jr	$r27	! callcls
mendoi1.10095:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10097
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10097:
	addi	$r2, $r0, 1
	jr	$r31
shadow_check_one_or_matrix.3196:
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
	bne	$r10, $r11, beq_else.10098
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10098:
	addi	$r11, $r0, 99
	sw	$r9, -4($r29)
	sw	$r6, -8($r29)
	sw	$r3, -12($r29)
	sw	$r28, -16($r29)
	sw	$r2, -20($r29)
	bne	$r10, $r11, beq_else.10099
	addi	$r2, $r0, 1
	j	beq_cont.10100
beq_else.10099:
	sw	$r5, -24($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r8, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.10102	! callcls
	j	mendoi1.10101	! callcls
mendoi2.10102:	! callcls
	jr	$r27	! callcls
mendoi1.10101:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10103
	addi	$r2, $r0, 0
	j	beq_cont.10104
beq_else.10103:
	lw	$r2, -24($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10105
	addi	$r2, $r0, 0
	j	beq_cont.10106
beq_else.10105:
	addi	$r2, $r0, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.10108	! callcls
	j	mendoi1.10107	! callcls
mendoi2.10108:	! callcls
	jr	$r27	! callcls
mendoi1.10107:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10109
	addi	$r2, $r0, 0
	j	beq_cont.10110
beq_else.10109:
	addi	$r2, $r0, 1
beq_cont.10110:
beq_cont.10106:
beq_cont.10104:
beq_cont.10100:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10111
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10111:
	addi	$r2, $r0, 1
	lw	$r3, -4($r29)
	lw	$r28, -8($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	mendoi2.10113	! callcls
	j	mendoi1.10112	! callcls
mendoi2.10113:	! callcls
	jr	$r27	! callcls
mendoi1.10112:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10114
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10114:
	addi	$r2, $r0, 1
	jr	$r31
solve_each_element.3199:
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
	bne	$r14, $r15, beq_else.10115
	jr	$r31
beq_else.10115:
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
	jal	mendoi2.10118	! callcls
	j	mendoi1.10117	! callcls
mendoi2.10118:	! callcls
	jr	$r27	! callcls
mendoi1.10117:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10119
	lw	$r2, -52($r29)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10120
	jr	$r31
beq_else.10120:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10119:
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -56($r29)
	swcl	$f2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10122
	j	beq_cont.10123
beq_else.10122:
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10124
	j	beq_cont.10125
beq_else.10124:
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
	jal	mendoi2.10127	! callcls
	j	mendoi1.10126	! callcls
mendoi2.10127:	! callcls
	jr	$r27	! callcls
mendoi1.10126:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10128
	j	beq_cont.10129
beq_else.10128:
	lw	$r2, -24($r29)
	lwcl	$f0, -76($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -72($r29)
	lwcl	$f2, -68($r29)
	lwcl	$f4, -64($r29)
	lw	$r2, -12($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	vecset.2921	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -52($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -56($r29)
	sw	$r3, 0($r2)
beq_cont.10129:
beq_cont.10125:
beq_cont.10123:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
solve_one_or_network.3203:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, beq_else.10130
	jr	$r31
beq_else.10130:
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
	jal	mendoi2.10133	! callcls
	j	mendoi1.10132	! callcls
mendoi2.10133:	! callcls
	jr	$r27	! callcls
mendoi1.10132:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
trace_or_matrix.3207:
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
	bne	$r11, $r12, beq_else.10134
	jr	$r31
beq_else.10134:
	addi	$r12, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	bne	$r11, $r12, beq_else.10136
	addi	$r5, $r0, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	mendoi2.10139	! callcls
	j	mendoi1.10138	! callcls
mendoi2.10139:	! callcls
	jr	$r27	! callcls
mendoi1.10138:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	j	beq_cont.10137
beq_else.10136:
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
	jal	mendoi2.10141	! callcls
	j	mendoi1.10140	! callcls
mendoi2.10141:	! callcls
	jr	$r27	! callcls
mendoi1.10140:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10142
	j	beq_cont.10143
beq_else.10142:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f2, 0($r2)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10144
	j	beq_cont.10145
beq_else.10144:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	lw	$r28, -24($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	mendoi2.10147	! callcls
	j	mendoi1.10146	! callcls
mendoi2.10147:	! callcls
	jr	$r27	! callcls
mendoi1.10146:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
beq_cont.10145:
beq_cont.10143:
beq_cont.10137:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
judge_intersection.3211:
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
	jal	mendoi2.10149	! callcls
	j	mendoi1.10148	! callcls
mendoi2.10149:	! callcls
	jr	$r27	! callcls
mendoi1.10148:	! callcls
	addi	$r29, $r29, 8	! callcls
	lw	$r31, -8($r29)	! callcls
	lw	$r2, -4($r29)
	lwcl	$f2, 0($r2)
	lfh	$f0, 48588
	lfl	$f0, 52429
	swcl	$f2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10150
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10150:
	lfh	$f2, 19646
	lfl	$f2, 48160
	lwcl	$f0, -8($r29)
	j	fless.2795	! calldir-tail
solve_each_element_fast.3213:
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	addi	$r6, $r0, -1
	bne	$r4, $r6, beq_else.10151
	jr	$r31
beq_else.10151:
	lw	$r6, -40($r29)
	lw	$r28, -44($r29)
	sw	$r2, -56($r29)
	sw	$r4, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	mendoi2.10154	! callcls
	j	mendoi1.10153	! callcls
mendoi2.10154:	! callcls
	jr	$r27	! callcls
mendoi1.10153:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10155
	lw	$r2, -60($r29)
	sll	$r2, $r2, 2
	lw	$r3, -36($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10156
	jr	$r31
beq_else.10156:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -40($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10155:
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -64($r29)
	swcl	$f2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10158
	j	beq_cont.10159
beq_else.10158:
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f0, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10160
	j	beq_cont.10161
beq_else.10160:
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
	jal	mendoi2.10163	! callcls
	j	mendoi1.10162	! callcls
mendoi2.10163:	! callcls
	jr	$r27	! callcls
mendoi1.10162:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10164
	j	beq_cont.10165
beq_else.10164:
	lw	$r2, -24($r29)
	lwcl	$f0, -84($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -80($r29)
	lwcl	$f2, -76($r29)
	lwcl	$f4, -72($r29)
	lw	$r2, -12($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	vecset.2921	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -60($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -64($r29)
	sw	$r3, 0($r2)
beq_cont.10165:
beq_cont.10161:
beq_cont.10159:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -40($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
solve_one_or_network_fast.3217:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, beq_else.10166
	jr	$r31
beq_else.10166:
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
	jal	mendoi2.10169	! callcls
	j	mendoi1.10168	! callcls
mendoi2.10169:	! callcls
	jr	$r27	! callcls
mendoi1.10168:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
trace_or_matrix_fast.3221:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r3, $r9
	lw	$r9, 0($r1)
	lw	$r10, 0($r9)
	addi	$r11, $r0, -1
	bne	$r10, $r11, beq_else.10170
	jr	$r31
beq_else.10170:
	addi	$r11, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r28, -12($r29)
	sw	$r2, -16($r29)
	bne	$r10, $r11, beq_else.10172
	addi	$r5, $r0, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	mendoi2.10175	! callcls
	j	mendoi1.10174	! callcls
mendoi2.10175:	! callcls
	jr	$r27	! callcls
mendoi1.10174:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	j	beq_cont.10173
beq_else.10172:
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
	jal	mendoi2.10177	! callcls
	j	mendoi1.10176	! callcls
mendoi2.10177:	! callcls
	jr	$r27	! callcls
mendoi1.10176:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10178
	j	beq_cont.10179
beq_else.10178:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -28($r29)
	lwcl	$f2, 0($r2)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10180
	j	beq_cont.10181
beq_else.10180:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	lw	$r28, -24($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	mendoi2.10183	! callcls
	j	mendoi1.10182	! callcls
mendoi2.10183:	! callcls
	jr	$r27	! callcls
mendoi1.10182:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
beq_cont.10181:
beq_cont.10179:
beq_cont.10173:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
judge_intersection_fast.3225:
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
	jal	mendoi2.10185	! callcls
	j	mendoi1.10184	! callcls
mendoi2.10185:	! callcls
	jr	$r27	! callcls
mendoi1.10184:	! callcls
	addi	$r29, $r29, 8	! callcls
	lw	$r31, -8($r29)	! callcls
	lw	$r2, -4($r29)
	lwcl	$f2, 0($r2)
	lfh	$f0, 48588
	lfl	$f0, 52429
	swcl	$f2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10186
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10186:
	lfh	$f2, 19646
	lfl	$f2, 48160
	lwcl	$f0, -8($r29)
	j	fless.2795	! calldir-tail
get_nvector_rect.3227:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lw	$r4, 0($r4)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	vecbzero.2929	! calldir
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
	jal	sgn.2913	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -4($r29)
	addu	$r1, $r3, $r2
	swcl	$f0, 0($r1)
	jr	$r31
get_nvector_plane.3229:
	lw	$r3, 4($r28)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	jr	$r31
get_nvector_second.3231:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lwcl	$f0, 0($r4)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_param_x.2985	! calldir
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
	jal	o_param_y.2987	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	o_isrot.2975	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10189
	lw	$r2, -4($r29)
	lwcl	$f0, -40($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -44($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -48($r29)
	swcl	$f0, 8($r2)
	j	beq_cont.10190
beq_else.10189:
	lw	$r2, -8($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	o_param_r2.3003	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f4, -52($r29)
	add.s	$f0, $f4, $f0
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fhalf.2813	! calldir
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
	jal	o_param_r3.3005	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	o_param_r1.3001	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	fhalf.2813	! calldir
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
	jal	o_param_r2.3003	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	o_param_r1.3001	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fhalf.2813	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -48($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
beq_cont.10190:
	lw	$r3, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	o_isinvert.2973	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	j	vecunit_sgn.2939	! calldir-tail
get_nvector.3233:
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
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10191
	lw	$r2, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10191:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10192
	lw	$r2, -8($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10192:
	lw	$r2, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
utexture.3236:
	lw	$r4, 4($r28)
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	o_texturetype.2967	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_color_red.2995	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_color_green.2997	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r3, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_color_blue.2999	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 1
	lw	$r4, -16($r29)
	bne	$r4, $r3, beq_else.10193
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	o_param_x.2985	! calldir
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
	jal	min_caml_floor	! calldir
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
	jal	fless.2795	! calldir
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
	jal	o_param_z.2989	! calldir
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
	jal	min_caml_floor	! calldir
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
	jal	fless.2795	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -28($r29)
	bne	$r4, $r3, beq_else.10194
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10196
	lfh	$f0, 17279
	lfl	$f0, 0
	j	beq_cont.10197
beq_else.10196:
	lfh	$f0, 0
	lfl	$f0, 0
beq_cont.10197:
	j	beq_cont.10195
beq_else.10194:
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10198
	lfh	$f0, 0
	lfl	$f0, 0
	j	beq_cont.10199
beq_else.10198:
	lfh	$f0, 17279
	lfl	$f0, 0
beq_cont.10199:
beq_cont.10195:
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	jr	$r31
beq_else.10193:
	addi	$r3, $r0, 2
	bne	$r4, $r3, beq_else.10201
	lw	$r3, -4($r29)
	lwcl	$f0, 4($r3)
	lfh	$f2, 16000
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fsqr.2815	! calldir
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
beq_else.10201:
	addi	$r3, $r0, 3
	bne	$r4, $r3, beq_else.10203
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_param_x.2985	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -44($r29)
	swcl	$f0, -52($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -52($r29)
	swcl	$f0, -56($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	add.s	$f0, $f2, $f0
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lfh	$f2, 16672
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	min_caml_floor	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	mul.s	$f0, $f0, $f2
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fsqr.2815	! calldir
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
beq_else.10203:
	addi	$r3, $r0, 4
	bne	$r4, $r3, beq_else.10205
	lw	$r3, -4($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -12($r29)
	swcl	$f0, -64($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	o_param_x.2985	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	o_param_a.2977	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	sqrt.2817	! calldir
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
	jal	o_param_z.2989	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	o_param_c.2981	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -80($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	swcl	$f0, -84($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -84($r29)
	swcl	$f0, -88($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f2, -88($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -72($r29)
	swcl	$f0, -92($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lfh	$f2, 14545
	lfl	$f2, 46871
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10206
	lwcl	$f0, -72($r29)
	lwcl	$f2, -84($r29)
	div.s	$f0, $f2, $f0
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	atan.2826	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	beq_cont.10207
beq_else.10206:
	lfh	$f0, 16752
	lfl	$f0, 0
beq_cont.10207:
	swcl	$f0, -96($r29)
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	min_caml_floor	! calldir
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
	jal	o_param_y.2987	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lwcl	$f2, -104($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	swcl	$f0, -108($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	o_param_b.2979	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lwcl	$f2, -108($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -92($r29)
	swcl	$f0, -112($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lfh	$f2, 14545
	lfl	$f2, 46871
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10208
	lwcl	$f0, -92($r29)
	lwcl	$f2, -112($r29)
	div.s	$f0, $f2, $f0
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	fabs.2807	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	atan.2826	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	beq_cont.10209
beq_else.10208:
	lfh	$f0, 16752
	lfl	$f0, 0
beq_cont.10209:
	swcl	$f0, -116($r29)
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	min_caml_floor	! calldir
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
	jal	fsqr.2815	! calldir
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
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lwcl	$f2, -128($r29)
	sub.s	$f0, $f2, $f0
	swcl	$f0, -132($r29)
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10210
	lwcl	$f0, -132($r29)
	j	beq_cont.10211
beq_else.10210:
	lfh	$f0, 0
	lfl	$f0, 0
beq_cont.10211:
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f2, $f0
	lfh	$f2, 16025
	lfl	$f2, 39322
	div.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	jr	$r31
beq_else.10205:
	jr	$r31
add_light.3239:
	lw	$r2, 8($r28)
	lw	$r3, 4($r28)
	swcl	$f4, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10214
	j	beq_cont.10215
beq_else.10214:
	lwcl	$f0, -12($r29)
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	vecaccum.2950	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
beq_cont.10215:
	lwcl	$f0, -8($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10216
	jr	$r31
beq_else.10216:
	lwcl	$f0, -8($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fsqr.2815	! calldir
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
trace_reflections.3243:
	lw	$r4, 32($r28)
	lw	$r5, 28($r28)
	lw	$r6, 24($r28)
	lw	$r7, 20($r28)
	lw	$r8, 16($r28)
	lw	$r9, 12($r28)
	lw	$r10, 8($r28)
	lw	$r11, 4($r28)
	addi	$r12, $r0, 0
	bgt	$r12, $r2, ble_else.10219
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
	jal	r_dvec.3034	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r28, -52($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.10221	! callcls
	j	mendoi1.10220	! callcls
mendoi2.10221:	! callcls
	jr	$r27	! callcls
mendoi1.10220:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10222
	j	beq_cont.10223
beq_else.10222:
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
	jal	r_surface_id.3032	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	bne	$r3, $r2, beq_else.10224
	addi	$r2, $r0, 0
	lw	$r3, -36($r29)
	lw	$r3, 0($r3)
	lw	$r28, -32($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	mendoi2.10227	! callcls
	j	mendoi1.10226	! callcls
mendoi2.10227:	! callcls
	jr	$r27	! callcls
mendoi1.10226:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10228
	lw	$r2, -56($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -40($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	r_bright.3036	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	veciprod.2942	! calldir
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
	jal	mendoi2.10231	! callcls
	j	mendoi1.10230	! callcls
mendoi2.10231:	! callcls
	jr	$r27	! callcls
mendoi1.10230:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	beq_cont.10229
beq_else.10228:
beq_cont.10229:
	j	beq_cont.10225
beq_else.10224:
beq_cont.10225:
beq_cont.10223:
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lwcl	$f0, -24($r29)
	lwcl	$f2, -12($r29)
	lw	$r3, -20($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10219:
	jr	$r31
trace_ray.3248:
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
	bgt	$r2, $r25, ble_else.10233
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
	jal	p_surface_ids.3013	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -100($r29)
	lw	$r28, -104($r29)
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -112($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -112	! callcls
	jal	mendoi2.10235	! callcls
	j	mendoi1.10234	! callcls
mendoi2.10235:	! callcls
	jr	$r27	! callcls
mendoi1.10234:	! callcls
	addi	$r29, $r29, 112	! callcls
	lw	$r31, -112($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10236
	addi	$r2, $r0, -1
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r0, 0
	bne	$r3, $r2, beq_else.10237
	jr	$r31
beq_else.10237:
	lw	$r2, -100($r29)
	lw	$r3, -92($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	swcl	$f0, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10239
	jr	$r31
beq_else.10239:
	lwcl	$f0, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	fsqr.2815	! calldir
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
beq_else.10236:
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
	jal	o_reflectiontype.2971	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	o_diffuse.2991	! calldir
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
	jal	mendoi2.10243	! callcls
	j	mendoi1.10242	! callcls
mendoi2.10243:	! callcls
	jr	$r27	! callcls
mendoi1.10242:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, -60($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r2, -120($r29)
	lw	$r3, -60($r29)
	lw	$r28, -56($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	mendoi2.10245	! callcls
	j	mendoi1.10244	! callcls
mendoi2.10245:	! callcls
	jr	$r27	! callcls
mendoi1.10244:	! callcls
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
	jal	p_intersection_points.3011	! calldir
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
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r2, -48($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	p_calc_diffuse.3015	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -120($r29)
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	o_diffuse.2991	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lfh	$f2, 16128
	lfl	$f2, 0
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10246
	addi	$r2, $r0, 1
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -132($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	lw	$r2, -48($r29)
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	p_energy.3017	! calldir
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
	jal	veccpy.2931	! calldir
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
	jal	vecscale.2960	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r2, -48($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	p_nvectors.3026	! calldir
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
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	j	beq_cont.10247
beq_else.10246:
	addi	$r2, $r0, 0
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -132($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
beq_cont.10247:
	lfh	$f0, 49152
	lfl	$f0, 0
	lw	$r2, -100($r29)
	lw	$r3, -40($r29)
	swcl	$f0, -140($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lwcl	$f2, -140($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -100($r29)
	lw	$r3, -40($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	vecaccum.2950	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r2, -120($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	o_hilight.2993	! calldir
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
	jal	mendoi2.10249	! callcls
	j	mendoi1.10248	! callcls
mendoi2.10249:	! callcls
	jr	$r27	! callcls
mendoi1.10248:	! callcls
	addi	$r29, $r29, 148	! callcls
	lw	$r31, -148($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10250
	lw	$r2, -40($r29)
	lw	$r3, -92($r29)
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	lwcl	$f2, -128($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -100($r29)
	lw	$r3, -92($r29)
	swcl	$f0, -148($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -148($r29)
	lwcl	$f4, -144($r29)
	lw	$r28, -28($r29)
	sw	$r31, -152($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -152	! callcls
	jal	mendoi2.10253	! callcls
	j	mendoi1.10252	! callcls
mendoi2.10253:	! callcls
	jr	$r27	! callcls
mendoi1.10252:	! callcls
	addi	$r29, $r29, 152	! callcls
	lw	$r31, -152($r29)	! callcls
	j	beq_cont.10251
beq_else.10250:
beq_cont.10251:
	lw	$r2, -60($r29)
	lw	$r28, -24($r29)
	sw	$r31, -152($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -152	! callcls
	jal	mendoi2.10255	! callcls
	j	mendoi1.10254	! callcls
mendoi2.10255:	! callcls
	jr	$r27	! callcls
mendoi1.10254:	! callcls
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
	jal	mendoi2.10257	! callcls
	j	mendoi1.10256	! callcls
mendoi2.10257:	! callcls
	jr	$r27	! callcls
mendoi1.10256:	! callcls
	addi	$r29, $r29, 152	! callcls
	lw	$r31, -152($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -88($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10258
	jr	$r31
beq_else.10258:
	addi	$r2, $r0, 4
	lw	$r3, -96($r29)
	bgt	$r2, $r3, ble_else.10260
	j	ble_cont.10261
ble_else.10260:
	addi	$r2, $r3, 1
	addi	$r4, $r0, -1
	sll	$r2, $r2, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r2
	sw	$r4, 0($r1)
ble_cont.10261:
	addi	$r2, $r0, 2
	lw	$r4, -124($r29)
	bne	$r4, $r2, beq_else.10262
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r2, -120($r29)
	swcl	$f0, -152($r29)
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	o_diffuse.2991	! calldir
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
beq_else.10262:
	jr	$r31
ble_else.10233:
	jr	$r31
trace_diffuse_ray.3254:
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
	jal	mendoi2.10266	! callcls
	j	mendoi1.10265	! callcls
mendoi2.10266:	! callcls
	jr	$r27	! callcls
mendoi1.10265:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10267
	jr	$r31
beq_else.10267:
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	lw	$r28, -40($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.10270	! callcls
	j	mendoi1.10269	! callcls
mendoi2.10270:	! callcls
	jr	$r27	! callcls
mendoi1.10269:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	lw	$r3, -32($r29)
	lw	$r28, -36($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.10272	! callcls
	j	mendoi1.10271	! callcls
mendoi2.10272:	! callcls
	jr	$r27	! callcls
mendoi1.10271:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	lw	$r3, 0($r3)
	lw	$r28, -24($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.10274	! callcls
	j	mendoi1.10273	! callcls
mendoi2.10274:	! callcls
	jr	$r27	! callcls
mendoi1.10273:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10275
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fispos.2798	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10276
	lfh	$f0, 0
	lfl	$f0, 0
	j	beq_cont.10277
beq_else.10276:
	lwcl	$f0, -60($r29)
beq_cont.10277:
	lwcl	$f2, -12($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -56($r29)
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	o_diffuse.2991	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -64($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	j	vecaccum.2950	! calldir-tail
beq_else.10275:
	jr	$r31
iter_trace_diffuse_rays.3257:
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	bgt	$r7, $r5, ble_else.10279
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	fisneg.2800	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10280
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
	jal	mendoi2.10283	! callcls
	j	mendoi1.10282	! callcls
mendoi2.10283:	! callcls
	jr	$r27	! callcls
mendoi1.10282:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	j	beq_cont.10281
beq_else.10280:
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
	jal	mendoi2.10285	! callcls
	j	mendoi1.10284	! callcls
mendoi2.10285:	! callcls
	jr	$r27	! callcls
mendoi1.10284:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
beq_cont.10281:
	lw	$r2, -20($r29)
	addi	$r5, $r2, -2
	lw	$r2, -16($r29)
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10279:
	jr	$r31
trace_diffuse_rays.3262:
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
	jal	mendoi2.10288	! callcls
	j	mendoi1.10287	! callcls
mendoi2.10288:	! callcls
	jr	$r27	! callcls
mendoi1.10287:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -16($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
trace_diffuse_ray_80percent.3266:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	bne	$r2, $r7, beq_else.10289
	j	beq_cont.10290
beq_else.10289:
	lw	$r7, 0($r6)
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	mendoi2.10292	! callcls
	j	mendoi1.10291	! callcls
mendoi2.10292:	! callcls
	jr	$r27	! callcls
mendoi1.10291:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
beq_cont.10290:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	bne	$r3, $r2, beq_else.10293
	j	beq_cont.10294
beq_else.10293:
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
	jal	mendoi2.10296	! callcls
	j	mendoi1.10295	! callcls
mendoi2.10296:	! callcls
	jr	$r27	! callcls
mendoi1.10295:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
beq_cont.10294:
	addi	$r2, $r0, 2
	lw	$r3, -20($r29)
	bne	$r3, $r2, beq_else.10297
	j	beq_cont.10298
beq_else.10297:
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
	jal	mendoi2.10300	! callcls
	j	mendoi1.10299	! callcls
mendoi2.10300:	! callcls
	jr	$r27	! callcls
mendoi1.10299:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
beq_cont.10298:
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	bne	$r3, $r2, beq_else.10301
	j	beq_cont.10302
beq_else.10301:
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
	jal	mendoi2.10304	! callcls
	j	mendoi1.10303	! callcls
mendoi2.10304:	! callcls
	jr	$r27	! callcls
mendoi1.10303:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
beq_cont.10302:
	addi	$r2, $r0, 4
	lw	$r3, -20($r29)
	bne	$r3, $r2, beq_else.10305
	jr	$r31
beq_else.10305:
	lw	$r2, -16($r29)
	lw	$r2, 16($r2)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
calc_diffuse_using_1point.3270:
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
	jal	p_received_ray_20percent.3019	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	p_nvectors.3026	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	p_intersection_points.3011	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -20($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	p_energy.3017	! calldir
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
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	p_group_id.3021	! calldir
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
	jal	mendoi2.10308	! callcls
	j	mendoi1.10307	! callcls
mendoi2.10308:	! callcls
	jr	$r27	! callcls
mendoi1.10307:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -36($r29)
	addu	$r1, $r3, $r2
	lw	$r3, 0($r1)
	lw	$r2, -4($r29)
	lw	$r4, -12($r29)
	j	vecaccumv.2963	! calldir-tail
calc_diffuse_using_5points.3273:
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
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	veccpy.2931	! calldir
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
	jal	vecadd.2954	! calldir
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
	jal	vecadd.2954	! calldir
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
	jal	vecadd.2954	! calldir
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
	jal	vecadd.2954	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r3, -20($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	p_energy.3017	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r3, 0($r1)
	lw	$r2, -4($r29)
	lw	$r4, -8($r29)
	j	vecaccumv.2963	! calldir-tail
do_without_neighbors.3279:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 4
	bgt	$r3, $r5, ble_else.10309
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	p_surface_ids.3013	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -16($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r2, $r5
	lw	$r2, 0($r1)
	bgt	$r3, $r2, ble_else.10310
	lw	$r2, -12($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	p_calc_diffuse.3015	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	addi	$r4, $r0, 0
	bne	$r2, $r4, beq_else.10311
	j	beq_cont.10312
beq_else.10311:
	lw	$r2, -12($r29)
	lw	$r28, -8($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	mendoi2.10314	! callcls
	j	mendoi1.10313	! callcls
mendoi2.10314:	! callcls
	jr	$r27	! callcls
mendoi1.10313:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
beq_cont.10312:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10310:
	jr	$r31
ble_else.10309:
	jr	$r31
neighbors_exist.3282:
	lw	$r4, 4($r28)
	lw	$r5, 4($r4)
	addi	$r6, $r3, 1
	bgt	$r5, $r6, ble_else.10317
	addi	$r2, $r0, 0
	jr	$r31
ble_else.10317:
	addi	$r5, $r0, 0
	bgt	$r3, $r5, ble_else.10318
	addi	$r2, $r0, 0
	jr	$r31
ble_else.10318:
	lw	$r3, 0($r4)
	addi	$r4, $r2, 1
	bgt	$r3, $r4, ble_else.10319
	addi	$r2, $r0, 0
	jr	$r31
ble_else.10319:
	addi	$r3, $r0, 0
	bgt	$r2, $r3, ble_else.10320
	addi	$r2, $r0, 0
	jr	$r31
ble_else.10320:
	addi	$r2, $r0, 1
	jr	$r31
get_surface_id.3286:
	sw	$r3, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	p_surface_ids.3013	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	jr	$r31
neighbors_are_available.3289:
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
	jal	get_surface_id.3286	! calldir
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
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, beq_else.10321
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
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, beq_else.10322
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
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, beq_else.10323
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
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	bne	$r2, $r3, beq_else.10324
	addi	$r2, $r0, 1
	jr	$r31
beq_else.10324:
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10323:
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10322:
	addi	$r2, $r0, 0
	jr	$r31
beq_else.10321:
	addi	$r2, $r0, 0
	jr	$r31
try_exploit_neighbors.3295:
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r10, $r2, 2
	addu	$r1, $r5, $r10
	lw	$r10, 0($r1)
	addi	$r11, $r0, 4
	bgt	$r7, $r11, ble_else.10325
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
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	bgt	$r3, $r2, ble_else.10326
	lw	$r2, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r6, -24($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	neighbors_are_available.3289	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10327
	lw	$r2, -40($r29)
	sll	$r2, $r2, 2
	lw	$r3, -32($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -24($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10327:
	lw	$r2, -16($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	p_calc_diffuse.3015	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r6, -24($r29)
	sll	$r3, $r6, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10328
	j	beq_cont.10329
beq_else.10328:
	lw	$r2, -40($r29)
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r28, -12($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	mendoi2.10331	! callcls
	j	mendoi1.10330	! callcls
mendoi2.10331:	! callcls
	jr	$r27	! callcls
mendoi1.10330:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
beq_cont.10329:
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
ble_else.10326:
	jr	$r31
ble_else.10325:
	jr	$r31
write_ppm_header.3302:
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
	jal	print_int.2874	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lw	$r2, 4($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	print_int.2874	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	addi	$r2, $r0, 255
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	print_int.2874	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	jr	$r31
write_rgb_element.3304:
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_int_of_float	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, ble_else.10334
	addi	$r3, $r0, 0
	bgt	$r3, $r2, ble_else.10336
	j	ble_cont.10337
ble_else.10336:
	addi	$r2, $r0, 0
ble_cont.10337:
	j	ble_cont.10335
ble_else.10334:
	addi	$r2, $r0, 255
ble_cont.10335:
	j	print_int.2874	! calldir-tail
write_rgb.3306:
	lw	$r2, 4($r28)
	lwcl	$f0, 0($r2)
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	write_rgb_element.3304	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	write_rgb_element.3304	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	write_rgb_element.3304	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	jr	$r31
pretrace_diffuse_rays.3308:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 4
	bgt	$r3, $r7, ble_else.10338
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	get_surface_id.3286	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	bgt	$r3, $r2, ble_else.10339
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	p_calc_diffuse.3015	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4
	lw	$r2, 0($r1)
	addi	$r4, $r0, 0
	bne	$r2, $r4, beq_else.10340
	j	beq_cont.10341
beq_else.10340:
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	p_group_id.3021	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -16($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	vecbzero.2929	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	p_nvectors.3026	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	p_intersection_points.3011	! calldir
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
	jal	mendoi2.10343	! callcls
	j	mendoi1.10342	! callcls
mendoi2.10343:	! callcls
	jr	$r27	! callcls
mendoi1.10342:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -24($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	p_received_ray_20percent.3019	! calldir
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
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
beq_cont.10341:
	lw	$r2, -20($r29)
	addi	$r3, $r2, 1
	lw	$r2, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10339:
	jr	$r31
ble_else.10338:
	jr	$r31
pretrace_pixels.3311:
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
	bgt	$r14, $r3, ble_else.10346
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
	jal	min_caml_float_of_int	! calldir
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
	jal	vecunit_sgn.2939	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -36($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	vecbzero.2929	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r2, -32($r29)
	lw	$r3, -28($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	veccpy.2931	! calldir
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
	jal	mendoi2.10348	! callcls
	j	mendoi1.10347	! callcls
mendoi2.10348:	! callcls
	jr	$r27	! callcls
mendoi1.10347:	! callcls
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
	jal	p_rgb.3009	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	veccpy.2931	! calldir
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
	jal	p_set_group_id.3023	! calldir
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
	jal	mendoi2.10350	! callcls
	j	mendoi1.10349	! callcls
mendoi2.10350:	! callcls
	jr	$r27	! callcls
mendoi1.10349:	! callcls
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
	jal	add_mod5.2918	! calldir
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
ble_else.10346:
	jr	$r31
pretrace_line.3318:
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
	jal	min_caml_float_of_int	! calldir
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
scan_pixel.3322:
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	lw	$r11, 0($r11)
	bgt	$r11, $r2, ble_else.10352
	jr	$r31
ble_else.10352:
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
	jal	p_rgb.3009	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	lw	$r28, -40($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	mendoi2.10355	! callcls
	j	mendoi1.10354	! callcls
mendoi2.10355:	! callcls
	jr	$r27	! callcls
mendoi1.10354:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10356
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
	jal	mendoi2.10359	! callcls
	j	mendoi1.10358	! callcls
mendoi2.10359:	! callcls
	jr	$r27	! callcls
mendoi1.10358:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	j	beq_cont.10357
beq_else.10356:
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
	jal	mendoi2.10361	! callcls
	j	mendoi1.10360	! callcls
mendoi2.10361:	! callcls
	jr	$r27	! callcls
mendoi1.10360:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
beq_cont.10357:
	lw	$r28, -8($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	mendoi2.10363	! callcls
	j	mendoi1.10362	! callcls
mendoi2.10363:	! callcls
	jr	$r27	! callcls
mendoi1.10362:	! callcls
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
scan_line.3328:
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	lw	$r10, 4($r9)
	bgt	$r10, $r2, ble_else.10364
	jr	$r31
ble_else.10364:
	lw	$r9, 4($r9)
	addi	$r9, $r9, -1
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r7, -28($r29)
	bgt	$r9, $r2, ble_else.10366
	j	ble_cont.10367
ble_else.10366:
	addi	$r9, $r2, 1
	addi	$r4, $r6, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	mendoi2.10369	! callcls
	j	mendoi1.10368	! callcls
mendoi2.10369:	! callcls
	jr	$r27	! callcls
mendoi1.10368:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
ble_cont.10367:
	addi	$r2, $r0, 0
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	lw	$r5, -16($r29)
	lw	$r6, -12($r29)
	lw	$r28, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	mendoi2.10371	! callcls
	j	mendoi1.10370	! callcls
mendoi2.10371:	! callcls
	jr	$r27	! callcls
mendoi1.10370:	! callcls
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
	jal	add_mod5.2918	! calldir
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
create_float5x3array.3334:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r3, 0
	jr	$r31
create_pixel.3336:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	create_float5x3array.3334	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	create_float5x3array.3334	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	create_float5x3array.3334	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	create_float5x3array.3334	! calldir
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
init_line_elements.3338:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, ble_else.10372
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	create_pixel.3336	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	j	init_line_elements.3338	! calldir-tail
ble_else.10372:
	jr	$r31
create_pixelline.3341:
	lw	$r2, 4($r28)
	lw	$r3, 0($r2)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	create_pixel.3336	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -4($r29)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -2
	j	init_line_elements.3338	! calldir-tail
tan.3343:
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	sin.2832	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lwcl	$f2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	cos.2834	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	div.s	$f0, $f2, $f0
	jr	$r31
adjust_position.3345:
	mul.s	$f0, $f0, $f0
	lfh	$f4, 15820
	lfl	$f4, 52429
	add.s	$f0, $f0, $f4
	swcl	$f2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	sqrt.2817	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f0, -8($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	atan.2826	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -4($r29)
	mul.s	$f0, $f0, $f2
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	tan.3343	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f2, -8($r29)
	mul.s	$f0, $f0, $f2
	jr	$r31
calc_dirvec.3348:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 5
	bgt	$r6, $r2, ble_else.10373
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	fsqr.2815	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	add.s	$f0, $f2, $f0
	lfh	$f2, 16256
	lfl	$f2, 0
	add.s	$f0, $f0, $f2
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	sqrt.2817	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f4, -32($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	vecset.2921	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -36($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -40($r29)
	lwcl	$f2, -32($r29)
	lw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	vecset.2921	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -36($r29)
	swcl	$f0, -52($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -32($r29)
	lwcl	$f2, -52($r29)
	lw	$r2, -48($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	vecset.2921	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -36($r29)
	swcl	$f0, -60($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -32($r29)
	swcl	$f0, -64($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	fmove	$f4, $f0
	lwcl	$f0, -60($r29)
	lwcl	$f2, -64($r29)
	lw	$r2, -56($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	vecset.2921	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f0, -40($r29)
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -32($r29)
	swcl	$f0, -72($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	fmove	$f2, $f0
	lwcl	$f0, -72($r29)
	lwcl	$f4, -36($r29)
	lw	$r2, -68($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	vecset.2921	! calldir
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
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f0, -32($r29)
	sw	$r2, -76($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -40($r29)
	lwcl	$f4, -36($r29)
	lw	$r2, -76($r29)
	j	vecset.2921	! calldir-tail
ble_else.10373:
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
	jal	adjust_position.3345	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r2, -92($r29)
	addi	$r2, $r2, 1
	lwcl	$f2, -88($r29)
	swcl	$f0, -96($r29)
	sw	$r2, -100($r29)
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	adjust_position.3345	! calldir
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
calc_dirvecs.3356:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, ble_else.10374
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r5, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	min_caml_float_of_int	! calldir
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
	jal	mendoi2.10376	! callcls
	j	mendoi1.10375	! callcls
mendoi2.10376:	! callcls
	jr	$r27	! callcls
mendoi1.10375:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	min_caml_float_of_int	! calldir
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
	jal	mendoi2.10378	! callcls
	j	mendoi1.10377	! callcls
mendoi2.10378:	! callcls
	jr	$r27	! callcls
mendoi1.10377:	! callcls
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
	jal	add_mod5.2918	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lwcl	$f0, -12($r29)
	lw	$r2, -28($r29)
	lw	$r4, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10374:
	jr	$r31
calc_dirvec_rows.3361:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, ble_else.10380
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	min_caml_float_of_int	! calldir
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
	jal	mendoi2.10382	! callcls
	j	mendoi1.10381	! callcls
mendoi2.10382:	! callcls
	jr	$r27	! callcls
mendoi1.10381:	! callcls
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
	jal	add_mod5.2918	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -12($r29)
	addi	$r4, $r2, 4
	lw	$r2, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10380:
	jr	$r31
create_dirvec.3365:
	lw	$r2, 4($r28)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -8($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	jr	$r31
create_dirvec_elements.3367:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, ble_else.10384
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	mendoi2.10386	! callcls
	j	mendoi1.10385	! callcls
mendoi2.10386:	! callcls
	jr	$r27	! callcls
mendoi1.10385:	! callcls
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
ble_else.10384:
	jr	$r31
create_dirvecs.3370:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, ble_else.10388
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
	jal	mendoi2.10390	! callcls
	j	mendoi1.10389	! callcls
mendoi2.10390:	! callcls
	jr	$r27	! callcls
mendoi1.10389:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	min_caml_create_array	! calldir
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
	jal	mendoi2.10392	! callcls
	j	mendoi1.10391	! callcls
mendoi2.10392:	! callcls
	jr	$r27	! callcls
mendoi1.10391:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10388:
	jr	$r31
init_dirvec_constants.3372:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, ble_else.10394
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
	jal	mendoi2.10396	! callcls
	j	mendoi1.10395	! callcls
mendoi2.10396:	! callcls
	jr	$r27	! callcls
mendoi1.10395:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10394:
	jr	$r31
init_vecset_constants.3375:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r2, ble_else.10398
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
	jal	mendoi2.10400	! callcls
	j	mendoi1.10399	! callcls
mendoi2.10400:	! callcls
	jr	$r27	! callcls
mendoi1.10399:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
ble_else.10398:
	jr	$r31
init_dirvecs.3377:
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
	jal	mendoi2.10403	! callcls
	j	mendoi1.10402	! callcls
mendoi2.10403:	! callcls
	jr	$r27	! callcls
mendoi1.10402:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r28, -8($r29)
	sw	$r31, -12($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -12	! callcls
	jal	mendoi2.10405	! callcls
	j	mendoi1.10404	! callcls
mendoi2.10405:	! callcls
	jr	$r27	! callcls
mendoi1.10404:	! callcls
	addi	$r29, $r29, 12	! callcls
	lw	$r31, -12($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
add_reflection.3379:
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
	jal	mendoi2.10407	! callcls
	j	mendoi1.10406	! callcls
mendoi2.10407:	! callcls
	jr	$r27	! callcls
mendoi1.10406:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f0, -32($r29)
	lwcl	$f2, -28($r29)
	lwcl	$f4, -24($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	vecset.2921	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -36($r29)
	lw	$r28, -20($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	mendoi2.10409	! callcls
	j	mendoi1.10408	! callcls
mendoi2.10409:	! callcls
	jr	$r27	! callcls
mendoi1.10408:	! callcls
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
setup_rect_reflection.3386:
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
	jal	o_diffuse.2991	! calldir
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
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -20($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	fneg.2811	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -36($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	fneg.2811	! calldir
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
	jal	mendoi2.10412	! callcls
	j	mendoi1.10411	! callcls
mendoi2.10412:	! callcls
	jr	$r27	! callcls
mendoi1.10411:	! callcls
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
	jal	mendoi2.10414	! callcls
	j	mendoi1.10413	! callcls
mendoi2.10414:	! callcls
	jr	$r27	! callcls
mendoi1.10413:	! callcls
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
	jal	mendoi2.10416	! callcls
	j	mendoi1.10415	! callcls
mendoi2.10416:	! callcls
	jr	$r27	! callcls
mendoi1.10415:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, 3
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
setup_surface_reflection.3389:
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
	jal	o_diffuse.2991	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -24($r29)
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	o_param_abc.2983	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -20($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	veciprod.2942	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lfh	$f2, 16384
	lfl	$f2, 0
	lw	$r2, -24($r29)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	o_param_a.2977	! calldir
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
	jal	o_param_b.2979	! calldir
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
	jal	o_param_c.2981	! calldir
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
	jal	mendoi2.10419	! callcls
	j	mendoi1.10418	! callcls
mendoi2.10419:	! callcls
	jr	$r27	! callcls
mendoi1.10418:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
setup_reflections.3392:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, ble_else.10421
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
	jal	o_reflectiontype.2971	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10422
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_diffuse.2991	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	fless.2795	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, beq_else.10423
	jr	$r31
beq_else.10423:
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	o_form.2969	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	bne	$r2, $r3, beq_else.10425
	lw	$r2, -8($r29)
	lw	$r3, -16($r29)
	lw	$r28, -12($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10425:
	addi	$r3, $r0, 2
	bne	$r2, $r3, beq_else.10426
	lw	$r2, -8($r29)
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
beq_else.10426:
	jr	$r31
beq_else.10422:
	jr	$r31
ble_else.10421:
	jr	$r31
rt.3394:
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
	jal	min_caml_float_of_int	! calldir
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
	jal	mendoi2.10431	! callcls
	j	mendoi1.10430	! callcls
mendoi2.10431:	! callcls
	jr	$r27	! callcls
mendoi1.10430:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r28, -44($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	mendoi2.10433	! callcls
	j	mendoi1.10432	! callcls
mendoi2.10433:	! callcls
	jr	$r27	! callcls
mendoi1.10432:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r28, -44($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	mendoi2.10435	! callcls
	j	mendoi1.10434	! callcls
mendoi2.10435:	! callcls
	jr	$r27	! callcls
mendoi1.10434:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r28, -40($r29)
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10437	! callcls
	j	mendoi1.10436	! callcls
mendoi2.10437:	! callcls
	jr	$r27	! callcls
mendoi1.10436:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r28, -36($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10439	! callcls
	j	mendoi1.10438	! callcls
mendoi2.10439:	! callcls
	jr	$r27	! callcls
mendoi1.10438:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r28, -32($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10441	! callcls
	j	mendoi1.10440	! callcls
mendoi2.10441:	! callcls
	jr	$r27	! callcls
mendoi1.10440:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -28($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	d_vec.3028	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	veccpy.2931	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r2, -28($r29)
	lw	$r28, -20($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10443	! callcls
	j	mendoi1.10442	! callcls
mendoi2.10443:	! callcls
	jr	$r27	! callcls
mendoi1.10442:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r28, -12($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10445	! callcls
	j	mendoi1.10444	! callcls
mendoi2.10445:	! callcls
	jr	$r27	! callcls
mendoi1.10444:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r2, -60($r29)
	lw	$r28, -8($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	mendoi2.10447	! callcls
	j	mendoi1.10446	! callcls
mendoi2.10447:	! callcls
	jr	$r27	! callcls
mendoi1.10446:	! callcls
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
min_caml_start:
	lui	$r29, 1024	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	! calldir
	addi	$r29, $r29, -4	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 4	! calldir
	lw	$r31, -4($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, read_int_token.2840
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -4($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, read_int.2843
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r2, 8($r5)
	sw	$r4, 4($r5)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r5, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, read_float_token1.2849
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -12($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, read_float_token2.2852
	sw	$r6, 0($r5)
	lw	$r6, -16($r29)
	sw	$r6, 8($r5)
	lw	$r7, -20($r29)
	sw	$r7, 4($r5)
	addi	$r8, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, read_float.2854
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	min_caml_create_float_array	! calldir
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 17279
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	min_caml_create_float_array	! calldir
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	min_caml_create_array	! calldir
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -120($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -140($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	min_caml_create_array	! calldir
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 60
	lw	$r4, -148($r29)
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	min_caml_create_array	! calldir
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
	jal	min_caml_create_float_array	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -160($r29)
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	min_caml_create_array	! calldir
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
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -164($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	min_caml_create_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r4, read_screen_settings.3040
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
	la	$r10, read_light.3042
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
	la	$r14, read_nth_object.3047
	sw	$r14, 0($r13)
	sw	$r10, 12($r13)
	sw	$r8, 8($r13)
	lw	$r8, -32($r29)
	sw	$r8, 4($r13)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, read_object.3049
	sw	$r15, 0($r14)
	sw	$r13, 8($r14)
	lw	$r13, -28($r29)
	sw	$r13, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, read_all_object.3051
	sw	$r16, 0($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, read_net_item.3053
	sw	$r16, 0($r14)
	sw	$r10, 4($r14)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, read_or_network.3055
	sw	$r16, 0($r10)
	sw	$r14, 4($r10)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, read_and_network.3057
	sw	$r17, 0($r16)
	sw	$r14, 8($r16)
	lw	$r14, -56($r29)
	sw	$r14, 4($r16)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 28
	la	$r18, read_parameter.3059
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
	la	$r10, solver_rect_surface.3061
	sw	$r10, 0($r9)
	lw	$r10, -68($r29)
	sw	$r10, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, solver_rect.3070
	sw	$r16, 0($r15)
	sw	$r9, 4($r15)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, solver_surface.3076
	sw	$r16, 0($r9)
	sw	$r10, 4($r9)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, solver_second.3095
	sw	$r18, 0($r16)
	sw	$r10, 4($r16)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 20
	la	$r19, solver.3101
	sw	$r19, 0($r18)
	sw	$r9, 16($r18)
	sw	$r16, 12($r18)
	sw	$r15, 8($r18)
	sw	$r8, 4($r18)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, solver_rect_fast.3105
	sw	$r15, 0($r9)
	sw	$r10, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, solver_surface_fast.3112
	sw	$r16, 0($r15)
	sw	$r10, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, solver_second_fast.3118
	sw	$r19, 0($r16)
	sw	$r10, 4($r16)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 20
	la	$r20, solver_fast.3124
	sw	$r20, 0($r19)
	sw	$r15, 16($r19)
	sw	$r16, 12($r19)
	sw	$r9, 8($r19)
	sw	$r8, 4($r19)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, solver_surface_fast2.3128
	sw	$r16, 0($r15)
	sw	$r10, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 8
	la	$r20, solver_second_fast2.3135
	sw	$r20, 0($r16)
	sw	$r10, 4($r16)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 20
	la	$r21, solver_fast2.3142
	sw	$r21, 0($r20)
	sw	$r15, 16($r20)
	sw	$r16, 12($r20)
	sw	$r9, 8($r20)
	sw	$r8, 4($r20)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, iter_setup_dirvec_constants.3154
	sw	$r15, 0($r9)
	sw	$r8, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 12
	la	$r16, setup_dirvec_constants.3157
	sw	$r16, 0($r15)
	sw	$r13, 8($r15)
	sw	$r9, 4($r15)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, setup_startp_constants.3159
	sw	$r16, 0($r9)
	sw	$r8, 4($r9)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 16
	la	$r21, setup_startp.3162
	sw	$r21, 0($r16)
	lw	$r21, -120($r29)
	sw	$r21, 12($r16)
	sw	$r9, 8($r16)
	sw	$r13, 4($r16)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r22, check_all_inside.3184
	sw	$r22, 0($r9)
	sw	$r8, 4($r9)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 32
	la	$r23, shadow_check_and_group.3190
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
	la	$r26, shadow_check_one_or_group.3193
	sw	$r26, 0($r25)
	sw	$r22, 8($r25)
	sw	$r14, 4($r25)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 24
	la	$r26, shadow_check_one_or_matrix.3196
	sw	$r26, 0($r22)
	sw	$r19, 20($r22)
	sw	$r10, 16($r22)
	sw	$r25, 12($r22)
	sw	$r23, 8($r22)
	sw	$r24, 4($r22)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 40
	la	$r25, solve_each_element.3199
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
	la	$r17, solve_one_or_network.3203
	sw	$r17, 0($r23)
	sw	$r19, 8($r23)
	sw	$r14, 4($r23)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 24
	la	$r19, trace_or_matrix.3207
	sw	$r19, 0($r17)
	sw	$r25, 20($r17)
	sw	$r26, 16($r17)
	sw	$r10, 12($r17)
	sw	$r18, 8($r17)
	sw	$r23, 4($r17)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 16
	la	$r19, judge_intersection.3211
	sw	$r19, 0($r18)
	sw	$r17, 12($r18)
	sw	$r25, 8($r18)
	sw	$r3, 4($r18)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 40
	la	$r19, solve_each_element_fast.3213
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
	la	$r19, solve_one_or_network_fast.3217
	sw	$r19, 0($r9)
	sw	$r17, 8($r9)
	sw	$r14, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 20
	la	$r17, trace_or_matrix_fast.3221
	sw	$r17, 0($r14)
	sw	$r25, 16($r14)
	sw	$r20, 12($r14)
	sw	$r10, 8($r14)
	sw	$r9, 4($r14)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 16
	la	$r10, judge_intersection_fast.3225
	sw	$r10, 0($r9)
	sw	$r14, 12($r9)
	sw	$r25, 8($r9)
	sw	$r3, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r14, get_nvector_rect.3227
	sw	$r14, 0($r10)
	lw	$r14, -88($r29)
	sw	$r14, 8($r10)
	sw	$r27, 4($r10)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, get_nvector_plane.3229
	sw	$r19, 0($r17)
	sw	$r14, 4($r17)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r20, get_nvector_second.3231
	sw	$r20, 0($r19)
	sw	$r14, 8($r19)
	sw	$r24, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 16
	la	$r21, get_nvector.3233
	sw	$r21, 0($r20)
	sw	$r19, 12($r20)
	sw	$r10, 8($r20)
	sw	$r17, 4($r20)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	la	$r17, utexture.3236
	sw	$r17, 0($r10)
	lw	$r17, -92($r29)
	sw	$r17, 4($r10)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r21, add_light.3239
	sw	$r21, 0($r19)
	sw	$r17, 8($r19)
	lw	$r21, -100($r29)
	sw	$r21, 4($r19)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 36
	sw	$r15, -172($r29)
	la	$r15, trace_reflections.3243
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
	la	$r13, trace_ray.3248
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
	la	$r13, trace_diffuse_ray.3254
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
	la	$r10, iter_trace_diffuse_rays.3257
	sw	$r10, 0($r9)
	sw	$r12, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r12, trace_diffuse_rays.3262
	sw	$r12, 0($r10)
	sw	$r16, 8($r10)
	sw	$r9, 4($r10)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r12, trace_diffuse_ray_80percent.3266
	sw	$r12, 0($r9)
	sw	$r10, 8($r9)
	lw	$r12, -144($r29)
	sw	$r12, 4($r9)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 16
	la	$r14, calc_diffuse_using_1point.3270
	sw	$r14, 0($r13)
	sw	$r9, 12($r13)
	sw	$r21, 8($r13)
	sw	$r3, 4($r13)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 12
	la	$r14, calc_diffuse_using_5points.3273
	sw	$r14, 0($r9)
	sw	$r21, 8($r9)
	sw	$r3, 4($r9)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, do_without_neighbors.3279
	sw	$r16, 0($r14)
	sw	$r13, 4($r14)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, neighbors_exist.3282
	sw	$r16, 0($r13)
	lw	$r16, -104($r29)
	sw	$r16, 4($r13)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 12
	la	$r18, try_exploit_neighbors.3295
	sw	$r18, 0($r17)
	sw	$r14, 8($r17)
	sw	$r9, 4($r17)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, write_ppm_header.3302
	sw	$r18, 0($r9)
	sw	$r16, 4($r9)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, write_rgb.3306
	sw	$r19, 0($r18)
	sw	$r21, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 16
	la	$r20, pretrace_diffuse_rays.3308
	sw	$r20, 0($r19)
	sw	$r10, 12($r19)
	sw	$r12, 8($r19)
	sw	$r3, 4($r19)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 40
	la	$r10, pretrace_pixels.3311
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
	la	$r15, pretrace_line.3318
	sw	$r15, 0($r10)
	sw	$r5, 24($r10)
	sw	$r6, 20($r10)
	sw	$r4, 16($r10)
	sw	$r3, 12($r10)
	sw	$r16, 8($r10)
	sw	$r7, 4($r10)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r5, scan_pixel.3322
	sw	$r5, 0($r3)
	sw	$r18, 24($r3)
	sw	$r17, 20($r3)
	sw	$r21, 16($r3)
	sw	$r13, 12($r3)
	sw	$r16, 8($r3)
	sw	$r14, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, scan_line.3328
	sw	$r6, 0($r5)
	sw	$r3, 12($r5)
	sw	$r10, 8($r5)
	sw	$r16, 4($r5)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	la	$r6, create_pixelline.3341
	sw	$r6, 0($r3)
	sw	$r16, 4($r3)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r13, calc_dirvec.3348
	sw	$r13, 0($r6)
	sw	$r12, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, calc_dirvecs.3356
	sw	$r14, 0($r13)
	sw	$r6, 4($r13)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, calc_dirvec_rows.3361
	sw	$r14, 0($r6)
	sw	$r13, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, create_dirvec.3365
	sw	$r14, 0($r13)
	lw	$r14, -28($r29)
	sw	$r14, 4($r13)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r17, create_dirvec_elements.3367
	sw	$r17, 0($r15)
	sw	$r13, 4($r15)
	addi	$r17, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, create_dirvecs.3370
	sw	$r18, 0($r17)
	sw	$r12, 12($r17)
	sw	$r15, 8($r17)
	sw	$r13, 4($r17)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r18, init_dirvec_constants.3372
	sw	$r18, 0($r15)
	lw	$r18, -172($r29)
	sw	$r18, 4($r15)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	la	$r20, init_vecset_constants.3375
	sw	$r20, 0($r19)
	sw	$r15, 8($r19)
	sw	$r12, 4($r19)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, init_dirvecs.3377
	sw	$r15, 0($r12)
	sw	$r19, 12($r12)
	sw	$r17, 8($r12)
	sw	$r6, 4($r12)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, add_reflection.3379
	sw	$r15, 0($r6)
	sw	$r18, 12($r6)
	lw	$r15, -164($r29)
	sw	$r15, 8($r6)
	sw	$r13, 4($r6)
	addi	$r13, $r30, 0
	addi	$r30, $r30, 16
	la	$r15, setup_rect_reflection.3386
	sw	$r15, 0($r13)
	sw	$r2, 12($r13)
	sw	$r11, 8($r13)
	sw	$r6, 4($r13)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r17, setup_surface_reflection.3389
	sw	$r17, 0($r15)
	sw	$r2, 12($r15)
	sw	$r11, 8($r15)
	sw	$r6, 4($r15)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 16
	la	$r6, setup_reflections.3392
	sw	$r6, 0($r2)
	sw	$r15, 12($r2)
	sw	$r13, 8($r2)
	sw	$r8, 4($r2)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 60
	la	$r6, rt.3394
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
	jal	mendoi2.10449	! callcls
	j	mendoi1.10448	! callcls
mendoi2.10449:	! callcls
	jr	$r27	! callcls
mendoi1.10448:	! callcls
	addi	$r29, $r29, 176	! callcls
	lw	$r31, -176($r29)	! callcls
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

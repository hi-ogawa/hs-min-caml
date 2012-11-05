	j	.min_caml_start
.mul_sub.421:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.4707
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.4707:
	sra	$r5, $r3, 1
	sll	$r6, $r5, 1
	subu	$r3, $r3, $r6
	bne	$r3, $r4, .beq_else.4708
	sll	$r2, $r2, 1
	bne	$r5, $r4, .beq_else.4709
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.4709:
	sra	$r3, $r5, 1
	sll	$r6, $r3, 1
	subu	$r5, $r5, $r6
	bne	$r5, $r4, .beq_else.4710
	sll	$r2, $r2, 1
	j	.mul_sub.421	! calldir-tail
.beq_else.4710:
	sll	$r4, $r2, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.beq_else.4708:
	sll	$r3, $r2, 1
	sw	$r2, -8($r29)
	bne	$r5, $r4, .beq_else.4711
	addi	$r2, $r0, 0
	j	.beq_cont.4712
.beq_else.4711:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r4, .beq_else.4713
	sll	$r3, $r3, 1
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	j	.beq_cont.4714
.beq_else.4713:
	sll	$r4, $r3, 1
	sw	$r3, -12($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
.beq_cont.4714:
.beq_cont.4712:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.div_binary_search.427:
	addu	$r6, $r4, $r5
	addi	$r7, $r0, 1
	sra	$r6, $r6, 1
	addi	$r8, $r0, 0
	sw	$r3, -4($r29)
	sw	$r8, -8($r29)
	sw	$r6, -12($r29)
	sw	$r2, -16($r29)
	sw	$r7, -20($r29)
	sw	$r4, -24($r29)
	sw	$r5, -28($r29)
	bgt	$r8, $r3, .ble_else.4715
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	j	.ble_cont.4716
.ble_else.4715:
	subu	$r9, $r0, $r6
	subu	$r10, $r0, $r3
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
.ble_cont.4716:
	lw	$r4, -24($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.4717
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.4717:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.4718
	bne	$r2, $r3, .beq_else.4719
	lw	$r2, -12($r29)
	jr	$r31
.beq_else.4719:
	lw	$r5, -12($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -32($r29)
	bgt	$r8, $r7, .ble_else.4720
	bne	$r7, $r8, .beq_else.4722
	addi	$r2, $r0, 0
	j	.beq_cont.4723
.beq_else.4722:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.4724
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	j	.beq_cont.4725
.beq_else.4724:
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r5, -32($r29)
	addu	$r2, $r2, $r5
.beq_cont.4725:
.beq_cont.4723:
	j	.ble_cont.4721
.ble_else.4720:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.4726
	addi	$r2, $r0, 0
	j	.beq_cont.4727
.beq_else.4726:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.4728
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	j	.beq_cont.4729
.beq_else.4728:
	sll	$r8, $r9, 1
	sw	$r9, -36($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
.beq_cont.4729:
.beq_cont.4727:
.ble_cont.4721:
	lw	$r4, -24($r29)
	lw	$r5, -12($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.4730
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.4730:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.4731
	bne	$r2, $r3, .beq_else.4732
	lw	$r2, -32($r29)
	jr	$r31
.beq_else.4732:
	lw	$r2, -4($r29)
	lw	$r5, -32($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.427	! calldir-tail
.ble_else.4731:
	lw	$r2, -4($r29)
	lw	$r4, -32($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.427	! calldir-tail
.ble_else.4718:
	lw	$r2, -12($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -40($r29)
	bgt	$r8, $r7, .ble_else.4733
	bne	$r7, $r8, .beq_else.4735
	addi	$r2, $r0, 0
	j	.beq_cont.4736
.beq_else.4735:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.4737
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.4738
.beq_else.4737:
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r5, -40($r29)
	addu	$r2, $r2, $r5
.beq_cont.4738:
.beq_cont.4736:
	j	.ble_cont.4734
.ble_else.4733:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.4739
	addi	$r2, $r0, 0
	j	.beq_cont.4740
.beq_else.4739:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.4741
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.4742
.beq_else.4741:
	sll	$r8, $r9, 1
	sw	$r9, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
.beq_cont.4742:
.beq_cont.4740:
.ble_cont.4734:
	lw	$r4, -12($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.4743
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.4743:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.4744
	bne	$r2, $r3, .beq_else.4745
	lw	$r2, -40($r29)
	jr	$r31
.beq_else.4745:
	lw	$r2, -4($r29)
	lw	$r5, -40($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.427	! calldir-tail
.ble_else.4744:
	lw	$r2, -4($r29)
	lw	$r4, -40($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.427	! calldir-tail
.print_int.439:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.4746
	lui	$r4, 1525
	ori	$r4, $r4, 57600
	addi	$r5, $r0, 3
	sra	$r6, $r5, 1
	sra	$r7, $r4, 1
	sll	$r8, $r7, 1
	subu	$r8, $r4, $r8
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r6, -16($r29)
	sw	$r2, -20($r29)
	bne	$r8, $r3, .beq_else.4747
	sll	$r8, $r6, 1
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	j	.beq_cont.4748
.beq_else.4747:
	sll	$r8, $r6, 1
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r5, -16($r29)
	addu	$r2, $r2, $r5
.beq_cont.4748:
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.4749
	bne	$r2, $r3, .beq_else.4751
	lw	$r2, -16($r29)
	j	.beq_cont.4752
.beq_else.4751:
	lw	$r2, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.beq_cont.4752:
	j	.ble_cont.4750
.ble_else.4749:
	lw	$r2, -12($r29)
	lw	$r4, -16($r29)
	lw	$r5, -4($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.ble_cont.4750:
	lw	$r3, -12($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -24($r29)
	sw	$r2, -28($r29)
	bgt	$r4, $r3, .ble_else.4753
	addi	$r2, $r0, 0
	j	.ble_cont.4754
.ble_else.4753:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4754:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 10
	sra	$r5, $r4, 1
	sra	$r6, $r3, 1
	sll	$r7, $r6, 1
	subu	$r7, $r3, $r7
	lw	$r8, -8($r29)
	sw	$r2, -32($r29)
	sw	$r4, -36($r29)
	sw	$r3, -40($r29)
	sw	$r5, -44($r29)
	bne	$r7, $r8, .beq_else.4755
	sll	$r7, $r5, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	j	.beq_cont.4756
.beq_else.4755:
	sll	$r7, $r5, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4756:
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.4757
	bne	$r2, $r3, .beq_else.4759
	lw	$r2, -44($r29)
	j	.beq_cont.4760
.beq_else.4759:
	lw	$r2, -40($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
.beq_cont.4760:
	j	.ble_cont.4758
.ble_else.4757:
	lw	$r2, -40($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
.ble_cont.4758:
	lw	$r3, -40($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -28($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -48($r29)
	sw	$r2, -52($r29)
	bgt	$r4, $r3, .ble_else.4761
	lw	$r5, -32($r29)
	bne	$r5, $r3, .beq_else.4763
	addi	$r2, $r0, 0
	j	.beq_cont.4764
.beq_else.4763:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4764:
	j	.ble_cont.4762
.ble_else.4761:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4762:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -8($r29)
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	bne	$r5, $r6, .beq_else.4765
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	j	.beq_cont.4766
.beq_else.4765:
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4766:
	lw	$r3, -52($r29)
	bgt	$r3, $r2, .ble_else.4767
	bne	$r2, $r3, .beq_else.4769
	lw	$r2, -44($r29)
	j	.beq_cont.4770
.beq_else.4769:
	lw	$r2, -60($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
.beq_cont.4770:
	j	.ble_cont.4768
.ble_else.4767:
	lw	$r2, -60($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
.ble_cont.4768:
	lw	$r3, -60($r29)
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -52($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -64($r29)
	sw	$r2, -68($r29)
	bgt	$r4, $r3, .ble_else.4771
	lw	$r5, -56($r29)
	bne	$r5, $r3, .beq_else.4773
	addi	$r2, $r0, 0
	j	.beq_cont.4774
.beq_else.4773:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4774:
	j	.ble_cont.4772
.ble_else.4771:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4772:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -8($r29)
	sw	$r2, -72($r29)
	sw	$r3, -76($r29)
	bne	$r5, $r6, .beq_else.4775
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	j	.beq_cont.4776
.beq_else.4775:
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4776:
	lw	$r3, -68($r29)
	bgt	$r3, $r2, .ble_else.4777
	bne	$r2, $r3, .beq_else.4779
	lw	$r2, -44($r29)
	j	.beq_cont.4780
.beq_else.4779:
	lw	$r2, -76($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.beq_cont.4780:
	j	.ble_cont.4778
.ble_else.4777:
	lw	$r2, -76($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.ble_cont.4778:
	lw	$r3, -76($r29)
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -68($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, .ble_else.4781
	lw	$r5, -72($r29)
	bne	$r5, $r3, .beq_else.4783
	addi	$r2, $r0, 0
	j	.beq_cont.4784
.beq_else.4783:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4784:
	j	.ble_cont.4782
.ble_else.4781:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4782:
	addi	$r3, $r0, 10000
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -8($r29)
	sw	$r2, -88($r29)
	sw	$r3, -92($r29)
	bne	$r5, $r6, .beq_else.4785
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	j	.beq_cont.4786
.beq_else.4785:
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4786:
	lw	$r3, -84($r29)
	bgt	$r3, $r2, .ble_else.4787
	bne	$r2, $r3, .beq_else.4789
	lw	$r2, -44($r29)
	j	.beq_cont.4790
.beq_else.4789:
	lw	$r2, -92($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
.beq_cont.4790:
	j	.ble_cont.4788
.ble_else.4787:
	lw	$r2, -92($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
.ble_cont.4788:
	lw	$r3, -92($r29)
	sw	$r2, -96($r29)
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -96($r29)
	sw	$r2, -100($r29)
	bgt	$r4, $r3, .ble_else.4791
	lw	$r5, -88($r29)
	bne	$r5, $r3, .beq_else.4793
	addi	$r2, $r0, 0
	j	.beq_cont.4794
.beq_else.4793:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4794:
	j	.ble_cont.4792
.ble_else.4791:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4792:
	addi	$r3, $r0, 1000
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -8($r29)
	sw	$r2, -104($r29)
	sw	$r3, -108($r29)
	bne	$r5, $r6, .beq_else.4795
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	j	.beq_cont.4796
.beq_else.4795:
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4796:
	lw	$r3, -100($r29)
	bgt	$r3, $r2, .ble_else.4797
	bne	$r2, $r3, .beq_else.4799
	lw	$r2, -44($r29)
	j	.beq_cont.4800
.beq_else.4799:
	lw	$r2, -108($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
.beq_cont.4800:
	j	.ble_cont.4798
.ble_else.4797:
	lw	$r2, -108($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
.ble_cont.4798:
	lw	$r3, -108($r29)
	sw	$r2, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -100($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -112($r29)
	sw	$r2, -116($r29)
	bgt	$r4, $r3, .ble_else.4801
	lw	$r5, -104($r29)
	bne	$r5, $r3, .beq_else.4803
	addi	$r2, $r0, 0
	j	.beq_cont.4804
.beq_else.4803:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4804:
	j	.ble_cont.4802
.ble_else.4801:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4802:
	addi	$r3, $r0, 100
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -8($r29)
	sw	$r2, -120($r29)
	sw	$r3, -124($r29)
	bne	$r5, $r6, .beq_else.4805
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	j	.beq_cont.4806
.beq_else.4805:
	lw	$r5, -44($r29)
	sll	$r7, $r5, 1
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4806:
	lw	$r3, -116($r29)
	bgt	$r3, $r2, .ble_else.4807
	bne	$r2, $r3, .beq_else.4809
	lw	$r2, -44($r29)
	j	.beq_cont.4810
.beq_else.4809:
	lw	$r2, -124($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
.beq_cont.4810:
	j	.ble_cont.4808
.ble_else.4807:
	lw	$r2, -124($r29)
	lw	$r4, -44($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
.ble_cont.4808:
	lw	$r3, -124($r29)
	sw	$r2, -128($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -116($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -128($r29)
	sw	$r2, -132($r29)
	bgt	$r4, $r3, .ble_else.4811
	lw	$r5, -120($r29)
	bne	$r5, $r3, .beq_else.4813
	addi	$r2, $r0, 0
	j	.beq_cont.4814
.beq_else.4813:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4814:
	j	.ble_cont.4812
.ble_else.4811:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4812:
	lw	$r3, -44($r29)
	sll	$r4, $r3, 1
	lw	$r5, -36($r29)
	subu	$r6, $r5, $r4
	lw	$r7, -8($r29)
	sw	$r2, -136($r29)
	bne	$r6, $r7, .beq_else.4815
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	j	.beq_cont.4816
.beq_else.4815:
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r5, -44($r29)
	addu	$r2, $r2, $r5
.beq_cont.4816:
	lw	$r3, -132($r29)
	bgt	$r3, $r2, .ble_else.4817
	bne	$r2, $r3, .beq_else.4819
	lw	$r2, -44($r29)
	j	.beq_cont.4820
.beq_else.4819:
	lw	$r2, -36($r29)
	lw	$r4, -8($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
.beq_cont.4820:
	j	.ble_cont.4818
.ble_else.4817:
	lw	$r5, -36($r29)
	lw	$r4, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.div_binary_search.427	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
.ble_cont.4818:
	lw	$r3, -36($r29)
	sw	$r2, -140($r29)
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.mul_sub.421	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r3, -132($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -8($r29)
	lw	$r4, -140($r29)
	sw	$r2, -144($r29)
	bgt	$r4, $r3, .ble_else.4821
	lw	$r5, -136($r29)
	bne	$r5, $r3, .beq_else.4823
	addi	$r2, $r0, 0
	j	.beq_cont.4824
.beq_else.4823:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.4824:
	j	.ble_cont.4822
.ble_else.4821:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.4822:
	lw	$r2, -144($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
.ble_else.4746:
	addi	$r3, $r0, 45
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -20($r29)
	subu	$r2, $r0, $r2
	j	.print_int.439	! calldir-tail
.fib.445:
	addi	$r3, $r0, 1
	bgt	$r2, $r3, .ble_else.4825
	jr	$r31
.ble_else.4825:
	addi	$r4, $r2, -1
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	bgt	$r4, $r3, .ble_else.4826
	addi	$r2, $r4, 0
	j	.ble_cont.4827
.ble_else.4826:
	addi	$r5, $r4, -1
	sw	$r4, -12($r29)
	bgt	$r5, $r3, .ble_else.4828
	addi	$r2, $r5, 0
	j	.ble_cont.4829
.ble_else.4828:
	addi	$r6, $r5, -1
	sw	$r5, -16($r29)
	bgt	$r6, $r3, .ble_else.4830
	addi	$r2, $r6, 0
	j	.ble_cont.4831
.ble_else.4830:
	addi	$r7, $r6, -1
	sw	$r6, -20($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	addi	$r3, $r3, -2
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	addu	$r2, $r3, $r2
.ble_cont.4831:
	lw	$r3, -16($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -28($r29)
	bgt	$r3, $r4, .ble_else.4832
	addi	$r2, $r3, 0
	j	.ble_cont.4833
.ble_else.4832:
	addi	$r5, $r3, -1
	sw	$r3, -32($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -32($r29)
	addi	$r3, $r3, -2
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	addu	$r2, $r3, $r2
.ble_cont.4833:
	lw	$r3, -28($r29)
	addu	$r2, $r3, $r2
.ble_cont.4829:
	lw	$r3, -12($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -40($r29)
	bgt	$r3, $r4, .ble_else.4834
	addi	$r2, $r3, 0
	j	.ble_cont.4835
.ble_else.4834:
	addi	$r5, $r3, -1
	sw	$r3, -44($r29)
	bgt	$r5, $r4, .ble_else.4836
	addi	$r2, $r5, 0
	j	.ble_cont.4837
.ble_else.4836:
	addi	$r6, $r5, -1
	sw	$r5, -48($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	addi	$r3, $r3, -2
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	addu	$r2, $r3, $r2
.ble_cont.4837:
	lw	$r3, -44($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -56($r29)
	bgt	$r3, $r4, .ble_else.4838
	addi	$r2, $r3, 0
	j	.ble_cont.4839
.ble_else.4838:
	addi	$r5, $r3, -1
	sw	$r3, -60($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	addi	$r3, $r3, -2
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	addu	$r2, $r3, $r2
.ble_cont.4839:
	lw	$r3, -56($r29)
	addu	$r2, $r3, $r2
.ble_cont.4835:
	lw	$r3, -40($r29)
	addu	$r2, $r3, $r2
.ble_cont.4827:
	lw	$r3, -8($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -68($r29)
	bgt	$r3, $r4, .ble_else.4840
	addi	$r2, $r3, 0
	j	.ble_cont.4841
.ble_else.4840:
	addi	$r5, $r3, -1
	sw	$r3, -72($r29)
	bgt	$r5, $r4, .ble_else.4842
	addi	$r2, $r5, 0
	j	.ble_cont.4843
.ble_else.4842:
	addi	$r6, $r5, -1
	sw	$r5, -76($r29)
	bgt	$r6, $r4, .ble_else.4844
	addi	$r2, $r6, 0
	j	.ble_cont.4845
.ble_else.4844:
	addi	$r7, $r6, -1
	sw	$r6, -80($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -80($r29)
	addi	$r3, $r3, -2
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -84($r29)
	addu	$r2, $r3, $r2
.ble_cont.4845:
	lw	$r3, -76($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -88($r29)
	bgt	$r3, $r4, .ble_else.4846
	addi	$r2, $r3, 0
	j	.ble_cont.4847
.ble_else.4846:
	addi	$r5, $r3, -1
	sw	$r3, -92($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	addi	$r3, $r3, -2
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	addu	$r2, $r3, $r2
.ble_cont.4847:
	lw	$r3, -88($r29)
	addu	$r2, $r3, $r2
.ble_cont.4843:
	lw	$r3, -72($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -100($r29)
	bgt	$r3, $r4, .ble_else.4848
	addi	$r2, $r3, 0
	j	.ble_cont.4849
.ble_else.4848:
	addi	$r5, $r3, -1
	sw	$r3, -104($r29)
	bgt	$r5, $r4, .ble_else.4850
	addi	$r2, $r5, 0
	j	.ble_cont.4851
.ble_else.4850:
	addi	$r6, $r5, -1
	sw	$r5, -108($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -108($r29)
	addi	$r3, $r3, -2
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -112($r29)
	addu	$r2, $r3, $r2
.ble_cont.4851:
	lw	$r3, -104($r29)
	addi	$r3, $r3, -2
	lw	$r4, -4($r29)
	sw	$r2, -116($r29)
	bgt	$r3, $r4, .ble_else.4852
	addi	$r2, $r3, 0
	j	.ble_cont.4853
.ble_else.4852:
	addi	$r4, $r3, -1
	sw	$r3, -120($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	addi	$r3, $r3, -2
	sw	$r2, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r3, -124($r29)
	addu	$r2, $r3, $r2
.ble_cont.4853:
	lw	$r3, -116($r29)
	addu	$r2, $r3, $r2
.ble_cont.4849:
	lw	$r3, -100($r29)
	addu	$r2, $r3, $r2
.ble_cont.4841:
	lw	$r3, -68($r29)
	addu	$r2, $r3, $r2
	jr	$r31
.min_caml_start:
	lui	$r29, 64	! init reg_sp
	ori	$r29, $r29, 0	! init reg_sp
	ori	$r30, $r0, 0	! init reg_hp 
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	addi	$r3, $r2, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r2, $r0, 12
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	addi	$r3, $r0, 11
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	addu	$r3, $r3, $r2
	addi	$r4, $r0, 10
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	addu	$r3, $r3, $r2
	lw	$r4, -16($r29)
	addu	$r4, $r4, $r3
	addi	$r5, $r0, 9
	sw	$r4, -24($r29)
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.fib.445	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -32($r29)
	addu	$r2, $r3, $r2
	lw	$r3, -28($r29)
	addu	$r2, $r3, $r2
	lw	$r3, -24($r29)
	addu	$r2, $r3, $r2
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.print_int.439	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
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

! * sqrt (とりあえずこっちは使わない)
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
!	swcl	$f3, -20($r29)
!	swcl	$f4, -24($r29)
!	sw	$r31, -28($r29)
!	addi	$r29, $r29, -28
!	fmove	$f0, $f3
!	jal	.min_caml_myfinv	! $f3 = 1.0 /. $f3
!	fmove	$f3, $f0
!	addi	$r29, $r29, 28
!	lw	$r31, -28($r29)
!	lwcl	$f4, -24($r29)
!	lwcl	$f3, -20($r29)
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
.min_caml_myfinv:		! 引数 $f0(a)
	lui	$r5, 32640		! r5 = 0x7f800000 (指数マスク)
	ori	$r5, $r5, 0
	lui	$r6, 127		! r6 = 0x007fffff (仮数マスク)
	ori	$r6, $r6, 65535
	lui	$r7, 16256		! r7 = (float 1.0 のbit表示)
	ori	$r7, $r7, 0
	lfh	$f11, 16384		! $f11 = 2.0 定数
	lfl	$f11, 0		
	lfh	$f12, 16153		! $f12 初期値x =  0.6
	lfl	$f12, 39322
	addi	$r3, $r0, 15		! 反復回数
	lfh	$f15, 0			! f15 = 0.0
	lfl	$f15, 0
	c.le.s	$f0, $f15		! if (argv[0] <= 0.0)
	bclt	.FINV_NEGATIVE		! 負だったらnegativeにジャンプ
.FINV_POSITIVE:
	swcl	$f0, 0($r30)
	lw	$r4, 0($r30)		! f0 を r4 に変換
	
	and	$r8, $r4, $r5		! expは別個に計算(r8(exp of r4) => f8)
	sra	$r8, $r8, 23
	subu	$r8, $r0, $r8
	addi	$r8, $r8, 254
	sll	$r8, $r8, 23
	sw	$r8, 0($r30)
	lwcl	$f8, 0($r30)
	
	and	$r9, $r4, $r6		! fracも別個に計算(r9(frac of r4) => f0)
	addu	$r10, $r7, $r9		! r10(1.0〜2.0のfloat)
	sw	$r10, 0($r30)
	lwcl	$f0, 0($r30)		! f0 (1.0〜2.0のfloat)
	sw	$r31, -4($r29)
	jal	.FINV_SUB		! ニュートン法
	lw	$r31, -4($r29)

	mul.s	$f0, $f0, $f8		! exp(inv) * frac(inv)
	jr	$r31
.FINV_SUB:				! 1.0〜2.0 ==> 0.0〜1.0	
	mul.s	$f13, $f11, $f12	! $f2 = 2.0 * x		($f11 * $f14)
	mul.s	$f14, $f12, $f12	! $f3 = x * x		($f12 * $f12)
	mul.s	$f14, $f14, $f0		! $f3 = x * x * a	($f14 * $f0)
	sub.s	$f12, $f13, $f14	! $f1 = 2.0 * x - x * x * a
	addi	$r3, $r3, -1
	bne	$r3, $r0, .FINV_SUB
	fmove	$f0, $f12
	jr	$r31
.FINV_NEGATIVE:
	fneg	$f0, $f0
	sw	$r31, -4($r29)
	addi	$r29, $r29, -4
	jal	.FINV_POSITIVE
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)
	fneg	$f0, $f0
	jr	$r31

	lfh	$f30, 0
	lfl	$f30, 0
	lfh	$f31, 16256
	lfl	$f31, 0
	lfh	$f29, 49024
	lfl	$f29, 0
	j	min_caml_start
atan_sub.2405:
	lfh	$f3, 16128
	c.le.s	$f3, $f0
	bclf	bclf.53726
	sub.s	$f3, $f0, $f31
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f31
	add.s	$f0, $f0, $f2
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.53728
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.53730
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.53732
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	fmove	$f26, $f0
	fmove	$f0, $f2
	fmove	$f2, $f26
	j	atan_sub.2405
bclf.53732:
	jr	$r31
bclf.53730:
	jr	$r31
bclf.53728:
	jr	$r31
bclf.53726:
	fmove	$f0, $f2
	jr	$r31
atan.2419:
	c.le.s	$f0, $f31
	bclf	bclf.53734
	c.le.s	$f29, $f0
	bclf	bclf.53736
	addi	$r2, $r0, 0
	j	cont.53735
bclf.53736:
	addi	$r2, $r0, -1
cont.53735:
	j	cont.53733
bclf.53734:
	addi	$r2, $r0, 1
cont.53733:
	bnei	$r2, 0, bnei.53738
	j	cont.53737
bnei.53738:
	div.s	$f0, $f31, $f0
cont.53737:
	mul.s	$f1, $f0, $f0
	lfh	$f2, 17138
	mul.s	$f2, $f2, $f1
	lfh	$f3, 16824
	div.s	$f2, $f2, $f3
	lfh	$f3, 17096
	mul.s	$f3, $f3, $f1
	lfh	$f4, 16808
	add.s	$f2, $f4, $f2
	div.s	$f2, $f3, $f2
	lfh	$f3, 16640
	lfh	$f4, 17058
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16792
	add.s	$f2, $f5, $f2
	div.s	$f2, $f4, $f2
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f3
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -4($r29)
	bgti	$r2, 0, bgti.53740
	blti	$r2, 0, blti.53742
	jr	$r31
blti.53742:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
bgti.53740:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
sin_sub.2460:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53744
	c.le.s	$f30, $f0
	bclf	bclf.53746
	jr	$r31
bclf.53746:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53748
	c.le.s	$f30, $f0
	bclf	bclf.53750
	jr	$r31
bclf.53750:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53752
	c.le.s	$f30, $f0
	bclf	bclf.53754
	jr	$r31
bclf.53754:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53756
	c.le.s	$f30, $f0
	bclf	bclf.53758
	jr	$r31
bclf.53758:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53756:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53752:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53760
	c.le.s	$f30, $f0
	bclf	bclf.53762
	jr	$r31
bclf.53762:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53760:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53748:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53764
	c.le.s	$f30, $f0
	bclf	bclf.53766
	jr	$r31
bclf.53766:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53768
	c.le.s	$f30, $f0
	bclf	bclf.53770
	jr	$r31
bclf.53770:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53768:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53764:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53772
	c.le.s	$f30, $f0
	bclf	bclf.53774
	jr	$r31
bclf.53774:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53772:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53744:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53776
	c.le.s	$f30, $f0
	bclf	bclf.53778
	jr	$r31
bclf.53778:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53780
	c.le.s	$f30, $f0
	bclf	bclf.53782
	jr	$r31
bclf.53782:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53784
	c.le.s	$f30, $f0
	bclf	bclf.53786
	jr	$r31
bclf.53786:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53784:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53780:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53788
	c.le.s	$f30, $f0
	bclf	bclf.53790
	jr	$r31
bclf.53790:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53788:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53776:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53792
	c.le.s	$f30, $f0
	bclf	bclf.53794
	jr	$r31
bclf.53794:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53796
	c.le.s	$f30, $f0
	bclf	bclf.53798
	jr	$r31
bclf.53798:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53796:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53792:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.53800
	c.le.s	$f30, $f0
	bclf	bclf.53802
	jr	$r31
bclf.53802:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.53800:
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
	bclf	bclf.53804
	addi	$r2, $r0, 0
	j	cont.53803
bclf.53804:
	addi	$r2, $r0, 1
cont.53803:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f1, -20($r29)
	c.le.s	$f4, $f5
	bclf	bclf.53806
	c.le.s	$f30, $f4
	bclf	bclf.53808
	fmove	$f0, $f4
	j	cont.53807
bclf.53808:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53810
	c.le.s	$f30, $f4
	bclf	bclf.53812
	fmove	$f0, $f4
	j	cont.53811
bclf.53812:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53814
	c.le.s	$f30, $f4
	bclf	bclf.53816
	fmove	$f0, $f4
	j	cont.53815
bclf.53816:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53815:
	j	cont.53813
bclf.53814:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53813:
cont.53811:
	j	cont.53809
bclf.53810:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53818
	c.le.s	$f30, $f4
	bclf	bclf.53820
	fmove	$f0, $f4
	j	cont.53819
bclf.53820:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53819:
	j	cont.53817
bclf.53818:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53817:
cont.53809:
cont.53807:
	j	cont.53805
bclf.53806:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53822
	c.le.s	$f30, $f4
	bclf	bclf.53824
	fmove	$f0, $f4
	j	cont.53823
bclf.53824:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53826
	c.le.s	$f30, $f4
	bclf	bclf.53828
	fmove	$f0, $f4
	j	cont.53827
bclf.53828:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53827:
	j	cont.53825
bclf.53826:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53825:
cont.53823:
	j	cont.53821
bclf.53822:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.53830
	c.le.s	$f30, $f4
	bclf	bclf.53832
	fmove	$f0, $f4
	j	cont.53831
bclf.53832:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53831:
	j	cont.53829
bclf.53830:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53829:
cont.53821:
cont.53805:
	lwcl	$f1, -20($r29)
	c.le.s	$f0, $f1
	bclf	bclf.53834
	lw	$r2, -16($r29)
	j	cont.53833
bclf.53834:
	lwcl	$f2, -12($r29)
	c.le.s	$f2, $f30
	bclf	bclf.53836
	addi	$r2, $r0, 1
	j	cont.53835
bclf.53836:
	addi	$r2, $r0, 0
cont.53835:
cont.53833:
	c.le.s	$f0, $f1
	bclf	bclf.53838
	j	cont.53837
bclf.53838:
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
cont.53837:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.53840
	j	cont.53839
bclf.53840:
	sub.s	$f0, $f1, $f0
cont.53839:
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
	bnei	$r2, 1, bnei.53842
	jr	$r31
bnei.53842:
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.53844
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.53846
	addi	$r2, $r0, 0
	j	cont.53845
bgt.53846:
	addi	$r2, $r0, 1
cont.53845:
	j	cont.53843
bgt.53844:
	addi	$r2, $r0, 1
cont.53843:
	bnei	$r2, 1, bnei.53848
	lw	$r2, -8($r29)
	bnei	$r2, 1, bnei.53850
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.53852
	lw	$r2, 4($r0)
	jr	$r31
bnei.53852:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.53850:
	addi	$r2, $r0, 0
	j	read_int_token.2507
bnei.53848:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.53854
	addi	$r2, $r0, 45
	lw	$r4, -4($r29)
	bne	$r4, $r2, bne.53856
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	j	cont.53855
bne.53856:
	addi	$r2, $r0, 1
	sw	$r2, 8($r0)
cont.53855:
	j	cont.53853
bnei.53854:
cont.53853:
	lw	$r2, 4($r0)
	sll	$r4, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r4, $r2
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	sw	$r2, 4($r0)
	addi	$r2, $r0, 1
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
	bgt	$r3, $r2, bgt.53858
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.53860
	addi	$r3, $r0, 0
	j	cont.53859
bgt.53860:
	addi	$r3, $r0, 1
cont.53859:
	j	cont.53857
bgt.53858:
	addi	$r3, $r0, 1
cont.53857:
	bnei	$r3, 1, bnei.53862
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.53864
	jr	$r31
bnei.53864:
	addi	$r3, $r0, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	read_float_token1.2565
bnei.53862:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.53866
	addi	$r3, $r0, 45
	lw	$r4, -4($r29)
	bne	$r4, $r3, bne.53868
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.53867
bne.53868:
	addi	$r3, $r0, 1
	sw	$r3, 24($r0)
cont.53867:
	j	cont.53865
bnei.53866:
cont.53865:
	lw	$r3, 12($r0)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r4, $r2, -48
	addu	$r3, $r3, $r4
	sw	$r3, 12($r0)
	addi	$r3, $r0, 1
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	read_float_token1.2565
read_float_token2.2595:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.53870
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.53872
	addi	$r3, $r0, 0
	j	cont.53871
bgt.53872:
	addi	$r3, $r0, 1
cont.53871:
	j	cont.53869
bgt.53870:
	addi	$r3, $r0, 1
cont.53869:
	bnei	$r3, 1, bnei.53874
	lw	$r2, -4($r29)
	bnei	$r2, 1, bnei.53876
	jr	$r31
bnei.53876:
	addi	$r2, $r0, 0
	j	read_float_token2.2595
bnei.53874:
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
	addi	$r2, $r0, 1
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
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.53878
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
	j	cont.53877
bne.53878:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.53877:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.53880
	jr	$r31
bnei.53880:
	fneg	$f0, $f0
	jr	$r31
mul_sub.2655:
	bnei	$r3, 0, bnei.53882
	addi	$r2, $r0, 0
	jr	$r31
bnei.53882:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.53884
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.53886
	addi	$r2, $r0, 0
	jr	$r31
bnei.53886:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.53888
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.53888:
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
bnei.53884:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	bnei	$r3, 0, bnei.53890
	addi	$r2, $r0, 0
	j	cont.53889
bnei.53890:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.53892
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.53891
bnei.53892:
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
cont.53891:
cont.53889:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2668:
	blti	$r3, 0, blti.53894
	bnei	$r3, 0, bnei.53896
	addi	$r2, $r0, 0
	jr	$r31
bnei.53896:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.53898
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.53898:
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
blti.53894:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	bnei	$r3, 0, bnei.53900
	addi	$r2, $r0, 0
	jr	$r31
bnei.53900:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.53902
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.53902:
	sll	$r4, $r2, 1
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
div_binary_search.2674:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	blti	$r3, 0, blti.53904
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.53903
blti.53904:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53903:
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.53906
	addi	$r2, $r4, 0
	jr	$r31
bgti.53906:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.53908
	bne	$r2, $r5, bne.53910
	lw	$r2, -8($r29)
	jr	$r31
bne.53910:
	lw	$r2, -8($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r5, -8($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.53912
	addi	$r2, $r4, 0
	jr	$r31
bgti.53912:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.53914
	bne	$r2, $r3, bne.53916
	lw	$r2, -24($r29)
	jr	$r31
bne.53916:
	lw	$r2, -4($r29)
	lw	$r5, -24($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.53914:
	lw	$r2, -4($r29)
	lw	$r4, -24($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.53908:
	lw	$r2, -8($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -28($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r5, -20($r29)
	lw	$r4, -8($r29)
	subu	$r3, $r5, $r4
	bgti	$r3, 1, bgti.53918
	addi	$r2, $r4, 0
	jr	$r31
bgti.53918:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.53920
	bne	$r2, $r3, bne.53922
	lw	$r2, -28($r29)
	jr	$r31
bne.53922:
	lw	$r2, -4($r29)
	lw	$r5, -28($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.53920:
	lw	$r2, -4($r29)
	lw	$r4, -28($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
print_int.2704:
	blti	$r2, 0, blti.53924
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	addi	$r6, $r0, 1
	sw	$r5, -4($r29)
	sw	$r6, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, bgt.53926
	bne	$r2, $r3, bne.53928
	addi	$r2, $r0, 1
	j	cont.53927
bne.53928:
	lw	$r2, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53927:
	j	cont.53925
bgt.53926:
	lw	$r2, -16($r29)
	lw	$r4, -8($r29)
	lw	$r5, -4($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.53925:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -20($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -24($r29)
	sw	$r2, -28($r29)
	bgti	$r3, 0, bgti.53930
	addi	$r2, $r0, 0
	j	cont.53929
bgti.53930:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53929:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -32($r29)
	sw	$r5, -36($r29)
	sw	$r6, -40($r29)
	sw	$r4, -44($r29)
	sw	$r3, -48($r29)
	addi	$r2, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -28($r29)
	bgt	$r3, $r2, bgt.53932
	bne	$r2, $r3, bne.53934
	addi	$r2, $r0, 5
	j	cont.53933
bne.53934:
	lw	$r2, -48($r29)
	lw	$r4, -44($r29)
	lw	$r5, -40($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.53933:
	j	cont.53931
bgt.53932:
	lw	$r2, -48($r29)
	lw	$r4, -40($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.53931:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r3, -28($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -52($r29)
	sw	$r2, -56($r29)
	bgti	$r3, 0, bgti.53936
	lw	$r4, -32($r29)
	bnei	$r4, 1, bnei.53938
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53937
bnei.53938:
	addi	$r2, $r0, 0
cont.53937:
	j	cont.53935
bgti.53936:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53935:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -60($r29)
	sw	$r5, -64($r29)
	sw	$r6, -68($r29)
	sw	$r4, -72($r29)
	sw	$r3, -76($r29)
	addi	$r2, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -56($r29)
	bgt	$r3, $r2, bgt.53940
	bne	$r2, $r3, bne.53942
	addi	$r2, $r0, 5
	j	cont.53941
bne.53942:
	lw	$r2, -76($r29)
	lw	$r4, -72($r29)
	lw	$r5, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.53941:
	j	cont.53939
bgt.53940:
	lw	$r2, -76($r29)
	lw	$r4, -68($r29)
	lw	$r5, -64($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.53939:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, -56($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -80($r29)
	sw	$r2, -84($r29)
	bgti	$r3, 0, bgti.53944
	lw	$r4, -60($r29)
	bnei	$r4, 1, bnei.53946
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53945
bnei.53946:
	addi	$r2, $r0, 0
cont.53945:
	j	cont.53943
bgti.53944:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53943:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -88($r29)
	sw	$r5, -92($r29)
	sw	$r6, -96($r29)
	sw	$r4, -100($r29)
	sw	$r3, -104($r29)
	addi	$r2, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -84($r29)
	bgt	$r3, $r2, bgt.53948
	bne	$r2, $r3, bne.53950
	addi	$r2, $r0, 5
	j	cont.53949
bne.53950:
	lw	$r2, -104($r29)
	lw	$r4, -100($r29)
	lw	$r5, -96($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.53949:
	j	cont.53947
bgt.53948:
	lw	$r2, -104($r29)
	lw	$r4, -96($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.53947:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -108($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -108($r29)
	sw	$r2, -112($r29)
	bgti	$r3, 0, bgti.53952
	lw	$r4, -88($r29)
	bnei	$r4, 1, bnei.53954
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53953
bnei.53954:
	addi	$r2, $r0, 0
cont.53953:
	j	cont.53951
bgti.53952:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53951:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -116($r29)
	sw	$r5, -120($r29)
	sw	$r6, -124($r29)
	sw	$r4, -128($r29)
	sw	$r3, -132($r29)
	addi	$r2, $r6, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -112($r29)
	bgt	$r3, $r2, bgt.53956
	bne	$r2, $r3, bne.53958
	addi	$r2, $r0, 5
	j	cont.53957
bne.53958:
	lw	$r2, -132($r29)
	lw	$r4, -128($r29)
	lw	$r5, -124($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.53957:
	j	cont.53955
bgt.53956:
	lw	$r2, -132($r29)
	lw	$r4, -124($r29)
	lw	$r5, -120($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.53955:
	addi	$r3, $r0, 10000
	sw	$r2, -136($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r3, -112($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -136($r29)
	sw	$r2, -140($r29)
	bgti	$r3, 0, bgti.53960
	lw	$r4, -116($r29)
	bnei	$r4, 1, bnei.53962
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53961
bnei.53962:
	addi	$r2, $r0, 0
cont.53961:
	j	cont.53959
bgti.53960:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53959:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -144($r29)
	sw	$r5, -148($r29)
	sw	$r6, -152($r29)
	sw	$r4, -156($r29)
	sw	$r3, -160($r29)
	addi	$r2, $r6, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	lw	$r3, -140($r29)
	bgt	$r3, $r2, bgt.53964
	bne	$r2, $r3, bne.53966
	addi	$r2, $r0, 5
	j	cont.53965
bne.53966:
	lw	$r2, -160($r29)
	lw	$r4, -156($r29)
	lw	$r5, -152($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.53965:
	j	cont.53963
bgt.53964:
	lw	$r2, -160($r29)
	lw	$r4, -152($r29)
	lw	$r5, -148($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.53963:
	addi	$r3, $r0, 1000
	sw	$r2, -164($r29)
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	lw	$r3, -140($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -164($r29)
	sw	$r2, -168($r29)
	bgti	$r3, 0, bgti.53968
	lw	$r4, -144($r29)
	bnei	$r4, 1, bnei.53970
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53969
bnei.53970:
	addi	$r2, $r0, 0
cont.53969:
	j	cont.53967
bgti.53968:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53967:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -172($r29)
	sw	$r5, -176($r29)
	sw	$r6, -180($r29)
	sw	$r4, -184($r29)
	sw	$r3, -188($r29)
	addi	$r2, $r6, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r3, -168($r29)
	bgt	$r3, $r2, bgt.53972
	bne	$r2, $r3, bne.53974
	addi	$r2, $r0, 5
	j	cont.53973
bne.53974:
	lw	$r2, -188($r29)
	lw	$r4, -184($r29)
	lw	$r5, -180($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.53973:
	j	cont.53971
bgt.53972:
	lw	$r2, -188($r29)
	lw	$r4, -180($r29)
	lw	$r5, -176($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.53971:
	addi	$r3, $r0, 100
	sw	$r2, -192($r29)
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lw	$r3, -168($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -192($r29)
	sw	$r2, -196($r29)
	bgti	$r3, 0, bgti.53976
	lw	$r4, -172($r29)
	bnei	$r4, 1, bnei.53978
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53977
bnei.53978:
	addi	$r2, $r0, 0
cont.53977:
	j	cont.53975
bgti.53976:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53975:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -200($r29)
	sw	$r5, -204($r29)
	sw	$r6, -208($r29)
	sw	$r4, -212($r29)
	sw	$r3, -216($r29)
	addi	$r2, $r6, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	lw	$r3, -196($r29)
	bgt	$r3, $r2, bgt.53980
	bne	$r2, $r3, bne.53982
	addi	$r2, $r0, 5
	j	cont.53981
bne.53982:
	lw	$r2, -216($r29)
	lw	$r4, -212($r29)
	lw	$r5, -208($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
cont.53981:
	j	cont.53979
bgt.53980:
	lw	$r2, -216($r29)
	lw	$r4, -208($r29)
	lw	$r5, -204($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
cont.53979:
	addi	$r3, $r0, 10
	sw	$r2, -220($r29)
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	lw	$r3, -196($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -220($r29)
	sw	$r2, -224($r29)
	bgti	$r3, 0, bgti.53984
	lw	$r4, -200($r29)
	bnei	$r4, 1, bnei.53986
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.53985
bnei.53986:
	addi	$r2, $r0, 0
cont.53985:
	j	cont.53983
bgti.53984:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	addi	$r2, $r0, 1
cont.53983:
	lw	$r2, -224($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
blti.53924:
	addi	$r3, $r0, 45
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r2, -20($r29)
	subu	$r2, $r0, $r2
	j	print_int.2704
read_screen_settings.3664:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	swcl	$f0, 320($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	swcl	$f0, 324($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	swcl	$f0, 328($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -4($r29)
	fmove	$f0, $f1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	lwcl	$f1, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lwcl	$f1, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f1, -8($r29)
	mul.s	$f2, $f1, $f0
	lfh	$f3, 17224
	mul.s	$f2, $f2, $f3
	swcl	$f2, 720($r0)
	lfh	$f2, 49992
	lwcl	$f3, -12($r29)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 724($r0)
	lwcl	$f2, -20($r29)
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
	swcl	$f0, -8($r29)
	fmove	$f0, $f1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lwcl	$f1, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 344($r0)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f0, $f2
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 352($r0)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
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
	bnei	$r2, -1, bnei.53988
	addi	$r2, $r0, 0
	jr	$r31
bnei.53988:
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
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	swcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	c.le.s	$f30, $f0
	bclf	bclf.53990
	addi	$r2, $r0, 0
	j	cont.53989
bclf.53990:
	addi	$r2, $r0, 1
cont.53989:
	addi	$r3, $r0, 2
	fmove	$f1, $f30
	swcl	$f0, -32($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f1
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -20($r29)
	bnei	$r3, 0, bnei.53992
	j	cont.53991
bnei.53992:
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -48($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -48($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	read_float.2619
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -48($r29)
	swcl	$f0, 8($r2)
cont.53991:
	lw	$r3, -12($r29)
	bnei	$r3, 2, bnei.53994
	addi	$r4, $r0, 1
	j	cont.53993
bnei.53994:
	lw	$r4, -36($r29)
cont.53993:
	addi	$r5, $r0, 4
	fmove	$f0, $f30
	sw	$r4, -52($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -48($r29)
	sw	$r2, 36($r3)
	lw	$r4, -44($r29)
	sw	$r4, 32($r3)
	lw	$r4, -40($r29)
	sw	$r4, 28($r3)
	lw	$r4, -52($r29)
	sw	$r4, 24($r3)
	lw	$r4, -28($r29)
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
	bnei	$r6, 3, bnei.53996
	lwcl	$f0, 0($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.53998
	fmove	$f0, $f30
	j	cont.53997
bclf.53998:
	c.eq.s	$f0, $f30
	bclf	bclf.54000
	fmove	$f1, $f30
	j	cont.53999
bclf.54000:
	c.le.s	$f0, $f30
	bclf	bclf.54002
	fmove	$f1, $f29
	j	cont.54001
bclf.54002:
	fmove	$f1, $f31
cont.54001:
cont.53999:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.53997:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.54004
	fmove	$f0, $f30
	j	cont.54003
bclf.54004:
	c.eq.s	$f0, $f30
	bclf	bclf.54006
	fmove	$f1, $f30
	j	cont.54005
bclf.54006:
	c.le.s	$f0, $f30
	bclf	bclf.54008
	fmove	$f1, $f29
	j	cont.54007
bclf.54008:
	fmove	$f1, $f31
cont.54007:
cont.54005:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.54003:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.54010
	fmove	$f0, $f30
	j	cont.54009
bclf.54010:
	c.eq.s	$f0, $f30
	bclf	bclf.54012
	fmove	$f1, $f30
	j	cont.54011
bclf.54012:
	c.le.s	$f0, $f30
	bclf	bclf.54014
	fmove	$f1, $f29
	j	cont.54013
bclf.54014:
	fmove	$f1, $f31
cont.54013:
cont.54011:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.54009:
	swcl	$f0, 8($r4)
	j	cont.53995
bnei.53996:
	bnei	$r6, 2, bnei.54016
	lwcl	$f0, -32($r29)
	c.le.s	$f30, $f0
	bclf	bclf.54018
	addi	$r3, $r0, 1
	j	cont.54017
bclf.54018:
	addi	$r3, $r0, 0
cont.54017:
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
	bclf	bclf.54020
	fmove	$f0, $f31
	j	cont.54019
bclf.54020:
	bnei	$r3, 1, bnei.54022
	div.s	$f0, $f29, $f0
	j	cont.54021
bnei.54022:
	div.s	$f0, $f31, $f0
cont.54021:
cont.54019:
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	j	cont.54015
bnei.54016:
cont.54015:
cont.53995:
	bnei	$r5, 0, bnei.54024
	j	cont.54023
bnei.54024:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.54023:
	addi	$r2, $r0, 1
	jr	$r31
read_object.4009:
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.54026
	jr	$r31
bgt.54026:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, 1, bnei.54028
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.54030
	jr	$r31
bgt.54030:
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, 1, bnei.54032
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.54034
	jr	$r31
bgt.54034:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54036
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.54038
	jr	$r31
bgt.54038:
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	bnei	$r2, 1, bnei.54040
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	j	read_object.4009
bnei.54040:
	lw	$r2, -16($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.54036:
	lw	$r2, -12($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.54032:
	lw	$r2, -8($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.54028:
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
	bnei	$r2, -1, bnei.54042
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bnei.54042:
	lw	$r3, -4($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	sw	$r5, 4($r0)
	addi	$r5, $r0, 0
	sw	$r5, 8($r0)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, -1, bnei.54044
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.54043
bnei.54044:
	lw	$r3, -12($r29)
	addi	$r4, $r3, 1
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
cont.54043:
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
	bnei	$r2, -1, bnei.54046
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.54045
bnei.54046:
	addi	$r3, $r0, 1
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.54045:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.54048
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bnei.54048:
	lw	$r2, -4($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.54050
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.54049
bnei.54050:
	lw	$r2, -16($r29)
	addi	$r4, $r2, 1
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -16($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	swr	$r4, $r3($r2)	!st var
cont.54049:
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	swr	$r4, $r3($r2)	!st var
	jr	$r31
read_and_network.4048:
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
	bnei	$r2, -1, bnei.54052
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.54051
bnei.54052:
	addi	$r3, $r0, 1
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
cont.54051:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.54054
	jr	$r31
bnei.54054:
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.54056
	jr	$r31
bnei.54056:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	j	read_and_network.4048
solver.4247:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
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
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.54058
	lwcl	$f3, 0($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.54060
	addi	$r4, $r0, 0
	j	cont.54059
bclf.54060:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f30, $f3
	bclf	bclf.54062
	addi	$r6, $r0, 0
	j	cont.54061
bclf.54062:
	addi	$r6, $r0, 1
cont.54061:
	lwcl	$f3, 0($r4)
	bne	$r5, $r6, bne.54064
	fneg	$f3, $f3
	j	cont.54063
bne.54064:
cont.54063:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54066
	addi	$r4, $r0, 0
	j	cont.54065
bclf.54066:
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54068
	addi	$r4, $r0, 0
	j	cont.54067
bclf.54068:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.54067:
cont.54065:
cont.54059:
	bnei	$r4, 1, bnei.54070
	addi	$r2, $r0, 1
	jr	$r31
bnei.54070:
	lwcl	$f3, 4($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.54072
	addi	$r4, $r0, 0
	j	cont.54071
bclf.54072:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 4($r3)
	c.le.s	$f30, $f3
	bclf	bclf.54074
	addi	$r6, $r0, 0
	j	cont.54073
bclf.54074:
	addi	$r6, $r0, 1
cont.54073:
	lwcl	$f3, 4($r4)
	bne	$r5, $r6, bne.54076
	fneg	$f3, $f3
	j	cont.54075
bne.54076:
cont.54075:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54078
	addi	$r4, $r0, 0
	j	cont.54077
bclf.54078:
	lwcl	$f4, 0($r4)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54080
	addi	$r4, $r0, 0
	j	cont.54079
bclf.54080:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.54079:
cont.54077:
cont.54071:
	bnei	$r4, 1, bnei.54082
	addi	$r2, $r0, 2
	jr	$r31
bnei.54082:
	lwcl	$f3, 8($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.54084
	addi	$r2, $r0, 0
	j	cont.54083
bclf.54084:
	lw	$r4, 16($r2)
	lw	$r2, 24($r2)
	lwcl	$f3, 8($r3)
	c.le.s	$f30, $f3
	bclf	bclf.54086
	addi	$r5, $r0, 0
	j	cont.54085
bclf.54086:
	addi	$r5, $r0, 1
cont.54085:
	lwcl	$f3, 8($r4)
	bne	$r2, $r5, bne.54088
	fneg	$f3, $f3
	j	cont.54087
bne.54088:
cont.54087:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r3)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r4)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.54090
	addi	$r2, $r0, 0
	j	cont.54089
bclf.54090:
	lwcl	$f0, 4($r4)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54092
	addi	$r2, $r0, 0
	j	cont.54091
bclf.54092:
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 1
cont.54091:
cont.54089:
cont.54083:
	bnei	$r2, 1, bnei.54094
	addi	$r2, $r0, 3
	jr	$r31
bnei.54094:
	addi	$r2, $r0, 0
	jr	$r31
bnei.54058:
	bnei	$r4, 2, bnei.54096
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
	bclf	bclf.54098
	addi	$r2, $r0, 0
	jr	$r31
bclf.54098:
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
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
bnei.54096:
	lwcl	$f3, 0($r3)
	lwcl	$f4, 4($r3)
	lwcl	$f5, 8($r3)
	mul.s	$f6, $f3, $f3
	lw	$r4, 16($r2)
	lwcl	$f7, 0($r4)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r4, 16($r2)
	lwcl	$f8, 4($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r4, 16($r2)
	lwcl	$f8, 8($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r4, 12($r2)
	bnei	$r4, 0, bnei.54100
	fmove	$f3, $f6
	j	cont.54099
bnei.54100:
	mul.s	$f7, $f4, $f5
	lw	$r4, 36($r2)
	lwcl	$f8, 0($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r4, 36($r2)
	lwcl	$f7, 4($r4)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r4, 36($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.54099:
	c.eq.s	$f3, $f30
	bclf	bclf.54102
	addi	$r2, $r0, 0
	jr	$r31
bclf.54102:
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
	bnei	$r3, 0, bnei.54104
	fmove	$f4, $f7
	j	cont.54103
bnei.54104:
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
cont.54103:
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
	bnei	$r3, 0, bnei.54106
	fmove	$f0, $f5
	j	cont.54105
bnei.54106:
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
cont.54105:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.54108
	sub.s	$f0, $f0, $f31
	j	cont.54107
bnei.54108:
cont.54107:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.54110
	addi	$r2, $r0, 0
	jr	$r31
bclf.54110:
	sqrt	$f0, $f0
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.54112
	j	cont.54111
bnei.54112:
	fneg	$f0, $f0
cont.54111:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
iter_setup_dirvec_constants.4707:
	blti	$r3, 0, blti.54114
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.54116
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
	c.eq.s	$f0, $f30
	bclf	bclf.54118
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.54117
bclf.54118:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54120
	addi	$r6, $r0, 0
	j	cont.54119
bclf.54120:
	addi	$r6, $r0, 1
cont.54119:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.54122
	fneg	$f0, $f0
	j	cont.54121
bne.54122:
cont.54121:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.54117:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54124
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.54123
bclf.54124:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54126
	addi	$r6, $r0, 0
	j	cont.54125
bclf.54126:
	addi	$r6, $r0, 1
cont.54125:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.54128
	fneg	$f0, $f0
	j	cont.54127
bne.54128:
cont.54127:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.54123:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54130
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.54129
bclf.54130:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54132
	addi	$r6, $r0, 0
	j	cont.54131
bclf.54132:
	addi	$r6, $r0, 1
cont.54131:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.54134
	fneg	$f0, $f0
	j	cont.54133
bne.54134:
cont.54133:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.54129:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54115
bnei.54116:
	bnei	$r7, 2, bnei.54136
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
	c.le.s	$f0, $f30
	bclf	bclf.54138
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.54137
bclf.54138:
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
cont.54137:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54135
bnei.54136:
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
	bnei	$r5, 0, bnei.54140
	fmove	$f0, $f3
	j	cont.54139
bnei.54140:
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
cont.54139:
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
	bnei	$r5, 0, bnei.54142
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.54141
bnei.54142:
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
cont.54141:
	c.eq.s	$f0, $f30
	bclf	bclf.54144
	j	cont.54143
bclf.54144:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.54143:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.54135:
cont.54115:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.54146
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.54148
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
	c.eq.s	$f0, $f30
	bclf	bclf.54150
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.54149
bclf.54150:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54152
	addi	$r6, $r0, 0
	j	cont.54151
bclf.54152:
	addi	$r6, $r0, 1
cont.54151:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.54154
	fneg	$f0, $f0
	j	cont.54153
bne.54154:
cont.54153:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.54149:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54156
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.54155
bclf.54156:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54158
	addi	$r6, $r0, 0
	j	cont.54157
bclf.54158:
	addi	$r6, $r0, 1
cont.54157:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.54160
	fneg	$f0, $f0
	j	cont.54159
bne.54160:
cont.54159:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.54155:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54162
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.54161
bclf.54162:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54164
	addi	$r6, $r0, 0
	j	cont.54163
bclf.54164:
	addi	$r6, $r0, 1
cont.54163:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.54166
	fneg	$f0, $f0
	j	cont.54165
bne.54166:
cont.54165:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.54161:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54147
bnei.54148:
	bnei	$r7, 2, bnei.54168
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
	c.le.s	$f0, $f30
	bclf	bclf.54170
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.54169
bclf.54170:
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
cont.54169:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54167
bnei.54168:
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
	bnei	$r5, 0, bnei.54172
	fmove	$f0, $f3
	j	cont.54171
bnei.54172:
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
cont.54171:
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
	bnei	$r5, 0, bnei.54174
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.54173
bnei.54174:
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
cont.54173:
	c.eq.s	$f0, $f30
	bclf	bclf.54176
	j	cont.54175
bclf.54176:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.54175:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
cont.54167:
cont.54147:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.54146:
	jr	$r31
blti.54114:
	jr	$r31
setup_dirvec_constants.4723:
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.54178
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.54180
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
	c.eq.s	$f0, $f30
	bclf	bclf.54182
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.54181
bclf.54182:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54184
	addi	$r6, $r0, 0
	j	cont.54183
bclf.54184:
	addi	$r6, $r0, 1
cont.54183:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.54186
	fneg	$f0, $f0
	j	cont.54185
bne.54186:
cont.54185:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.54181:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54188
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.54187
bclf.54188:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54190
	addi	$r6, $r0, 0
	j	cont.54189
bclf.54190:
	addi	$r6, $r0, 1
cont.54189:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.54192
	fneg	$f0, $f0
	j	cont.54191
bne.54192:
cont.54191:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.54187:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.54194
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.54193
bclf.54194:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.54196
	addi	$r6, $r0, 0
	j	cont.54195
bclf.54196:
	addi	$r6, $r0, 1
cont.54195:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.54198
	fneg	$f0, $f0
	j	cont.54197
bne.54198:
cont.54197:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.54193:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54179
bnei.54180:
	bnei	$r7, 2, bnei.54200
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
	c.le.s	$f0, $f30
	bclf	bclf.54202
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.54201
bclf.54202:
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
cont.54201:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.54199
bnei.54200:
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
	bnei	$r5, 0, bnei.54204
	fmove	$f0, $f3
	j	cont.54203
bnei.54204:
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
cont.54203:
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
	bnei	$r5, 0, bnei.54206
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.54205
bnei.54206:
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
cont.54205:
	c.eq.s	$f0, $f30
	bclf	bclf.54208
	j	cont.54207
bclf.54208:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.54207:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.54199:
cont.54179:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.54178:
	jr	$r31
setup_startp_constants.4729:
	blti	$r3, 0, blti.54210
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
	bnei	$r6, 2, bnei.54212
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
	j	cont.54211
bnei.54212:
	bgti	$r6, 2, bgti.54214
	j	cont.54213
bgti.54214:
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
	bnei	$r7, 0, bnei.54216
	fmove	$f0, $f3
	j	cont.54215
bnei.54216:
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
cont.54215:
	bnei	$r6, 3, bnei.54218
	sub.s	$f0, $f0, $f31
	j	cont.54217
bnei.54218:
cont.54217:
	swcl	$f0, 12($r5)
cont.54213:
cont.54211:
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
blti.54210:
	jr	$r31
check_all_inside.4838:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.54220
	addi	$r2, $r0, 1
	jr	$r31
bnei.54220:
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
	bnei	$r5, 1, bnei.54222
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.54224
	addi	$r5, $r0, 0
	j	cont.54223
bclf.54224:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.54226
	addi	$r5, $r0, 0
	j	cont.54225
bclf.54226:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.54228
	addi	$r5, $r0, 0
	j	cont.54227
bclf.54228:
	addi	$r5, $r0, 1
cont.54227:
cont.54225:
cont.54223:
	bnei	$r5, 1, bnei.54230
	lw	$r4, 24($r4)
	j	cont.54229
bnei.54230:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.54232
	addi	$r4, $r0, 0
	j	cont.54231
bnei.54232:
	addi	$r4, $r0, 1
cont.54231:
cont.54229:
	j	cont.54221
bnei.54222:
	bnei	$r5, 2, bnei.54234
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
	bclf	bclf.54236
	addi	$r5, $r0, 0
	j	cont.54235
bclf.54236:
	addi	$r5, $r0, 1
cont.54235:
	bne	$r4, $r5, bne.54238
	addi	$r4, $r0, 1
	j	cont.54237
bne.54238:
	addi	$r4, $r0, 0
cont.54237:
	j	cont.54233
bnei.54234:
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
	bnei	$r5, 0, bnei.54240
	fmove	$f3, $f6
	j	cont.54239
bnei.54240:
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
cont.54239:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.54242
	sub.s	$f3, $f3, $f31
	j	cont.54241
bnei.54242:
cont.54241:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54244
	addi	$r5, $r0, 0
	j	cont.54243
bclf.54244:
	addi	$r5, $r0, 1
cont.54243:
	bne	$r4, $r5, bne.54246
	addi	$r4, $r0, 1
	j	cont.54245
bne.54246:
	addi	$r4, $r0, 0
cont.54245:
cont.54233:
cont.54221:
	bnei	$r4, 1, bnei.54248
	addi	$r2, $r0, 0
	jr	$r31
bnei.54248:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.54250
	addi	$r2, $r0, 1
	jr	$r31
bnei.54250:
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
	bnei	$r5, 1, bnei.54252
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.54254
	addi	$r5, $r0, 0
	j	cont.54253
bclf.54254:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.54256
	addi	$r5, $r0, 0
	j	cont.54255
bclf.54256:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.54258
	addi	$r5, $r0, 0
	j	cont.54257
bclf.54258:
	addi	$r5, $r0, 1
cont.54257:
cont.54255:
cont.54253:
	bnei	$r5, 1, bnei.54260
	lw	$r4, 24($r4)
	j	cont.54259
bnei.54260:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.54262
	addi	$r4, $r0, 0
	j	cont.54261
bnei.54262:
	addi	$r4, $r0, 1
cont.54261:
cont.54259:
	j	cont.54251
bnei.54252:
	bnei	$r5, 2, bnei.54264
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
	bclf	bclf.54266
	addi	$r5, $r0, 0
	j	cont.54265
bclf.54266:
	addi	$r5, $r0, 1
cont.54265:
	bne	$r4, $r5, bne.54268
	addi	$r4, $r0, 1
	j	cont.54267
bne.54268:
	addi	$r4, $r0, 0
cont.54267:
	j	cont.54263
bnei.54264:
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
	bnei	$r5, 0, bnei.54270
	fmove	$f3, $f6
	j	cont.54269
bnei.54270:
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
cont.54269:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.54272
	sub.s	$f3, $f3, $f31
	j	cont.54271
bnei.54272:
cont.54271:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54274
	addi	$r5, $r0, 0
	j	cont.54273
bclf.54274:
	addi	$r5, $r0, 1
cont.54273:
	bne	$r4, $r5, bne.54276
	addi	$r4, $r0, 1
	j	cont.54275
bne.54276:
	addi	$r4, $r0, 0
cont.54275:
cont.54263:
cont.54251:
	bnei	$r4, 1, bnei.54278
	addi	$r2, $r0, 0
	jr	$r31
bnei.54278:
	addi	$r2, $r2, 1
	j	check_all_inside.4838
shadow_check_and_group.4852:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.54280
	addi	$r2, $r0, 0
	jr	$r31
bnei.54280:
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
	bnei	$r7, 1, bnei.54282
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
	bclf	bclf.54284
	addi	$r7, $r0, 0
	j	cont.54283
bclf.54284:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54286
	addi	$r7, $r0, 0
	j	cont.54285
bclf.54286:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.54288
	addi	$r7, $r0, 0
	j	cont.54287
bclf.54288:
	addi	$r7, $r0, 1
cont.54287:
cont.54285:
cont.54283:
	bnei	$r7, 1, bnei.54290
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.54289
bnei.54290:
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
	bclf	bclf.54292
	addi	$r7, $r0, 0
	j	cont.54291
bclf.54292:
	lw	$r7, 16($r5)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54294
	addi	$r7, $r0, 0
	j	cont.54293
bclf.54294:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.54296
	addi	$r7, $r0, 0
	j	cont.54295
bclf.54296:
	addi	$r7, $r0, 1
cont.54295:
cont.54293:
cont.54291:
	bnei	$r7, 1, bnei.54298
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.54297
bnei.54298:
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
	bclf	bclf.54300
	addi	$r5, $r0, 0
	j	cont.54299
bclf.54300:
	lw	$r5, 16($r5)
	lwcl	$f0, 4($r5)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54302
	addi	$r5, $r0, 0
	j	cont.54301
bclf.54302:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.54304
	addi	$r5, $r0, 0
	j	cont.54303
bclf.54304:
	addi	$r5, $r0, 1
cont.54303:
cont.54301:
cont.54299:
	bnei	$r5, 1, bnei.54306
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.54305
bnei.54306:
	addi	$r5, $r0, 0
cont.54305:
cont.54297:
cont.54289:
	j	cont.54281
bnei.54282:
	bnei	$r7, 2, bnei.54308
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.54310
	addi	$r5, $r0, 0
	j	cont.54309
bclf.54310:
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
cont.54309:
	j	cont.54307
bnei.54308:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.54312
	addi	$r5, $r0, 0
	j	cont.54311
bclf.54312:
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
	bnei	$r7, 0, bnei.54314
	fmove	$f0, $f5
	j	cont.54313
bnei.54314:
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
cont.54313:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.54316
	sub.s	$f0, $f0, $f31
	j	cont.54315
bnei.54316:
cont.54315:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.54318
	addi	$r5, $r0, 0
	j	cont.54317
bclf.54318:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.54320
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54319
bnei.54320:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54319:
	addi	$r5, $r0, 1
cont.54317:
cont.54311:
cont.54307:
cont.54281:
	lwcl	$f0, 576($r0)
	bnei	$r5, 0, bnei.54322
	addi	$r5, $r0, 0
	j	cont.54321
bnei.54322:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.54324
	addi	$r5, $r0, 0
	j	cont.54323
bclf.54324:
	addi	$r5, $r0, 1
cont.54323:
cont.54321:
	bnei	$r5, 1, bnei.54326
	lfh	$f1, 15395
	lfl	$f1, 55050
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
	bnei	$r4, -1, bnei.54328
	addi	$r2, $r0, 1
	j	cont.54327
bnei.54328:
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
	bnei	$r5, 1, bnei.54330
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.54332
	addi	$r5, $r0, 0
	j	cont.54331
bclf.54332:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.54334
	addi	$r5, $r0, 0
	j	cont.54333
bclf.54334:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.54336
	addi	$r5, $r0, 0
	j	cont.54335
bclf.54336:
	addi	$r5, $r0, 1
cont.54335:
cont.54333:
cont.54331:
	bnei	$r5, 1, bnei.54338
	lw	$r4, 24($r4)
	j	cont.54337
bnei.54338:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.54340
	addi	$r4, $r0, 0
	j	cont.54339
bnei.54340:
	addi	$r4, $r0, 1
cont.54339:
cont.54337:
	j	cont.54329
bnei.54330:
	bnei	$r5, 2, bnei.54342
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
	bclf	bclf.54344
	addi	$r5, $r0, 0
	j	cont.54343
bclf.54344:
	addi	$r5, $r0, 1
cont.54343:
	bne	$r4, $r5, bne.54346
	addi	$r4, $r0, 1
	j	cont.54345
bne.54346:
	addi	$r4, $r0, 0
cont.54345:
	j	cont.54341
bnei.54342:
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
	bnei	$r5, 0, bnei.54348
	fmove	$f3, $f6
	j	cont.54347
bnei.54348:
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
cont.54347:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.54350
	sub.s	$f3, $f3, $f31
	j	cont.54349
bnei.54350:
cont.54349:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54352
	addi	$r5, $r0, 0
	j	cont.54351
bclf.54352:
	addi	$r5, $r0, 1
cont.54351:
	bne	$r4, $r5, bne.54354
	addi	$r4, $r0, 1
	j	cont.54353
bne.54354:
	addi	$r4, $r0, 0
cont.54353:
cont.54341:
cont.54329:
	bnei	$r4, 1, bnei.54356
	addi	$r2, $r0, 0
	j	cont.54355
bnei.54356:
	addi	$r4, $r0, 1
	addi	$r2, $r4, 0
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.54355:
cont.54327:
	bnei	$r2, 1, bnei.54358
	addi	$r2, $r0, 1
	jr	$r31
bnei.54358:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_and_group.4852
bnei.54326:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.54360
	addi	$r2, $r2, 1
	j	shadow_check_and_group.4852
bnei.54360:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.4897:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.54362
	addi	$r2, $r0, 0
	jr	$r31
bnei.54362:
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
	bnei	$r2, 1, bnei.54364
	addi	$r2, $r0, 1
	jr	$r31
bnei.54364:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.54366
	addi	$r2, $r0, 0
	jr	$r31
bnei.54366:
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
	bnei	$r2, 1, bnei.54368
	addi	$r2, $r0, 1
	jr	$r31
bnei.54368:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.54370
	addi	$r2, $r0, 0
	jr	$r31
bnei.54370:
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
	bnei	$r2, 1, bnei.54372
	addi	$r2, $r0, 1
	jr	$r31
bnei.54372:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.54374
	addi	$r2, $r0, 0
	jr	$r31
bnei.54374:
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
	bnei	$r2, 1, bnei.54376
	addi	$r2, $r0, 1
	jr	$r31
bnei.54376:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_group.4897
shadow_check_one_or_matrix.4909:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.54378
	addi	$r2, $r0, 0
	jr	$r31
bnei.54378:
	addi	$r6, $r0, 99
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r5, $r6, bne.54380
	addi	$r2, $r0, 1
	j	cont.54379
bne.54380:
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
	bnei	$r7, 1, bnei.54382
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
	bclf	bclf.54384
	addi	$r7, $r0, 0
	j	cont.54383
bclf.54384:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54386
	addi	$r7, $r0, 0
	j	cont.54385
bclf.54386:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54388
	addi	$r7, $r0, 0
	j	cont.54387
bclf.54388:
	addi	$r7, $r0, 1
cont.54387:
cont.54385:
cont.54383:
	bnei	$r7, 1, bnei.54390
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.54389
bnei.54390:
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
	bclf	bclf.54392
	addi	$r7, $r0, 0
	j	cont.54391
bclf.54392:
	lw	$r7, 16($r6)
	lwcl	$f4, 8($r7)
	lwcl	$f5, 796($r0)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54394
	addi	$r7, $r0, 0
	j	cont.54393
bclf.54394:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54396
	addi	$r7, $r0, 0
	j	cont.54395
bclf.54396:
	addi	$r7, $r0, 1
cont.54395:
cont.54393:
cont.54391:
	bnei	$r7, 1, bnei.54398
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.54397
bnei.54398:
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
	bclf	bclf.54400
	addi	$r5, $r0, 0
	j	cont.54399
bclf.54400:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 792($r0)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54402
	addi	$r5, $r0, 0
	j	cont.54401
bclf.54402:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.54404
	addi	$r5, $r0, 0
	j	cont.54403
bclf.54404:
	addi	$r5, $r0, 1
cont.54403:
cont.54401:
cont.54399:
	bnei	$r5, 1, bnei.54406
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.54405
bnei.54406:
	addi	$r5, $r0, 0
cont.54405:
cont.54397:
cont.54389:
	j	cont.54381
bnei.54382:
	bnei	$r7, 2, bnei.54408
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.54410
	addi	$r5, $r0, 0
	j	cont.54409
bclf.54410:
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
cont.54409:
	j	cont.54407
bnei.54408:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.54412
	addi	$r5, $r0, 0
	j	cont.54411
bclf.54412:
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
	bnei	$r7, 0, bnei.54414
	fmove	$f0, $f5
	j	cont.54413
bnei.54414:
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
cont.54413:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.54416
	sub.s	$f0, $f0, $f31
	j	cont.54415
bnei.54416:
cont.54415:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.54418
	addi	$r5, $r0, 0
	j	cont.54417
bclf.54418:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.54420
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54419
bnei.54420:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54419:
	addi	$r5, $r0, 1
cont.54417:
cont.54411:
cont.54407:
cont.54381:
	bnei	$r5, 0, bnei.54422
	addi	$r2, $r0, 0
	j	cont.54421
bnei.54422:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.54424
	addi	$r2, $r0, 0
	j	cont.54423
bclf.54424:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.54426
	addi	$r2, $r0, 0
	j	cont.54425
bnei.54426:
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
	bnei	$r2, 1, bnei.54428
	addi	$r2, $r0, 1
	j	cont.54427
bnei.54428:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.54430
	addi	$r2, $r0, 0
	j	cont.54429
bnei.54430:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54432
	addi	$r2, $r0, 1
	j	cont.54431
bnei.54432:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.54434
	addi	$r2, $r0, 0
	j	cont.54433
bnei.54434:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54436
	addi	$r2, $r0, 1
	j	cont.54435
bnei.54436:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.54435:
cont.54433:
cont.54431:
cont.54429:
cont.54427:
cont.54425:
	bnei	$r2, 1, bnei.54438
	addi	$r2, $r0, 1
	j	cont.54437
bnei.54438:
	addi	$r2, $r0, 0
cont.54437:
cont.54423:
cont.54421:
cont.54379:
	bnei	$r2, 1, bnei.54440
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.54442
	addi	$r2, $r0, 0
	j	cont.54441
bnei.54442:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54444
	addi	$r2, $r0, 1
	j	cont.54443
bnei.54444:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.54446
	addi	$r2, $r0, 0
	j	cont.54445
bnei.54446:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54448
	addi	$r2, $r0, 1
	j	cont.54447
bnei.54448:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.54450
	addi	$r2, $r0, 0
	j	cont.54449
bnei.54450:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.54452
	addi	$r2, $r0, 1
	j	cont.54451
bnei.54452:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.54451:
cont.54449:
cont.54447:
cont.54445:
cont.54443:
cont.54441:
	bnei	$r2, 1, bnei.54454
	addi	$r2, $r0, 1
	jr	$r31
bnei.54454:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.54440:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
solve_each_element.4936:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.54456
	jr	$r31
bnei.54456:
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
	bnei	$r7, 1, bnei.54458
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54460
	addi	$r7, $r0, 0
	j	cont.54459
bclf.54460:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54462
	addi	$r9, $r0, 0
	j	cont.54461
bclf.54462:
	addi	$r9, $r0, 1
cont.54461:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.54464
	fneg	$f3, $f3
	j	cont.54463
bne.54464:
cont.54463:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54466
	addi	$r7, $r0, 0
	j	cont.54465
bclf.54466:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54468
	addi	$r7, $r0, 0
	j	cont.54467
bclf.54468:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.54467:
cont.54465:
cont.54459:
	bnei	$r7, 1, bnei.54470
	addi	$r6, $r0, 1
	j	cont.54469
bnei.54470:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54472
	addi	$r7, $r0, 0
	j	cont.54471
bclf.54472:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54474
	addi	$r9, $r0, 0
	j	cont.54473
bclf.54474:
	addi	$r9, $r0, 1
cont.54473:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.54476
	fneg	$f3, $f3
	j	cont.54475
bne.54476:
cont.54475:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54478
	addi	$r7, $r0, 0
	j	cont.54477
bclf.54478:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54480
	addi	$r7, $r0, 0
	j	cont.54479
bclf.54480:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.54479:
cont.54477:
cont.54471:
	bnei	$r7, 1, bnei.54482
	addi	$r6, $r0, 2
	j	cont.54481
bnei.54482:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54484
	addi	$r6, $r0, 0
	j	cont.54483
bclf.54484:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54486
	addi	$r8, $r0, 0
	j	cont.54485
bclf.54486:
	addi	$r8, $r0, 1
cont.54485:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.54488
	fneg	$f3, $f3
	j	cont.54487
bne.54488:
cont.54487:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.54490
	addi	$r6, $r0, 0
	j	cont.54489
bclf.54490:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54492
	addi	$r6, $r0, 0
	j	cont.54491
bclf.54492:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 1
cont.54491:
cont.54489:
cont.54483:
	bnei	$r6, 1, bnei.54494
	addi	$r6, $r0, 3
	j	cont.54493
bnei.54494:
	addi	$r6, $r0, 0
cont.54493:
cont.54481:
cont.54469:
	j	cont.54457
bnei.54458:
	bnei	$r7, 2, bnei.54496
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
	bclf	bclf.54498
	addi	$r6, $r0, 0
	j	cont.54497
bclf.54498:
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
cont.54497:
	j	cont.54495
bnei.54496:
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
	bnei	$r7, 0, bnei.54500
	fmove	$f3, $f6
	j	cont.54499
bnei.54500:
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
cont.54499:
	c.eq.s	$f3, $f30
	bclf	bclf.54502
	addi	$r6, $r0, 0
	j	cont.54501
bclf.54502:
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
	bnei	$r7, 0, bnei.54504
	fmove	$f4, $f7
	j	cont.54503
bnei.54504:
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
cont.54503:
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
	bnei	$r7, 0, bnei.54506
	fmove	$f0, $f5
	j	cont.54505
bnei.54506:
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
cont.54505:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.54508
	sub.s	$f0, $f0, $f31
	j	cont.54507
bnei.54508:
cont.54507:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.54510
	addi	$r6, $r0, 0
	j	cont.54509
bclf.54510:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.54512
	j	cont.54511
bnei.54512:
	fneg	$f0, $f0
cont.54511:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.54509:
cont.54501:
cont.54495:
cont.54457:
	bnei	$r6, 0, bnei.54514
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.54516
	addi	$r2, $r2, 1
	j	solve_each_element.4936
bnei.54516:
	jr	$r31
bnei.54514:
	lwcl	$f0, 576($r0)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	c.le.s	$f0, $f30
	bclf	bclf.54518
	j	cont.54517
bclf.54518:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54520
	j	cont.54519
bclf.54520:
	lfh	$f1, 15395
	lfl	$f1, 55050
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
	bnei	$r7, -1, bnei.54522
	addi	$r2, $r0, 1
	j	cont.54521
bnei.54522:
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
	bnei	$r8, 1, bnei.54524
	lw	$r8, 16($r7)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.54526
	addi	$r8, $r0, 0
	j	cont.54525
bclf.54526:
	lw	$r8, 16($r7)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54528
	addi	$r8, $r0, 0
	j	cont.54527
bclf.54528:
	lw	$r8, 16($r7)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.54530
	addi	$r8, $r0, 0
	j	cont.54529
bclf.54530:
	addi	$r8, $r0, 1
cont.54529:
cont.54527:
cont.54525:
	bnei	$r8, 1, bnei.54532
	lw	$r7, 24($r7)
	j	cont.54531
bnei.54532:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.54534
	addi	$r7, $r0, 0
	j	cont.54533
bnei.54534:
	addi	$r7, $r0, 1
cont.54533:
cont.54531:
	j	cont.54523
bnei.54524:
	bnei	$r8, 2, bnei.54536
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
	bclf	bclf.54538
	addi	$r8, $r0, 0
	j	cont.54537
bclf.54538:
	addi	$r8, $r0, 1
cont.54537:
	bne	$r7, $r8, bne.54540
	addi	$r7, $r0, 1
	j	cont.54539
bne.54540:
	addi	$r7, $r0, 0
cont.54539:
	j	cont.54535
bnei.54536:
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
	bnei	$r8, 0, bnei.54542
	fmove	$f4, $f7
	j	cont.54541
bnei.54542:
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
cont.54541:
	lw	$r8, 4($r7)
	bnei	$r8, 3, bnei.54544
	sub.s	$f4, $f4, $f31
	j	cont.54543
bnei.54544:
cont.54543:
	lw	$r7, 24($r7)
	c.le.s	$f30, $f4
	bclf	bclf.54546
	addi	$r8, $r0, 0
	j	cont.54545
bclf.54546:
	addi	$r8, $r0, 1
cont.54545:
	bne	$r7, $r8, bne.54548
	addi	$r7, $r0, 1
	j	cont.54547
bne.54548:
	addi	$r7, $r0, 0
cont.54547:
cont.54535:
cont.54523:
	bnei	$r7, 1, bnei.54550
	addi	$r2, $r0, 0
	j	cont.54549
bnei.54550:
	addi	$r7, $r0, 1
	addi	$r2, $r7, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.54549:
cont.54521:
	bnei	$r2, 1, bnei.54552
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
	j	cont.54551
bnei.54552:
cont.54551:
cont.54519:
cont.54517:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
solve_one_or_network.4987:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.54554
	jr	$r31
bnei.54554:
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
	bnei	$r3, -1, bnei.54556
	jr	$r31
bnei.54556:
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
	bnei	$r3, -1, bnei.54558
	jr	$r31
bnei.54558:
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
	bnei	$r3, -1, bnei.54560
	jr	$r31
bnei.54560:
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
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network.4987
trace_or_matrix.4999:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.54562
	jr	$r31
bnei.54562:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.54564
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.54566
	j	cont.54565
bnei.54566:
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
	bnei	$r3, -1, bnei.54568
	j	cont.54567
bnei.54568:
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
	bnei	$r3, -1, bnei.54570
	j	cont.54569
bnei.54570:
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
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.54569:
cont.54567:
cont.54565:
	j	cont.54563
bne.54564:
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
	bnei	$r7, 1, bnei.54572
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54574
	addi	$r7, $r0, 0
	j	cont.54573
bclf.54574:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54576
	addi	$r9, $r0, 0
	j	cont.54575
bclf.54576:
	addi	$r9, $r0, 1
cont.54575:
	lwcl	$f3, 0($r7)
	bne	$r8, $r9, bne.54578
	fneg	$f3, $f3
	j	cont.54577
bne.54578:
cont.54577:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r7)
	lwcl	$f5, 4($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54580
	addi	$r7, $r0, 0
	j	cont.54579
bclf.54580:
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54582
	addi	$r7, $r0, 0
	j	cont.54581
bclf.54582:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.54581:
cont.54579:
cont.54573:
	bnei	$r7, 1, bnei.54584
	addi	$r6, $r0, 1
	j	cont.54583
bnei.54584:
	lwcl	$f3, 4($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54586
	addi	$r7, $r0, 0
	j	cont.54585
bclf.54586:
	lw	$r7, 16($r6)
	lw	$r8, 24($r6)
	lwcl	$f3, 4($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54588
	addi	$r9, $r0, 0
	j	cont.54587
bclf.54588:
	addi	$r9, $r0, 1
cont.54587:
	lwcl	$f3, 4($r7)
	bne	$r8, $r9, bne.54590
	fneg	$f3, $f3
	j	cont.54589
bne.54590:
cont.54589:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r4)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r7)
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54592
	addi	$r7, $r0, 0
	j	cont.54591
bclf.54592:
	lwcl	$f4, 0($r7)
	lwcl	$f5, 0($r4)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54594
	addi	$r7, $r0, 0
	j	cont.54593
bclf.54594:
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
cont.54593:
cont.54591:
cont.54585:
	bnei	$r7, 1, bnei.54596
	addi	$r6, $r0, 2
	j	cont.54595
bnei.54596:
	lwcl	$f3, 8($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.54598
	addi	$r6, $r0, 0
	j	cont.54597
bclf.54598:
	lw	$r7, 16($r6)
	lw	$r6, 24($r6)
	lwcl	$f3, 8($r4)
	c.le.s	$f30, $f3
	bclf	bclf.54600
	addi	$r8, $r0, 0
	j	cont.54599
bclf.54600:
	addi	$r8, $r0, 1
cont.54599:
	lwcl	$f3, 8($r7)
	bne	$r6, $r8, bne.54602
	fneg	$f3, $f3
	j	cont.54601
bne.54602:
cont.54601:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r4)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r7)
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.54604
	addi	$r6, $r0, 0
	j	cont.54603
bclf.54604:
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r4)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54606
	addi	$r6, $r0, 0
	j	cont.54605
bclf.54606:
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 1
cont.54605:
cont.54603:
cont.54597:
	bnei	$r6, 1, bnei.54608
	addi	$r6, $r0, 3
	j	cont.54607
bnei.54608:
	addi	$r6, $r0, 0
cont.54607:
cont.54595:
cont.54583:
	j	cont.54571
bnei.54572:
	bnei	$r7, 2, bnei.54610
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
	bclf	bclf.54612
	addi	$r6, $r0, 0
	j	cont.54611
bclf.54612:
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
cont.54611:
	j	cont.54609
bnei.54610:
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
	bnei	$r7, 0, bnei.54614
	fmove	$f3, $f6
	j	cont.54613
bnei.54614:
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
cont.54613:
	c.eq.s	$f3, $f30
	bclf	bclf.54616
	addi	$r6, $r0, 0
	j	cont.54615
bclf.54616:
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
	bnei	$r7, 0, bnei.54618
	fmove	$f4, $f7
	j	cont.54617
bnei.54618:
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
cont.54617:
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
	bnei	$r7, 0, bnei.54620
	fmove	$f0, $f5
	j	cont.54619
bnei.54620:
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
cont.54619:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.54622
	sub.s	$f0, $f0, $f31
	j	cont.54621
bnei.54622:
cont.54621:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.54624
	addi	$r6, $r0, 0
	j	cont.54623
bclf.54624:
	sqrt	$f0, $f0
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.54626
	j	cont.54625
bnei.54626:
	fneg	$f0, $f0
cont.54625:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.54623:
cont.54615:
cont.54609:
cont.54571:
	bnei	$r6, 0, bnei.54628
	j	cont.54627
bnei.54628:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54630
	j	cont.54629
bclf.54630:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.54632
	j	cont.54631
bnei.54632:
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
	bnei	$r3, -1, bnei.54634
	j	cont.54633
bnei.54634:
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
	bnei	$r3, -1, bnei.54636
	j	cont.54635
bnei.54636:
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
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.54635:
cont.54633:
cont.54631:
cont.54629:
cont.54627:
cont.54563:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.54638
	jr	$r31
bnei.54638:
	addi	$r6, $r0, 99
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.54640
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.54642
	j	cont.54641
bnei.54642:
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
	bnei	$r3, -1, bnei.54644
	j	cont.54643
bnei.54644:
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
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.54643:
cont.54641:
	j	cont.54639
bne.54640:
	addi	$r6, $r0, 672
	lw	$r7, -4($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 0, bnei.54646
	j	cont.54645
bnei.54646:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54648
	j	cont.54647
bclf.54648:
	lw	$r2, -24($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.54650
	j	cont.54649
bnei.54650:
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
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.54652
	j	cont.54651
bnei.54652:
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
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.54651:
cont.54649:
cont.54647:
cont.54645:
cont.54639:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
solve_each_element_fast.5034:
	lw	$r5, 0($r4)
	sll	$r6, $r2, 2
	lwr	$r6, $r6($r3)	!ld var
	bnei	$r6, -1, bnei.54654
	jr	$r31
bnei.54654:
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
	bnei	$r10, 1, bnei.54656
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
	bclf	bclf.54658
	addi	$r10, $r0, 0
	j	cont.54657
bclf.54658:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54660
	addi	$r10, $r0, 0
	j	cont.54659
bclf.54660:
	lwcl	$f4, 4($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.54662
	addi	$r10, $r0, 0
	j	cont.54661
bclf.54662:
	addi	$r10, $r0, 1
cont.54661:
cont.54659:
cont.54657:
	bnei	$r10, 1, bnei.54664
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 1
	j	cont.54663
bnei.54664:
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
	bclf	bclf.54666
	addi	$r10, $r0, 0
	j	cont.54665
bclf.54666:
	lw	$r10, 16($r7)
	lwcl	$f4, 8($r10)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54668
	addi	$r10, $r0, 0
	j	cont.54667
bclf.54668:
	lwcl	$f4, 12($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.54670
	addi	$r10, $r0, 0
	j	cont.54669
bclf.54670:
	addi	$r10, $r0, 1
cont.54669:
cont.54667:
cont.54665:
	bnei	$r10, 1, bnei.54672
	swcl	$f3, 576($r0)
	addi	$r7, $r0, 2
	j	cont.54671
bnei.54672:
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
	bclf	bclf.54674
	addi	$r7, $r0, 0
	j	cont.54673
bclf.54674:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54676
	addi	$r7, $r0, 0
	j	cont.54675
bclf.54676:
	lwcl	$f0, 20($r9)
	c.eq.s	$f0, $f30
	bclf	bclf.54678
	addi	$r7, $r0, 0
	j	cont.54677
bclf.54678:
	addi	$r7, $r0, 1
cont.54677:
cont.54675:
cont.54673:
	bnei	$r7, 1, bnei.54680
	swcl	$f2, 576($r0)
	addi	$r7, $r0, 3
	j	cont.54679
bnei.54680:
	addi	$r7, $r0, 0
cont.54679:
cont.54671:
cont.54663:
	j	cont.54655
bnei.54656:
	bnei	$r10, 2, bnei.54682
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.54684
	addi	$r7, $r0, 0
	j	cont.54683
bclf.54684:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r7, $r0, 1
cont.54683:
	j	cont.54681
bnei.54682:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.54686
	addi	$r7, $r0, 0
	j	cont.54685
bclf.54686:
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
	bclf	bclf.54688
	addi	$r7, $r0, 0
	j	cont.54687
bclf.54688:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.54690
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54689
bnei.54690:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54689:
	addi	$r7, $r0, 1
cont.54687:
cont.54685:
cont.54681:
cont.54655:
	bnei	$r7, 0, bnei.54692
	sll	$r5, $r6, 2
	lw	$r5, 80($r5)
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.54694
	addi	$r2, $r2, 1
	j	solve_each_element_fast.5034
bnei.54694:
	jr	$r31
bnei.54692:
	lwcl	$f0, 576($r0)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	c.le.s	$f0, $f30
	bclf	bclf.54696
	j	cont.54695
bclf.54696:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54698
	j	cont.54697
bclf.54698:
	lfh	$f1, 15395
	lfl	$f1, 55050
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
	bnei	$r5, -1, bnei.54700
	addi	$r2, $r0, 1
	j	cont.54699
bnei.54700:
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
	bnei	$r8, 1, bnei.54702
	lw	$r8, 16($r5)
	lwcl	$f7, 0($r8)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.54704
	addi	$r8, $r0, 0
	j	cont.54703
bclf.54704:
	lw	$r8, 16($r5)
	lwcl	$f4, 4($r8)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54706
	addi	$r8, $r0, 0
	j	cont.54705
bclf.54706:
	lw	$r8, 16($r5)
	lwcl	$f4, 8($r8)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.54708
	addi	$r8, $r0, 0
	j	cont.54707
bclf.54708:
	addi	$r8, $r0, 1
cont.54707:
cont.54705:
cont.54703:
	bnei	$r8, 1, bnei.54710
	lw	$r5, 24($r5)
	j	cont.54709
bnei.54710:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.54712
	addi	$r5, $r0, 0
	j	cont.54711
bnei.54712:
	addi	$r5, $r0, 1
cont.54711:
cont.54709:
	j	cont.54701
bnei.54702:
	bnei	$r8, 2, bnei.54714
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
	bclf	bclf.54716
	addi	$r8, $r0, 0
	j	cont.54715
bclf.54716:
	addi	$r8, $r0, 1
cont.54715:
	bne	$r5, $r8, bne.54718
	addi	$r5, $r0, 1
	j	cont.54717
bne.54718:
	addi	$r5, $r0, 0
cont.54717:
	j	cont.54713
bnei.54714:
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
	bnei	$r8, 0, bnei.54720
	fmove	$f4, $f7
	j	cont.54719
bnei.54720:
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
cont.54719:
	lw	$r8, 4($r5)
	bnei	$r8, 3, bnei.54722
	sub.s	$f4, $f4, $f31
	j	cont.54721
bnei.54722:
cont.54721:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.54724
	addi	$r8, $r0, 0
	j	cont.54723
bclf.54724:
	addi	$r8, $r0, 1
cont.54723:
	bne	$r5, $r8, bne.54726
	addi	$r5, $r0, 1
	j	cont.54725
bne.54726:
	addi	$r5, $r0, 0
cont.54725:
cont.54713:
cont.54701:
	bnei	$r5, 1, bnei.54728
	addi	$r2, $r0, 0
	j	cont.54727
bnei.54728:
	addi	$r5, $r0, 1
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.54727:
cont.54699:
	bnei	$r2, 1, bnei.54730
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
	j	cont.54729
bnei.54730:
cont.54729:
cont.54697:
cont.54695:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5034
solve_one_or_network_fast.5086:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.54732
	jr	$r31
bnei.54732:
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
	bnei	$r3, -1, bnei.54734
	jr	$r31
bnei.54734:
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
	bnei	$r3, -1, bnei.54736
	jr	$r31
bnei.54736:
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
	bnei	$r3, -1, bnei.54738
	jr	$r31
bnei.54738:
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
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network_fast.5086
trace_or_matrix_fast.5098:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.54740
	jr	$r31
bnei.54740:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.54742
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.54744
	j	cont.54743
bnei.54744:
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
	bnei	$r3, -1, bnei.54746
	j	cont.54745
bnei.54746:
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
	bnei	$r3, -1, bnei.54748
	j	cont.54747
bnei.54748:
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
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.54747:
cont.54745:
cont.54743:
	j	cont.54741
bne.54742:
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
	bnei	$r9, 1, bnei.54750
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
	bclf	bclf.54752
	addi	$r9, $r0, 0
	j	cont.54751
bclf.54752:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54754
	addi	$r9, $r0, 0
	j	cont.54753
bclf.54754:
	lwcl	$f4, 4($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.54756
	addi	$r9, $r0, 0
	j	cont.54755
bclf.54756:
	addi	$r9, $r0, 1
cont.54755:
cont.54753:
cont.54751:
	bnei	$r9, 1, bnei.54758
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 1
	j	cont.54757
bnei.54758:
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
	bclf	bclf.54760
	addi	$r9, $r0, 0
	j	cont.54759
bclf.54760:
	lw	$r9, 16($r7)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r8)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54762
	addi	$r9, $r0, 0
	j	cont.54761
bclf.54762:
	lwcl	$f4, 12($r6)
	c.eq.s	$f4, $f30
	bclf	bclf.54764
	addi	$r9, $r0, 0
	j	cont.54763
bclf.54764:
	addi	$r9, $r0, 1
cont.54763:
cont.54761:
cont.54759:
	bnei	$r9, 1, bnei.54766
	swcl	$f3, 576($r0)
	addi	$r6, $r0, 2
	j	cont.54765
bnei.54766:
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
	bclf	bclf.54768
	addi	$r6, $r0, 0
	j	cont.54767
bclf.54768:
	lw	$r7, 16($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f3, 4($r8)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54770
	addi	$r6, $r0, 0
	j	cont.54769
bclf.54770:
	lwcl	$f0, 20($r6)
	c.eq.s	$f0, $f30
	bclf	bclf.54772
	addi	$r6, $r0, 0
	j	cont.54771
bclf.54772:
	addi	$r6, $r0, 1
cont.54771:
cont.54769:
cont.54767:
	bnei	$r6, 1, bnei.54774
	swcl	$f2, 576($r0)
	addi	$r6, $r0, 3
	j	cont.54773
bnei.54774:
	addi	$r6, $r0, 0
cont.54773:
cont.54765:
cont.54757:
	j	cont.54749
bnei.54750:
	bnei	$r9, 2, bnei.54776
	lwcl	$f0, 0($r6)
	c.le.s	$f30, $f0
	bclf	bclf.54778
	addi	$r6, $r0, 0
	j	cont.54777
bclf.54778:
	lwcl	$f0, 0($r6)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r6, $r0, 1
cont.54777:
	j	cont.54775
bnei.54776:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.54780
	addi	$r6, $r0, 0
	j	cont.54779
bclf.54780:
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
	bclf	bclf.54782
	addi	$r6, $r0, 0
	j	cont.54781
bclf.54782:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.54784
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54783
bnei.54784:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54783:
	addi	$r6, $r0, 1
cont.54781:
cont.54779:
cont.54775:
cont.54749:
	bnei	$r6, 0, bnei.54786
	j	cont.54785
bnei.54786:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54788
	j	cont.54787
bclf.54788:
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.54790
	j	cont.54789
bnei.54790:
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
	bnei	$r3, -1, bnei.54792
	j	cont.54791
bnei.54792:
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
	bnei	$r3, -1, bnei.54794
	j	cont.54793
bnei.54794:
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
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.54793:
cont.54791:
cont.54789:
cont.54787:
cont.54785:
cont.54741:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.54796
	jr	$r31
bnei.54796:
	addi	$r6, $r0, 99
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.54798
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.54800
	j	cont.54799
bnei.54800:
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
	bnei	$r3, -1, bnei.54802
	j	cont.54801
bnei.54802:
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
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.54801:
cont.54799:
	j	cont.54797
bne.54798:
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
	bnei	$r9, 1, bnei.54804
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
	bclf	bclf.54806
	addi	$r9, $r0, 0
	j	cont.54805
bclf.54806:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54808
	addi	$r9, $r0, 0
	j	cont.54807
bclf.54808:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54810
	addi	$r9, $r0, 0
	j	cont.54809
bclf.54810:
	addi	$r9, $r0, 1
cont.54809:
cont.54807:
cont.54805:
	bnei	$r9, 1, bnei.54812
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.54811
bnei.54812:
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
	bclf	bclf.54814
	addi	$r9, $r0, 0
	j	cont.54813
bclf.54814:
	lw	$r9, 16($r6)
	lwcl	$f4, 8($r9)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54816
	addi	$r9, $r0, 0
	j	cont.54815
bclf.54816:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54818
	addi	$r9, $r0, 0
	j	cont.54817
bclf.54818:
	addi	$r9, $r0, 1
cont.54817:
cont.54815:
cont.54813:
	bnei	$r9, 1, bnei.54820
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.54819
bnei.54820:
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
	bclf	bclf.54822
	addi	$r5, $r0, 0
	j	cont.54821
bclf.54822:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 4($r7)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54824
	addi	$r5, $r0, 0
	j	cont.54823
bclf.54824:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.54826
	addi	$r5, $r0, 0
	j	cont.54825
bclf.54826:
	addi	$r5, $r0, 1
cont.54825:
cont.54823:
cont.54821:
	bnei	$r5, 1, bnei.54828
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.54827
bnei.54828:
	addi	$r5, $r0, 0
cont.54827:
cont.54819:
cont.54811:
	j	cont.54803
bnei.54804:
	bnei	$r9, 2, bnei.54830
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.54832
	addi	$r5, $r0, 0
	j	cont.54831
bclf.54832:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.54831:
	j	cont.54829
bnei.54830:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.54834
	addi	$r5, $r0, 0
	j	cont.54833
bclf.54834:
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
	bclf	bclf.54836
	addi	$r5, $r0, 0
	j	cont.54835
bclf.54836:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.54838
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54837
bnei.54838:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54837:
	addi	$r5, $r0, 1
cont.54835:
cont.54833:
cont.54829:
cont.54803:
	bnei	$r5, 0, bnei.54840
	j	cont.54839
bnei.54840:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54842
	j	cont.54841
bclf.54842:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.54844
	j	cont.54843
bnei.54844:
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
	bnei	$r3, -1, bnei.54846
	j	cont.54845
bnei.54846:
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
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.54845:
cont.54843:
cont.54841:
cont.54839:
cont.54797:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
judge_intersection_fast.5119:
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r3, 572($r0)
	lw	$r4, 0($r3)
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.54848
	j	cont.54847
bnei.54848:
	addi	$r6, $r0, 99
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bne	$r5, $r6, bne.54850
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.54852
	j	cont.54851
bnei.54852:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -12($r29)
	addi	$r3, $r5, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.54854
	j	cont.54853
bnei.54854:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.54853:
cont.54851:
	j	cont.54849
bne.54850:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lw	$r8, 4($r2)
	sll	$r5, $r5, 2
	lwr	$r5, $r5($r8)	!ld var
	lw	$r8, 4($r6)
	bnei	$r8, 1, bnei.54856
	lw	$r7, 0($r2)
	lwcl	$f3, 0($r5)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	lw	$r8, 16($r6)
	lwcl	$f4, 4($r8)
	lwcl	$f5, 4($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54858
	addi	$r8, $r0, 0
	j	cont.54857
bclf.54858:
	lw	$r8, 16($r6)
	lwcl	$f4, 8($r8)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54860
	addi	$r8, $r0, 0
	j	cont.54859
bclf.54860:
	lwcl	$f4, 4($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54862
	addi	$r8, $r0, 0
	j	cont.54861
bclf.54862:
	addi	$r8, $r0, 1
cont.54861:
cont.54859:
cont.54857:
	bnei	$r8, 1, bnei.54864
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 1
	j	cont.54863
bnei.54864:
	lwcl	$f3, 8($r5)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r5)
	mul.s	$f3, $f3, $f4
	lw	$r8, 16($r6)
	lwcl	$f4, 0($r8)
	lwcl	$f5, 0($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54866
	addi	$r8, $r0, 0
	j	cont.54865
bclf.54866:
	lw	$r8, 16($r6)
	lwcl	$f4, 8($r8)
	lwcl	$f5, 8($r7)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.54868
	addi	$r8, $r0, 0
	j	cont.54867
bclf.54868:
	lwcl	$f4, 12($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.54870
	addi	$r8, $r0, 0
	j	cont.54869
bclf.54870:
	addi	$r8, $r0, 1
cont.54869:
cont.54867:
cont.54865:
	bnei	$r8, 1, bnei.54872
	swcl	$f3, 576($r0)
	addi	$r5, $r0, 2
	j	cont.54871
bnei.54872:
	lwcl	$f3, 16($r5)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r5)
	mul.s	$f2, $f2, $f3
	lw	$r8, 16($r6)
	lwcl	$f3, 0($r8)
	lwcl	$f4, 0($r7)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.54874
	addi	$r5, $r0, 0
	j	cont.54873
bclf.54874:
	lw	$r6, 16($r6)
	lwcl	$f0, 4($r6)
	lwcl	$f3, 4($r7)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.54876
	addi	$r5, $r0, 0
	j	cont.54875
bclf.54876:
	lwcl	$f0, 20($r5)
	c.eq.s	$f0, $f30
	bclf	bclf.54878
	addi	$r5, $r0, 0
	j	cont.54877
bclf.54878:
	addi	$r5, $r0, 1
cont.54877:
cont.54875:
cont.54873:
	bnei	$r5, 1, bnei.54880
	swcl	$f2, 576($r0)
	addi	$r5, $r0, 3
	j	cont.54879
bnei.54880:
	addi	$r5, $r0, 0
cont.54879:
cont.54871:
cont.54863:
	j	cont.54855
bnei.54856:
	bnei	$r8, 2, bnei.54882
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.54884
	addi	$r5, $r0, 0
	j	cont.54883
bclf.54884:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r5, $r0, 1
cont.54883:
	j	cont.54881
bnei.54882:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.54886
	addi	$r5, $r0, 0
	j	cont.54885
bclf.54886:
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
	bclf	bclf.54888
	addi	$r5, $r0, 0
	j	cont.54887
bclf.54888:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.54890
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.54889
bnei.54890:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.54889:
	addi	$r5, $r0, 1
cont.54887:
cont.54885:
cont.54881:
cont.54855:
	bnei	$r5, 0, bnei.54892
	j	cont.54891
bnei.54892:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.54894
	j	cont.54893
bclf.54894:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.54896
	j	cont.54895
bnei.54896:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -12($r29)
	addi	$r3, $r5, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.54898
	j	cont.54897
bnei.54898:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.54897:
cont.54895:
cont.54893:
cont.54891:
cont.54849:
	addi	$r2, $r0, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
cont.54847:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.54900
	addi	$r2, $r0, 0
	jr	$r31
bclf.54900:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.54902
	addi	$r2, $r0, 0
	jr	$r31
bclf.54902:
	addi	$r2, $r0, 1
	jr	$r31
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
	bnei	$r4, 1, bnei.54904
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
	bclf	bclf.54906
	c.le.s	$f1, $f0
	bclf	bclf.54908
	lfh	$f0, 17279
	j	cont.54907
bclf.54908:
	fmove	$f0, $f30
cont.54907:
	j	cont.54905
bclf.54906:
	c.le.s	$f1, $f0
	bclf	bclf.54910
	fmove	$f0, $f30
	j	cont.54909
bclf.54910:
	lfh	$f0, 17279
cont.54909:
cont.54905:
	swcl	$f0, 620($r0)
	jr	$r31
bnei.54904:
	bnei	$r4, 2, bnei.54912
	lwcl	$f0, 4($r3)
	lfh	$f1, 16000
	mul.s	$f0, $f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	swcl	$f1, 616($r0)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 620($r0)
	jr	$r31
bnei.54912:
	bnei	$r4, 3, bnei.54914
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
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16457
	lfl	$f1, 4059
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f0, $f1
	swcl	$f1, 620($r0)
	sub.s	$f0, $f31, $f0
	lfh	$f1, 17279
	mul.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.54914:
	bnei	$r4, 4, bnei.54916
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
	swcl	$f2, -32($r29)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	c.le.s	$f3, $f4
	bclf	bclf.54918
	div.s	$f0, $f1, $f0
	fabs	$f0, $f0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.54917
bclf.54918:
	lfh	$f0, 16752
cont.54917:
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lwcl	$f1, -36($r29)
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
	lwcl	$f3, -32($r29)
	fabs	$f4, $f3
	swcl	$f0, -40($r29)
	c.le.s	$f2, $f4
	bclf	bclf.54920
	div.s	$f1, $f1, $f3
	fabs	$f1, $f1
	fmove	$f0, $f1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.54919
bclf.54920:
	lfh	$f0, 16752
cont.54919:
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f1, -44($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 15897
	lfl	$f1, 39322
	lfh	$f2, 16128
	lwcl	$f3, -40($r29)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f30, $f0
	bclf	bclf.54922
	j	cont.54921
bclf.54922:
	fmove	$f0, $f30
cont.54921:
	lfh	$f1, 17279
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.54916:
	jr	$r31
trace_reflections.5395:
	blti	$r2, 0, blti.54924
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
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.54926
	addi	$r2, $r0, 0
	j	cont.54925
bclf.54926:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.54928
	addi	$r2, $r0, 0
	j	cont.54927
bclf.54928:
	addi	$r2, $r0, 1
cont.54927:
cont.54925:
	bnei	$r2, 1, bnei.54930
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.54932
	addi	$r2, $r0, 0
	lw	$r4, 572($r0)
	addi	$r3, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.54934
	j	cont.54933
bnei.54934:
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
	bclf	bclf.54936
	j	cont.54935
bclf.54936:
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
cont.54935:
	c.le.s	$f1, $f30
	bclf	bclf.54938
	j	cont.54937
bclf.54938:
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
cont.54937:
cont.54933:
	j	cont.54931
bne.54932:
cont.54931:
	j	cont.54929
bnei.54930:
cont.54929:
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
blti.54924:
	jr	$r31
trace_ray.5428:
	bgti	$r2, 4, bgti.54940
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
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.54942
	addi	$r2, $r0, 0
	j	cont.54941
bclf.54942:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.54944
	addi	$r2, $r0, 0
	j	cont.54943
bclf.54944:
	addi	$r2, $r0, 1
cont.54943:
cont.54941:
	bnei	$r2, 1, bnei.54946
	lw	$r2, 600($r0)
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	lw	$r5, 28($r3)
	lwcl	$f0, 0($r5)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lw	$r5, 4($r3)
	bnei	$r5, 1, bnei.54948
	lw	$r5, 580($r0)
	fmove	$f2, $f30
	swcl	$f2, 604($r0)
	swcl	$f2, 608($r0)
	swcl	$f2, 612($r0)
	addi	$r6, $r5, -1
	addi	$r5, $r5, -1
	sll	$r5, $r5, 2
	lw	$r7, -20($r29)
	lwclr	$f2, $r5($r7)	!ldf var
	c.eq.s	$f2, $f30
	bclf	bclf.54950
	fmove	$f2, $f30
	j	cont.54949
bclf.54950:
	c.le.s	$f2, $f30
	bclf	bclf.54952
	fmove	$f2, $f29
	j	cont.54951
bclf.54952:
	fmove	$f2, $f31
cont.54951:
cont.54949:
	fneg	$f2, $f2
	sll	$r5, $r6, 2
	swcl	$f2, 604($r5)
	j	cont.54947
bnei.54948:
	bnei	$r5, 2, bnei.54954
	lw	$r5, 16($r3)
	lwcl	$f2, 0($r5)
	fneg	$f2, $f2
	swcl	$f2, 604($r0)
	lw	$r5, 16($r3)
	lwcl	$f2, 4($r5)
	fneg	$f2, $f2
	swcl	$f2, 608($r0)
	lw	$r5, 16($r3)
	lwcl	$f2, 8($r5)
	fneg	$f2, $f2
	swcl	$f2, 612($r0)
	j	cont.54953
bnei.54954:
	lwcl	$f2, 588($r0)
	lw	$r5, 20($r3)
	lwcl	$f3, 0($r5)
	sub.s	$f2, $f2, $f3
	lwcl	$f3, 592($r0)
	lw	$r5, 20($r3)
	lwcl	$f4, 4($r5)
	sub.s	$f3, $f3, $f4
	lwcl	$f4, 596($r0)
	lw	$r5, 20($r3)
	lwcl	$f5, 8($r5)
	sub.s	$f4, $f4, $f5
	lw	$r5, 16($r3)
	lwcl	$f5, 0($r5)
	mul.s	$f5, $f2, $f5
	lw	$r5, 16($r3)
	lwcl	$f6, 4($r5)
	mul.s	$f6, $f3, $f6
	lw	$r5, 16($r3)
	lwcl	$f7, 8($r5)
	mul.s	$f7, $f4, $f7
	lw	$r5, 12($r3)
	bnei	$r5, 0, bnei.54956
	swcl	$f5, 604($r0)
	swcl	$f6, 608($r0)
	swcl	$f7, 612($r0)
	j	cont.54955
bnei.54956:
	lw	$r5, 36($r3)
	lwcl	$f8, 8($r5)
	mul.s	$f8, $f3, $f8
	lw	$r5, 36($r3)
	lwcl	$f9, 4($r5)
	mul.s	$f9, $f4, $f9
	add.s	$f8, $f8, $f9
	lfh	$f9, 16128
	mul.s	$f8, $f8, $f9
	add.s	$f5, $f5, $f8
	swcl	$f5, 604($r0)
	lw	$r5, 36($r3)
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f2, $f5
	lw	$r5, 36($r3)
	lwcl	$f8, 0($r5)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f5, $f4
	lfh	$f5, 16128
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
	swcl	$f4, 608($r0)
	lw	$r5, 36($r3)
	lwcl	$f4, 4($r5)
	mul.s	$f2, $f2, $f4
	lw	$r5, 36($r3)
	lwcl	$f4, 0($r5)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lfh	$f3, 16128
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f7, $f2
	swcl	$f2, 612($r0)
cont.54955:
	lw	$r5, 24($r3)
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
	bclf	bclf.54958
	fmove	$f2, $f31
	j	cont.54957
bclf.54958:
	bnei	$r5, 1, bnei.54960
	div.s	$f2, $f29, $f2
	j	cont.54959
bnei.54960:
	div.s	$f2, $f31, $f2
cont.54959:
cont.54957:
	lwcl	$f3, 604($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 604($r0)
	lwcl	$f3, 608($r0)
	mul.s	$f3, $f3, $f2
	swcl	$f3, 608($r0)
	lwcl	$f3, 612($r0)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 612($r0)
cont.54953:
cont.54947:
	lwcl	$f2, 588($r0)
	swcl	$f2, 672($r0)
	lwcl	$f2, 592($r0)
	swcl	$f2, 676($r0)
	lwcl	$f2, 596($r0)
	swcl	$f2, 680($r0)
	addi	$r5, $r0, 588
	sw	$r4, -28($r29)
	swcl	$f0, -32($r29)
	sw	$r3, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r2, -40($r29)
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
	lw	$r6, -36($r29)
	lw	$r7, 28($r6)
	lwcl	$f1, 0($r7)
	c.le.s	$f0, $f1
	bclf	bclf.54962
	addi	$r7, $r0, 1
	sll	$r8, $r3, 2
	swr	$r7, $r8($r4)	!st var
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
	j	cont.54961
bclf.54962:
	addi	$r7, $r0, 0
	sll	$r8, $r3, 2
	swr	$r7, $r8($r4)	!st var
cont.54961:
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
	addi	$r7, $r0, 0
	lw	$r8, 572($r0)
	swcl	$f0, -44($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.54964
	j	cont.54963
bnei.54964:
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
	bclf	bclf.54966
	j	cont.54965
bclf.54966:
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
cont.54965:
	c.le.s	$f2, $f30
	bclf	bclf.54968
	j	cont.54967
bclf.54968:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -44($r29)
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
cont.54967:
cont.54963:
	lwcl	$f0, 588($r0)
	swcl	$f0, 684($r0)
	lwcl	$f0, 592($r0)
	swcl	$f0, 688($r0)
	lwcl	$f0, 596($r0)
	swcl	$f0, 692($r0)
	lw	$r2, 28($r0)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 588
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, 1796($r0)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f1, -24($r29)
	c.le.s	$f1, $f0
	bclf	bclf.54970
	jr	$r31
bclf.54970:
	lw	$r2, -16($r29)
	blti	$r2, 4, blti.54972
	j	cont.54971
blti.54972:
	addi	$r3, $r2, 1
	addi	$r4, $r0, -1
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	swr	$r4, $r3($r5)	!st var
cont.54971:
	lw	$r3, -28($r29)
	bnei	$r3, 2, bnei.54974
	lw	$r3, -36($r29)
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
bnei.54974:
	jr	$r31
bnei.54946:
	addi	$r2, $r0, -1
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	bnei	$r3, 0, bnei.54976
	jr	$r31
bnei.54976:
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
	bclf	bclf.54978
	jr	$r31
bclf.54978:
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
bgti.54940:
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
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.54980
	addi	$r2, $r0, 0
	j	cont.54979
bclf.54980:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.54982
	addi	$r2, $r0, 0
	j	cont.54981
bclf.54982:
	addi	$r2, $r0, 1
cont.54981:
cont.54979:
	bnei	$r2, 1, bnei.54984
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -8($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.54986
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
	bclf	bclf.54988
	fmove	$f0, $f30
	j	cont.54987
bclf.54988:
	c.le.s	$f0, $f30
	bclf	bclf.54990
	fmove	$f0, $f29
	j	cont.54989
bclf.54990:
	fmove	$f0, $f31
cont.54989:
cont.54987:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.54985
bnei.54986:
	bnei	$r4, 2, bnei.54992
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
	j	cont.54991
bnei.54992:
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
	bnei	$r3, 0, bnei.54994
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.54993
bnei.54994:
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
cont.54993:
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
	bclf	bclf.54996
	fmove	$f0, $f31
	j	cont.54995
bclf.54996:
	bnei	$r3, 1, bnei.54998
	div.s	$f0, $f29, $f0
	j	cont.54997
bnei.54998:
	div.s	$f0, $f31, $f0
cont.54997:
cont.54995:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.54991:
cont.54985:
	addi	$r3, $r0, 588
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, 572($r0)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.55000
	jr	$r31
bnei.55000:
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
	bclf	bclf.55002
	fmove	$f0, $f30
	j	cont.55001
bclf.55002:
cont.55001:
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
bnei.54984:
	jr	$r31
iter_trace_diffuse_rays.5564:
	blti	$r5, 0, blti.55004
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
	bclf	bclf.55006
	sll	$r6, $r5, 2
	lwr	$r6, $r6($r2)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	swcl	$f0, -20($r29)
	sw	$r6, -24($r29)
	addi	$r2, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	judge_intersection_fast.5119
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.55008
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.55010
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
	bclf	bclf.55012
	fmove	$f0, $f30
	j	cont.55011
bclf.55012:
	c.le.s	$f0, $f30
	bclf	bclf.55014
	fmove	$f0, $f29
	j	cont.55013
bclf.55014:
	fmove	$f0, $f31
cont.55013:
cont.55011:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.55009
bnei.55010:
	bnei	$r4, 2, bnei.55016
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
	j	cont.55015
bnei.55016:
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
	bnei	$r3, 0, bnei.55018
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.55017
bnei.55018:
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
cont.55017:
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
	bclf	bclf.55020
	fmove	$f0, $f31
	j	cont.55019
bclf.55020:
	bnei	$r3, 1, bnei.55022
	div.s	$f0, $f29, $f0
	j	cont.55021
bnei.55022:
	div.s	$f0, $f31, $f0
cont.55021:
cont.55019:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.55015:
cont.55009:
	addi	$r3, $r0, 588
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, 572($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.55024
	j	cont.55023
bnei.55024:
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
	bclf	bclf.55026
	fmove	$f0, $f30
	j	cont.55025
bclf.55026:
cont.55025:
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -28($r29)
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
cont.55023:
	j	cont.55007
bnei.55008:
cont.55007:
	j	cont.55005
bclf.55006:
	addi	$r6, $r5, 1
	sll	$r6, $r6, 2
	lwr	$r6, $r6($r2)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	swcl	$f0, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	judge_intersection_fast.5119
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 1, bnei.55028
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -36($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.55030
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
	bclf	bclf.55032
	fmove	$f0, $f30
	j	cont.55031
bclf.55032:
	c.le.s	$f0, $f30
	bclf	bclf.55034
	fmove	$f0, $f29
	j	cont.55033
bclf.55034:
	fmove	$f0, $f31
cont.55033:
cont.55031:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.55029
bnei.55030:
	bnei	$r4, 2, bnei.55036
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
	j	cont.55035
bnei.55036:
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
	bnei	$r3, 0, bnei.55038
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.55037
bnei.55038:
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
cont.55037:
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
	bclf	bclf.55040
	fmove	$f0, $f31
	j	cont.55039
bclf.55040:
	bnei	$r3, 1, bnei.55042
	div.s	$f0, $f29, $f0
	j	cont.55041
bnei.55042:
	div.s	$f0, $f31, $f0
cont.55041:
cont.55039:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
cont.55035:
cont.55029:
	addi	$r3, $r0, 588
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r2, $r0, 0
	lw	$r3, 572($r0)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, 1, bnei.55044
	j	cont.55043
bnei.55044:
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
	bclf	bclf.55046
	fmove	$f0, $f30
	j	cont.55045
bclf.55046:
cont.55045:
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -40($r29)
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
cont.55043:
	j	cont.55027
bnei.55028:
cont.55027:
cont.55005:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -2
	blti	$r2, 0, blti.55048
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
	sw	$r2, -44($r29)
	c.le.s	$f30, $f0
	bclf	bclf.55050
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55049
bclf.55050:
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	lwr	$r3, $r3($r4)	!ld var
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.55049:
	lw	$r2, -44($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5564
blti.55048:
	jr	$r31
blti.55004:
	jr	$r31
trace_diffuse_ray_80percent.5592:
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r2, 0, bnei.55052
	j	cont.55051
bnei.55052:
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
cont.55051:
	lw	$r2, -12($r29)
	bnei	$r2, 1, bnei.55054
	j	cont.55053
bnei.55054:
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
cont.55053:
	lw	$r2, -12($r29)
	bnei	$r2, 2, bnei.55056
	j	cont.55055
bnei.55056:
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
cont.55055:
	lw	$r2, -12($r29)
	bnei	$r2, 3, bnei.55058
	j	cont.55057
bnei.55058:
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
cont.55057:
	lw	$r2, -12($r29)
	bnei	$r2, 4, bnei.55060
	jr	$r31
bnei.55060:
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
	bnei	$r2, 0, bnei.55062
	j	cont.55061
bnei.55062:
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
	bclf	bclf.55064
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55063
bclf.55064:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.55063:
	addi	$r5, $r0, 116
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.55061:
	lw	$r2, -20($r29)
	bnei	$r2, 1, bnei.55066
	j	cont.55065
bnei.55066:
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
	bclf	bclf.55068
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.55067
bclf.55068:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.55067:
	addi	$r5, $r0, 116
	lw	$r2, -28($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.55065:
	lw	$r2, -20($r29)
	bnei	$r2, 2, bnei.55070
	j	cont.55069
bnei.55070:
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
	bclf	bclf.55072
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.55071
bclf.55072:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.55071:
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.55069:
	lw	$r2, -20($r29)
	bnei	$r2, 3, bnei.55074
	j	cont.55073
bnei.55074:
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
	bclf	bclf.55076
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.55075
bclf.55076:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.55075:
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.55073:
	lw	$r2, -20($r29)
	bnei	$r2, 4, bnei.55078
	j	cont.55077
bnei.55078:
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
	bclf	bclf.55080
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.55079
bclf.55080:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.55079:
	addi	$r5, $r0, 116
	lw	$r2, -40($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.55077:
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
	bgti	$r3, 4, bgti.55082
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.55084
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bnei	$r4, 1, bnei.55086
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
	j	cont.55085
bnei.55086:
cont.55085:
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.55088
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.55090
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -16($r29)
	bnei	$r4, 1, bnei.55092
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.55091
bnei.55092:
cont.55091:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
blti.55090:
	jr	$r31
bgti.55088:
	jr	$r31
blti.55084:
	jr	$r31
bgti.55082:
	jr	$r31
try_exploit_neighbors.5713:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.55094
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.55096
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
	bne	$r10, $r9, bne.55098
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55100
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55102
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55104
	addi	$r9, $r0, 1
	j	cont.55103
bne.55104:
	addi	$r9, $r0, 0
cont.55103:
	j	cont.55101
bne.55102:
	addi	$r9, $r0, 0
cont.55101:
	j	cont.55099
bne.55100:
	addi	$r9, $r0, 0
cont.55099:
	j	cont.55097
bne.55098:
	addi	$r9, $r0, 0
cont.55097:
	bnei	$r9, 1, bnei.55106
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.55108
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
	j	cont.55107
bnei.55108:
cont.55107:
	addi	$r7, $r7, 1
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.55110
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.55112
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
	bne	$r10, $r9, bne.55114
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55116
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55118
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.55120
	addi	$r9, $r0, 1
	j	cont.55119
bne.55120:
	addi	$r9, $r0, 0
cont.55119:
	j	cont.55117
bne.55118:
	addi	$r9, $r0, 0
cont.55117:
	j	cont.55115
bne.55116:
	addi	$r9, $r0, 0
cont.55115:
	j	cont.55113
bne.55114:
	addi	$r9, $r0, 0
cont.55113:
	bnei	$r9, 1, bnei.55122
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.55124
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
	j	cont.55123
bnei.55124:
cont.55123:
	addi	$r7, $r7, 1
	j	try_exploit_neighbors.5713
bnei.55122:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	addi	$r3, $r7, 0
	j	do_without_neighbors.5662
blti.55112:
	jr	$r31
bgti.55110:
	jr	$r31
bnei.55106:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.55126
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.55128
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	sw	$r2, -4($r29)
	sw	$r7, -8($r29)
	bnei	$r3, 1, bnei.55130
	addi	$r3, $r7, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.55129
bnei.55130:
cont.55129:
	lw	$r2, -8($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
blti.55128:
	jr	$r31
bgti.55126:
	jr	$r31
blti.55096:
	jr	$r31
bgti.55094:
	jr	$r31
pretrace_diffuse_rays.5772:
	bgti	$r3, 4, bgti.55132
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.55134
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -4($r29)
	bnei	$r4, 1, bnei.55136
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
	j	cont.55135
bnei.55136:
cont.55135:
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.55138
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.55140
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -24($r29)
	bnei	$r4, 1, bnei.55142
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
	bclf	bclf.55144
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.55143
bclf.55144:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.55143:
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
	j	cont.55141
bnei.55142:
cont.55141:
	lw	$r3, -24($r29)
	addi	$r3, $r3, 1
	j	pretrace_diffuse_rays.5772
blti.55140:
	jr	$r31
bgti.55138:
	jr	$r31
blti.55134:
	jr	$r31
bgti.55132:
	jr	$r31
pretrace_pixels.5794:
	blti	$r3, 0, blti.55146
	lwcl	$f3, 668($r0)
	lw	$r5, 660($r0)
	subu	$r5, $r3, $r5
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f2, -16($r29)
	swcl	$f1, -20($r29)
	swcl	$f0, -24($r29)
	swcl	$f3, -28($r29)
	addi	$r2, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f1, -28($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -24($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -20($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -16($r29)
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
	bclf	bclf.55148
	fmove	$f0, $f31
	j	cont.55147
bclf.55148:
	div.s	$f0, $f31, $f0
cont.55147:
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
	addi	$r2, $r0, 0
	fmove	$f0, $f31
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	lwr	$r4, $r4($r5)	!ld var
	fmove	$f4, $f30
	addi	$r6, $r0, 732
	addi	$r3, $r6, 0
	fmove	$f1, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -12($r29)
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
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	blti	$r6, 0, blti.55150
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -32($r29)
	bnei	$r6, 1, bnei.55152
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
	sw	$r8, -36($r29)
	sw	$r7, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -40($r29)
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
	bclf	bclf.55154
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55153
bclf.55154:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.55153:
	addi	$r5, $r0, 116
	lw	$r2, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -32($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.55151
bnei.55152:
cont.55151:
	addi	$r3, $r0, 1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55149
blti.55150:
cont.55149:
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	blti	$r2, 5, blti.55156
	addi	$r4, $r2, -5
	j	cont.55155
blti.55156:
	addi	$r4, $r2, 0
cont.55155:
	lw	$r2, -8($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -16($r29)
	j	pretrace_pixels.5794
blti.55146:
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
	addi	$r3, $r2, -1
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	j	pretrace_pixels.5794
scan_pixel.5881:
	lw	$r7, 652($r0)
	bgt	$r7, $r2, bgt.55158
	jr	$r31
bgt.55158:
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
	bgt	$r7, $r8, bgt.55160
	addi	$r7, $r0, 0
	j	cont.55159
bgt.55160:
	bgti	$r3, 0, bgti.55162
	addi	$r7, $r0, 0
	j	cont.55161
bgti.55162:
	lw	$r7, 652($r0)
	addi	$r8, $r2, 1
	bgt	$r7, $r8, bgt.55164
	addi	$r7, $r0, 0
	j	cont.55163
bgt.55164:
	bgti	$r2, 0, bgti.55166
	addi	$r7, $r0, 0
	j	cont.55165
bgti.55166:
	addi	$r7, $r0, 1
cont.55165:
cont.55163:
cont.55161:
cont.55159:
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r7, 1, bnei.55168
	addi	$r7, $r0, 0
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r9, 8($r8)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.55170
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.55172
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.55174
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.55176
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.55178
	addi	$r9, $r0, 1
	j	cont.55177
bne.55178:
	addi	$r9, $r0, 0
cont.55177:
	j	cont.55175
bne.55176:
	addi	$r9, $r0, 0
cont.55175:
	j	cont.55173
bne.55174:
	addi	$r9, $r0, 0
cont.55173:
	j	cont.55171
bne.55172:
	addi	$r9, $r0, 0
cont.55171:
	bnei	$r9, 1, bnei.55180
	lw	$r7, 12($r8)
	lw	$r7, 0($r7)
	bnei	$r7, 1, bnei.55182
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
	j	cont.55181
bnei.55182:
cont.55181:
	addi	$r7, $r0, 1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.55179
bnei.55180:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55179:
	j	cont.55169
blti.55170:
cont.55169:
	j	cont.55167
bnei.55168:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	addi	$r8, $r0, 0
	lw	$r9, 8($r7)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.55184
	lw	$r9, 12($r7)
	lw	$r9, 0($r9)
	sw	$r7, -24($r29)
	bnei	$r9, 1, bnei.55186
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55185
bnei.55186:
cont.55185:
	addi	$r3, $r0, 1
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55183
blti.55184:
cont.55183:
cont.55167:
	lwcl	$f0, 640($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55188
	blti	$r2, 0, blti.55190
	j	cont.55189
blti.55190:
	addi	$r2, $r0, 0
cont.55189:
	j	cont.55187
bgt.55188:
	addi	$r2, $r0, 255
cont.55187:
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55192
	blti	$r2, 0, blti.55194
	j	cont.55193
blti.55194:
	addi	$r2, $r0, 0
cont.55193:
	j	cont.55191
bgt.55192:
	addi	$r2, $r0, 255
cont.55191:
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
	bgt	$r2, $r3, bgt.55196
	blti	$r2, 0, blti.55198
	j	cont.55197
blti.55198:
	addi	$r2, $r0, 0
cont.55197:
	j	cont.55195
bgt.55196:
	addi	$r2, $r0, 255
cont.55195:
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, 652($r0)
	bgt	$r3, $r2, bgt.55200
	jr	$r31
bgt.55200:
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
	bgt	$r3, $r6, bgt.55202
	addi	$r3, $r0, 0
	j	cont.55201
bgt.55202:
	bgti	$r4, 0, bgti.55204
	addi	$r3, $r0, 0
	j	cont.55203
bgti.55204:
	lw	$r3, 652($r0)
	addi	$r6, $r2, 1
	bgt	$r3, $r6, bgt.55206
	addi	$r3, $r0, 0
	j	cont.55205
bgt.55206:
	bgti	$r2, 0, bgti.55208
	addi	$r3, $r0, 0
	j	cont.55207
bgti.55208:
	addi	$r3, $r0, 1
cont.55207:
cont.55205:
cont.55203:
cont.55201:
	sw	$r2, -28($r29)
	bnei	$r3, 1, bnei.55210
	addi	$r7, $r0, 0
	lw	$r3, -8($r29)
	lw	$r6, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.55209
bnei.55210:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r5)	!ld var
	addi	$r6, $r0, 0
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.55209:
	lwcl	$f0, 640($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55212
	blti	$r2, 0, blti.55214
	j	cont.55213
blti.55214:
	addi	$r2, $r0, 0
cont.55213:
	j	cont.55211
bgt.55212:
	addi	$r2, $r0, 255
cont.55211:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55216
	blti	$r2, 0, blti.55218
	j	cont.55217
blti.55218:
	addi	$r2, $r0, 0
cont.55217:
	j	cont.55215
bgt.55216:
	addi	$r2, $r0, 255
cont.55215:
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
	bgt	$r2, $r3, bgt.55220
	blti	$r2, 0, blti.55222
	j	cont.55221
blti.55222:
	addi	$r2, $r0, 0
cont.55221:
	j	cont.55219
bgt.55220:
	addi	$r2, $r0, 255
cont.55219:
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
	bgt	$r7, $r2, bgt.55224
	jr	$r31
bgt.55224:
	lw	$r7, 656($r0)
	addi	$r7, $r7, -1
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	bgt	$r7, $r2, bgt.55226
	j	cont.55225
bgt.55226:
	addi	$r7, $r2, 1
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55225:
	addi	$r2, $r0, 0
	lw	$r3, 652($r0)
	bgti	$r3, 0, bgti.55228
	j	cont.55227
bgti.55228:
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
	bgt	$r3, $r6, bgt.55230
	addi	$r3, $r0, 0
	j	cont.55229
bgt.55230:
	bgti	$r4, 0, bgti.55232
	addi	$r3, $r0, 0
	j	cont.55231
bgti.55232:
	lw	$r3, 652($r0)
	bgti	$r3, 1, bgti.55234
	addi	$r3, $r0, 0
	j	cont.55233
bgti.55234:
	addi	$r3, $r0, 0
cont.55233:
cont.55231:
cont.55229:
	bnei	$r3, 1, bnei.55236
	addi	$r7, $r0, 0
	lw	$r3, -12($r29)
	lw	$r6, -8($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.55235
bnei.55236:
	lw	$r2, 0($r5)
	addi	$r3, $r0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55235:
	lwcl	$f0, 640($r0)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55238
	blti	$r2, 0, blti.55240
	j	cont.55239
blti.55240:
	addi	$r2, $r0, 0
cont.55239:
	j	cont.55237
bgt.55238:
	addi	$r2, $r0, 255
cont.55237:
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55242
	blti	$r2, 0, blti.55244
	j	cont.55243
blti.55244:
	addi	$r2, $r0, 0
cont.55243:
	j	cont.55241
bgt.55242:
	addi	$r2, $r0, 255
cont.55241:
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.55246
	blti	$r2, 0, blti.55248
	j	cont.55247
blti.55248:
	addi	$r2, $r0, 0
cont.55247:
	j	cont.55245
bgt.55246:
	addi	$r2, $r0, 255
cont.55245:
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55227:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 2
	blti	$r2, 5, blti.55250
	addi	$r4, $r2, -5
	j	cont.55249
blti.55250:
	addi	$r4, $r2, 0
cont.55249:
	lw	$r2, 656($r0)
	bgt	$r2, $r3, bgt.55252
	jr	$r31
bgt.55252:
	lw	$r2, 656($r0)
	addi	$r2, $r2, -1
	sw	$r4, -24($r29)
	sw	$r3, -28($r29)
	bgt	$r2, $r3, bgt.55254
	j	cont.55253
bgt.55254:
	addi	$r2, $r3, 1
	lw	$r5, -12($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.55253:
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	lw	$r4, -20($r29)
	lw	$r5, -8($r29)
	lw	$r6, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -24($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.55256
	addi	$r6, $r3, -5
	j	cont.55255
blti.55256:
	addi	$r6, $r3, 0
cont.55255:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
init_line_elements.5972:
	blti	$r3, 0, blti.55258
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
	blti	$r2, 0, blti.55260
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
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	init_line_elements.5972
blti.55260:
	addi	$r2, $r5, 0
	jr	$r31
blti.55258:
	jr	$r31
calc_dirvec.6008:
	blti	$r2, 5, blti.55262
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
blti.55262:
	mul.s	$f0, $f1, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	div.s	$f1, $f31, $f0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f3, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	fmove	$f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -28($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -32($r29)
	fmove	$f0, $f1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f1, -32($r29)
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
	swcl	$f0, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f1, -44($r29)
	fmove	$f0, $f2
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	atan.2419
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -48($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -52($r29)
	fmove	$f0, $f1
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f1, -52($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -44($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -40($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lwcl	$f0, -36($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -12($r29)
	j	calc_dirvec.6008
calc_dirvecs.6068:
	blti	$r2, 0, blti.55264
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	fmove	$f1, $f30
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lwcl	$f3, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	fmove	$f0, $f30
	fmove	$f1, $f30
	lw	$r3, -12($r29)
	addi	$r4, $r3, 2
	lw	$r5, -16($r29)
	lwcl	$f3, -8($r29)
	addi	$r3, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -16($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.55266
	addi	$r3, $r3, -5
	j	cont.55265
blti.55266:
cont.55265:
	lw	$r4, -12($r29)
	lwcl	$f0, -8($r29)
	j	calc_dirvecs.6068
blti.55264:
	jr	$r31
calc_dirvec_rows.6098:
	blti	$r2, 0, blti.55268
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
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.55270
	addi	$r3, $r3, -5
	j	cont.55269
blti.55270:
cont.55269:
	lw	$r4, -8($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.55272
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
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
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r3, -24($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.55274
	addi	$r3, $r3, -5
	j	cont.55273
blti.55274:
cont.55273:
	lw	$r4, -20($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6098
blti.55272:
	jr	$r31
blti.55268:
	jr	$r31
create_dirvec_elements.6124:
	blti	$r3, 0, blti.55276
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
	blti	$r2, 0, blti.55278
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
	blti	$r2, 0, blti.55280
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
	blti	$r2, 0, blti.55282
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
blti.55282:
	jr	$r31
blti.55280:
	jr	$r31
blti.55278:
	jr	$r31
blti.55276:
	jr	$r31
create_dirvecs.6133:
	blti	$r2, 0, blti.55284
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
	blti	$r2, 0, blti.55286
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
	j	create_dirvecs.6133
blti.55286:
	jr	$r31
blti.55284:
	jr	$r31
init_dirvec_constants.6146:
	blti	$r3, 0, blti.55288
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
	blti	$r2, 0, blti.55290
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -12($r29)
	blti	$r5, 0, blti.55292
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	sw	$r3, -16($r29)
	bnei	$r9, 1, bnei.55294
	addi	$r9, $r0, 6
	fmove	$f0, $f30
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
	c.eq.s	$f0, $f30
	bclf	bclf.55296
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55295
bclf.55296:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55298
	addi	$r6, $r0, 0
	j	cont.55297
bclf.55298:
	addi	$r6, $r0, 1
cont.55297:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55300
	fneg	$f0, $f0
	j	cont.55299
bne.55300:
cont.55299:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55295:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55302
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55301
bclf.55302:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55304
	addi	$r6, $r0, 0
	j	cont.55303
bclf.55304:
	addi	$r6, $r0, 1
cont.55303:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55306
	fneg	$f0, $f0
	j	cont.55305
bne.55306:
cont.55305:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55301:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55308
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55307
bclf.55308:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55310
	addi	$r6, $r0, 0
	j	cont.55309
bclf.55310:
	addi	$r6, $r0, 1
cont.55309:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55312
	fneg	$f0, $f0
	j	cont.55311
bne.55312:
cont.55311:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55307:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55293
bnei.55294:
	bnei	$r9, 2, bnei.55314
	addi	$r9, $r0, 4
	fmove	$f0, $f30
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
	c.le.s	$f0, $f30
	bclf	bclf.55316
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55315
bclf.55316:
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
cont.55315:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55313
bnei.55314:
	addi	$r9, $r0, 5
	fmove	$f0, $f30
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
	bnei	$r5, 0, bnei.55318
	fmove	$f0, $f3
	j	cont.55317
bnei.55318:
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
cont.55317:
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
	bnei	$r5, 0, bnei.55320
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55319
bnei.55320:
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
cont.55319:
	c.eq.s	$f0, $f30
	bclf	bclf.55322
	j	cont.55321
bclf.55322:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55321:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
cont.55313:
cont.55293:
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.55291
blti.55292:
cont.55291:
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.55324
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
	blti	$r2, 0, blti.55326
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
blti.55326:
	jr	$r31
blti.55324:
	jr	$r31
blti.55290:
	jr	$r31
blti.55288:
	jr	$r31
init_vecset_constants.6154:
	blti	$r2, 0, blti.55328
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	blti	$r5, 0, blti.55330
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	sw	$r4, -12($r29)
	bnei	$r9, 1, bnei.55332
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
	c.eq.s	$f0, $f30
	bclf	bclf.55334
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55333
bclf.55334:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55336
	addi	$r6, $r0, 0
	j	cont.55335
bclf.55336:
	addi	$r6, $r0, 1
cont.55335:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55338
	fneg	$f0, $f0
	j	cont.55337
bne.55338:
cont.55337:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55333:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55340
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55339
bclf.55340:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55342
	addi	$r6, $r0, 0
	j	cont.55341
bclf.55342:
	addi	$r6, $r0, 1
cont.55341:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55344
	fneg	$f0, $f0
	j	cont.55343
bne.55344:
cont.55343:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55339:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55346
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55345
bclf.55346:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55348
	addi	$r6, $r0, 0
	j	cont.55347
bclf.55348:
	addi	$r6, $r0, 1
cont.55347:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55350
	fneg	$f0, $f0
	j	cont.55349
bne.55350:
cont.55349:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55345:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55331
bnei.55332:
	bnei	$r9, 2, bnei.55352
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
	c.le.s	$f0, $f30
	bclf	bclf.55354
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55353
bclf.55354:
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
cont.55353:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55351
bnei.55352:
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
	bnei	$r5, 0, bnei.55356
	fmove	$f0, $f3
	j	cont.55355
bnei.55356:
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
cont.55355:
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
	bnei	$r5, 0, bnei.55358
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55357
bnei.55358:
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
cont.55357:
	c.eq.s	$f0, $f30
	bclf	bclf.55360
	j	cont.55359
bclf.55360:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55359:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
cont.55351:
cont.55331:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.55329
blti.55330:
cont.55329:
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
	blti	$r2, 0, blti.55362
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
	blti	$r2, 0, blti.55364
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
	blti	$r2, 0, blti.55366
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
blti.55366:
	jr	$r31
blti.55364:
	jr	$r31
blti.55362:
	jr	$r31
blti.55328:
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
	blti	$r5, 0, blti.55368
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.55370
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
	c.eq.s	$f0, $f30
	bclf	bclf.55372
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55371
bclf.55372:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55374
	addi	$r6, $r0, 0
	j	cont.55373
bclf.55374:
	addi	$r6, $r0, 1
cont.55373:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55376
	fneg	$f0, $f0
	j	cont.55375
bne.55376:
cont.55375:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55371:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55378
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55377
bclf.55378:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55380
	addi	$r6, $r0, 0
	j	cont.55379
bclf.55380:
	addi	$r6, $r0, 1
cont.55379:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55382
	fneg	$f0, $f0
	j	cont.55381
bne.55382:
cont.55381:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55377:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55384
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55383
bclf.55384:
	lw	$r4, -52($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55386
	addi	$r6, $r0, 0
	j	cont.55385
bclf.55386:
	addi	$r6, $r0, 1
cont.55385:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55388
	fneg	$f0, $f0
	j	cont.55387
bne.55388:
cont.55387:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55383:
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55369
bnei.55370:
	bnei	$r7, 2, bnei.55390
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
	c.le.s	$f0, $f30
	bclf	bclf.55392
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55391
bclf.55392:
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
cont.55391:
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55389
bnei.55390:
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
	bnei	$r5, 0, bnei.55394
	fmove	$f0, $f3
	j	cont.55393
bnei.55394:
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
cont.55393:
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
	bnei	$r5, 0, bnei.55396
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55395
bnei.55396:
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
cont.55395:
	c.eq.s	$f0, $f30
	bclf	bclf.55398
	j	cont.55397
bclf.55398:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55397:
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	swr	$r2, $r4($r5)	!st var
cont.55389:
cont.55369:
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.55367
blti.55368:
cont.55367:
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
	blti	$r5, 0, blti.55400
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.55402
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
	c.eq.s	$f0, $f30
	bclf	bclf.55404
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55403
bclf.55404:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55406
	addi	$r6, $r0, 0
	j	cont.55405
bclf.55406:
	addi	$r6, $r0, 1
cont.55405:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55408
	fneg	$f0, $f0
	j	cont.55407
bne.55408:
cont.55407:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55403:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55410
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55409
bclf.55410:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55412
	addi	$r6, $r0, 0
	j	cont.55411
bclf.55412:
	addi	$r6, $r0, 1
cont.55411:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55414
	fneg	$f0, $f0
	j	cont.55413
bne.55414:
cont.55413:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55409:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55416
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55415
bclf.55416:
	lw	$r4, -84($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55418
	addi	$r6, $r0, 0
	j	cont.55417
bclf.55418:
	addi	$r6, $r0, 1
cont.55417:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55420
	fneg	$f0, $f0
	j	cont.55419
bne.55420:
cont.55419:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55415:
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55401
bnei.55402:
	bnei	$r7, 2, bnei.55422
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
	c.le.s	$f0, $f30
	bclf	bclf.55424
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55423
bclf.55424:
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
cont.55423:
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55421
bnei.55422:
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
	bnei	$r5, 0, bnei.55426
	fmove	$f0, $f3
	j	cont.55425
bnei.55426:
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
cont.55425:
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
	bnei	$r5, 0, bnei.55428
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55427
bnei.55428:
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
cont.55427:
	c.eq.s	$f0, $f30
	bclf	bclf.55430
	j	cont.55429
bclf.55430:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55429:
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -76($r29)
	swr	$r2, $r4($r5)	!st var
cont.55421:
cont.55401:
	addi	$r3, $r3, -1
	lw	$r2, -72($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.55399
blti.55400:
cont.55399:
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
	sw	$r3, -104($r29)
	blti	$r5, 0, blti.55432
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.55434
	addi	$r7, $r0, 6
	fmove	$f0, $f30
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
	c.eq.s	$f0, $f30
	bclf	bclf.55436
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55435
bclf.55436:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55438
	addi	$r6, $r0, 0
	j	cont.55437
bclf.55438:
	addi	$r6, $r0, 1
cont.55437:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55440
	fneg	$f0, $f0
	j	cont.55439
bne.55440:
cont.55439:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55435:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55442
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55441
bclf.55442:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55444
	addi	$r6, $r0, 0
	j	cont.55443
bclf.55444:
	addi	$r6, $r0, 1
cont.55443:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55446
	fneg	$f0, $f0
	j	cont.55445
bne.55446:
cont.55445:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55441:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55448
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55447
bclf.55448:
	lw	$r4, -116($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55450
	addi	$r6, $r0, 0
	j	cont.55449
bclf.55450:
	addi	$r6, $r0, 1
cont.55449:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55452
	fneg	$f0, $f0
	j	cont.55451
bne.55452:
cont.55451:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55447:
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55433
bnei.55434:
	bnei	$r7, 2, bnei.55454
	addi	$r7, $r0, 4
	fmove	$f0, $f30
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
	c.le.s	$f0, $f30
	bclf	bclf.55456
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55455
bclf.55456:
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
cont.55455:
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55453
bnei.55454:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
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
	bnei	$r5, 0, bnei.55458
	fmove	$f0, $f3
	j	cont.55457
bnei.55458:
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
cont.55457:
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
	bnei	$r5, 0, bnei.55460
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55459
bnei.55460:
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
cont.55459:
	c.eq.s	$f0, $f30
	bclf	bclf.55462
	j	cont.55461
bclf.55462:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55461:
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	swr	$r2, $r4($r5)	!st var
cont.55453:
cont.55433:
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.55431
blti.55432:
cont.55431:
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
	sw	$r3, -32($r29)
	blti	$r5, 0, blti.55464
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	bnei	$r7, 1, bnei.55466
	addi	$r7, $r0, 6
	fmove	$f0, $f30
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
	c.eq.s	$f0, $f30
	bclf	bclf.55468
	fmove	$f0, $f30
	swcl	$f0, 4($r2)
	j	cont.55467
bclf.55468:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55470
	addi	$r6, $r0, 0
	j	cont.55469
bclf.55470:
	addi	$r6, $r0, 1
cont.55469:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.55472
	fneg	$f0, $f0
	j	cont.55471
bne.55472:
cont.55471:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.55467:
	lwcl	$f0, 4($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55474
	fmove	$f0, $f30
	swcl	$f0, 12($r2)
	j	cont.55473
bclf.55474:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55476
	addi	$r6, $r0, 0
	j	cont.55475
bclf.55476:
	addi	$r6, $r0, 1
cont.55475:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.55478
	fneg	$f0, $f0
	j	cont.55477
bne.55478:
cont.55477:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.55473:
	lwcl	$f0, 8($r3)
	c.eq.s	$f0, $f30
	bclf	bclf.55480
	fmove	$f0, $f30
	swcl	$f0, 20($r2)
	j	cont.55479
bclf.55480:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.55482
	addi	$r6, $r0, 0
	j	cont.55481
bclf.55482:
	addi	$r6, $r0, 1
cont.55481:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.55484
	fneg	$f0, $f0
	j	cont.55483
bne.55484:
cont.55483:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.55479:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55465
bnei.55466:
	bnei	$r7, 2, bnei.55486
	addi	$r7, $r0, 4
	fmove	$f0, $f30
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
	c.le.s	$f0, $f30
	bclf	bclf.55488
	fmove	$f0, $f30
	swcl	$f0, 0($r2)
	j	cont.55487
bclf.55488:
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
cont.55487:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.55485
bnei.55486:
	addi	$r7, $r0, 5
	fmove	$f0, $f30
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
	bnei	$r5, 0, bnei.55490
	fmove	$f0, $f3
	j	cont.55489
bnei.55490:
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
cont.55489:
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
	bnei	$r5, 0, bnei.55492
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.55491
bnei.55492:
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
cont.55491:
	c.eq.s	$f0, $f30
	bclf	bclf.55494
	j	cont.55493
bclf.55494:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.55493:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
cont.55485:
cont.55465:
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55463
blti.55464:
cont.55463:
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
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lw	$r3, 652($r0)
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
	addi	$r3, $r2, 0
	lw	$r2, -48($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -84($r29)
	sw	$r3, -88($r29)
	addi	$r2, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -96($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -96($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -96($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -96($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -120($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r3, -120($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r3, -120($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r3, -120($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -116($r29)
	sw	$r3, 24($r2)
	lw	$r3, -112($r29)
	sw	$r3, 20($r2)
	lw	$r3, -108($r29)
	sw	$r3, 16($r2)
	lw	$r3, -104($r29)
	sw	$r3, 12($r2)
	lw	$r3, -100($r29)
	sw	$r3, 8($r2)
	lw	$r3, -96($r29)
	sw	$r3, 4($r2)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
	lw	$r2, -88($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	sw	$r2, -124($r29)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_screen_settings.3664
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_light.3742
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r2, $r0, 0
	sw	$r2, -128($r29)
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	bnei	$r2, 1, bnei.55496
	addi	$r2, $r0, 1
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	read_object.4009
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	j	cont.55495
bnei.55496:
	lw	$r2, -128($r29)
	sw	$r2, 28($r0)
cont.55495:
	addi	$r2, $r0, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	read_and_network.4048
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	sw	$r2, 572($r0)
	addi	$r2, $r0, 80
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 54
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r2, 652($r0)
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r2, 656($r0)
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 255
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 4
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	create_dirvecs.6133
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	calc_dirvec_rows.6098
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r2, 780($r0)
	lw	$r3, 476($r2)
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 118
	lw	$r2, -132($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, 776($r0)
	addi	$r3, $r0, 119
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r2, $r0, 2
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	init_vecset_constants.6154
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lwcl	$f0, 344($r0)
	swcl	$f0, 788($r0)
	lwcl	$f0, 348($r0)
	swcl	$f0, 792($r0)
	lwcl	$f0, 352($r0)
	swcl	$f0, 796($r0)
	lw	$r2, 28($r0)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 1040
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.55498
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	bnei	$r4, 2, bnei.55500
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	c.le.s	$f31, $f0
	bclf	bclf.55502
	j	cont.55501
bclf.55502:
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.55504
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	setup_rect_reflection.6184
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.55503
bnei.55504:
	bnei	$r4, 2, bnei.55506
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	setup_surface_reflection.6224
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.55505
bnei.55506:
cont.55505:
cont.55503:
cont.55501:
	j	cont.55499
bnei.55500:
cont.55499:
	j	cont.55497
blti.55498:
cont.55497:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r2, -84($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 0
	addi	$r4, $r0, 2
	lw	$r2, 656($r0)
	bgti	$r2, 0, bgti.55508
	jr	$r31
bgti.55508:
	lw	$r2, 656($r0)
	addi	$r2, $r2, -1
	sw	$r3, -136($r29)
	bgti	$r2, 0, bgti.55510
	j	cont.55509
bgti.55510:
	addi	$r2, $r0, 1
	lw	$r5, -124($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r5, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	pretrace_line.5848
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
cont.55509:
	addi	$r2, $r0, 0
	lw	$r3, -136($r29)
	lw	$r4, -44($r29)
	lw	$r5, -84($r29)
	lw	$r6, -124($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r2, $r0, 1
	addi	$r6, $r0, 4
	lw	$r3, -84($r29)
	lw	$r4, -124($r29)
	lw	$r5, -44($r29)
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
	addi	$r3, $r0, 1
	sw	$r30, 0($r0)
	addi	$r30, $r0, 20
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
	addi	$r5, $r0, 0
	addi	$r6, $r0, 0
	addi	$r7, $r0, 0
	addi	$r8, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 36
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
	addi	$r3, $r0, 1
	lw	$r4, 364($r0)
	sw	$r4, 564($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 568
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r0, 128
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

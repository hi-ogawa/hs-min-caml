	j	.min_caml_start
.atan_sub.2802:
	lfh	$f6, 16128
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.18883
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
	div.s	$f0, $f8, $f0
	lfh	$f4, 16128
	lfl	$f4, 0
	c.le.s	$f4, $f6
	bclf	.bclt_else.18884
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f4, $f6, $f4
	mul.s	$f8, $f6, $f6
	mul.s	$f8, $f8, $f2
	add.s	$f6, $f6, $f6
	lfh	$f10, 16256
	lfl	$f10, 0
	add.s	$f6, $f6, $f10
	add.s	$f0, $f6, $f0
	div.s	$f0, $f8, $f0
	lfh	$f6, 16128
	lfl	$f6, 0
	c.le.s	$f6, $f4
	bclf	.bclt_else.18885
	lfh	$f6, 16256
	lfl	$f6, 0
	sub.s	$f6, $f4, $f6
	mul.s	$f8, $f4, $f4
	mul.s	$f8, $f8, $f2
	add.s	$f4, $f4, $f4
	lfh	$f10, 16256
	lfl	$f10, 0
	add.s	$f4, $f4, $f10
	add.s	$f0, $f4, $f0
	div.s	$f0, $f8, $f0
	lfh	$f4, 16128
	lfl	$f4, 0
	c.le.s	$f4, $f6
	bclf	.bclt_else.18886
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f4, $f6, $f4
	mul.s	$f8, $f6, $f6
	mul.s	$f8, $f8, $f2
	add.s	$f6, $f6, $f6
	lfh	$f10, 16256
	lfl	$f10, 0
	add.s	$f6, $f6, $f10
	add.s	$f0, $f6, $f0
	div.s	$f0, $f8, $f0
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f30	! g'_args
	j	.atan_sub.2802	! calldir-tail
.bclt_else.18886:
	jr	$r31
.bclt_else.18885:
	jr	$r31
.bclt_else.18884:
	jr	$r31
.bclt_else.18883:
	fmove	$f0, $f4
	jr	$r31
.atan.2806:
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.18887
	lfh	$f2, 49024
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.18889
	addi	$r2, $r0, 0
	j	.bclt_cont.18890
.bclt_else.18889:
	addi	$r2, $r0, -1
.bclt_cont.18890:
	j	.bclt_cont.18888
.bclt_else.18887:
	addi	$r2, $r0, 1
.bclt_cont.18888:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.18891
	j	.beq_cont.18892
.beq_else.18891:
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
.beq_cont.18892:
	mul.s	$f2, $f0, $f0
	lfh	$f4, 17138
	lfl	$f4, 0
	mul.s	$f4, $f4, $f2
	lfh	$f6, 16824
	lfl	$f6, 0
	div.s	$f4, $f4, $f6
	lfh	$f6, 17096
	lfl	$f6, 0
	mul.s	$f6, $f6, $f2
	lfh	$f8, 16808
	lfl	$f8, 0
	add.s	$f4, $f8, $f4
	div.s	$f4, $f6, $f4
	lfh	$f6, 16640
	lfl	$f6, 0
	lfh	$f8, 17058
	lfl	$f8, 0
	mul.s	$f8, $f8, $f2
	lfh	$f10, 16792
	lfl	$f10, 0
	add.s	$f4, $f10, $f4
	div.s	$f4, $f8, $f4
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.atan_sub.2802	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	add.s	$f0, $f2, $f0
	lwcl	$f2, -8($r29)
	div.s	$f0, $f2, $f0
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bgt	$r3, $r2, .ble_else.18893
	addi	$r2, $r0, 0
	bgt	$r2, $r3, .ble_else.18894
	jr	$r31
.ble_else.18894:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
.ble_else.18893:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	jr	$r31
.sin_sub.2810:
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18895
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18896
	jr	$r31
.bclt_else.18896:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18897
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18898
	jr	$r31
.bclt_else.18898:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18899
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18900
	jr	$r31
.bclt_else.18900:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18901
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18902
	jr	$r31
.bclt_else.18902:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18901:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18899:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18903
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18904
	jr	$r31
.bclt_else.18904:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18903:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18897:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18905
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18906
	jr	$r31
.bclt_else.18906:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18907
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18908
	jr	$r31
.bclt_else.18908:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18907:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18905:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18909
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18910
	jr	$r31
.bclt_else.18910:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18909:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18895:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18911
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18912
	jr	$r31
.bclt_else.18912:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18913
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18914
	jr	$r31
.bclt_else.18914:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18915
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18916
	jr	$r31
.bclt_else.18916:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18915:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18913:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18917
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18918
	jr	$r31
.bclt_else.18918:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18917:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18911:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18919
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18920
	jr	$r31
.bclt_else.18920:
	add.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18921
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18922
	jr	$r31
.bclt_else.18922:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18921:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18919:
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.18923
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.18924
	jr	$r31
.bclt_else.18924:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.bclt_else.18923:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2810	! calldir-tail
.sin.2812:
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f4, 16585
	lfl	$f4, 4059
	lfh	$f6, 16329
	lfl	$f6, 4059
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f0, $f8
	bclf	.bclt_else.18925
	addi	$r2, $r0, 0
	j	.bclt_cont.18926
.bclt_else.18925:
	addi	$r2, $r0, 1
.bclt_cont.18926:
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f0
	bclf	.bclt_else.18927
	j	.bclt_cont.18928
.bclt_else.18927:
	fneg	$f0, $f0
.bclt_cont.18928:
	lfh	$f8, 16585
	lfl	$f8, 4059
	swcl	$f6, -4($r29)
	swcl	$f4, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f2, -16($r29)
	c.le.s	$f0, $f8
	bclf	.bclt_else.18929
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18931
	j	.bclt_cont.18932
.bclt_else.18931:
	add.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18933
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18935
	j	.bclt_cont.18936
.bclt_else.18935:
	add.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18937
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18939
	j	.bclt_cont.18940
.bclt_else.18939:
	add.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18940:
	j	.bclt_cont.18938
.bclt_else.18937:
	sub.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18938:
.bclt_cont.18936:
	j	.bclt_cont.18934
.bclt_else.18933:
	sub.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18941
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18943
	j	.bclt_cont.18944
.bclt_else.18943:
	add.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18944:
	j	.bclt_cont.18942
.bclt_else.18941:
	sub.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18942:
.bclt_cont.18934:
.bclt_cont.18932:
	j	.bclt_cont.18930
.bclt_else.18929:
	sub.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18945
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18947
	j	.bclt_cont.18948
.bclt_else.18947:
	add.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18949
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18951
	j	.bclt_cont.18952
.bclt_else.18951:
	add.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18952:
	j	.bclt_cont.18950
.bclt_else.18949:
	sub.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18950:
.bclt_cont.18948:
	j	.bclt_cont.18946
.bclt_else.18945:
	sub.s	$f0, $f0, $f8
	lfh	$f8, 16585
	lfl	$f8, 4059
	c.le.s	$f0, $f8
	bclf	.bclt_else.18953
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f0
	bclf	.bclt_else.18955
	j	.bclt_cont.18956
.bclt_else.18955:
	add.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18956:
	j	.bclt_cont.18954
.bclt_else.18953:
	sub.s	$f0, $f0, $f8
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2810	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.18954:
.bclt_cont.18946:
.bclt_cont.18930:
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.18957
	lw	$r2, -12($r29)
	j	.bclt_cont.18958
.bclt_else.18957:
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	bne	$r3, $r2, .beq_else.18959
	addi	$r2, $r0, 1
	j	.beq_cont.18960
.beq_else.18959:
	addi	$r2, $r0, 0
.beq_cont.18960:
.bclt_cont.18958:
	c.le.s	$f0, $f2
	bclf	.bclt_else.18961
	j	.bclt_cont.18962
.bclt_else.18961:
	lwcl	$f4, -8($r29)
	sub.s	$f0, $f4, $f0
.bclt_cont.18962:
	lwcl	$f4, -4($r29)
	c.le.s	$f0, $f4
	bclf	.bclt_else.18963
	j	.bclt_cont.18964
.bclt_else.18963:
	sub.s	$f0, $f2, $f0
.bclt_cont.18964:
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16256
	lfl	$f2, 0
	mul.s	$f4, $f0, $f0
	lfh	$f6, 16608
	lfl	$f6, 0
	lfh	$f8, 16656
	lfl	$f8, 0
	div.s	$f8, $f4, $f8
	lfh	$f10, 16544
	lfl	$f10, 0
	sub.s	$f6, $f6, $f8
	div.s	$f6, $f4, $f6
	lfh	$f8, 16448
	lfl	$f8, 0
	sub.s	$f6, $f10, $f6
	div.s	$f6, $f4, $f6
	sub.s	$f6, $f8, $f6
	div.s	$f4, $f4, $f6
	sub.s	$f2, $f2, $f4
	div.s	$f0, $f0, $f2
	lfh	$f2, 16384
	lfl	$f2, 0
	mul.s	$f2, $f2, $f0
	lfh	$f4, 16256
	lfl	$f4, 0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f4, $f0
	div.s	$f0, $f2, $f0
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.18965
	fneg	$f0, $f0
	jr	$r31
.beq_else.18965:
	jr	$r31
.read_int_token.2820:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.18966
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.18968
	addi	$r2, $r0, 0
	j	.ble_cont.18969
.ble_else.18968:
	addi	$r2, $r0, 1
.ble_cont.18969:
	j	.ble_cont.18967
.ble_else.18966:
	addi	$r2, $r0, 1
.ble_cont.18967:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.18970
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.18971
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.18973
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.18974
.beq_else.18973:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.18974:
	j	.beq_cont.18972
.beq_else.18971:
.beq_cont.18972:
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
.beq_else.18970:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.18975
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.18975:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.18976
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
.beq_else.18976:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
.read_float_token1.2829:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.18977
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.18979
	addi	$r2, $r0, 0
	j	.ble_cont.18980
.ble_else.18979:
	addi	$r2, $r0, 1
.ble_cont.18980:
	j	.ble_cont.18978
.ble_else.18977:
	addi	$r2, $r0, 1
.ble_cont.18978:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.18981
	lw	$r2, -20($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.18982
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.18984
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.18985
.beq_else.18984:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.18985:
	j	.beq_cont.18983
.beq_else.18982:
.beq_cont.18983:
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
.beq_else.18981:
	addi	$r2, $r0, 0
	lw	$r4, -4($r29)
	bne	$r4, $r2, .beq_else.18986
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.18986:
	addi	$r2, $r3, 0
	jr	$r31
.read_float_token2.2832:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	input	$r2
	addi	$r3, $r0, 48
	bgt	$r3, $r2, .ble_else.18987
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.18989
	addi	$r3, $r0, 0
	j	.ble_cont.18990
.ble_else.18989:
	addi	$r3, $r0, 1
.ble_cont.18990:
	j	.ble_cont.18988
.ble_else.18987:
	addi	$r3, $r0, 1
.ble_cont.18988:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.18991
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
.beq_else.18991:
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bne	$r3, $r2, .beq_else.18992
	addi	$r2, $r0, 0
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.18992:
	jr	$r31
.read_float.2834:
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
	jal	.mendoi2.18995	! callcls
	j	.mendoi1.18994	! callcls
.mendoi2.18995:	! callcls
	jr	$r27	! callcls
.mendoi1.18994:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 46
	bne	$r2, $r3, .beq_else.18996
	addi	$r2, $r0, 0
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.18999	! callcls
	j	.mendoi1.18998	! callcls
.mendoi2.18999:	! callcls
	jr	$r27	! callcls
.mendoi1.18998:	! callcls
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
	j	.beq_cont.18997
.beq_else.18996:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
.beq_cont.18997:
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.19000
	jr	$r31
.beq_else.19000:
	fneg	$f0, $f0
	jr	$r31
.mul_sub.2836:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19001
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19001:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19002
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19003
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19003:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19004
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.2836	! calldir-tail
.beq_else.19004:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.beq_else.19002:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	addi	$r5, $r0, 0
	sw	$r2, -8($r29)
	bne	$r3, $r5, .beq_else.19005
	addi	$r2, $r0, 0
	j	.beq_cont.19006
.beq_else.19005:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19007
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	j	.beq_cont.19008
.beq_else.19007:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
.beq_cont.19008:
.beq_cont.19006:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.mul.2839:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.19009
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19010
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19010:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19011
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.2836	! calldir-tail
.beq_else.19011:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.ble_else.19009:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19012
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19012:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19013
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	.mul_sub.2836	! calldir-tail
.beq_else.19013:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.div_binary_search.2842:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	addi	$r7, $r0, 0
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	bgt	$r7, $r3, .ble_else.19014
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	j	.ble_cont.19015
.ble_else.19014:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.ble_cont.19015:
	lw	$r3, -16($r29)
	lw	$r4, -20($r29)
	subu	$r5, $r4, $r3
	addi	$r6, $r0, 1
	bgt	$r5, $r6, .ble_else.19016
	addi	$r2, $r3, 0
	jr	$r31
.ble_else.19016:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, .ble_else.19017
	bne	$r2, $r5, .beq_else.19018
	lw	$r2, -8($r29)
	jr	$r31
.beq_else.19018:
	lw	$r2, -8($r29)
	addu	$r4, $r3, $r2
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -24($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r4, -16($r29)
	lw	$r5, -8($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, .ble_else.19019
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.19019:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.19020
	bne	$r2, $r3, .beq_else.19021
	lw	$r2, -24($r29)
	jr	$r31
.beq_else.19021:
	lw	$r2, -4($r29)
	lw	$r5, -24($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2842	! calldir-tail
.ble_else.19020:
	lw	$r2, -4($r29)
	lw	$r4, -24($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2842	! calldir-tail
.ble_else.19017:
	lw	$r2, -8($r29)
	addu	$r3, $r2, $r4
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r4, -8($r29)
	lw	$r5, -20($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, .ble_else.19022
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.19022:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.19023
	bne	$r2, $r3, .beq_else.19024
	lw	$r2, -28($r29)
	jr	$r31
.beq_else.19024:
	lw	$r2, -4($r29)
	lw	$r5, -28($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2842	! calldir-tail
.ble_else.19023:
	lw	$r2, -4($r29)
	lw	$r4, -28($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2842	! calldir-tail
.print_int.2854:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.19025
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.19026
	bne	$r2, $r3, .beq_else.19028
	lw	$r2, -16($r29)
	j	.beq_cont.19029
.beq_else.19028:
	lw	$r2, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.beq_cont.19029:
	j	.ble_cont.19027
.ble_else.19026:
	lw	$r2, -12($r29)
	lw	$r4, -16($r29)
	lw	$r5, -4($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
.ble_cont.19027:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -20($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r2, -28($r29)
	bgt	$r4, $r3, .ble_else.19030
	addi	$r2, $r0, 0
	j	.ble_cont.19031
.ble_else.19030:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19031:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.19032
	bne	$r2, $r3, .beq_else.19034
	lw	$r2, -48($r29)
	j	.beq_cont.19035
.beq_else.19034:
	lw	$r2, -44($r29)
	lw	$r4, -40($r29)
	lw	$r5, -48($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
.beq_cont.19035:
	j	.ble_cont.19033
.ble_else.19032:
	lw	$r2, -44($r29)
	lw	$r4, -48($r29)
	lw	$r5, -36($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
.ble_cont.19033:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -28($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -52($r29)
	sw	$r2, -56($r29)
	bgt	$r4, $r3, .ble_else.19036
	addi	$r3, $r0, 0
	lw	$r5, -32($r29)
	bne	$r5, $r3, .beq_else.19038
	addi	$r2, $r0, 0
	j	.beq_cont.19039
.beq_else.19038:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19039:
	j	.ble_cont.19037
.ble_else.19036:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19037:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -56($r29)
	bgt	$r3, $r2, .ble_else.19040
	bne	$r2, $r3, .beq_else.19042
	lw	$r2, -76($r29)
	j	.beq_cont.19043
.beq_else.19042:
	lw	$r2, -72($r29)
	lw	$r4, -68($r29)
	lw	$r5, -76($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.beq_cont.19043:
	j	.ble_cont.19041
.ble_else.19040:
	lw	$r2, -72($r29)
	lw	$r4, -76($r29)
	lw	$r5, -64($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.ble_cont.19041:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -56($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, .ble_else.19044
	addi	$r3, $r0, 0
	lw	$r5, -60($r29)
	bne	$r5, $r3, .beq_else.19046
	addi	$r2, $r0, 0
	j	.beq_cont.19047
.beq_else.19046:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19047:
	j	.ble_cont.19045
.ble_else.19044:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19045:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -84($r29)
	bgt	$r3, $r2, .ble_else.19048
	bne	$r2, $r3, .beq_else.19050
	lw	$r2, -104($r29)
	j	.beq_cont.19051
.beq_else.19050:
	lw	$r2, -100($r29)
	lw	$r4, -96($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
.beq_cont.19051:
	j	.ble_cont.19049
.ble_else.19048:
	lw	$r2, -100($r29)
	lw	$r4, -104($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
.ble_cont.19049:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -108($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -108($r29)
	sw	$r2, -112($r29)
	bgt	$r4, $r3, .ble_else.19052
	addi	$r3, $r0, 0
	lw	$r5, -88($r29)
	bne	$r5, $r3, .beq_else.19054
	addi	$r2, $r0, 0
	j	.beq_cont.19055
.beq_else.19054:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19055:
	j	.ble_cont.19053
.ble_else.19052:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19053:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.19056
	bne	$r2, $r3, .beq_else.19058
	lw	$r2, -132($r29)
	j	.beq_cont.19059
.beq_else.19058:
	lw	$r2, -128($r29)
	lw	$r4, -124($r29)
	lw	$r5, -132($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
.beq_cont.19059:
	j	.ble_cont.19057
.ble_else.19056:
	lw	$r2, -128($r29)
	lw	$r4, -132($r29)
	lw	$r5, -120($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
.ble_cont.19057:
	addi	$r3, $r0, 10000
	sw	$r2, -136($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -112($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -136($r29)
	sw	$r2, -140($r29)
	bgt	$r4, $r3, .ble_else.19060
	addi	$r3, $r0, 0
	lw	$r5, -116($r29)
	bne	$r5, $r3, .beq_else.19062
	addi	$r2, $r0, 0
	j	.beq_cont.19063
.beq_else.19062:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19063:
	j	.ble_cont.19061
.ble_else.19060:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19061:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	lw	$r3, -140($r29)
	bgt	$r3, $r2, .ble_else.19064
	bne	$r2, $r3, .beq_else.19066
	lw	$r2, -160($r29)
	j	.beq_cont.19067
.beq_else.19066:
	lw	$r2, -156($r29)
	lw	$r4, -152($r29)
	lw	$r5, -160($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
.beq_cont.19067:
	j	.ble_cont.19065
.ble_else.19064:
	lw	$r2, -156($r29)
	lw	$r4, -160($r29)
	lw	$r5, -148($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
.ble_cont.19065:
	addi	$r3, $r0, 1000
	sw	$r2, -164($r29)
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lw	$r3, -140($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -164($r29)
	sw	$r2, -168($r29)
	bgt	$r4, $r3, .ble_else.19068
	addi	$r3, $r0, 0
	lw	$r5, -144($r29)
	bne	$r5, $r3, .beq_else.19070
	addi	$r2, $r0, 0
	j	.beq_cont.19071
.beq_else.19070:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19071:
	j	.ble_cont.19069
.ble_else.19068:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19069:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	lw	$r3, -168($r29)
	bgt	$r3, $r2, .ble_else.19072
	bne	$r2, $r3, .beq_else.19074
	lw	$r2, -188($r29)
	j	.beq_cont.19075
.beq_else.19074:
	lw	$r2, -184($r29)
	lw	$r4, -180($r29)
	lw	$r5, -188($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
.beq_cont.19075:
	j	.ble_cont.19073
.ble_else.19072:
	lw	$r2, -184($r29)
	lw	$r4, -188($r29)
	lw	$r5, -176($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
.ble_cont.19073:
	addi	$r3, $r0, 100
	sw	$r2, -192($r29)
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	lw	$r3, -168($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -192($r29)
	sw	$r2, -196($r29)
	bgt	$r4, $r3, .ble_else.19076
	addi	$r3, $r0, 0
	lw	$r5, -172($r29)
	bne	$r5, $r3, .beq_else.19078
	addi	$r2, $r0, 0
	j	.beq_cont.19079
.beq_else.19078:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19079:
	j	.ble_cont.19077
.ble_else.19076:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19077:
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
	jal	.mul.2839	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	lw	$r3, -196($r29)
	bgt	$r3, $r2, .ble_else.19080
	bne	$r2, $r3, .beq_else.19082
	lw	$r2, -216($r29)
	j	.beq_cont.19083
.beq_else.19082:
	lw	$r2, -212($r29)
	lw	$r4, -208($r29)
	lw	$r5, -216($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
.beq_cont.19083:
	j	.ble_cont.19081
.ble_else.19080:
	lw	$r2, -212($r29)
	lw	$r4, -216($r29)
	lw	$r5, -204($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.div_binary_search.2842	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
.ble_cont.19081:
	addi	$r3, $r0, 10
	sw	$r2, -220($r29)
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.mul_sub.2836	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -196($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -220($r29)
	sw	$r2, -224($r29)
	bgt	$r4, $r3, .ble_else.19084
	addi	$r3, $r0, 0
	lw	$r5, -200($r29)
	bne	$r5, $r3, .beq_else.19086
	addi	$r2, $r0, 0
	j	.beq_cont.19087
.beq_else.19086:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.19087:
	j	.ble_cont.19085
.ble_else.19084:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.19085:
	lw	$r2, -224($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
.ble_else.19025:
	addi	$r3, $r0, 45
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -20($r29)
	subu	$r2, $r0, $r2
	j	.print_int.2854	! calldir-tail
.vecunit_sgn.2919:
	lwcl	$f0, 0($r2)
	mul.s	$f0, $f0, $f0
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f2, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	mul.s	$f2, $f2, $f2
	add.s	$f0, $f0, $f2
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19088
	addi	$r2, $r0, 1
	j	.bclt_cont.19089
.bclt_else.19088:
	addi	$r2, $r0, 0
.bclt_cont.19089:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19090
	addi	$r2, $r0, 0
	lw	$r3, -8($r29)
	bne	$r3, $r2, .beq_else.19092
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
	j	.beq_cont.19093
.beq_else.19092:
	lfh	$f2, 49024
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
.beq_cont.19093:
	j	.beq_cont.19091
.beq_else.19090:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.19091:
	lw	$r2, -4($r29)
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
.vecaccumv.2943:
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
.read_screen_settings.3020:
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
	jal	.mendoi2.19097	! callcls
	j	.mendoi1.19096	! callcls
.mendoi2.19097:	! callcls
	jr	$r27	! callcls
.mendoi1.19096:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19099	! callcls
	j	.mendoi1.19098	! callcls
.mendoi2.19099:	! callcls
	jr	$r27	! callcls
.mendoi1.19098:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19101	! callcls
	j	.mendoi1.19100	! callcls
.mendoi2.19101:	! callcls
	jr	$r27	! callcls
.mendoi1.19100:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19103	! callcls
	j	.mendoi1.19102	! callcls
.mendoi2.19103:	! callcls
	jr	$r27	! callcls
.mendoi1.19102:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f2, $f2, $f0
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r28, -20($r29)
	swcl	$f0, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19105	! callcls
	j	.mendoi1.19104	! callcls
.mendoi2.19105:	! callcls
	jr	$r27	! callcls
.mendoi1.19104:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f2, $f2, $f0
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	swcl	$f0, -44($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.sin.2812	! calldir
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
	fneg	$f8, $f0
	swcl	$f8, 8($r3)
	fneg	$f8, $f6
	mul.s	$f0, $f8, $f0
	lw	$r3, -8($r29)
	swcl	$f0, 0($r3)
	fneg	$f0, $f2
	swcl	$f0, 4($r3)
	fneg	$f0, $f6
	mul.s	$f0, $f0, $f4
	swcl	$f0, 8($r3)
	lw	$r3, -24($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f2, 0($r2)
	sub.s	$f0, $f0, $f2
	lw	$r4, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	lwcl	$f2, 4($r2)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	lwcl	$f2, 8($r2)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 8($r4)
	jr	$r31
.read_light.3022:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r4)
	addi	$r4, $r0, 0
	sw	$r4, 0($r3)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r7, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	addi	$r28, $r2, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.19108	! callcls
	j	.mendoi1.19107	! callcls
.mendoi2.19108:	! callcls
	jr	$r27	! callcls
.mendoi1.19107:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r28, -12($r29)
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.19110	! callcls
	j	.mendoi1.19109	! callcls
.mendoi2.19110:	! callcls
	jr	$r27	! callcls
.mendoi1.19109:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	swcl	$f0, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	fneg	$f0, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.19112	! callcls
	j	.mendoi1.19111	! callcls
.mendoi2.19112:	! callcls
	jr	$r27	! callcls
.mendoi1.19111:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	lwcl	$f4, -16($r29)
	sub.s	$f2, $f2, $f4
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f4, -20($r29)
	sub.s	$f0, $f0, $f4
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2812	! calldir
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
	jal	.mendoi2.19114	! callcls
	j	.mendoi1.19113	! callcls
.mendoi2.19114:	! callcls
	jr	$r27	! callcls
.mendoi1.19113:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	jr	$r31
.rotate_quadratic_matrix.3024:
	lwcl	$f0, 0($r3)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	lfh	$f4, 16329
	lfl	$f4, 4059
	sub.s	$f2, $f4, $f2
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	lfh	$f4, 16329
	lfl	$f4, 4059
	sub.s	$f2, $f4, $f2
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2812	! calldir
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
	fneg	$f2, $f8
	mul.s	$f8, $f10, $f4
	mul.s	$f4, $f14, $f4
	lw	$r2, -4($r29)
	lwcl	$f10, 0($r2)
	lwcl	$f14, 4($r2)
	lwcl	$f22, 8($r2)
	mul.s	$f24, $f6, $f6
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f18, $f18
	mul.s	$f26, $f14, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f2, $f2
	mul.s	$f26, $f22, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 0($r2)
	mul.s	$f24, $f12, $f12
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f20, $f20
	mul.s	$f26, $f14, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f8, $f8
	mul.s	$f26, $f22, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 4($r2)
	mul.s	$f24, $f16, $f16
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f0, $f0
	mul.s	$f26, $f14, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f4, $f4
	mul.s	$f26, $f22, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 8($r2)
	lfh	$f24, 16384
	lfl	$f24, 0
	mul.s	$f26, $f10, $f12
	mul.s	$f26, $f26, $f16
	mul.s	$f28, $f14, $f20
	mul.s	$f28, $f28, $f0
	add.s	$f26, $f26, $f28
	mul.s	$f28, $f22, $f8
	mul.s	$f28, $f28, $f4
	add.s	$f26, $f26, $f28
	mul.s	$f24, $f24, $f26
	lw	$r2, -8($r29)
	swcl	$f24, 0($r2)
	lfh	$f24, 16384
	lfl	$f24, 0
	mul.s	$f26, $f10, $f6
	mul.s	$f16, $f26, $f16
	mul.s	$f26, $f14, $f18
	mul.s	$f0, $f26, $f0
	add.s	$f0, $f16, $f0
	mul.s	$f16, $f22, $f2
	mul.s	$f4, $f16, $f4
	add.s	$f0, $f0, $f4
	mul.s	$f0, $f24, $f0
	swcl	$f0, 4($r2)
	lfh	$f0, 16384
	lfl	$f0, 0
	mul.s	$f4, $f10, $f6
	mul.s	$f4, $f4, $f12
	mul.s	$f6, $f14, $f18
	mul.s	$f6, $f6, $f20
	add.s	$f4, $f4, $f6
	mul.s	$f2, $f22, $f2
	mul.s	$f2, $f2, $f8
	add.s	$f2, $f4, $f2
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.read_nth_object.3027:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r5)
	addi	$r8, $r0, 0
	sw	$r8, 0($r4)
	addi	$r8, $r0, 0
	addi	$r9, $r0, 32
	sw	$r7, -4($r29)
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	sw	$r5, -24($r29)
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19118	! callcls
	j	.mendoi1.19117	! callcls
.mendoi2.19118:	! callcls
	jr	$r27	! callcls
.mendoi1.19117:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.19119
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19119:
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r3, 0($r4)
	addi	$r3, $r0, 0
	lw	$r5, -20($r29)
	sw	$r3, 0($r5)
	addi	$r3, $r0, 0
	addi	$r6, $r0, 32
	lw	$r28, -16($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19121	! callcls
	j	.mendoi1.19120	! callcls
.mendoi2.19121:	! callcls
	jr	$r27	! callcls
.mendoi1.19120:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r3, 0($r4)
	addi	$r3, $r0, 0
	lw	$r5, -20($r29)
	sw	$r3, 0($r5)
	addi	$r3, $r0, 0
	addi	$r6, $r0, 32
	lw	$r28, -16($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19123	! callcls
	j	.mendoi1.19122	! callcls
.mendoi2.19123:	! callcls
	jr	$r27	! callcls
.mendoi1.19122:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r3, 0($r4)
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	sw	$r3, 0($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	lw	$r28, -16($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19125	! callcls
	j	.mendoi1.19124	! callcls
.mendoi2.19125:	! callcls
	jr	$r27	! callcls
.mendoi1.19124:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
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
	lw	$r28, -12($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19127	! callcls
	j	.mendoi1.19126	! callcls
.mendoi2.19127:	! callcls
	jr	$r27	! callcls
.mendoi1.19126:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19129	! callcls
	j	.mendoi1.19128	! callcls
.mendoi2.19129:	! callcls
	jr	$r27	! callcls
.mendoi1.19128:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19131	! callcls
	j	.mendoi1.19130	! callcls
.mendoi2.19131:	! callcls
	jr	$r27	! callcls
.mendoi1.19130:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
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
	jal	.mendoi2.19133	! callcls
	j	.mendoi1.19132	! callcls
.mendoi2.19133:	! callcls
	jr	$r27	! callcls
.mendoi1.19132:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19135	! callcls
	j	.mendoi1.19134	! callcls
.mendoi2.19135:	! callcls
	jr	$r27	! callcls
.mendoi1.19134:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19137	! callcls
	j	.mendoi1.19136	! callcls
.mendoi2.19137:	! callcls
	jr	$r27	! callcls
.mendoi1.19136:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19139	! callcls
	j	.mendoi1.19138	! callcls
.mendoi2.19139:	! callcls
	jr	$r27	! callcls
.mendoi1.19138:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19140
	addi	$r2, $r0, 0
	j	.bclt_cont.19141
.bclt_else.19140:
	addi	$r2, $r0, 1
.bclt_cont.19141:
	addi	$r3, $r0, 2
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.19143	! callcls
	j	.mendoi1.19142	! callcls
.mendoi2.19143:	! callcls
	jr	$r27	! callcls
.mendoi1.19142:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.19145	! callcls
	j	.mendoi1.19144	! callcls
.mendoi2.19145:	! callcls
	jr	$r27	! callcls
.mendoi1.19144:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.19147	! callcls
	j	.mendoi1.19146	! callcls
.mendoi2.19147:	! callcls
	jr	$r27	! callcls
.mendoi1.19146:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.19149	! callcls
	j	.mendoi1.19148	! callcls
.mendoi2.19149:	! callcls
	jr	$r27	! callcls
.mendoi1.19148:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.19151	! callcls
	j	.mendoi1.19150	! callcls
.mendoi2.19151:	! callcls
	jr	$r27	! callcls
.mendoi1.19150:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -40($r29)
	bne	$r4, $r3, .beq_else.19152
	j	.beq_cont.19153
.beq_else.19152:
	lw	$r28, -12($r29)
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.19155	! callcls
	j	.mendoi1.19154	! callcls
.mendoi2.19155:	! callcls
	jr	$r27	! callcls
.mendoi1.19154:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lw	$r2, -64($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.19157	! callcls
	j	.mendoi1.19156	! callcls
.mendoi2.19157:	! callcls
	jr	$r27	! callcls
.mendoi1.19156:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lw	$r2, -64($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.19159	! callcls
	j	.mendoi1.19158	! callcls
.mendoi2.19159:	! callcls
	jr	$r27	! callcls
.mendoi1.19158:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lw	$r2, -64($r29)
	swcl	$f0, 8($r2)
.beq_cont.19153:
	addi	$r3, $r0, 2
	lw	$r4, -32($r29)
	bne	$r4, $r3, .beq_else.19160
	addi	$r3, $r0, 1
	j	.beq_cont.19161
.beq_else.19160:
	lw	$r3, -52($r29)
.beq_cont.19161:
	addi	$r5, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -68($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -64($r29)
	sw	$r2, 36($r3)
	lw	$r4, -60($r29)
	sw	$r4, 32($r3)
	lw	$r4, -56($r29)
	sw	$r4, 28($r3)
	lw	$r4, -68($r29)
	sw	$r4, 24($r3)
	lw	$r4, -48($r29)
	sw	$r4, 20($r3)
	lw	$r4, -44($r29)
	sw	$r4, 16($r3)
	lw	$r5, -40($r29)
	sw	$r5, 12($r3)
	lw	$r6, -36($r29)
	sw	$r6, 8($r3)
	lw	$r6, -32($r29)
	sw	$r6, 4($r3)
	lw	$r7, -28($r29)
	sw	$r7, 0($r3)
	lw	$r7, -8($r29)
	sll	$r7, $r7, 2
	lw	$r8, -4($r29)
	addu	$r1, $r8, $r7
	sw	$r3, 0($r1)
	addi	$r3, $r0, 3
	bne	$r6, $r3, .beq_else.19162
	lwcl	$f0, 0($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19164
	addi	$r3, $r0, 1
	j	.bclt_cont.19165
.bclt_else.19164:
	addi	$r3, $r0, 0
.bclt_cont.19165:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19166
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19168
	addi	$r3, $r0, 1
	j	.bclt_cont.19169
.bclt_else.19168:
	addi	$r3, $r0, 0
.bclt_cont.19169:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19170
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19172
	addi	$r3, $r0, 0
	j	.bclt_cont.19173
.bclt_else.19172:
	addi	$r3, $r0, 1
.bclt_cont.19173:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19174
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.19175
.beq_else.19174:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.19175:
	j	.beq_cont.19171
.beq_else.19170:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.19171:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f2, $f0
	j	.beq_cont.19167
.beq_else.19166:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.19167:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19176
	addi	$r3, $r0, 1
	j	.bclt_cont.19177
.bclt_else.19176:
	addi	$r3, $r0, 0
.bclt_cont.19177:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19178
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19180
	addi	$r3, $r0, 1
	j	.bclt_cont.19181
.bclt_else.19180:
	addi	$r3, $r0, 0
.bclt_cont.19181:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19182
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19184
	addi	$r3, $r0, 0
	j	.bclt_cont.19185
.bclt_else.19184:
	addi	$r3, $r0, 1
.bclt_cont.19185:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19186
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.19187
.beq_else.19186:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.19187:
	j	.beq_cont.19183
.beq_else.19182:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.19183:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f2, $f0
	j	.beq_cont.19179
.beq_else.19178:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.19179:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19188
	addi	$r3, $r0, 1
	j	.bclt_cont.19189
.bclt_else.19188:
	addi	$r3, $r0, 0
.bclt_cont.19189:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19190
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19192
	addi	$r3, $r0, 1
	j	.bclt_cont.19193
.bclt_else.19192:
	addi	$r3, $r0, 0
.bclt_cont.19193:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19194
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19196
	addi	$r3, $r0, 0
	j	.bclt_cont.19197
.bclt_else.19196:
	addi	$r3, $r0, 1
.bclt_cont.19197:
	addi	$r6, $r0, 0
	bne	$r3, $r6, .beq_else.19198
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.19199
.beq_else.19198:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.19199:
	j	.beq_cont.19195
.beq_else.19194:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.19195:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f2, $f0
	j	.beq_cont.19191
.beq_else.19190:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.19191:
	swcl	$f0, 8($r4)
	j	.beq_cont.19163
.beq_else.19162:
	addi	$r3, $r0, 2
	bne	$r6, $r3, .beq_else.19200
	addi	$r3, $r0, 0
	lw	$r6, -52($r29)
	bne	$r6, $r3, .beq_else.19202
	addi	$r3, $r0, 1
	j	.beq_cont.19203
.beq_else.19202:
	addi	$r3, $r0, 0
.beq_cont.19203:
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.vecunit_sgn.2919	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	j	.beq_cont.19201
.beq_else.19200:
.beq_cont.19201:
.beq_cont.19163:
	addi	$r2, $r0, 0
	lw	$r3, -40($r29)
	bne	$r3, $r2, .beq_else.19204
	j	.beq_cont.19205
.beq_else.19204:
	lw	$r2, -44($r29)
	lw	$r3, -64($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.rotate_quadratic_matrix.3024	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
.beq_cont.19205:
	addi	$r2, $r0, 1
	jr	$r31
.read_object.3029:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 60
	bgt	$r5, $r2, .ble_else.19206
	jr	$r31
.ble_else.19206:
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.19209	! callcls
	j	.mendoi1.19208	! callcls
.mendoi2.19209:	! callcls
	jr	$r27	! callcls
.mendoi1.19208:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19210
	lw	$r2, -12($r29)
	lw	$r3, -16($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.19210:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, .ble_else.19212
	jr	$r31
.ble_else.19212:
	lw	$r28, -8($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.19215	! callcls
	j	.mendoi1.19214	! callcls
.mendoi2.19215:	! callcls
	jr	$r27	! callcls
.mendoi1.19214:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19216
	lw	$r2, -12($r29)
	lw	$r3, -20($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.19216:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, .ble_else.19218
	jr	$r31
.ble_else.19218:
	lw	$r28, -8($r29)
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19221	! callcls
	j	.mendoi1.19220	! callcls
.mendoi2.19221:	! callcls
	jr	$r27	! callcls
.mendoi1.19220:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19222
	lw	$r2, -12($r29)
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.19222:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, .ble_else.19224
	jr	$r31
.ble_else.19224:
	lw	$r28, -8($r29)
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19227	! callcls
	j	.mendoi1.19226	! callcls
.mendoi2.19227:	! callcls
	jr	$r27	! callcls
.mendoi1.19226:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19228
	lw	$r2, -12($r29)
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.19228:
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_net_item.3033:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	sw	$r6, 0($r5)
	addi	$r6, $r0, 0
	sw	$r6, 0($r4)
	addi	$r6, $r0, 0
	addi	$r7, $r0, 32
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.19231	! callcls
	j	.mendoi1.19230	! callcls
.mendoi2.19231:	! callcls
	jr	$r27	! callcls
.mendoi1.19230:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.19232
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	.min_caml_create_array	! calldir-tail
.beq_else.19232:
	lw	$r3, -20($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	lw	$r6, -16($r29)
	sw	$r5, 0($r6)
	addi	$r5, $r0, 0
	lw	$r6, -12($r29)
	sw	$r5, 0($r6)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	lw	$r28, -8($r29)
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19234	! callcls
	j	.mendoi1.19233	! callcls
.mendoi2.19234:	! callcls
	jr	$r27	! callcls
.mendoi1.19233:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.19235
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	j	.beq_cont.19236
.beq_else.19235:
	lw	$r3, -28($r29)
	addi	$r4, $r3, 1
	lw	$r28, -4($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19238	! callcls
	j	.mendoi1.19237	! callcls
.mendoi2.19238:	! callcls
	jr	$r27	! callcls
.mendoi1.19237:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r3, -28($r29)
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.19236:
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	lw	$r4, -24($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_or_network.3035:
	lw	$r3, 16($r28)
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	sw	$r7, 0($r6)
	addi	$r6, $r0, 0
	sw	$r6, 0($r5)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.19240	! callcls
	j	.mendoi1.19239	! callcls
.mendoi2.19240:	! callcls
	jr	$r27	! callcls
.mendoi1.19239:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.19241
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	j	.beq_cont.19242
.beq_else.19241:
	addi	$r3, $r0, 1
	lw	$r28, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.19244	! callcls
	j	.mendoi1.19243	! callcls
.mendoi2.19244:	! callcls
	jr	$r27	! callcls
.mendoi1.19243:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	lw	$r3, -16($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
.beq_cont.19242:
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, .beq_else.19245
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	j	.min_caml_create_array	! calldir-tail
.beq_else.19245:
	lw	$r2, -8($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	lw	$r28, -12($r29)
	sw	$r3, -20($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19247	! callcls
	j	.mendoi1.19246	! callcls
.mendoi2.19247:	! callcls
	jr	$r27	! callcls
.mendoi1.19246:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, .beq_else.19248
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	j	.beq_cont.19249
.beq_else.19248:
	lw	$r2, -24($r29)
	addi	$r4, $r2, 1
	lw	$r28, -4($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19251	! callcls
	j	.mendoi1.19250	! callcls
.mendoi2.19251:	! callcls
	jr	$r27	! callcls
.mendoi1.19250:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.19249:
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_and_network.3037:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r6)
	addi	$r6, $r0, 0
	sw	$r6, 0($r5)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -20	! callcls
	jal	.mendoi2.19253	! callcls
	j	.mendoi1.19252	! callcls
.mendoi2.19253:	! callcls
	jr	$r27	! callcls
.mendoi1.19252:	! callcls
	addi	$r29, $r29, 20	! callcls
	lw	$r31, -20($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.19254
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	j	.beq_cont.19255
.beq_else.19254:
	addi	$r3, $r0, 1
	lw	$r28, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.19257	! callcls
	j	.mendoi1.19256	! callcls
.mendoi2.19257:	! callcls
	jr	$r27	! callcls
.mendoi1.19256:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r3, -20($r29)
	sw	$r3, 0($r2)
.beq_cont.19255:
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19258
	jr	$r31
.beq_else.19258:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	lw	$r28, -16($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19261	! callcls
	j	.mendoi1.19260	! callcls
.mendoi2.19261:	! callcls
	jr	$r27	! callcls
.mendoi1.19260:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19262
	jr	$r31
.beq_else.19262:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_rect_surface.3041:
	lw	$r7, 4($r28)
	sll	$r8, $r4, 2
	addu	$r1, $r3, $r8
	lwcl	$f6, 0($r1)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.19264
	addi	$r8, $r0, 1
	j	.bclt_cont.19265
.bclt_else.19264:
	addi	$r8, $r0, 0
.bclt_cont.19265:
	addi	$r9, $r0, 0
	bne	$r8, $r9, .beq_else.19266
	lw	$r8, 16($r2)
	lw	$r2, 24($r2)
	sll	$r9, $r4, 2
	addu	$r1, $r3, $r9
	lwcl	$f6, 0($r1)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.19267
	addi	$r9, $r0, 0
	j	.bclt_cont.19268
.bclt_else.19267:
	addi	$r9, $r0, 1
.bclt_cont.19268:
	addi	$r10, $r0, 0
	bne	$r2, $r10, .beq_else.19269
	addi	$r2, $r9, 0
	j	.beq_cont.19270
.beq_else.19269:
	addi	$r2, $r0, 0
	bne	$r9, $r2, .beq_else.19271
	addi	$r2, $r0, 1
	j	.beq_cont.19272
.beq_else.19271:
	addi	$r2, $r0, 0
.beq_cont.19272:
.beq_cont.19270:
	sll	$r9, $r4, 2
	addu	$r1, $r8, $r9
	lwcl	$f6, 0($r1)
	addi	$r9, $r0, 0
	bne	$r2, $r9, .beq_else.19273
	fneg	$f6, $f6
	j	.beq_cont.19274
.beq_else.19273:
.beq_cont.19274:
	sub.s	$f0, $f6, $f0
	sll	$r2, $r4, 2
	addu	$r1, $r3, $r2
	lwcl	$f6, 0($r1)
	div.s	$f0, $f0, $f6
	sll	$r2, $r5, 2
	addu	$r1, $r3, $r2
	lwcl	$f6, 0($r1)
	mul.s	$f6, $f0, $f6
	add.s	$f2, $f6, $f2
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f2
	bclf	.bclt_else.19275
	j	.bclt_cont.19276
.bclt_else.19275:
	fneg	$f2, $f2
.bclt_cont.19276:
	sll	$r2, $r5, 2
	addu	$r1, $r8, $r2
	lwcl	$f6, 0($r1)
	c.le.s	$f6, $f2
	bclf	.bclt_else.19277
	addi	$r2, $r0, 0
	j	.bclt_cont.19278
.bclt_else.19277:
	addi	$r2, $r0, 1
.bclt_cont.19278:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.19279
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19279:
	sll	$r2, $r6, 2
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	mul.s	$f2, $f0, $f2
	add.s	$f2, $f2, $f4
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f2
	bclf	.bclt_else.19280
	j	.bclt_cont.19281
.bclt_else.19280:
	fneg	$f2, $f2
.bclt_cont.19281:
	sll	$r2, $r6, 2
	addu	$r1, $r8, $r2
	lwcl	$f4, 0($r1)
	c.le.s	$f4, $f2
	bclf	.bclt_else.19282
	addi	$r2, $r0, 0
	j	.bclt_cont.19283
.bclt_else.19282:
	addi	$r2, $r0, 1
.bclt_cont.19283:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19284
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19284:
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19266:
	addi	$r2, $r0, 0
	jr	$r31
.solver_surface.3056:
	lw	$r4, 4($r28)
	lw	$r2, 16($r2)
	lwcl	$f6, 0($r3)
	lwcl	$f8, 0($r2)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r3)
	lwcl	$f10, 4($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r3)
	lwcl	$f10, 8($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f6, $f8
	bclf	.bclt_else.19285
	addi	$r3, $r0, 0
	j	.bclt_cont.19286
.bclt_else.19285:
	addi	$r3, $r0, 1
.bclt_cont.19286:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.19287
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19287:
	lwcl	$f8, 0($r2)
	mul.s	$f0, $f8, $f0
	lwcl	$f8, 4($r2)
	mul.s	$f2, $f8, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	div.s	$f0, $f0, $f6
	swcl	$f0, 0($r4)
	addi	$r2, $r0, 1
	jr	$r31
.quadratic.3062:
	mul.s	$f6, $f0, $f0
	lw	$r3, 16($r2)
	lwcl	$f8, 0($r3)
	mul.s	$f6, $f6, $f8
	mul.s	$f8, $f2, $f2
	lw	$r3, 16($r2)
	lwcl	$f10, 4($r3)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f8, $f4, $f4
	lw	$r3, 16($r2)
	lwcl	$f10, 8($r3)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lw	$r3, 12($r2)
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19288
	fmove	$f0, $f6
	jr	$r31
.beq_else.19288:
	mul.s	$f8, $f2, $f4
	lw	$r3, 36($r2)
	lwcl	$f10, 0($r3)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f4, $f4, $f0
	lw	$r3, 36($r2)
	lwcl	$f8, 4($r3)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f6, $f4
	mul.s	$f0, $f0, $f2
	lw	$r2, 36($r2)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
	jr	$r31
.bilinear.3067:
	mul.s	$f12, $f0, $f6
	lw	$r3, 16($r2)
	lwcl	$f14, 0($r3)
	mul.s	$f12, $f12, $f14
	mul.s	$f14, $f2, $f8
	lw	$r3, 16($r2)
	lwcl	$f16, 4($r3)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	mul.s	$f14, $f4, $f10
	lw	$r3, 16($r2)
	lwcl	$f16, 8($r3)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	lw	$r3, 12($r2)
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19289
	fmove	$f0, $f12
	jr	$r31
.beq_else.19289:
	mul.s	$f14, $f4, $f8
	mul.s	$f16, $f2, $f10
	add.s	$f14, $f14, $f16
	lw	$r3, 36($r2)
	lwcl	$f16, 0($r3)
	mul.s	$f14, $f14, $f16
	mul.s	$f10, $f0, $f10
	mul.s	$f4, $f4, $f6
	add.s	$f4, $f10, $f4
	lw	$r3, 36($r2)
	lwcl	$f10, 4($r3)
	mul.s	$f4, $f4, $f10
	add.s	$f4, $f14, $f4
	mul.s	$f0, $f0, $f8
	mul.s	$f2, $f2, $f6
	add.s	$f0, $f0, $f2
	lw	$r2, 36($r2)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f12, $f0
	jr	$r31
.solver_second.3075:
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
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19290
	addi	$r2, $r0, 1
	j	.bclt_cont.19291
.bclt_else.19290:
	addi	$r2, $r0, 0
.bclt_cont.19291:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19292
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	lwcl	$f4, 4($r2)
	lwcl	$f6, 8($r2)
	lwcl	$f8, -16($r29)
	lwcl	$f10, -12($r29)
	lwcl	$f12, -8($r29)
	lw	$r2, -20($r29)
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	fmove	$f6, $f8	! g'_args
	fmove	$f8, $f10	! g'_args
	fmove	$f10, $f12	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.bilinear.3067	! calldir
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
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, .beq_else.19293
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.19294
.beq_else.19293:
.beq_cont.19294:
	lwcl	$f2, -32($r29)
	mul.s	$f4, $f2, $f2
	lwcl	$f6, -28($r29)
	mul.s	$f0, $f6, $f0
	sub.s	$f0, $f4, $f0
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f0, $f4
	bclf	.bclt_else.19295
	addi	$r3, $r0, 0
	j	.bclt_cont.19296
.bclt_else.19295:
	addi	$r3, $r0, 1
.bclt_cont.19296:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19297
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19297:
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -20($r29)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19298
	fneg	$f0, $f0
	j	.beq_cont.19299
.beq_else.19298:
.beq_cont.19299:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, -28($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19292:
	addi	$r2, $r0, 0
	jr	$r31
.solver.3081:
	lw	$r5, 16($r28)
	lw	$r6, 12($r28)
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r2, $r2, 2
	addu	$r1, $r8, $r2
	lw	$r2, 0($r1)
	lwcl	$f0, 0($r4)
	lw	$r8, 20($r2)
	lwcl	$f2, 0($r8)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lw	$r8, 20($r2)
	lwcl	$f4, 4($r8)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r4)
	lw	$r4, 20($r2)
	lwcl	$f6, 8($r4)
	sub.s	$f4, $f4, $f6
	lw	$r4, 4($r2)
	addi	$r8, $r0, 1
	bne	$r4, $r8, .beq_else.19300
	addi	$r4, $r0, 0
	addi	$r5, $r0, 1
	addi	$r7, $r0, 2
	swcl	$f0, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r6, -24($r29)
	addi	$r28, $r6, 0	! g'_args
	addi	$r6, $r7, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19302	! callcls
	j	.mendoi1.19301	! callcls
.mendoi2.19302:	! callcls
	jr	$r27	! callcls
.mendoi1.19301:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19303
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
	jal	.mendoi2.19305	! callcls
	j	.mendoi1.19304	! callcls
.mendoi2.19305:	! callcls
	jr	$r27	! callcls
.mendoi1.19304:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19306
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
	jal	.mendoi2.19308	! callcls
	j	.mendoi1.19307	! callcls
.mendoi2.19308:	! callcls
	jr	$r27	! callcls
.mendoi1.19307:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19309
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19309:
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.19306:
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.19303:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19300:
	addi	$r6, $r0, 2
	bne	$r4, $r6, .beq_else.19310
	lw	$r2, 16($r2)
	lwcl	$f6, 0($r3)
	lwcl	$f8, 0($r2)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r3)
	lwcl	$f10, 4($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r3)
	lwcl	$f10, 8($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f6, $f8
	bclf	.bclt_else.19311
	addi	$r3, $r0, 0
	j	.bclt_cont.19312
.bclt_else.19311:
	addi	$r3, $r0, 1
.bclt_cont.19312:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19313
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19313:
	lwcl	$f8, 0($r2)
	mul.s	$f0, $f8, $f0
	lwcl	$f8, 4($r2)
	mul.s	$f2, $f8, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	div.s	$f0, $f0, $f6
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19310:
	addi	$r28, $r5, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_rect_fast.3085:
	lw	$r5, 4($r28)
	lwcl	$f6, 0($r4)
	sub.s	$f6, $f6, $f0
	lwcl	$f8, 4($r4)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f2
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f8
	bclf	.bclt_else.19314
	j	.bclt_cont.19315
.bclt_else.19314:
	fneg	$f8, $f8
.bclt_cont.19315:
	lw	$r6, 16($r2)
	lwcl	$f10, 4($r6)
	c.le.s	$f10, $f8
	bclf	.bclt_else.19316
	addi	$r6, $r0, 0
	j	.bclt_cont.19317
.bclt_else.19316:
	addi	$r6, $r0, 1
.bclt_cont.19317:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19318
	addi	$r6, $r0, 0
	j	.beq_cont.19319
.beq_else.19318:
	lwcl	$f8, 8($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f4
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f8
	bclf	.bclt_else.19320
	j	.bclt_cont.19321
.bclt_else.19320:
	fneg	$f8, $f8
.bclt_cont.19321:
	lw	$r6, 16($r2)
	lwcl	$f10, 8($r6)
	c.le.s	$f10, $f8
	bclf	.bclt_else.19322
	addi	$r6, $r0, 0
	j	.bclt_cont.19323
.bclt_else.19322:
	addi	$r6, $r0, 1
.bclt_cont.19323:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19324
	addi	$r6, $r0, 0
	j	.beq_cont.19325
.beq_else.19324:
	lwcl	$f8, 4($r4)
	lfh	$f10, 0
	lfl	$f10, 0
	c.eq.s	$f8, $f10
	bclf	.bclt_else.19326
	addi	$r6, $r0, 1
	j	.bclt_cont.19327
.bclt_else.19326:
	addi	$r6, $r0, 0
.bclt_cont.19327:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19328
	addi	$r6, $r0, 1
	j	.beq_cont.19329
.beq_else.19328:
	addi	$r6, $r0, 0
.beq_cont.19329:
.beq_cont.19325:
.beq_cont.19319:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19330
	lwcl	$f6, 8($r4)
	sub.s	$f6, $f6, $f2
	lwcl	$f8, 12($r4)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 0($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f0
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f8
	bclf	.bclt_else.19331
	j	.bclt_cont.19332
.bclt_else.19331:
	fneg	$f8, $f8
.bclt_cont.19332:
	lw	$r6, 16($r2)
	lwcl	$f10, 0($r6)
	c.le.s	$f10, $f8
	bclf	.bclt_else.19333
	addi	$r6, $r0, 0
	j	.bclt_cont.19334
.bclt_else.19333:
	addi	$r6, $r0, 1
.bclt_cont.19334:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19335
	addi	$r6, $r0, 0
	j	.beq_cont.19336
.beq_else.19335:
	lwcl	$f8, 8($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f4
	lfh	$f10, 0
	lfl	$f10, 0
	c.le.s	$f10, $f8
	bclf	.bclt_else.19337
	j	.bclt_cont.19338
.bclt_else.19337:
	fneg	$f8, $f8
.bclt_cont.19338:
	lw	$r6, 16($r2)
	lwcl	$f10, 8($r6)
	c.le.s	$f10, $f8
	bclf	.bclt_else.19339
	addi	$r6, $r0, 0
	j	.bclt_cont.19340
.bclt_else.19339:
	addi	$r6, $r0, 1
.bclt_cont.19340:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19341
	addi	$r6, $r0, 0
	j	.beq_cont.19342
.beq_else.19341:
	lwcl	$f8, 12($r4)
	lfh	$f10, 0
	lfl	$f10, 0
	c.eq.s	$f8, $f10
	bclf	.bclt_else.19343
	addi	$r6, $r0, 1
	j	.bclt_cont.19344
.bclt_else.19343:
	addi	$r6, $r0, 0
.bclt_cont.19344:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19345
	addi	$r6, $r0, 1
	j	.beq_cont.19346
.beq_else.19345:
	addi	$r6, $r0, 0
.beq_cont.19346:
.beq_cont.19342:
.beq_cont.19336:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19347
	lwcl	$f6, 16($r4)
	sub.s	$f4, $f6, $f4
	lwcl	$f6, 20($r4)
	mul.s	$f4, $f4, $f6
	lwcl	$f6, 0($r3)
	mul.s	$f6, $f4, $f6
	add.s	$f0, $f6, $f0
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.19348
	j	.bclt_cont.19349
.bclt_else.19348:
	fneg	$f0, $f0
.bclt_cont.19349:
	lw	$r6, 16($r2)
	lwcl	$f6, 0($r6)
	c.le.s	$f6, $f0
	bclf	.bclt_else.19350
	addi	$r6, $r0, 0
	j	.bclt_cont.19351
.bclt_else.19350:
	addi	$r6, $r0, 1
.bclt_cont.19351:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19352
	addi	$r2, $r0, 0
	j	.beq_cont.19353
.beq_else.19352:
	lwcl	$f0, 4($r3)
	mul.s	$f0, $f4, $f0
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19354
	j	.bclt_cont.19355
.bclt_else.19354:
	fneg	$f0, $f0
.bclt_cont.19355:
	lw	$r2, 16($r2)
	lwcl	$f2, 4($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19356
	addi	$r2, $r0, 0
	j	.bclt_cont.19357
.bclt_else.19356:
	addi	$r2, $r0, 1
.bclt_cont.19357:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19358
	addi	$r2, $r0, 0
	j	.beq_cont.19359
.beq_else.19358:
	lwcl	$f0, 20($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19360
	addi	$r2, $r0, 1
	j	.bclt_cont.19361
.bclt_else.19360:
	addi	$r2, $r0, 0
.bclt_cont.19361:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19362
	addi	$r2, $r0, 1
	j	.beq_cont.19363
.beq_else.19362:
	addi	$r2, $r0, 0
.beq_cont.19363:
.beq_cont.19359:
.beq_cont.19353:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19364
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19364:
	swcl	$f4, 0($r5)
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.19347:
	swcl	$f6, 0($r5)
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.19330:
	swcl	$f6, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
.solver_second_fast.3098:
	lw	$r4, 4($r28)
	lwcl	$f6, 0($r3)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.19365
	addi	$r5, $r0, 1
	j	.bclt_cont.19366
.bclt_else.19365:
	addi	$r5, $r0, 0
.bclt_cont.19366:
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19367
	lwcl	$f8, 4($r3)
	mul.s	$f8, $f8, $f0
	lwcl	$f10, 8($r3)
	mul.s	$f10, $f10, $f2
	add.s	$f8, $f8, $f10
	lwcl	$f10, 12($r3)
	mul.s	$f10, $f10, $f4
	add.s	$f8, $f8, $f10
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f6, -12($r29)
	swcl	$f8, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -20($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, .beq_else.19368
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.19369
.beq_else.19368:
.beq_cont.19369:
	lwcl	$f2, -16($r29)
	mul.s	$f4, $f2, $f2
	lwcl	$f6, -12($r29)
	mul.s	$f0, $f6, $f0
	sub.s	$f0, $f4, $f0
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f0, $f4
	bclf	.bclt_else.19370
	addi	$r3, $r0, 0
	j	.bclt_cont.19371
.bclt_else.19370:
	addi	$r3, $r0, 1
.bclt_cont.19371:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19372
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19372:
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19373
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	.beq_cont.19374
.beq_else.19373:
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -16($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
.beq_cont.19374:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19367:
	addi	$r2, $r0, 0
	jr	$r31
.solver_second_fast2.3115:
	lw	$r5, 4($r28)
	lwcl	$f6, 0($r3)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.19375
	addi	$r6, $r0, 1
	j	.bclt_cont.19376
.bclt_else.19375:
	addi	$r6, $r0, 0
.bclt_cont.19376:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19377
	lwcl	$f8, 4($r3)
	mul.s	$f0, $f8, $f0
	lwcl	$f8, 8($r3)
	mul.s	$f2, $f8, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r4)
	mul.s	$f4, $f0, $f0
	mul.s	$f2, $f6, $f2
	sub.s	$f2, $f4, $f2
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f2, $f4
	bclf	.bclt_else.19378
	addi	$r4, $r0, 0
	j	.bclt_cont.19379
.bclt_else.19378:
	addi	$r4, $r0, 1
.bclt_cont.19379:
	addi	$r6, $r0, 0
	bne	$r4, $r6, .beq_else.19380
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19380:
	lw	$r2, 24($r2)
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.19381
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lwcl	$f2, -12($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	j	.beq_cont.19382
.beq_else.19381:
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lwcl	$f2, -12($r29)
	add.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lwcl	$f2, 16($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
.beq_cont.19382:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19377:
	addi	$r2, $r0, 0
	jr	$r31
.solver_fast2.3122:
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	sll	$r8, $r2, 2
	addu	$r1, $r7, $r8
	lw	$r7, 0($r1)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f2, 4($r8)
	lwcl	$f4, 8($r8)
	lw	$r9, 4($r3)
	sll	$r2, $r2, 2
	addu	$r1, $r9, $r2
	lw	$r2, 0($r1)
	lw	$r9, 4($r7)
	addi	$r10, $r0, 1
	bne	$r9, $r10, .beq_else.19383
	lw	$r3, 0($r3)
	addi	$r4, $r2, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19383:
	addi	$r3, $r0, 2
	bne	$r9, $r3, .beq_else.19384
	lwcl	$f0, 0($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19385
	addi	$r3, $r0, 0
	j	.bclt_cont.19386
.bclt_else.19385:
	addi	$r3, $r0, 1
.bclt_cont.19386:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19387
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19387:
	lwcl	$f0, 0($r2)
	lwcl	$f2, 12($r8)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r6)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19384:
	addi	$r3, $r2, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.setup_rect_table.3125:
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
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19388
	addi	$r4, $r0, 1
	j	.bclt_cont.19389
.bclt_else.19388:
	addi	$r4, $r0, 0
.bclt_cont.19389:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19390
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19392
	addi	$r6, $r0, 0
	j	.bclt_cont.19393
.bclt_else.19392:
	addi	$r6, $r0, 1
.bclt_cont.19393:
	addi	$r7, $r0, 0
	bne	$r5, $r7, .beq_else.19394
	addi	$r5, $r6, 0
	j	.beq_cont.19395
.beq_else.19394:
	addi	$r5, $r0, 0
	bne	$r6, $r5, .beq_else.19396
	addi	$r5, $r0, 1
	j	.beq_cont.19397
.beq_else.19396:
	addi	$r5, $r0, 0
.beq_cont.19397:
.beq_cont.19395:
	lw	$r6, 16($r4)
	lwcl	$f0, 0($r6)
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19398
	fneg	$f0, $f0
	j	.beq_cont.19399
.beq_else.19398:
.beq_cont.19399:
	swcl	$f0, 0($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, 0($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 4($r2)
	j	.beq_cont.19391
.beq_else.19390:
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 4($r2)
.beq_cont.19391:
	lwcl	$f0, 4($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19400
	addi	$r4, $r0, 1
	j	.bclt_cont.19401
.bclt_else.19400:
	addi	$r4, $r0, 0
.bclt_cont.19401:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19402
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19404
	addi	$r6, $r0, 0
	j	.bclt_cont.19405
.bclt_else.19404:
	addi	$r6, $r0, 1
.bclt_cont.19405:
	addi	$r7, $r0, 0
	bne	$r5, $r7, .beq_else.19406
	addi	$r5, $r6, 0
	j	.beq_cont.19407
.beq_else.19406:
	addi	$r5, $r0, 0
	bne	$r6, $r5, .beq_else.19408
	addi	$r5, $r0, 1
	j	.beq_cont.19409
.beq_else.19408:
	addi	$r5, $r0, 0
.beq_cont.19409:
.beq_cont.19407:
	lw	$r6, 16($r4)
	lwcl	$f0, 4($r6)
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19410
	fneg	$f0, $f0
	j	.beq_cont.19411
.beq_else.19410:
.beq_cont.19411:
	swcl	$f0, 8($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, 4($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 12($r2)
	j	.beq_cont.19403
.beq_else.19402:
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 12($r2)
.beq_cont.19403:
	lwcl	$f0, 8($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19412
	addi	$r4, $r0, 1
	j	.bclt_cont.19413
.bclt_else.19412:
	addi	$r4, $r0, 0
.bclt_cont.19413:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19414
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19416
	addi	$r6, $r0, 0
	j	.bclt_cont.19417
.bclt_else.19416:
	addi	$r6, $r0, 1
.bclt_cont.19417:
	addi	$r7, $r0, 0
	bne	$r5, $r7, .beq_else.19418
	addi	$r5, $r6, 0
	j	.beq_cont.19419
.beq_else.19418:
	addi	$r5, $r0, 0
	bne	$r6, $r5, .beq_else.19420
	addi	$r5, $r0, 1
	j	.beq_cont.19421
.beq_else.19420:
	addi	$r5, $r0, 0
.beq_cont.19421:
.beq_cont.19419:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	addi	$r4, $r0, 0
	bne	$r5, $r4, .beq_else.19422
	fneg	$f0, $f0
	j	.beq_cont.19423
.beq_else.19422:
.beq_cont.19423:
	swcl	$f0, 16($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, 8($r3)
	div.s	$f0, $f0, $f2
	swcl	$f0, 20($r2)
	j	.beq_cont.19415
.beq_else.19414:
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 20($r2)
.beq_cont.19415:
	jr	$r31
.setup_surface_table.3128:
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
	lw	$r5, 16($r4)
	lwcl	$f2, 0($r5)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lw	$r3, 16($r4)
	lwcl	$f4, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19424
	addi	$r3, $r0, 0
	j	.bclt_cont.19425
.bclt_else.19424:
	addi	$r3, $r0, 1
.bclt_cont.19425:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.19426
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 0($r2)
	j	.beq_cont.19427
.beq_else.19426:
	lfh	$f2, 49024
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lw	$r3, 16($r4)
	lwcl	$f2, 0($r3)
	div.s	$f2, $f2, $f0
	fneg	$f2, $f2
	swcl	$f2, 4($r2)
	lw	$r3, 16($r4)
	lwcl	$f2, 4($r3)
	div.s	$f2, $f2, $f0
	fneg	$f2, $f2
	swcl	$f2, 8($r2)
	lw	$r3, 16($r4)
	lwcl	$f2, 8($r3)
	div.s	$f0, $f2, $f0
	fneg	$f0, $f0
	swcl	$f0, 12($r2)
.beq_cont.19427:
	jr	$r31
.setup_second_table.3131:
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
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -4($r29)
	lw	$r4, 16($r3)
	lwcl	$f4, 0($r4)
	mul.s	$f2, $f2, $f4
	fneg	$f2, $f2
	lwcl	$f4, 4($r2)
	lw	$r4, 16($r3)
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f4, $f6
	fneg	$f4, $f4
	lwcl	$f6, 8($r2)
	lw	$r4, 16($r3)
	lwcl	$f8, 8($r4)
	mul.s	$f6, $f6, $f8
	fneg	$f6, $f6
	lw	$r4, -12($r29)
	swcl	$f0, 0($r4)
	lw	$r5, 12($r3)
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19428
	swcl	$f2, 4($r4)
	swcl	$f4, 8($r4)
	swcl	$f6, 12($r4)
	j	.beq_cont.19429
.beq_else.19428:
	lwcl	$f8, 8($r2)
	lw	$r5, 36($r3)
	lwcl	$f10, 4($r5)
	mul.s	$f8, $f8, $f10
	lwcl	$f10, 4($r2)
	lw	$r5, 36($r3)
	lwcl	$f12, 8($r5)
	mul.s	$f10, $f10, $f12
	add.s	$f8, $f8, $f10
	lfh	$f10, 16128
	lfl	$f10, 0
	mul.s	$f8, $f8, $f10
	sub.s	$f2, $f2, $f8
	swcl	$f2, 4($r4)
	lwcl	$f2, 8($r2)
	lw	$r5, 36($r3)
	lwcl	$f8, 0($r5)
	mul.s	$f2, $f2, $f8
	lwcl	$f8, 0($r2)
	lw	$r5, 36($r3)
	lwcl	$f10, 8($r5)
	mul.s	$f8, $f8, $f10
	add.s	$f2, $f2, $f8
	lfh	$f8, 16128
	lfl	$f8, 0
	mul.s	$f2, $f2, $f8
	sub.s	$f2, $f4, $f2
	swcl	$f2, 8($r4)
	lwcl	$f2, 4($r2)
	lw	$r5, 36($r3)
	lwcl	$f4, 0($r5)
	mul.s	$f2, $f2, $f4
	lwcl	$f4, 0($r2)
	lw	$r2, 36($r3)
	lwcl	$f8, 4($r2)
	mul.s	$f4, $f4, $f8
	add.s	$f2, $f2, $f4
	lfh	$f4, 16128
	lfl	$f4, 0
	mul.s	$f2, $f2, $f4
	sub.s	$f2, $f6, $f2
	swcl	$f2, 12($r4)
.beq_cont.19429:
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19430
	addi	$r2, $r0, 1
	j	.bclt_cont.19431
.bclt_else.19430:
	addi	$r2, $r0, 0
.bclt_cont.19431:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19432
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
	swcl	$f0, 16($r4)
	j	.beq_cont.19433
.beq_else.19432:
.beq_cont.19433:
	addi	$r2, $r4, 0
	jr	$r31
.iter_setup_dirvec_constants.3134:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.19434
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r5, 0($r1)
	lw	$r6, 4($r2)
	lw	$r7, 0($r2)
	lw	$r8, 4($r5)
	addi	$r9, $r0, 1
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r8, $r9, .beq_else.19435
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.19436
.beq_else.19435:
	addi	$r9, $r0, 2
	bne	$r8, $r9, .beq_else.19437
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.19438
.beq_else.19437:
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.19438:
.beq_cont.19436:
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.19439
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	addi	$r8, $r0, 1
	bne	$r7, $r8, .beq_else.19440
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.19441
.beq_else.19440:
	addi	$r8, $r0, 2
	bne	$r7, $r8, .beq_else.19442
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.19443
.beq_else.19442:
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.19443:
.beq_cont.19441:
	addi	$r3, $r3, -1
	lw	$r2, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.19439:
	jr	$r31
.ble_else.19434:
	jr	$r31
.setup_startp_constants.3139:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.19446
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	lw	$r5, 40($r4)
	lw	$r6, 4($r4)
	lwcl	$f0, 0($r2)
	lw	$r7, 20($r4)
	lwcl	$f2, 0($r7)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r2)
	lw	$r7, 20($r4)
	lwcl	$f2, 4($r7)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r2)
	lw	$r7, 20($r4)
	lwcl	$f2, 8($r7)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 8($r5)
	addi	$r7, $r0, 2
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r3, -12($r29)
	bne	$r6, $r7, .beq_else.19447
	lw	$r4, 16($r4)
	lwcl	$f0, 0($r5)
	lwcl	$f2, 4($r5)
	lwcl	$f4, 8($r5)
	lwcl	$f6, 0($r4)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 4($r4)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 12($r5)
	j	.beq_cont.19448
.beq_else.19447:
	addi	$r7, $r0, 2
	bgt	$r6, $r7, .ble_else.19449
	j	.ble_cont.19450
.ble_else.19449:
	lwcl	$f0, 0($r5)
	lwcl	$f2, 4($r5)
	lwcl	$f4, 8($r5)
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	bne	$r3, $r2, .beq_else.19451
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.19452
.beq_else.19451:
.beq_cont.19452:
	lw	$r2, -16($r29)
	swcl	$f0, 12($r2)
.ble_cont.19450:
.beq_cont.19448:
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.19446:
	jr	$r31
.is_rect_outside.3144:
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.19454
	j	.bclt_cont.19455
.bclt_else.19454:
	fneg	$f0, $f0
.bclt_cont.19455:
	lw	$r3, 16($r2)
	lwcl	$f6, 0($r3)
	c.le.s	$f6, $f0
	bclf	.bclt_else.19456
	addi	$r3, $r0, 0
	j	.bclt_cont.19457
.bclt_else.19456:
	addi	$r3, $r0, 1
.bclt_cont.19457:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19458
	addi	$r3, $r0, 0
	j	.beq_cont.19459
.beq_else.19458:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19460
	fmove	$f0, $f2
	j	.bclt_cont.19461
.bclt_else.19460:
	fneg	$f0, $f2
.bclt_cont.19461:
	lw	$r3, 16($r2)
	lwcl	$f2, 4($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19462
	addi	$r3, $r0, 0
	j	.bclt_cont.19463
.bclt_else.19462:
	addi	$r3, $r0, 1
.bclt_cont.19463:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19464
	addi	$r3, $r0, 0
	j	.beq_cont.19465
.beq_else.19464:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f4
	bclf	.bclt_else.19466
	fmove	$f0, $f4
	j	.bclt_cont.19467
.bclt_else.19466:
	fneg	$f0, $f4
.bclt_cont.19467:
	lw	$r3, 16($r2)
	lwcl	$f2, 8($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19468
	addi	$r3, $r0, 0
	j	.bclt_cont.19469
.bclt_else.19468:
	addi	$r3, $r0, 1
.bclt_cont.19469:
.beq_cont.19465:
.beq_cont.19459:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19470
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19471
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19471:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19470:
	lw	$r2, 24($r2)
	jr	$r31
.is_outside.3159:
	lw	$r3, 20($r2)
	lwcl	$f6, 0($r3)
	sub.s	$f0, $f0, $f6
	lw	$r3, 20($r2)
	lwcl	$f6, 4($r3)
	sub.s	$f2, $f2, $f6
	lw	$r3, 20($r2)
	lwcl	$f6, 8($r3)
	sub.s	$f4, $f4, $f6
	lw	$r3, 4($r2)
	addi	$r4, $r0, 1
	bne	$r3, $r4, .beq_else.19472
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.19473
	j	.bclt_cont.19474
.bclt_else.19473:
	fneg	$f0, $f0
.bclt_cont.19474:
	lw	$r3, 16($r2)
	lwcl	$f6, 0($r3)
	c.le.s	$f6, $f0
	bclf	.bclt_else.19475
	addi	$r3, $r0, 0
	j	.bclt_cont.19476
.bclt_else.19475:
	addi	$r3, $r0, 1
.bclt_cont.19476:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19477
	addi	$r3, $r0, 0
	j	.beq_cont.19478
.beq_else.19477:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19479
	fmove	$f0, $f2
	j	.bclt_cont.19480
.bclt_else.19479:
	fneg	$f0, $f2
.bclt_cont.19480:
	lw	$r3, 16($r2)
	lwcl	$f2, 4($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19481
	addi	$r3, $r0, 0
	j	.bclt_cont.19482
.bclt_else.19481:
	addi	$r3, $r0, 1
.bclt_cont.19482:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19483
	addi	$r3, $r0, 0
	j	.beq_cont.19484
.beq_else.19483:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f4
	bclf	.bclt_else.19485
	fmove	$f0, $f4
	j	.bclt_cont.19486
.bclt_else.19485:
	fneg	$f0, $f4
.bclt_cont.19486:
	lw	$r3, 16($r2)
	lwcl	$f2, 8($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19487
	addi	$r3, $r0, 0
	j	.bclt_cont.19488
.bclt_else.19487:
	addi	$r3, $r0, 1
.bclt_cont.19488:
.beq_cont.19484:
.beq_cont.19478:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19489
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19490
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19490:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19489:
	lw	$r2, 24($r2)
	jr	$r31
.beq_else.19472:
	addi	$r4, $r0, 2
	bne	$r3, $r4, .beq_else.19491
	lw	$r3, 16($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 4($r3)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lw	$r2, 24($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19492
	addi	$r3, $r0, 0
	j	.bclt_cont.19493
.bclt_else.19492:
	addi	$r3, $r0, 1
.bclt_cont.19493:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.19494
	addi	$r2, $r3, 0
	j	.beq_cont.19495
.beq_else.19494:
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.19496
	addi	$r2, $r0, 1
	j	.beq_cont.19497
.beq_else.19496:
	addi	$r2, $r0, 0
.beq_cont.19497:
.beq_cont.19495:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19498
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19498:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19491:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	lw	$r2, -4($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, .beq_else.19499
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.19500
.beq_else.19499:
.beq_cont.19500:
	lw	$r2, 24($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19501
	addi	$r3, $r0, 0
	j	.bclt_cont.19502
.bclt_else.19501:
	addi	$r3, $r0, 1
.bclt_cont.19502:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.19503
	addi	$r2, $r3, 0
	j	.beq_cont.19504
.beq_else.19503:
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.19505
	addi	$r2, $r0, 1
	j	.beq_cont.19506
.beq_else.19505:
	addi	$r2, $r0, 0
.beq_cont.19506:
.beq_cont.19504:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19507
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19507:
	addi	$r2, $r0, 0
	jr	$r31
.check_all_inside.3164:
	lw	$r4, 4($r28)
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5
	lw	$r5, 0($r1)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19508
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19508:
	sll	$r5, $r5, 2
	addu	$r1, $r4, $r5
	lw	$r5, 0($r1)
	lw	$r6, 20($r5)
	lwcl	$f6, 0($r6)
	sub.s	$f6, $f0, $f6
	lw	$r6, 20($r5)
	lwcl	$f8, 4($r6)
	sub.s	$f8, $f2, $f8
	lw	$r6, 20($r5)
	lwcl	$f10, 8($r6)
	sub.s	$f10, $f4, $f10
	lw	$r6, 4($r5)
	addi	$r7, $r0, 1
	sw	$r28, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r4, -20($r29)
	sw	$r3, -24($r29)
	sw	$r2, -28($r29)
	bne	$r6, $r7, .beq_else.19509
	addi	$r2, $r5, 0	! g'_args
	fmove	$f4, $f10	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f6	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.is_rect_outside.3144	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	j	.beq_cont.19510
.beq_else.19509:
	addi	$r7, $r0, 2
	bne	$r6, $r7, .beq_else.19511
	lw	$r6, 16($r5)
	lwcl	$f12, 0($r6)
	mul.s	$f6, $f12, $f6
	lwcl	$f12, 4($r6)
	mul.s	$f8, $f12, $f8
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r6)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lw	$r5, 24($r5)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.19513
	addi	$r6, $r0, 0
	j	.bclt_cont.19514
.bclt_else.19513:
	addi	$r6, $r0, 1
.bclt_cont.19514:
	addi	$r7, $r0, 0
	bne	$r5, $r7, .beq_else.19515
	addi	$r5, $r6, 0
	j	.beq_cont.19516
.beq_else.19515:
	addi	$r5, $r0, 0
	bne	$r6, $r5, .beq_else.19517
	addi	$r5, $r0, 1
	j	.beq_cont.19518
.beq_else.19517:
	addi	$r5, $r0, 0
.beq_cont.19518:
.beq_cont.19516:
	addi	$r6, $r0, 0
	bne	$r5, $r6, .beq_else.19519
	addi	$r2, $r0, 1
	j	.beq_cont.19520
.beq_else.19519:
	addi	$r2, $r0, 0
.beq_cont.19520:
	j	.beq_cont.19512
.beq_else.19511:
	sw	$r5, -32($r29)
	addi	$r2, $r5, 0	! g'_args
	fmove	$f4, $f10	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f6	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.quadratic.3062	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, .beq_else.19521
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.19522
.beq_else.19521:
.beq_cont.19522:
	lw	$r2, 24($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19523
	addi	$r3, $r0, 0
	j	.bclt_cont.19524
.bclt_else.19523:
	addi	$r3, $r0, 1
.bclt_cont.19524:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.19525
	addi	$r2, $r3, 0
	j	.beq_cont.19526
.beq_else.19525:
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.19527
	addi	$r2, $r0, 1
	j	.beq_cont.19528
.beq_else.19527:
	addi	$r2, $r0, 0
.beq_cont.19528:
.beq_cont.19526:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19529
	addi	$r2, $r0, 1
	j	.beq_cont.19530
.beq_else.19529:
	addi	$r2, $r0, 0
.beq_cont.19530:
.beq_cont.19512:
.beq_cont.19510:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19531
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -24($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19532
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19532:
	sll	$r3, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.is_outside.3159	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19533
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lwcl	$f0, -16($r29)
	lwcl	$f2, -12($r29)
	lwcl	$f4, -8($r29)
	lw	$r3, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19533:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19531:
	addi	$r2, $r0, 0
	jr	$r31
.shadow_check_and_group.3170:
	lw	$r4, 36($r28)
	lw	$r5, 32($r28)
	lw	$r6, 28($r28)
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	sll	$r13, $r2, 2
	addu	$r1, $r3, $r13
	lw	$r13, 0($r1)
	addi	$r14, $r0, -1
	bne	$r13, $r14, .beq_else.19534
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19534:
	sll	$r13, $r2, 2
	addu	$r1, $r3, $r13
	lw	$r13, 0($r1)
	sll	$r14, $r13, 2
	addu	$r1, $r8, $r14
	lw	$r14, 0($r1)
	lwcl	$f0, 0($r10)
	lw	$r15, 20($r14)
	lwcl	$f2, 0($r15)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r10)
	lw	$r15, 20($r14)
	lwcl	$f4, 4($r15)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r10)
	lw	$r15, 20($r14)
	lwcl	$f6, 8($r15)
	sub.s	$f4, $f4, $f6
	sll	$r15, $r13, 2
	addu	$r1, $r11, $r15
	lw	$r11, 0($r1)
	lw	$r15, 4($r14)
	addi	$r16, $r0, 1
	sw	$r12, -4($r29)
	sw	$r10, -8($r29)
	sw	$r9, -12($r29)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r2, -24($r29)
	sw	$r8, -28($r29)
	sw	$r13, -32($r29)
	sw	$r7, -36($r29)
	bne	$r15, $r16, .beq_else.19535
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	addi	$r4, $r11, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19538	! callcls
	j	.mendoi1.19537	! callcls
.mendoi2.19538:	! callcls
	jr	$r27	! callcls
.mendoi1.19537:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	j	.beq_cont.19536
.beq_else.19535:
	addi	$r4, $r0, 2
	bne	$r15, $r4, .beq_else.19539
	lwcl	$f6, 0($r11)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.19541
	addi	$r4, $r0, 0
	j	.bclt_cont.19542
.bclt_else.19541:
	addi	$r4, $r0, 1
.bclt_cont.19542:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19543
	addi	$r2, $r0, 0
	j	.beq_cont.19544
.beq_else.19543:
	lwcl	$f6, 4($r11)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 8($r11)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r11)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
.beq_cont.19544:
	j	.beq_cont.19540
.beq_else.19539:
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19546	! callcls
	j	.mendoi1.19545	! callcls
.mendoi2.19546:	! callcls
	jr	$r27	! callcls
.mendoi1.19545:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.19540:
.beq_cont.19536:
	lw	$r3, -36($r29)
	lwcl	$f0, 0($r3)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19547
	addi	$r2, $r0, 0
	j	.beq_cont.19548
.beq_else.19547:
	lfh	$f2, 48716
	lfl	$f2, 52429
	c.le.s	$f2, $f0
	bclf	.bclt_else.19549
	addi	$r2, $r0, 0
	j	.bclt_cont.19550
.bclt_else.19549:
	addi	$r2, $r0, 1
.bclt_cont.19550:
.beq_cont.19548:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19551
	lw	$r2, -32($r29)
	sll	$r2, $r2, 2
	lw	$r3, -28($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19552
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19552:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19551:
	lfh	$f2, 15395
	lfl	$f2, 55050
	add.s	$f0, $f0, $f2
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
	lw	$r3, -16($r29)
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, .beq_else.19553
	addi	$r2, $r0, 1
	j	.beq_cont.19554
.beq_else.19553:
	sll	$r2, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	swcl	$f0, -40($r29)
	swcl	$f4, -44($r29)
	swcl	$f2, -48($r29)
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.is_outside.3159	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19555
	addi	$r2, $r0, 1
	lwcl	$f0, -48($r29)
	lwcl	$f2, -44($r29)
	lwcl	$f4, -40($r29)
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19558	! callcls
	j	.mendoi1.19557	! callcls
.mendoi2.19558:	! callcls
	jr	$r27	! callcls
.mendoi1.19557:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	j	.beq_cont.19556
.beq_else.19555:
	addi	$r2, $r0, 0
.beq_cont.19556:
.beq_cont.19554:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19559
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19559:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_group.3173:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sll	$r6, $r2, 2
	addu	$r1, $r3, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, -1
	bne	$r6, $r7, .beq_else.19560
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19560:
	sll	$r6, $r6, 2
	addu	$r1, $r5, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.19562	! callcls
	j	.mendoi1.19561	! callcls
.mendoi2.19562:	! callcls
	jr	$r27	! callcls
.mendoi1.19561:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19563
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19564
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19564:
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r28, -8($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19566	! callcls
	j	.mendoi1.19565	! callcls
.mendoi2.19566:	! callcls
	jr	$r27	! callcls
.mendoi1.19565:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19567
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19568
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19568:
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r28, -8($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19570	! callcls
	j	.mendoi1.19569	! callcls
.mendoi2.19570:	! callcls
	jr	$r27	! callcls
.mendoi1.19569:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19571
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19572
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19572:
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19574	! callcls
	j	.mendoi1.19573	! callcls
.mendoi2.19574:	! callcls
	jr	$r27	! callcls
.mendoi1.19573:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19575
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19575:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19571:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19567:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.19563:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_matrix.3176:
	lw	$r4, 40($r28)
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
	lw	$r15, 0($r14)
	addi	$r16, $r0, -1
	bne	$r15, $r16, .beq_else.19576
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19576:
	addi	$r16, $r0, 99
	sw	$r8, -4($r29)
	sw	$r9, -8($r29)
	sw	$r13, -12($r29)
	sw	$r14, -16($r29)
	sw	$r3, -20($r29)
	sw	$r28, -24($r29)
	sw	$r2, -28($r29)
	bne	$r15, $r16, .beq_else.19577
	addi	$r2, $r0, 1
	j	.beq_cont.19578
.beq_else.19577:
	sll	$r16, $r15, 2
	addu	$r1, $r10, $r16
	lw	$r10, 0($r1)
	lwcl	$f0, 0($r11)
	lw	$r16, 20($r10)
	lwcl	$f2, 0($r16)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r11)
	lw	$r16, 20($r10)
	lwcl	$f4, 4($r16)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r11)
	lw	$r11, 20($r10)
	lwcl	$f6, 8($r11)
	sub.s	$f4, $f4, $f6
	sll	$r11, $r15, 2
	addu	$r1, $r12, $r11
	lw	$r11, 0($r1)
	lw	$r12, 4($r10)
	addi	$r15, $r0, 1
	sw	$r7, -32($r29)
	bne	$r12, $r15, .beq_else.19579
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	addi	$r4, $r11, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19582	! callcls
	j	.mendoi1.19581	! callcls
.mendoi2.19582:	! callcls
	jr	$r27	! callcls
.mendoi1.19581:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	j	.beq_cont.19580
.beq_else.19579:
	addi	$r4, $r0, 2
	bne	$r12, $r4, .beq_else.19583
	lwcl	$f6, 0($r11)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.19585
	addi	$r4, $r0, 0
	j	.bclt_cont.19586
.bclt_else.19585:
	addi	$r4, $r0, 1
.bclt_cont.19586:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19587
	addi	$r2, $r0, 0
	j	.beq_cont.19588
.beq_else.19587:
	lwcl	$f6, 4($r11)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 8($r11)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r11)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
.beq_cont.19588:
	j	.beq_cont.19584
.beq_else.19583:
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19590	! callcls
	j	.mendoi1.19589	! callcls
.mendoi2.19590:	! callcls
	jr	$r27	! callcls
.mendoi1.19589:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
.beq_cont.19584:
.beq_cont.19580:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19591
	addi	$r2, $r0, 0
	j	.beq_cont.19592
.beq_else.19591:
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f2, $f0
	bclf	.bclt_else.19593
	addi	$r2, $r0, 0
	j	.bclt_cont.19594
.bclt_else.19593:
	addi	$r2, $r0, 1
.bclt_cont.19594:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19595
	addi	$r2, $r0, 0
	j	.beq_cont.19596
.beq_else.19595:
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19597
	addi	$r2, $r0, 0
	j	.beq_cont.19598
.beq_else.19597:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19600	! callcls
	j	.mendoi1.19599	! callcls
.mendoi2.19600:	! callcls
	jr	$r27	! callcls
.mendoi1.19599:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19601
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19603
	addi	$r2, $r0, 0
	j	.beq_cont.19604
.beq_else.19603:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19606	! callcls
	j	.mendoi1.19605	! callcls
.mendoi2.19606:	! callcls
	jr	$r27	! callcls
.mendoi1.19605:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19607
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19609
	addi	$r2, $r0, 0
	j	.beq_cont.19610
.beq_else.19609:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19612	! callcls
	j	.mendoi1.19611	! callcls
.mendoi2.19612:	! callcls
	jr	$r27	! callcls
.mendoi1.19611:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19613
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19616	! callcls
	j	.mendoi1.19615	! callcls
.mendoi2.19616:	! callcls
	jr	$r27	! callcls
.mendoi1.19615:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	j	.beq_cont.19614
.beq_else.19613:
	addi	$r2, $r0, 1
.beq_cont.19614:
.beq_cont.19610:
	j	.beq_cont.19608
.beq_else.19607:
	addi	$r2, $r0, 1
.beq_cont.19608:
.beq_cont.19604:
	j	.beq_cont.19602
.beq_else.19601:
	addi	$r2, $r0, 1
.beq_cont.19602:
.beq_cont.19598:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19617
	addi	$r2, $r0, 0
	j	.beq_cont.19618
.beq_else.19617:
	addi	$r2, $r0, 1
.beq_cont.19618:
.beq_cont.19596:
.beq_cont.19592:
.beq_cont.19578:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19619
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -20($r29)
	lw	$r28, -24($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19619:
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19620
	addi	$r2, $r0, 0
	j	.beq_cont.19621
.beq_else.19620:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19623	! callcls
	j	.mendoi1.19622	! callcls
.mendoi2.19623:	! callcls
	jr	$r27	! callcls
.mendoi1.19622:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19624
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19626
	addi	$r2, $r0, 0
	j	.beq_cont.19627
.beq_else.19626:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19629	! callcls
	j	.mendoi1.19628	! callcls
.mendoi2.19629:	! callcls
	jr	$r27	! callcls
.mendoi1.19628:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19630
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19632
	addi	$r2, $r0, 0
	j	.beq_cont.19633
.beq_else.19632:
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r28, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19635	! callcls
	j	.mendoi1.19634	! callcls
.mendoi2.19635:	! callcls
	jr	$r27	! callcls
.mendoi1.19634:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19636
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r28, -4($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19639	! callcls
	j	.mendoi1.19638	! callcls
.mendoi2.19639:	! callcls
	jr	$r27	! callcls
.mendoi1.19638:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	j	.beq_cont.19637
.beq_else.19636:
	addi	$r2, $r0, 1
.beq_cont.19637:
.beq_cont.19633:
	j	.beq_cont.19631
.beq_else.19630:
	addi	$r2, $r0, 1
.beq_cont.19631:
.beq_cont.19627:
	j	.beq_cont.19625
.beq_else.19624:
	addi	$r2, $r0, 1
.beq_cont.19625:
.beq_cont.19621:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19640
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -20($r29)
	lw	$r28, -24($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19640:
	addi	$r2, $r0, 1
	jr	$r31
.solve_each_element.3179:
	lw	$r5, 44($r28)
	lw	$r6, 40($r28)
	lw	$r7, 36($r28)
	lw	$r8, 32($r28)
	lw	$r9, 28($r28)
	lw	$r10, 24($r28)
	lw	$r11, 20($r28)
	lw	$r12, 16($r28)
	lw	$r13, 12($r28)
	lw	$r14, 8($r28)
	lw	$r15, 4($r28)
	sll	$r16, $r2, 2
	addu	$r1, $r3, $r16
	lw	$r16, 0($r1)
	addi	$r17, $r0, -1
	bne	$r16, $r17, .beq_else.19641
	jr	$r31
.beq_else.19641:
	sll	$r17, $r16, 2
	addu	$r1, $r11, $r17
	lw	$r17, 0($r1)
	lwcl	$f0, 0($r6)
	lw	$r18, 20($r17)
	lwcl	$f2, 0($r18)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r6)
	lw	$r18, 20($r17)
	lwcl	$f4, 4($r18)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r6)
	lw	$r18, 20($r17)
	lwcl	$f6, 8($r18)
	sub.s	$f4, $f4, $f6
	lw	$r18, 4($r17)
	addi	$r19, $r0, 1
	sw	$r12, -4($r29)
	sw	$r14, -8($r29)
	sw	$r13, -12($r29)
	sw	$r15, -16($r29)
	sw	$r6, -20($r29)
	sw	$r5, -24($r29)
	sw	$r10, -28($r29)
	sw	$r4, -32($r29)
	sw	$r3, -36($r29)
	sw	$r28, -40($r29)
	sw	$r2, -44($r29)
	sw	$r11, -48($r29)
	sw	$r16, -52($r29)
	bne	$r18, $r19, .beq_else.19643
	addi	$r7, $r0, 0
	addi	$r8, $r0, 1
	addi	$r18, $r0, 2
	swcl	$f0, -56($r29)
	swcl	$f4, -60($r29)
	swcl	$f2, -64($r29)
	sw	$r17, -68($r29)
	sw	$r9, -72($r29)
	addi	$r6, $r18, 0	! g'_args
	addi	$r5, $r8, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r7, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.19646	! callcls
	j	.mendoi1.19645	! callcls
.mendoi2.19646:	! callcls
	jr	$r27	! callcls
.mendoi1.19645:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19647
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lwcl	$f0, -64($r29)
	lwcl	$f2, -60($r29)
	lwcl	$f4, -56($r29)
	lw	$r2, -68($r29)
	lw	$r3, -32($r29)
	lw	$r28, -72($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.19650	! callcls
	j	.mendoi1.19649	! callcls
.mendoi2.19650:	! callcls
	jr	$r27	! callcls
.mendoi1.19649:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19651
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lwcl	$f0, -60($r29)
	lwcl	$f2, -56($r29)
	lwcl	$f4, -64($r29)
	lw	$r2, -68($r29)
	lw	$r3, -32($r29)
	lw	$r28, -72($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.19654	! callcls
	j	.mendoi1.19653	! callcls
.mendoi2.19654:	! callcls
	jr	$r27	! callcls
.mendoi1.19653:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19655
	addi	$r2, $r0, 0
	j	.beq_cont.19656
.beq_else.19655:
	addi	$r2, $r0, 3
.beq_cont.19656:
	j	.beq_cont.19652
.beq_else.19651:
	addi	$r2, $r0, 2
.beq_cont.19652:
	j	.beq_cont.19648
.beq_else.19647:
	addi	$r2, $r0, 1
.beq_cont.19648:
	j	.beq_cont.19644
.beq_else.19643:
	addi	$r9, $r0, 2
	bne	$r18, $r9, .beq_else.19657
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.19660	! callcls
	j	.mendoi1.19659	! callcls
.mendoi2.19660:	! callcls
	jr	$r27	! callcls
.mendoi1.19659:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.19658
.beq_else.19657:
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.19662	! callcls
	j	.mendoi1.19661	! callcls
.mendoi2.19662:	! callcls
	jr	$r27	! callcls
.mendoi1.19661:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.19658:
.beq_cont.19644:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19663
	lw	$r2, -52($r29)
	sll	$r2, $r2, 2
	lw	$r3, -48($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19664
	jr	$r31
.beq_else.19664:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19663:
	lw	$r3, -28($r29)
	lwcl	$f0, 0($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19666
	addi	$r3, $r0, 0
	j	.bclt_cont.19667
.bclt_else.19666:
	addi	$r3, $r0, 1
.bclt_cont.19667:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19668
	j	.beq_cont.19669
.beq_else.19668:
	lw	$r3, -24($r29)
	lwcl	$f2, 0($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19670
	addi	$r4, $r0, 0
	j	.bclt_cont.19671
.bclt_else.19670:
	addi	$r4, $r0, 1
.bclt_cont.19671:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19672
	j	.beq_cont.19673
.beq_else.19672:
	lfh	$f2, 15395
	lfl	$f2, 55050
	add.s	$f0, $f0, $f2
	lw	$r4, -32($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f2, $f2, $f0
	lw	$r5, -20($r29)
	lwcl	$f4, 0($r5)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r5)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r4)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 8($r5)
	add.s	$f6, $f6, $f8
	lw	$r5, -36($r29)
	lw	$r6, 0($r5)
	addi	$r7, $r0, -1
	sw	$r2, -76($r29)
	swcl	$f6, -80($r29)
	swcl	$f4, -84($r29)
	swcl	$f2, -88($r29)
	swcl	$f0, -92($r29)
	bne	$r6, $r7, .beq_else.19674
	addi	$r2, $r0, 1
	j	.beq_cont.19675
.beq_else.19674:
	sll	$r6, $r6, 2
	lw	$r7, -48($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	addi	$r2, $r6, 0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.is_outside.3159	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19676
	addi	$r2, $r0, 1
	lwcl	$f0, -88($r29)
	lwcl	$f2, -84($r29)
	lwcl	$f4, -80($r29)
	lw	$r3, -36($r29)
	lw	$r28, -16($r29)
	sw	$r31, -96($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -96	! callcls
	jal	.mendoi2.19679	! callcls
	j	.mendoi1.19678	! callcls
.mendoi2.19679:	! callcls
	jr	$r27	! callcls
.mendoi1.19678:	! callcls
	addi	$r29, $r29, 96	! callcls
	lw	$r31, -96($r29)	! callcls
	j	.beq_cont.19677
.beq_else.19676:
	addi	$r2, $r0, 0
.beq_cont.19677:
.beq_cont.19675:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19680
	j	.beq_cont.19681
.beq_else.19680:
	lw	$r2, -24($r29)
	lwcl	$f0, -92($r29)
	swcl	$f0, 0($r2)
	lw	$r2, -12($r29)
	lwcl	$f0, -88($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -84($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -80($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -8($r29)
	lw	$r3, -52($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -76($r29)
	sw	$r3, 0($r2)
.beq_cont.19681:
.beq_cont.19673:
.beq_cont.19669:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -32($r29)
	lw	$r28, -40($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network.3183:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.19682
	jr	$r31
.beq_else.19682:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19685	! callcls
	j	.mendoi1.19684	! callcls
.mendoi2.19685:	! callcls
	jr	$r27	! callcls
.mendoi1.19684:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19686
	jr	$r31
.beq_else.19686:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r7, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19689	! callcls
	j	.mendoi1.19688	! callcls
.mendoi2.19689:	! callcls
	jr	$r27	! callcls
.mendoi1.19688:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19690
	jr	$r31
.beq_else.19690:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r7, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -32($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19693	! callcls
	j	.mendoi1.19692	! callcls
.mendoi2.19693:	! callcls
	jr	$r27	! callcls
.mendoi1.19692:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19694
	jr	$r31
.beq_else.19694:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -36($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19697	! callcls
	j	.mendoi1.19696	! callcls
.mendoi2.19697:	! callcls
	jr	$r27	! callcls
.mendoi1.19696:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix.3187:
	lw	$r5, 44($r28)
	lw	$r6, 40($r28)
	lw	$r7, 36($r28)
	lw	$r8, 32($r28)
	lw	$r9, 28($r28)
	lw	$r10, 24($r28)
	lw	$r11, 20($r28)
	lw	$r12, 16($r28)
	lw	$r13, 12($r28)
	lw	$r14, 8($r28)
	lw	$r15, 4($r28)
	sll	$r16, $r2, 2
	addu	$r1, $r3, $r16
	lw	$r16, 0($r1)
	lw	$r17, 0($r16)
	addi	$r18, $r0, -1
	bne	$r17, $r18, .beq_else.19698
	jr	$r31
.beq_else.19698:
	addi	$r18, $r0, 99
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r10, -12($r29)
	sw	$r6, -16($r29)
	sw	$r11, -20($r29)
	sw	$r12, -24($r29)
	sw	$r4, -28($r29)
	sw	$r13, -32($r29)
	sw	$r15, -36($r29)
	sw	$r3, -40($r29)
	sw	$r2, -44($r29)
	bne	$r17, $r18, .beq_else.19700
	lw	$r7, 4($r16)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.19702
	j	.beq_cont.19703
.beq_else.19702:
	sll	$r7, $r7, 2
	addu	$r1, $r15, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, 0
	sw	$r16, -48($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r13, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19705	! callcls
	j	.mendoi1.19704	! callcls
.mendoi2.19705:	! callcls
	jr	$r27	! callcls
.mendoi1.19704:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19706
	j	.beq_cont.19707
.beq_else.19706:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19709	! callcls
	j	.mendoi1.19708	! callcls
.mendoi2.19709:	! callcls
	jr	$r27	! callcls
.mendoi1.19708:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19710
	j	.beq_cont.19711
.beq_else.19710:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19713	! callcls
	j	.mendoi1.19712	! callcls
.mendoi2.19713:	! callcls
	jr	$r27	! callcls
.mendoi1.19712:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r3, -48($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.19715	! callcls
	j	.mendoi1.19714	! callcls
.mendoi2.19715:	! callcls
	jr	$r27	! callcls
.mendoi1.19714:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.19711:
.beq_cont.19707:
.beq_cont.19703:
	j	.beq_cont.19701
.beq_else.19700:
	sll	$r17, $r17, 2
	addu	$r1, $r14, $r17
	lw	$r14, 0($r1)
	lwcl	$f0, 0($r6)
	lw	$r17, 20($r14)
	lwcl	$f2, 0($r17)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r6)
	lw	$r17, 20($r14)
	lwcl	$f4, 4($r17)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r6)
	lw	$r17, 20($r14)
	lwcl	$f6, 8($r17)
	sub.s	$f4, $f4, $f6
	lw	$r17, 4($r14)
	addi	$r18, $r0, 1
	sw	$r16, -48($r29)
	bne	$r17, $r18, .beq_else.19716
	addi	$r7, $r0, 0
	addi	$r8, $r0, 1
	addi	$r17, $r0, 2
	swcl	$f0, -52($r29)
	swcl	$f4, -56($r29)
	swcl	$f2, -60($r29)
	sw	$r14, -64($r29)
	sw	$r9, -68($r29)
	addi	$r6, $r17, 0	! g'_args
	addi	$r5, $r8, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r7, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19719	! callcls
	j	.mendoi1.19718	! callcls
.mendoi2.19719:	! callcls
	jr	$r27	! callcls
.mendoi1.19718:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19720
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lwcl	$f0, -60($r29)
	lwcl	$f2, -56($r29)
	lwcl	$f4, -52($r29)
	lw	$r2, -64($r29)
	lw	$r3, -28($r29)
	lw	$r28, -68($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19723	! callcls
	j	.mendoi1.19722	! callcls
.mendoi2.19723:	! callcls
	jr	$r27	! callcls
.mendoi1.19722:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19724
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lwcl	$f0, -56($r29)
	lwcl	$f2, -52($r29)
	lwcl	$f4, -60($r29)
	lw	$r2, -64($r29)
	lw	$r3, -28($r29)
	lw	$r28, -68($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19727	! callcls
	j	.mendoi1.19726	! callcls
.mendoi2.19727:	! callcls
	jr	$r27	! callcls
.mendoi1.19726:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19728
	addi	$r2, $r0, 0
	j	.beq_cont.19729
.beq_else.19728:
	addi	$r2, $r0, 3
.beq_cont.19729:
	j	.beq_cont.19725
.beq_else.19724:
	addi	$r2, $r0, 2
.beq_cont.19725:
	j	.beq_cont.19721
.beq_else.19720:
	addi	$r2, $r0, 1
.beq_cont.19721:
	j	.beq_cont.19717
.beq_else.19716:
	addi	$r9, $r0, 2
	bne	$r17, $r9, .beq_else.19730
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19733	! callcls
	j	.mendoi1.19732	! callcls
.mendoi2.19733:	! callcls
	jr	$r27	! callcls
.mendoi1.19732:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	j	.beq_cont.19731
.beq_else.19730:
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19735	! callcls
	j	.mendoi1.19734	! callcls
.mendoi2.19735:	! callcls
	jr	$r27	! callcls
.mendoi1.19734:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.19731:
.beq_cont.19717:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19736
	j	.beq_cont.19737
.beq_else.19736:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -8($r29)
	lwcl	$f2, 0($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19738
	addi	$r4, $r0, 0
	j	.bclt_cont.19739
.bclt_else.19738:
	addi	$r4, $r0, 1
.bclt_cont.19739:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19740
	j	.beq_cont.19741
.beq_else.19740:
	lw	$r4, -48($r29)
	lw	$r5, 4($r4)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19742
	j	.beq_cont.19743
.beq_else.19742:
	sll	$r5, $r5, 2
	lw	$r6, -36($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	addi	$r7, $r0, 0
	lw	$r8, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19745	! callcls
	j	.mendoi1.19744	! callcls
.mendoi2.19745:	! callcls
	jr	$r27	! callcls
.mendoi1.19744:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19746
	j	.beq_cont.19747
.beq_else.19746:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19749	! callcls
	j	.mendoi1.19748	! callcls
.mendoi2.19749:	! callcls
	jr	$r27	! callcls
.mendoi1.19748:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19750
	j	.beq_cont.19751
.beq_else.19750:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19753	! callcls
	j	.mendoi1.19752	! callcls
.mendoi2.19753:	! callcls
	jr	$r27	! callcls
.mendoi1.19752:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r3, -48($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.19755	! callcls
	j	.mendoi1.19754	! callcls
.mendoi2.19755:	! callcls
	jr	$r27	! callcls
.mendoi1.19754:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.19751:
.beq_cont.19747:
.beq_cont.19743:
.beq_cont.19741:
.beq_cont.19737:
.beq_cont.19701:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -40($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, 0($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19756
	jr	$r31
.beq_else.19756:
	addi	$r6, $r0, 99
	sw	$r2, -72($r29)
	bne	$r5, $r6, .beq_else.19758
	lw	$r5, 4($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19760
	j	.beq_cont.19761
.beq_else.19760:
	sll	$r5, $r5, 2
	lw	$r6, -36($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	addi	$r7, $r0, 0
	lw	$r8, -28($r29)
	lw	$r28, -32($r29)
	sw	$r3, -76($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19763	! callcls
	j	.mendoi1.19762	! callcls
.mendoi2.19763:	! callcls
	jr	$r27	! callcls
.mendoi1.19762:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -76($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19764
	j	.beq_cont.19765
.beq_else.19764:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -28($r29)
	lw	$r28, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19767	! callcls
	j	.mendoi1.19766	! callcls
.mendoi2.19767:	! callcls
	jr	$r27	! callcls
.mendoi1.19766:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -76($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19769	! callcls
	j	.mendoi1.19768	! callcls
.mendoi2.19769:	! callcls
	jr	$r27	! callcls
.mendoi1.19768:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
.beq_cont.19765:
.beq_cont.19761:
	j	.beq_cont.19759
.beq_else.19758:
	lw	$r6, -28($r29)
	lw	$r7, -16($r29)
	lw	$r28, -20($r29)
	sw	$r3, -76($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19771	! callcls
	j	.mendoi1.19770	! callcls
.mendoi2.19771:	! callcls
	jr	$r27	! callcls
.mendoi1.19770:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19772
	j	.beq_cont.19773
.beq_else.19772:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19774
	addi	$r2, $r0, 0
	j	.bclt_cont.19775
.bclt_else.19774:
	addi	$r2, $r0, 1
.bclt_cont.19775:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19776
	j	.beq_cont.19777
.beq_else.19776:
	lw	$r2, -76($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19778
	j	.beq_cont.19779
.beq_else.19778:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -28($r29)
	lw	$r28, -32($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19781	! callcls
	j	.mendoi1.19780	! callcls
.mendoi2.19781:	! callcls
	jr	$r27	! callcls
.mendoi1.19780:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -76($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19782
	j	.beq_cont.19783
.beq_else.19782:
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -28($r29)
	lw	$r28, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19785	! callcls
	j	.mendoi1.19784	! callcls
.mendoi2.19785:	! callcls
	jr	$r27	! callcls
.mendoi1.19784:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -76($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19787	! callcls
	j	.mendoi1.19786	! callcls
.mendoi2.19787:	! callcls
	jr	$r27	! callcls
.mendoi1.19786:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
.beq_cont.19783:
.beq_cont.19779:
.beq_cont.19777:
.beq_cont.19773:
.beq_cont.19759:
	lw	$r2, -72($r29)
	addi	$r2, $r2, 1
	lw	$r3, -40($r29)
	lw	$r4, -28($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_each_element_fast.3193:
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
	lw	$r15, 0($r4)
	sll	$r16, $r2, 2
	addu	$r1, $r3, $r16
	lw	$r16, 0($r1)
	addi	$r17, $r0, -1
	bne	$r16, $r17, .beq_else.19788
	jr	$r31
.beq_else.19788:
	sll	$r17, $r16, 2
	addu	$r1, $r10, $r17
	lw	$r17, 0($r1)
	lw	$r18, 40($r17)
	lwcl	$f0, 0($r18)
	lwcl	$f2, 4($r18)
	lwcl	$f4, 8($r18)
	lw	$r19, 4($r4)
	sll	$r20, $r16, 2
	addu	$r1, $r19, $r20
	lw	$r19, 0($r1)
	lw	$r20, 4($r17)
	addi	$r21, $r0, 1
	sw	$r11, -4($r29)
	sw	$r13, -8($r29)
	sw	$r12, -12($r29)
	sw	$r14, -16($r29)
	sw	$r6, -20($r29)
	sw	$r15, -24($r29)
	sw	$r5, -28($r29)
	sw	$r9, -32($r29)
	sw	$r4, -36($r29)
	sw	$r3, -40($r29)
	sw	$r28, -44($r29)
	sw	$r2, -48($r29)
	sw	$r10, -52($r29)
	sw	$r16, -56($r29)
	bne	$r20, $r21, .beq_else.19790
	lw	$r7, 0($r4)
	addi	$r4, $r19, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.19793	! callcls
	j	.mendoi1.19792	! callcls
.mendoi2.19793:	! callcls
	jr	$r27	! callcls
.mendoi1.19792:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	j	.beq_cont.19791
.beq_else.19790:
	addi	$r8, $r0, 2
	bne	$r20, $r8, .beq_else.19794
	lwcl	$f0, 0($r19)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19796
	addi	$r7, $r0, 0
	j	.bclt_cont.19797
.bclt_else.19796:
	addi	$r7, $r0, 1
.bclt_cont.19797:
	addi	$r8, $r0, 0
	bne	$r7, $r8, .beq_else.19798
	addi	$r2, $r0, 0
	j	.beq_cont.19799
.beq_else.19798:
	lwcl	$f0, 0($r19)
	lwcl	$f2, 12($r18)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r9)
	addi	$r2, $r0, 1
.beq_cont.19799:
	j	.beq_cont.19795
.beq_else.19794:
	addi	$r4, $r18, 0	! g'_args
	addi	$r3, $r19, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.19801	! callcls
	j	.mendoi1.19800	! callcls
.mendoi2.19801:	! callcls
	jr	$r27	! callcls
.mendoi1.19800:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.19795:
.beq_cont.19791:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19802
	lw	$r2, -56($r29)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19803
	jr	$r31
.beq_else.19803:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r28, -44($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.19802:
	lw	$r3, -32($r29)
	lwcl	$f0, 0($r3)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19805
	addi	$r3, $r0, 0
	j	.bclt_cont.19806
.bclt_else.19805:
	addi	$r3, $r0, 1
.bclt_cont.19806:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19807
	j	.beq_cont.19808
.beq_else.19807:
	lw	$r3, -28($r29)
	lwcl	$f2, 0($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19809
	addi	$r4, $r0, 0
	j	.bclt_cont.19810
.bclt_else.19809:
	addi	$r4, $r0, 1
.bclt_cont.19810:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19811
	j	.beq_cont.19812
.beq_else.19811:
	lfh	$f2, 15395
	lfl	$f2, 55050
	add.s	$f0, $f0, $f2
	lw	$r4, -24($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f2, $f2, $f0
	lw	$r5, -20($r29)
	lwcl	$f4, 0($r5)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r5)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r4)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 8($r5)
	add.s	$f6, $f6, $f8
	lw	$r4, -40($r29)
	lw	$r5, 0($r4)
	addi	$r6, $r0, -1
	sw	$r2, -60($r29)
	swcl	$f6, -64($r29)
	swcl	$f4, -68($r29)
	swcl	$f2, -72($r29)
	swcl	$f0, -76($r29)
	bne	$r5, $r6, .beq_else.19813
	addi	$r2, $r0, 1
	j	.beq_cont.19814
.beq_else.19813:
	sll	$r5, $r5, 2
	lw	$r6, -52($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	addi	$r2, $r5, 0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f6	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.is_outside.3159	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19815
	addi	$r2, $r0, 1
	lwcl	$f0, -72($r29)
	lwcl	$f2, -68($r29)
	lwcl	$f4, -64($r29)
	lw	$r3, -40($r29)
	lw	$r28, -16($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.19818	! callcls
	j	.mendoi1.19817	! callcls
.mendoi2.19818:	! callcls
	jr	$r27	! callcls
.mendoi1.19817:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	j	.beq_cont.19816
.beq_else.19815:
	addi	$r2, $r0, 0
.beq_cont.19816:
.beq_cont.19814:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19819
	j	.beq_cont.19820
.beq_else.19819:
	lw	$r2, -28($r29)
	lwcl	$f0, -76($r29)
	swcl	$f0, 0($r2)
	lw	$r2, -12($r29)
	lwcl	$f0, -72($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -68($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -64($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -8($r29)
	lw	$r3, -56($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -60($r29)
	sw	$r3, 0($r2)
.beq_cont.19820:
.beq_cont.19812:
.beq_cont.19808:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	lw	$r28, -44($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network_fast.3197:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.19821
	jr	$r31
.beq_else.19821:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.19824	! callcls
	j	.mendoi1.19823	! callcls
.mendoi2.19824:	! callcls
	jr	$r27	! callcls
.mendoi1.19823:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19825
	jr	$r31
.beq_else.19825:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r7, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.19828	! callcls
	j	.mendoi1.19827	! callcls
.mendoi2.19828:	! callcls
	jr	$r27	! callcls
.mendoi1.19827:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19829
	jr	$r31
.beq_else.19829:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r6, $r0, 0
	lw	$r7, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -32($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19832	! callcls
	j	.mendoi1.19831	! callcls
.mendoi2.19832:	! callcls
	jr	$r27	! callcls
.mendoi1.19831:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, -1
	bne	$r3, $r5, .beq_else.19833
	jr	$r31
.beq_else.19833:
	sll	$r3, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -36($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19836	! callcls
	j	.mendoi1.19835	! callcls
.mendoi2.19836:	! callcls
	jr	$r27	! callcls
.mendoi1.19835:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix_fast.3201:
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
	lw	$r15, 0($r14)
	addi	$r16, $r0, -1
	bne	$r15, $r16, .beq_else.19837
	jr	$r31
.beq_else.19837:
	addi	$r16, $r0, 99
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r9, -12($r29)
	sw	$r8, -16($r29)
	sw	$r10, -20($r29)
	sw	$r4, -24($r29)
	sw	$r11, -28($r29)
	sw	$r13, -32($r29)
	sw	$r3, -36($r29)
	sw	$r2, -40($r29)
	bne	$r15, $r16, .beq_else.19839
	lw	$r6, 4($r14)
	addi	$r7, $r0, -1
	bne	$r6, $r7, .beq_else.19841
	j	.beq_cont.19842
.beq_else.19841:
	sll	$r6, $r6, 2
	addu	$r1, $r13, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, 0
	sw	$r14, -44($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r11, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19844	! callcls
	j	.mendoi1.19843	! callcls
.mendoi2.19844:	! callcls
	jr	$r27	! callcls
.mendoi1.19843:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19845
	j	.beq_cont.19846
.beq_else.19845:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19848	! callcls
	j	.mendoi1.19847	! callcls
.mendoi2.19848:	! callcls
	jr	$r27	! callcls
.mendoi1.19847:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19849
	j	.beq_cont.19850
.beq_else.19849:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19852	! callcls
	j	.mendoi1.19851	! callcls
.mendoi2.19852:	! callcls
	jr	$r27	! callcls
.mendoi1.19851:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r3, -44($r29)
	lw	$r4, -24($r29)
	lw	$r28, -20($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19854	! callcls
	j	.mendoi1.19853	! callcls
.mendoi2.19854:	! callcls
	jr	$r27	! callcls
.mendoi1.19853:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.19850:
.beq_cont.19846:
.beq_cont.19842:
	j	.beq_cont.19840
.beq_else.19839:
	sll	$r16, $r15, 2
	addu	$r1, $r12, $r16
	lw	$r12, 0($r1)
	lw	$r16, 40($r12)
	lwcl	$f0, 0($r16)
	lwcl	$f2, 4($r16)
	lwcl	$f4, 8($r16)
	lw	$r17, 4($r4)
	sll	$r15, $r15, 2
	addu	$r1, $r17, $r15
	lw	$r15, 0($r1)
	lw	$r17, 4($r12)
	addi	$r18, $r0, 1
	sw	$r14, -44($r29)
	bne	$r17, $r18, .beq_else.19855
	lw	$r6, 0($r4)
	addi	$r4, $r15, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19858	! callcls
	j	.mendoi1.19857	! callcls
.mendoi2.19858:	! callcls
	jr	$r27	! callcls
.mendoi1.19857:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	j	.beq_cont.19856
.beq_else.19855:
	addi	$r7, $r0, 2
	bne	$r17, $r7, .beq_else.19859
	lwcl	$f0, 0($r15)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19861
	addi	$r6, $r0, 0
	j	.bclt_cont.19862
.bclt_else.19861:
	addi	$r6, $r0, 1
.bclt_cont.19862:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.19863
	addi	$r2, $r0, 0
	j	.beq_cont.19864
.beq_else.19863:
	lwcl	$f0, 0($r15)
	lwcl	$f2, 12($r16)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r9)
	addi	$r2, $r0, 1
.beq_cont.19864:
	j	.beq_cont.19860
.beq_else.19859:
	addi	$r4, $r16, 0	! g'_args
	addi	$r3, $r15, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19866	! callcls
	j	.mendoi1.19865	! callcls
.mendoi2.19866:	! callcls
	jr	$r27	! callcls
.mendoi1.19865:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.19860:
.beq_cont.19856:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19867
	j	.beq_cont.19868
.beq_else.19867:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -8($r29)
	lwcl	$f2, 0($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19869
	addi	$r4, $r0, 0
	j	.bclt_cont.19870
.bclt_else.19869:
	addi	$r4, $r0, 1
.bclt_cont.19870:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19871
	j	.beq_cont.19872
.beq_else.19871:
	lw	$r4, -44($r29)
	lw	$r5, 4($r4)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19873
	j	.beq_cont.19874
.beq_else.19873:
	sll	$r5, $r5, 2
	lw	$r6, -32($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	addi	$r7, $r0, 0
	lw	$r8, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19876	! callcls
	j	.mendoi1.19875	! callcls
.mendoi2.19876:	! callcls
	jr	$r27	! callcls
.mendoi1.19875:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19877
	j	.beq_cont.19878
.beq_else.19877:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19880	! callcls
	j	.mendoi1.19879	! callcls
.mendoi2.19880:	! callcls
	jr	$r27	! callcls
.mendoi1.19879:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19881
	j	.beq_cont.19882
.beq_else.19881:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19884	! callcls
	j	.mendoi1.19883	! callcls
.mendoi2.19884:	! callcls
	jr	$r27	! callcls
.mendoi1.19883:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r2, $r0, 4
	lw	$r3, -44($r29)
	lw	$r4, -24($r29)
	lw	$r28, -20($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.19886	! callcls
	j	.mendoi1.19885	! callcls
.mendoi2.19886:	! callcls
	jr	$r27	! callcls
.mendoi1.19885:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.19882:
.beq_cont.19878:
.beq_cont.19874:
.beq_cont.19872:
.beq_cont.19868:
.beq_cont.19840:
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, 0($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19887
	jr	$r31
.beq_else.19887:
	addi	$r6, $r0, 99
	sw	$r2, -48($r29)
	bne	$r5, $r6, .beq_else.19889
	lw	$r5, 4($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19891
	j	.beq_cont.19892
.beq_else.19891:
	sll	$r5, $r5, 2
	lw	$r6, -32($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	addi	$r7, $r0, 0
	lw	$r8, -24($r29)
	lw	$r28, -28($r29)
	sw	$r3, -52($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19894	! callcls
	j	.mendoi1.19893	! callcls
.mendoi2.19894:	! callcls
	jr	$r27	! callcls
.mendoi1.19893:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19895
	j	.beq_cont.19896
.beq_else.19895:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	lw	$r28, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19898	! callcls
	j	.mendoi1.19897	! callcls
.mendoi2.19898:	! callcls
	jr	$r27	! callcls
.mendoi1.19897:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -52($r29)
	lw	$r4, -24($r29)
	lw	$r28, -20($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19900	! callcls
	j	.mendoi1.19899	! callcls
.mendoi2.19900:	! callcls
	jr	$r27	! callcls
.mendoi1.19899:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.19896:
.beq_cont.19892:
	j	.beq_cont.19890
.beq_else.19889:
	lw	$r6, -24($r29)
	lw	$r28, -16($r29)
	sw	$r3, -52($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19902	! callcls
	j	.mendoi1.19901	! callcls
.mendoi2.19902:	! callcls
	jr	$r27	! callcls
.mendoi1.19901:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19903
	j	.beq_cont.19904
.beq_else.19903:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19905
	addi	$r2, $r0, 0
	j	.bclt_cont.19906
.bclt_else.19905:
	addi	$r2, $r0, 1
.bclt_cont.19906:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19907
	j	.beq_cont.19908
.beq_else.19907:
	lw	$r2, -52($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19909
	j	.beq_cont.19910
.beq_else.19909:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r5, $r0, 0
	lw	$r6, -24($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19912	! callcls
	j	.mendoi1.19911	! callcls
.mendoi2.19912:	! callcls
	jr	$r27	! callcls
.mendoi1.19911:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19913
	j	.beq_cont.19914
.beq_else.19913:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -24($r29)
	lw	$r28, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19916	! callcls
	j	.mendoi1.19915	! callcls
.mendoi2.19916:	! callcls
	jr	$r27	! callcls
.mendoi1.19915:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -52($r29)
	lw	$r4, -24($r29)
	lw	$r28, -20($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.19918	! callcls
	j	.mendoi1.19917	! callcls
.mendoi2.19918:	! callcls
	jr	$r27	! callcls
.mendoi1.19917:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.19914:
.beq_cont.19910:
.beq_cont.19908:
.beq_cont.19904:
.beq_cont.19890:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.judge_intersection_fast.3205:
	lw	$r3, 32($r28)
	lw	$r4, 28($r28)
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	lw	$r9, 0($r9)
	lw	$r11, 0($r9)
	lw	$r12, 0($r11)
	addi	$r13, $r0, -1
	sw	$r4, -4($r29)
	bne	$r12, $r13, .beq_else.19919
	j	.beq_cont.19920
.beq_else.19919:
	addi	$r13, $r0, 99
	sw	$r2, -8($r29)
	sw	$r9, -12($r29)
	sw	$r3, -16($r29)
	bne	$r12, $r13, .beq_else.19921
	lw	$r5, 4($r11)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.19923
	j	.beq_cont.19924
.beq_else.19923:
	sll	$r5, $r5, 2
	addu	$r1, $r10, $r5
	lw	$r5, 0($r1)
	addi	$r6, $r0, 0
	sw	$r7, -20($r29)
	sw	$r8, -24($r29)
	sw	$r10, -28($r29)
	sw	$r11, -32($r29)
	addi	$r4, $r2, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19926	! callcls
	j	.mendoi1.19925	! callcls
.mendoi2.19926:	! callcls
	jr	$r27	! callcls
.mendoi1.19925:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19927
	j	.beq_cont.19928
.beq_else.19927:
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -8($r29)
	lw	$r28, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19930	! callcls
	j	.mendoi1.19929	! callcls
.mendoi2.19930:	! callcls
	jr	$r27	! callcls
.mendoi1.19929:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	lw	$r4, -8($r29)
	lw	$r28, -20($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.19932	! callcls
	j	.mendoi1.19931	! callcls
.mendoi2.19932:	! callcls
	jr	$r27	! callcls
.mendoi1.19931:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
.beq_cont.19928:
.beq_cont.19924:
	j	.beq_cont.19922
.beq_else.19921:
	sw	$r7, -20($r29)
	sw	$r8, -24($r29)
	sw	$r10, -28($r29)
	sw	$r11, -32($r29)
	sw	$r6, -36($r29)
	addi	$r3, $r2, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19934	! callcls
	j	.mendoi1.19933	! callcls
.mendoi2.19934:	! callcls
	jr	$r27	! callcls
.mendoi1.19933:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19935
	j	.beq_cont.19936
.beq_else.19935:
	lw	$r2, -36($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -4($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.19937
	addi	$r3, $r0, 0
	j	.bclt_cont.19938
.bclt_else.19937:
	addi	$r3, $r0, 1
.bclt_cont.19938:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.19939
	j	.beq_cont.19940
.beq_else.19939:
	lw	$r3, -32($r29)
	lw	$r4, 4($r3)
	addi	$r5, $r0, -1
	bne	$r4, $r5, .beq_else.19941
	j	.beq_cont.19942
.beq_else.19941:
	sll	$r4, $r4, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	addi	$r6, $r0, 0
	lw	$r7, -8($r29)
	lw	$r28, -24($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	addi	$r4, $r7, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19944	! callcls
	j	.mendoi1.19943	! callcls
.mendoi2.19944:	! callcls
	jr	$r27	! callcls
.mendoi1.19943:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, .beq_else.19945
	j	.beq_cont.19946
.beq_else.19945:
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r5, -8($r29)
	lw	$r28, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19948	! callcls
	j	.mendoi1.19947	! callcls
.mendoi2.19948:	! callcls
	jr	$r27	! callcls
.mendoi1.19947:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	lw	$r4, -8($r29)
	lw	$r28, -20($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19950	! callcls
	j	.mendoi1.19949	! callcls
.mendoi2.19950:	! callcls
	jr	$r27	! callcls
.mendoi1.19949:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.19946:
.beq_cont.19942:
.beq_cont.19940:
.beq_cont.19936:
.beq_cont.19922:
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r28, -16($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.19952	! callcls
	j	.mendoi1.19951	! callcls
.mendoi2.19952:	! callcls
	jr	$r27	! callcls
.mendoi1.19951:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.19920:
	lw	$r2, -4($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.19953
	addi	$r2, $r0, 0
	j	.bclt_cont.19954
.bclt_else.19953:
	addi	$r2, $r0, 1
.bclt_cont.19954:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19955
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.19955:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.19956
	addi	$r2, $r0, 0
	jr	$r31
.bclt_else.19956:
	addi	$r2, $r0, 1
	jr	$r31
.get_nvector_second.3211:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	lwcl	$f0, 0($r4)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lw	$r5, 20($r2)
	lwcl	$f4, 4($r5)
	sub.s	$f2, $f2, $f4
	lwcl	$f4, 8($r4)
	lw	$r4, 20($r2)
	lwcl	$f6, 8($r4)
	sub.s	$f4, $f4, $f6
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f6, $f0, $f6
	lw	$r4, 16($r2)
	lwcl	$f8, 4($r4)
	mul.s	$f8, $f2, $f8
	lw	$r4, 16($r2)
	lwcl	$f10, 8($r4)
	mul.s	$f10, $f4, $f10
	lw	$r4, 12($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.19957
	swcl	$f6, 0($r3)
	swcl	$f8, 4($r3)
	swcl	$f10, 8($r3)
	j	.beq_cont.19958
.beq_else.19957:
	lw	$r4, 36($r2)
	lwcl	$f12, 8($r4)
	mul.s	$f12, $f2, $f12
	lw	$r4, 36($r2)
	lwcl	$f14, 4($r4)
	mul.s	$f14, $f4, $f14
	add.s	$f12, $f12, $f14
	lfh	$f14, 16128
	lfl	$f14, 0
	mul.s	$f12, $f12, $f14
	add.s	$f6, $f6, $f12
	swcl	$f6, 0($r3)
	lw	$r4, 36($r2)
	lwcl	$f6, 8($r4)
	mul.s	$f6, $f0, $f6
	lw	$r4, 36($r2)
	lwcl	$f12, 0($r4)
	mul.s	$f4, $f4, $f12
	add.s	$f4, $f6, $f4
	lfh	$f6, 16128
	lfl	$f6, 0
	mul.s	$f4, $f4, $f6
	add.s	$f4, $f8, $f4
	swcl	$f4, 4($r3)
	lw	$r4, 36($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f0, $f0, $f4
	lw	$r4, 36($r2)
	lwcl	$f4, 0($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f10, $f0
	swcl	$f0, 8($r3)
.beq_cont.19958:
	lw	$r2, 24($r2)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.vecunit_sgn.2919	! calldir-tail
.get_nvector.3213:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r28, 4($r28)
	lw	$r6, 4($r2)
	addi	$r7, $r0, 1
	bne	$r6, $r7, .beq_else.19959
	lw	$r2, 0($r5)
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 0($r4)
	swcl	$f0, 4($r4)
	swcl	$f0, 8($r4)
	addi	$r5, $r2, -1
	addi	$r2, $r2, -1
	sll	$r2, $r2, 2
	addu	$r1, $r3, $r2
	lwcl	$f0, 0($r1)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.19960
	addi	$r2, $r0, 1
	j	.bclt_cont.19961
.bclt_else.19960:
	addi	$r2, $r0, 0
.bclt_cont.19961:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19962
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.19964
	addi	$r2, $r0, 0
	j	.bclt_cont.19965
.bclt_else.19964:
	addi	$r2, $r0, 1
.bclt_cont.19965:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19966
	lfh	$f0, 49024
	lfl	$f0, 0
	j	.beq_cont.19967
.beq_else.19966:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.19967:
	j	.beq_cont.19963
.beq_else.19962:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.19963:
	fneg	$f0, $f0
	sll	$r2, $r5, 2
	addu	$r1, $r4, $r2
	swcl	$f0, 0($r1)
	jr	$r31
.beq_else.19959:
	addi	$r3, $r0, 2
	bne	$r6, $r3, .beq_else.19969
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
.beq_else.19969:
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.utexture.3216:
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
	addi	$r6, $r0, 1
	bne	$r5, $r6, .beq_else.19971
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lfh	$f2, 15692
	lfl	$f2, 52429
	mul.s	$f2, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lfh	$f2, 16800
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16672
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19972
	addi	$r2, $r0, 0
	j	.bclt_cont.19973
.bclt_else.19972:
	addi	$r2, $r0, 1
.bclt_cont.19973:
	lw	$r3, -12($r29)
	lwcl	$f0, 8($r3)
	lw	$r3, -8($r29)
	lw	$r3, 20($r3)
	lwcl	$f2, 8($r3)
	sub.s	$f0, $f0, $f2
	lfh	$f2, 15692
	lfl	$f2, 52429
	mul.s	$f2, $f0, $f2
	sw	$r2, -20($r29)
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
	c.le.s	$f2, $f0
	bclf	.bclt_else.19974
	addi	$r2, $r0, 0
	j	.bclt_cont.19975
.bclt_else.19974:
	addi	$r2, $r0, 1
.bclt_cont.19975:
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	bne	$r4, $r3, .beq_else.19976
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19978
	lfh	$f0, 17279
	lfl	$f0, 0
	j	.beq_cont.19979
.beq_else.19978:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.19979:
	j	.beq_cont.19977
.beq_else.19976:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.19980
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.19981
.beq_else.19980:
	lfh	$f0, 17279
	lfl	$f0, 0
.beq_cont.19981:
.beq_cont.19977:
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.19971:
	addi	$r6, $r0, 2
	bne	$r5, $r6, .beq_else.19983
	lwcl	$f0, 4($r3)
	lfh	$f2, 16000
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	mul.s	$f0, $f0, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f2, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f2, 0($r2)
	lfh	$f2, 17279
	lfl	$f2, 0
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f2, $f0
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.19983:
	addi	$r6, $r0, 3
	bne	$r5, $r6, .beq_else.19985
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lw	$r2, 20($r2)
	lwcl	$f4, 8($r2)
	sub.s	$f2, $f2, $f4
	mul.s	$f0, $f0, $f0
	mul.s	$f2, $f2, $f2
	add.s	$f0, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 16672
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lwcl	$f2, -28($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	mul.s	$f0, $f0, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f2, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f2, 4($r2)
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f2, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.19985:
	addi	$r6, $r0, 4
	bne	$r5, $r6, .beq_else.19987
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lw	$r5, 16($r2)
	lwcl	$f2, 0($r5)
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 8($r2)
	lw	$r3, -8($r29)
	lw	$r4, 20($r3)
	lwcl	$f4, 8($r4)
	sub.s	$f2, $f2, $f4
	lw	$r4, 16($r3)
	lwcl	$f4, 8($r4)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -36($r29)
	mul.s	$f4, $f2, $f2
	mul.s	$f6, $f0, $f0
	add.s	$f4, $f4, $f6
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f2
	bclf	.bclt_else.19988
	fmove	$f6, $f2
	j	.bclt_cont.19989
.bclt_else.19988:
	fneg	$f6, $f2
.bclt_cont.19989:
	lfh	$f8, 14545
	lfl	$f8, 46871
	c.le.s	$f8, $f6
	bclf	.bclt_else.19990
	addi	$r2, $r0, 0
	j	.bclt_cont.19991
.bclt_else.19990:
	addi	$r2, $r0, 1
.bclt_cont.19991:
	addi	$r3, $r0, 0
	swcl	$f4, -44($r29)
	bne	$r2, $r3, .beq_else.19992
	div.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.19994
	j	.bclt_cont.19995
.bclt_else.19994:
	fneg	$f0, $f0
.bclt_cont.19995:
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.atan.2806	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.19993
.beq_else.19992:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.19993:
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -12($r29)
	lwcl	$f2, 4($r2)
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lwcl	$f4, 4($r3)
	sub.s	$f2, $f2, $f4
	lw	$r2, 16($r2)
	lwcl	$f4, 4($r2)
	swcl	$f0, -52($r29)
	swcl	$f2, -56($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f2, -56($r29)
	mul.s	$f0, $f2, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	lwcl	$f4, -44($r29)
	c.le.s	$f2, $f4
	bclf	.bclt_else.19996
	fmove	$f2, $f4
	j	.bclt_cont.19997
.bclt_else.19996:
	fneg	$f2, $f4
.bclt_cont.19997:
	lfh	$f6, 14545
	lfl	$f6, 46871
	c.le.s	$f6, $f2
	bclf	.bclt_else.19998
	addi	$r2, $r0, 0
	j	.bclt_cont.19999
.bclt_else.19998:
	addi	$r2, $r0, 1
.bclt_cont.19999:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20000
	div.s	$f0, $f0, $f4
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20002
	j	.bclt_cont.20003
.bclt_else.20002:
	fneg	$f0, $f0
.bclt_cont.20003:
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.atan.2806	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.20001
.beq_else.20000:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.20001:
	swcl	$f0, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -60($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 15897
	lfl	$f2, 39322
	lfh	$f4, 16128
	lfl	$f4, 0
	lwcl	$f6, -52($r29)
	sub.s	$f4, $f4, $f6
	mul.s	$f4, $f4, $f4
	sub.s	$f2, $f2, $f4
	lfh	$f4, 16128
	lfl	$f4, 0
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f2, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20004
	addi	$r2, $r0, 0
	j	.bclt_cont.20005
.bclt_else.20004:
	addi	$r2, $r0, 1
.bclt_cont.20005:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20006
	j	.beq_cont.20007
.beq_else.20006:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.20007:
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f2, $f0
	lfh	$f2, 16025
	lfl	$f2, 39322
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.19987:
	jr	$r31
.trace_reflections.3223:
	lw	$r4, 40($r28)
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
	bgt	$r14, $r2, .ble_else.20010
	sll	$r14, $r2, 2
	addu	$r1, $r9, $r14
	lw	$r9, 0($r1)
	lw	$r14, 4($r9)
	lfh	$f4, 20078
	lfl	$f4, 27432
	swcl	$f4, 0($r5)
	addi	$r15, $r0, 0
	lw	$r16, 0($r10)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r6, -16($r29)
	sw	$r8, -20($r29)
	sw	$r3, -24($r29)
	swcl	$f0, -28($r29)
	sw	$r11, -32($r29)
	sw	$r14, -36($r29)
	sw	$r7, -40($r29)
	sw	$r10, -44($r29)
	sw	$r9, -48($r29)
	sw	$r12, -52($r29)
	sw	$r13, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r16, 0	! g'_args
	addi	$r2, $r15, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r14, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20012	! callcls
	j	.mendoi1.20011	! callcls
.mendoi2.20012:	! callcls
	jr	$r27	! callcls
.mendoi1.20011:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.20013
	addi	$r2, $r0, 0
	j	.bclt_cont.20014
.bclt_else.20013:
	addi	$r2, $r0, 1
.bclt_cont.20014:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20015
	addi	$r2, $r0, 0
	j	.beq_cont.20016
.beq_else.20015:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.20017
	addi	$r2, $r0, 0
	j	.bclt_cont.20018
.bclt_else.20017:
	addi	$r2, $r0, 1
.bclt_cont.20018:
.beq_cont.20016:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20019
	j	.beq_cont.20020
.beq_else.20019:
	lw	$r2, -56($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -48($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, .beq_else.20021
	addi	$r2, $r0, 0
	lw	$r4, -44($r29)
	lw	$r4, 0($r4)
	lw	$r28, -40($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20024	! callcls
	j	.mendoi1.20023	! callcls
.mendoi2.20024:	! callcls
	jr	$r27	! callcls
.mendoi1.20023:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20025
	lw	$r2, -36($r29)
	lw	$r3, 0($r2)
	lw	$r4, -32($r29)
	lwcl	$f0, 0($r4)
	lwcl	$f2, 0($r3)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r4)
	lwcl	$f4, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lw	$r3, -48($r29)
	lwcl	$f2, 8($r3)
	lwcl	$f4, -28($r29)
	mul.s	$f6, $f2, $f4
	mul.s	$f0, $f6, $f0
	lw	$r2, 0($r2)
	lw	$r3, -24($r29)
	lwcl	$f6, 0($r3)
	lwcl	$f8, 0($r2)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r3)
	lwcl	$f10, 4($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r3)
	lwcl	$f10, 8($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f2, $f2, $f6
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f0, $f6
	bclf	.bclt_else.20027
	addi	$r2, $r0, 0
	j	.bclt_cont.20028
.bclt_else.20027:
	addi	$r2, $r0, 1
.bclt_cont.20028:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.20029
	j	.beq_cont.20030
.beq_else.20029:
	lw	$r2, -20($r29)
	lwcl	$f6, 0($r2)
	lw	$r4, -16($r29)
	lwcl	$f8, 0($r4)
	mul.s	$f8, $f0, $f8
	add.s	$f6, $f6, $f8
	swcl	$f6, 0($r2)
	lwcl	$f6, 4($r2)
	lwcl	$f8, 4($r4)
	mul.s	$f8, $f0, $f8
	add.s	$f6, $f6, $f8
	swcl	$f6, 4($r2)
	lwcl	$f6, 8($r2)
	lwcl	$f8, 8($r4)
	mul.s	$f0, $f0, $f8
	add.s	$f0, $f6, $f0
	swcl	$f0, 8($r2)
.beq_cont.20030:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20031
	addi	$r2, $r0, 0
	j	.bclt_cont.20032
.bclt_else.20031:
	addi	$r2, $r0, 1
.bclt_cont.20032:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.20033
	j	.beq_cont.20034
.beq_else.20033:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -12($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -20($r29)
	lwcl	$f6, 0($r2)
	add.s	$f6, $f6, $f0
	swcl	$f6, 0($r2)
	lwcl	$f6, 4($r2)
	add.s	$f6, $f6, $f0
	swcl	$f6, 4($r2)
	lwcl	$f6, 8($r2)
	add.s	$f0, $f6, $f0
	swcl	$f0, 8($r2)
.beq_cont.20034:
	j	.beq_cont.20026
.beq_else.20025:
.beq_cont.20026:
	j	.beq_cont.20022
.beq_else.20021:
.beq_cont.20022:
.beq_cont.20020:
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lwcl	$f0, -28($r29)
	lwcl	$f2, -12($r29)
	lw	$r3, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20010:
	jr	$r31
.trace_ray.3228:
	lw	$r5, 84($r28)
	lw	$r6, 80($r28)
	lw	$r7, 76($r28)
	lw	$r8, 72($r28)
	lw	$r9, 68($r28)
	lw	$r10, 64($r28)
	lw	$r11, 60($r28)
	lw	$r12, 56($r28)
	lw	$r13, 52($r28)
	lw	$r14, 48($r28)
	lw	$r15, 44($r28)
	lw	$r16, 40($r28)
	lw	$r17, 36($r28)
	lw	$r18, 32($r28)
	lw	$r19, 28($r28)
	lw	$r20, 24($r28)
	lw	$r21, 20($r28)
	lw	$r22, 16($r28)
	lw	$r23, 12($r28)
	lw	$r24, 8($r28)
	lw	$r25, 4($r28)
	addi	$r26, $r0, 4
	bgt	$r2, $r26, .ble_else.20036
	lw	$r26, 8($r4)
	lfh	$f4, 20078
	lfl	$f4, 27432
	swcl	$f4, 0($r8)
	addi	$r27, $r0, 0
	sw	$r28, -4($r29)
	lw	$r28, 0($r15)
	swcl	$f2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r18, -16($r29)
	sw	$r13, -20($r29)
	sw	$r19, -24($r29)
	sw	$r10, -28($r29)
	sw	$r12, -32($r29)
	sw	$r15, -36($r29)
	sw	$r9, -40($r29)
	sw	$r4, -44($r29)
	sw	$r5, -48($r29)
	sw	$r11, -52($r29)
	sw	$r22, -56($r29)
	sw	$r24, -60($r29)
	sw	$r17, -64($r29)
	sw	$r21, -68($r29)
	sw	$r16, -72($r29)
	sw	$r23, -76($r29)
	sw	$r14, -80($r29)
	sw	$r25, -84($r29)
	swcl	$f0, -88($r29)
	sw	$r20, -92($r29)
	sw	$r3, -96($r29)
	sw	$r26, -100($r29)
	sw	$r2, -104($r29)
	sw	$r8, -108($r29)
	addi	$r4, $r3, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	addi	$r3, $r28, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -112($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -112	! callcls
	jal	.mendoi2.20038	! callcls
	j	.mendoi1.20037	! callcls
.mendoi2.20038:	! callcls
	jr	$r27	! callcls
.mendoi1.20037:	! callcls
	addi	$r29, $r29, 112	! callcls
	lw	$r31, -112($r29)	! callcls
	lw	$r2, -108($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.20039
	addi	$r3, $r0, 0
	j	.bclt_cont.20040
.bclt_else.20039:
	addi	$r3, $r0, 1
.bclt_cont.20040:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20041
	addi	$r3, $r0, 0
	j	.beq_cont.20042
.beq_else.20041:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.20043
	addi	$r3, $r0, 0
	j	.bclt_cont.20044
.bclt_else.20043:
	addi	$r3, $r0, 1
.bclt_cont.20044:
.beq_cont.20042:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20045
	addi	$r2, $r0, -1
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r0, 0
	bne	$r3, $r2, .beq_else.20046
	jr	$r31
.beq_else.20046:
	lw	$r2, -96($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -92($r29)
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
	fneg	$f0, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.20048
	addi	$r2, $r0, 0
	j	.bclt_cont.20049
.bclt_else.20048:
	addi	$r2, $r0, 1
.bclt_cont.20049:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20050
	jr	$r31
.beq_else.20050:
	mul.s	$f2, $f0, $f0
	mul.s	$f0, $f2, $f0
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
.beq_else.20045:
	lw	$r3, -76($r29)
	lw	$r3, 0($r3)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, 8($r4)
	lw	$r6, 28($r4)
	lwcl	$f0, 0($r6)
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f0, $f2
	lw	$r6, 4($r4)
	addi	$r7, $r0, 1
	sw	$r5, -112($r29)
	swcl	$f0, -116($r29)
	sw	$r3, -120($r29)
	sw	$r4, -124($r29)
	bne	$r6, $r7, .beq_else.20053
	lw	$r6, -68($r29)
	lw	$r7, 0($r6)
	lfh	$f4, 0
	lfl	$f4, 0
	lw	$r8, -64($r29)
	swcl	$f4, 0($r8)
	swcl	$f4, 4($r8)
	swcl	$f4, 8($r8)
	addi	$r9, $r7, -1
	addi	$r7, $r7, -1
	sll	$r7, $r7, 2
	lw	$r10, -96($r29)
	addu	$r1, $r10, $r7
	lwcl	$f4, 0($r1)
	lfh	$f6, 0
	lfl	$f6, 0
	c.eq.s	$f4, $f6
	bclf	.bclt_else.20055
	addi	$r7, $r0, 1
	j	.bclt_cont.20056
.bclt_else.20055:
	addi	$r7, $r0, 0
.bclt_cont.20056:
	addi	$r11, $r0, 0
	bne	$r7, $r11, .beq_else.20057
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f4, $f6
	bclf	.bclt_else.20059
	addi	$r7, $r0, 0
	j	.bclt_cont.20060
.bclt_else.20059:
	addi	$r7, $r0, 1
.bclt_cont.20060:
	addi	$r11, $r0, 0
	bne	$r7, $r11, .beq_else.20061
	lfh	$f4, 49024
	lfl	$f4, 0
	j	.beq_cont.20062
.beq_else.20061:
	lfh	$f4, 16256
	lfl	$f4, 0
.beq_cont.20062:
	j	.beq_cont.20058
.beq_else.20057:
	lfh	$f4, 0
	lfl	$f4, 0
.beq_cont.20058:
	fneg	$f4, $f4
	sll	$r7, $r9, 2
	addu	$r1, $r8, $r7
	swcl	$f4, 0($r1)
	j	.beq_cont.20054
.beq_else.20053:
	addi	$r7, $r0, 2
	bne	$r6, $r7, .beq_else.20063
	lw	$r6, 16($r4)
	lwcl	$f4, 0($r6)
	fneg	$f4, $f4
	lw	$r6, -64($r29)
	swcl	$f4, 0($r6)
	lw	$r7, 16($r4)
	lwcl	$f4, 4($r7)
	fneg	$f4, $f4
	swcl	$f4, 4($r6)
	lw	$r7, 16($r4)
	lwcl	$f4, 8($r7)
	fneg	$f4, $f4
	swcl	$f4, 8($r6)
	j	.beq_cont.20064
.beq_else.20063:
	lw	$r28, -60($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -128($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -128	! callcls
	jal	.mendoi2.20066	! callcls
	j	.mendoi1.20065	! callcls
.mendoi2.20066:	! callcls
	jr	$r27	! callcls
.mendoi1.20065:	! callcls
	addi	$r29, $r29, 128	! callcls
	lw	$r31, -128($r29)	! callcls
.beq_cont.20064:
.beq_cont.20054:
	lw	$r3, -56($r29)
	lwcl	$f0, 0($r3)
	lw	$r2, -52($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r2)
	lw	$r2, -124($r29)
	lw	$r28, -48($r29)
	sw	$r31, -128($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -128	! callcls
	jal	.mendoi2.20068	! callcls
	j	.mendoi1.20067	! callcls
.mendoi2.20068:	! callcls
	jr	$r27	! callcls
.mendoi1.20067:	! callcls
	addi	$r29, $r29, 128	! callcls
	lw	$r31, -128($r29)	! callcls
	lw	$r2, -120($r29)
	sll	$r2, $r2, 2
	lw	$r3, -68($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	lw	$r2, -44($r29)
	lw	$r4, 4($r2)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	lw	$r6, -56($r29)
	lwcl	$f0, 0($r6)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r6)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r6)
	swcl	$f0, 8($r4)
	lw	$r4, 12($r2)
	lw	$r7, -124($r29)
	lw	$r8, 28($r7)
	lwcl	$f0, 0($r8)
	lfh	$f2, 16128
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20069
	addi	$r8, $r0, 0
	j	.bclt_cont.20070
.bclt_else.20069:
	addi	$r8, $r0, 1
.bclt_cont.20070:
	addi	$r9, $r0, 0
	bne	$r8, $r9, .beq_else.20071
	addi	$r8, $r0, 1
	sll	$r9, $r3, 2
	addu	$r1, $r4, $r9
	sw	$r8, 0($r1)
	lw	$r4, 16($r2)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	lw	$r8, 0($r1)
	lw	$r9, -40($r29)
	lwcl	$f0, 0($r9)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r9)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r9)
	swcl	$f0, 8($r8)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	lw	$r4, 0($r1)
	lfh	$f0, 15232
	lfl	$f0, 0
	lwcl	$f2, -116($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f4, 0($r4)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 0($r4)
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f4, $f0
	swcl	$f4, 4($r4)
	lwcl	$f4, 8($r4)
	mul.s	$f0, $f4, $f0
	swcl	$f0, 8($r4)
	lw	$r4, 28($r2)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	lw	$r4, 0($r1)
	lw	$r8, -64($r29)
	lwcl	$f0, 0($r8)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r8)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r8)
	swcl	$f0, 8($r4)
	j	.beq_cont.20072
.beq_else.20071:
	addi	$r8, $r0, 0
	sll	$r9, $r3, 2
	addu	$r1, $r4, $r9
	sw	$r8, 0($r1)
.beq_cont.20072:
	lfh	$f0, 49152
	lfl	$f0, 0
	lw	$r4, -96($r29)
	lwcl	$f2, 0($r4)
	lw	$r8, -64($r29)
	lwcl	$f4, 0($r8)
	mul.s	$f2, $f2, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f6, 4($r8)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f6, 8($r8)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 0($r4)
	lwcl	$f4, 0($r8)
	mul.s	$f4, $f0, $f4
	add.s	$f2, $f2, $f4
	swcl	$f2, 0($r4)
	lwcl	$f2, 4($r4)
	lwcl	$f4, 4($r8)
	mul.s	$f4, $f0, $f4
	add.s	$f2, $f2, $f4
	swcl	$f2, 4($r4)
	lwcl	$f2, 8($r4)
	lwcl	$f4, 8($r8)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f2, $f0
	swcl	$f0, 8($r4)
	lw	$r9, 28($r7)
	lwcl	$f0, 4($r9)
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f2, $f0
	addi	$r9, $r0, 0
	lw	$r10, -36($r29)
	lw	$r10, 0($r10)
	lw	$r28, -32($r29)
	swcl	$f0, -128($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.20074	! callcls
	j	.mendoi1.20073	! callcls
.mendoi2.20074:	! callcls
	jr	$r27	! callcls
.mendoi1.20073:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20075
	lw	$r2, -64($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -92($r29)
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
	fneg	$f0, $f0
	lwcl	$f2, -116($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -96($r29)
	lwcl	$f4, 0($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f4, $f4, $f6
	lwcl	$f6, 4($r2)
	lwcl	$f8, 4($r3)
	mul.s	$f6, $f6, $f8
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	lwcl	$f8, 8($r3)
	mul.s	$f6, $f6, $f8
	add.s	$f4, $f4, $f6
	fneg	$f4, $f4
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f0, $f6
	bclf	.bclt_else.20077
	addi	$r3, $r0, 0
	j	.bclt_cont.20078
.bclt_else.20077:
	addi	$r3, $r0, 1
.bclt_cont.20078:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20079
	j	.beq_cont.20080
.beq_else.20079:
	lw	$r3, -80($r29)
	lwcl	$f6, 0($r3)
	lw	$r4, -40($r29)
	lwcl	$f8, 0($r4)
	mul.s	$f8, $f0, $f8
	add.s	$f6, $f6, $f8
	swcl	$f6, 0($r3)
	lwcl	$f6, 4($r3)
	lwcl	$f8, 4($r4)
	mul.s	$f8, $f0, $f8
	add.s	$f6, $f6, $f8
	swcl	$f6, 4($r3)
	lwcl	$f6, 8($r3)
	lwcl	$f8, 8($r4)
	mul.s	$f0, $f0, $f8
	add.s	$f0, $f6, $f0
	swcl	$f0, 8($r3)
.beq_cont.20080:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.20081
	addi	$r3, $r0, 0
	j	.bclt_cont.20082
.bclt_else.20081:
	addi	$r3, $r0, 1
.bclt_cont.20082:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20083
	j	.beq_cont.20084
.beq_else.20083:
	mul.s	$f0, $f4, $f4
	mul.s	$f0, $f0, $f0
	lwcl	$f4, -128($r29)
	mul.s	$f0, $f0, $f4
	lw	$r3, -80($r29)
	lwcl	$f6, 0($r3)
	add.s	$f6, $f6, $f0
	swcl	$f6, 0($r3)
	lwcl	$f6, 4($r3)
	add.s	$f6, $f6, $f0
	swcl	$f6, 4($r3)
	lwcl	$f6, 8($r3)
	add.s	$f0, $f6, $f0
	swcl	$f0, 8($r3)
.beq_cont.20084:
	j	.beq_cont.20076
.beq_else.20075:
.beq_cont.20076:
	lw	$r2, -56($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -28($r29)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r3)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	addi	$r3, $r3, -1
	lw	$r28, -20($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.20086	! callcls
	j	.mendoi1.20085	! callcls
.mendoi2.20086:	! callcls
	jr	$r27	! callcls
.mendoi1.20085:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lwcl	$f0, -116($r29)
	lwcl	$f2, -128($r29)
	lw	$r3, -96($r29)
	lw	$r28, -12($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.20088	! callcls
	j	.mendoi1.20087	! callcls
.mendoi2.20088:	! callcls
	jr	$r27	! callcls
.mendoi1.20087:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -88($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.20089
	addi	$r2, $r0, 0
	j	.bclt_cont.20090
.bclt_else.20089:
	addi	$r2, $r0, 1
.bclt_cont.20090:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20091
	jr	$r31
.beq_else.20091:
	addi	$r2, $r0, 4
	lw	$r3, -104($r29)
	bgt	$r2, $r3, .ble_else.20093
	j	.ble_cont.20094
.ble_else.20093:
	addi	$r2, $r3, 1
	addi	$r4, $r0, -1
	sll	$r2, $r2, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r2
	sw	$r4, 0($r1)
.ble_cont.20094:
	addi	$r2, $r0, 2
	lw	$r4, -112($r29)
	bne	$r4, $r2, .beq_else.20095
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r2, -124($r29)
	lw	$r2, 28($r2)
	lwcl	$f4, 0($r2)
	sub.s	$f0, $f0, $f4
	mul.s	$f0, $f2, $f0
	addi	$r2, $r3, 1
	lw	$r3, -108($r29)
	lwcl	$f2, 0($r3)
	lwcl	$f4, -8($r29)
	add.s	$f2, $f4, $f2
	lw	$r3, -96($r29)
	lw	$r4, -44($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.20095:
	jr	$r31
.ble_else.20036:
	jr	$r31
.trace_diffuse_ray.3234:
	lw	$r3, 56($r28)
	lw	$r4, 52($r28)
	lw	$r5, 48($r28)
	lw	$r6, 44($r28)
	lw	$r7, 40($r28)
	lw	$r8, 36($r28)
	lw	$r9, 32($r28)
	lw	$r10, 28($r28)
	lw	$r11, 24($r28)
	lw	$r12, 20($r28)
	lw	$r13, 16($r28)
	lw	$r14, 12($r28)
	lw	$r15, 8($r28)
	lw	$r16, 4($r28)
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 0($r5)
	addi	$r17, $r0, 0
	lw	$r18, 0($r8)
	sw	$r6, -4($r29)
	sw	$r16, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r11, -16($r29)
	sw	$r7, -20($r29)
	sw	$r8, -24($r29)
	sw	$r13, -28($r29)
	sw	$r3, -32($r29)
	sw	$r15, -36($r29)
	sw	$r10, -40($r29)
	sw	$r12, -44($r29)
	sw	$r2, -48($r29)
	sw	$r9, -52($r29)
	sw	$r14, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r18, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r2, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20099	! callcls
	j	.mendoi1.20098	! callcls
.mendoi2.20099:	! callcls
	jr	$r27	! callcls
.mendoi1.20098:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.20100
	addi	$r2, $r0, 0
	j	.bclt_cont.20101
.bclt_else.20100:
	addi	$r2, $r0, 1
.bclt_cont.20101:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20102
	addi	$r2, $r0, 0
	j	.beq_cont.20103
.beq_else.20102:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.20104
	addi	$r2, $r0, 0
	j	.bclt_cont.20105
.bclt_else.20104:
	addi	$r2, $r0, 1
.bclt_cont.20105:
.beq_cont.20103:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20106
	jr	$r31
.beq_else.20106:
	lw	$r2, -56($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -52($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -48($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	addi	$r5, $r0, 1
	sw	$r2, -64($r29)
	bne	$r4, $r5, .beq_else.20108
	lw	$r4, -44($r29)
	lw	$r4, 0($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r5, -40($r29)
	swcl	$f0, 0($r5)
	swcl	$f0, 4($r5)
	swcl	$f0, 8($r5)
	addi	$r6, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	addu	$r1, $r3, $r4
	lwcl	$f0, 0($r1)
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.20110
	addi	$r3, $r0, 1
	j	.bclt_cont.20111
.bclt_else.20110:
	addi	$r3, $r0, 0
.bclt_cont.20111:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20112
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.20114
	addi	$r3, $r0, 0
	j	.bclt_cont.20115
.bclt_else.20114:
	addi	$r3, $r0, 1
.bclt_cont.20115:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.20116
	lfh	$f0, 49024
	lfl	$f0, 0
	j	.beq_cont.20117
.beq_else.20116:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.20117:
	j	.beq_cont.20113
.beq_else.20112:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.20113:
	fneg	$f0, $f0
	sll	$r3, $r6, 2
	addu	$r1, $r5, $r3
	swcl	$f0, 0($r1)
	j	.beq_cont.20109
.beq_else.20108:
	addi	$r3, $r0, 2
	bne	$r4, $r3, .beq_else.20118
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	lw	$r3, -40($r29)
	swcl	$f0, 0($r3)
	lw	$r4, 16($r2)
	lwcl	$f0, 4($r4)
	fneg	$f0, $f0
	swcl	$f0, 4($r3)
	lw	$r4, 16($r2)
	lwcl	$f0, 8($r4)
	fneg	$f0, $f0
	swcl	$f0, 8($r3)
	j	.beq_cont.20119
.beq_else.20118:
	lw	$r28, -36($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20121	! callcls
	j	.mendoi1.20120	! callcls
.mendoi2.20121:	! callcls
	jr	$r27	! callcls
.mendoi1.20120:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.20119:
.beq_cont.20109:
	lw	$r2, -64($r29)
	lw	$r3, -28($r29)
	lw	$r28, -32($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20123	! callcls
	j	.mendoi1.20122	! callcls
.mendoi2.20123:	! callcls
	jr	$r27	! callcls
.mendoi1.20122:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	lw	$r28, -20($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20125	! callcls
	j	.mendoi1.20124	! callcls
.mendoi2.20125:	! callcls
	jr	$r27	! callcls
.mendoi1.20124:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20126
	lw	$r2, -40($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -16($r29)
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
	fneg	$f0, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.20127
	addi	$r2, $r0, 0
	j	.bclt_cont.20128
.bclt_else.20127:
	addi	$r2, $r0, 1
.bclt_cont.20128:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20129
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.20130
.beq_else.20129:
.beq_cont.20130:
	lwcl	$f2, -12($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -64($r29)
	lw	$r2, 28($r2)
	lwcl	$f2, 0($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -4($r29)
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
.beq_else.20126:
	jr	$r31
.iter_trace_diffuse_rays.3237:
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
	addi	$r19, $r0, 0
	bgt	$r19, $r5, .ble_else.20133
	sll	$r19, $r5, 2
	addu	$r1, $r2, $r19
	lw	$r19, 0($r1)
	lw	$r19, 0($r19)
	lwcl	$f0, 0($r19)
	lwcl	$f2, 0($r3)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r19)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r19)
	lwcl	$f4, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20134
	addi	$r19, $r0, 0
	j	.bclt_cont.20135
.bclt_else.20134:
	addi	$r19, $r0, 1
.bclt_cont.20135:
	addi	$r20, $r0, 0
	sw	$r4, -4($r29)
	sw	$r28, -8($r29)
	sw	$r7, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r5, -24($r29)
	bne	$r19, $r20, .beq_else.20136
	sll	$r19, $r5, 2
	addu	$r1, $r2, $r19
	lw	$r19, 0($r1)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	sw	$r8, -28($r29)
	sw	$r18, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r13, -40($r29)
	sw	$r12, -44($r29)
	sw	$r9, -48($r29)
	sw	$r10, -52($r29)
	sw	$r15, -56($r29)
	sw	$r6, -60($r29)
	sw	$r17, -64($r29)
	sw	$r19, -68($r29)
	sw	$r11, -72($r29)
	sw	$r16, -76($r29)
	addi	$r2, $r19, 0	! g'_args
	addi	$r28, $r14, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.20139	! callcls
	j	.mendoi1.20138	! callcls
.mendoi2.20139:	! callcls
	jr	$r27	! callcls
.mendoi1.20138:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20140
	j	.beq_cont.20141
.beq_else.20140:
	lw	$r2, -76($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -72($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -68($r29)
	lw	$r3, 0($r3)
	lw	$r28, -64($r29)
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.20143	! callcls
	j	.mendoi1.20142	! callcls
.mendoi2.20143:	! callcls
	jr	$r27	! callcls
.mendoi1.20142:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	lw	$r3, -56($r29)
	lw	$r28, -60($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.20145	! callcls
	j	.mendoi1.20144	! callcls
.mendoi2.20145:	! callcls
	jr	$r27	! callcls
.mendoi1.20144:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r3, -52($r29)
	lw	$r3, 0($r3)
	lw	$r28, -48($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.20147	! callcls
	j	.mendoi1.20146	! callcls
.mendoi2.20147:	! callcls
	jr	$r27	! callcls
.mendoi1.20146:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20148
	lw	$r2, -44($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -40($r29)
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
	fneg	$f0, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.20150
	addi	$r2, $r0, 0
	j	.bclt_cont.20151
.bclt_else.20150:
	addi	$r2, $r0, 1
.bclt_cont.20151:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20152
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.20153
.beq_else.20152:
.beq_cont.20153:
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -80($r29)
	lw	$r2, 28($r2)
	lwcl	$f2, 0($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -32($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -28($r29)
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
	j	.beq_cont.20149
.beq_else.20148:
.beq_cont.20149:
.beq_cont.20141:
	j	.beq_cont.20137
.beq_else.20136:
	addi	$r19, $r5, 1
	sll	$r19, $r19, 2
	addu	$r1, $r2, $r19
	lw	$r19, 0($r1)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	sw	$r8, -28($r29)
	sw	$r18, -32($r29)
	swcl	$f0, -84($r29)
	sw	$r13, -40($r29)
	sw	$r12, -44($r29)
	sw	$r9, -48($r29)
	sw	$r10, -52($r29)
	sw	$r15, -56($r29)
	sw	$r6, -60($r29)
	sw	$r17, -64($r29)
	sw	$r19, -88($r29)
	sw	$r11, -72($r29)
	sw	$r16, -76($r29)
	addi	$r2, $r19, 0	! g'_args
	addi	$r28, $r14, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.20155	! callcls
	j	.mendoi1.20154	! callcls
.mendoi2.20155:	! callcls
	jr	$r27	! callcls
.mendoi1.20154:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20156
	j	.beq_cont.20157
.beq_else.20156:
	lw	$r2, -76($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r3, -72($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -88($r29)
	lw	$r3, 0($r3)
	lw	$r28, -64($r29)
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -96	! callcls
	jal	.mendoi2.20159	! callcls
	j	.mendoi1.20158	! callcls
.mendoi2.20159:	! callcls
	jr	$r27	! callcls
.mendoi1.20158:	! callcls
	addi	$r29, $r29, 96	! callcls
	lw	$r31, -96($r29)	! callcls
	lw	$r2, -92($r29)
	lw	$r3, -56($r29)
	lw	$r28, -60($r29)
	sw	$r31, -96($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -96	! callcls
	jal	.mendoi2.20161	! callcls
	j	.mendoi1.20160	! callcls
.mendoi2.20161:	! callcls
	jr	$r27	! callcls
.mendoi1.20160:	! callcls
	addi	$r29, $r29, 96	! callcls
	lw	$r31, -96($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r3, -52($r29)
	lw	$r3, 0($r3)
	lw	$r28, -48($r29)
	sw	$r31, -96($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -96	! callcls
	jal	.mendoi2.20163	! callcls
	j	.mendoi1.20162	! callcls
.mendoi2.20163:	! callcls
	jr	$r27	! callcls
.mendoi1.20162:	! callcls
	addi	$r29, $r29, 96	! callcls
	lw	$r31, -96($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20164
	lw	$r2, -44($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -40($r29)
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
	fneg	$f0, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.20166
	addi	$r2, $r0, 0
	j	.bclt_cont.20167
.bclt_else.20166:
	addi	$r2, $r0, 1
.bclt_cont.20167:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20168
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.20169
.beq_else.20168:
.beq_cont.20169:
	lwcl	$f2, -84($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -92($r29)
	lw	$r2, 28($r2)
	lwcl	$f2, 0($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -32($r29)
	lwcl	$f2, 0($r2)
	lw	$r3, -28($r29)
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
	j	.beq_cont.20165
.beq_else.20164:
.beq_cont.20165:
.beq_cont.20157:
.beq_cont.20137:
	lw	$r2, -24($r29)
	addi	$r2, $r2, -2
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20170
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r5, -16($r29)
	lwcl	$f2, 0($r5)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20171
	addi	$r3, $r0, 0
	j	.bclt_cont.20172
.bclt_else.20171:
	addi	$r3, $r0, 1
.bclt_cont.20172:
	addi	$r6, $r0, 0
	sw	$r2, -96($r29)
	bne	$r3, $r6, .beq_else.20173
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.20176	! callcls
	j	.mendoi1.20175	! callcls
.mendoi2.20176:	! callcls
	jr	$r27	! callcls
.mendoi1.20175:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	j	.beq_cont.20174
.beq_else.20173:
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.20178	! callcls
	j	.mendoi1.20177	! callcls
.mendoi2.20178:	! callcls
	jr	$r27	! callcls
.mendoi1.20177:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
.beq_cont.20174:
	lw	$r2, -96($r29)
	addi	$r5, $r2, -2
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20170:
	jr	$r31
.ble_else.20133:
	jr	$r31
.trace_diffuse_ray_80percent.3246:
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	addi	$r10, $r0, 0
	sw	$r3, -4($r29)
	sw	$r8, -8($r29)
	sw	$r6, -12($r29)
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	sw	$r4, -24($r29)
	sw	$r9, -28($r29)
	sw	$r2, -32($r29)
	bne	$r2, $r10, .beq_else.20181
	j	.beq_cont.20182
.beq_else.20181:
	lw	$r10, 0($r9)
	lwcl	$f0, 0($r4)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r5)
	lw	$r11, 0($r7)
	addi	$r11, $r11, -1
	sw	$r10, -36($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.20184	! callcls
	j	.mendoi1.20183	! callcls
.mendoi2.20184:	! callcls
	jr	$r27	! callcls
.mendoi1.20183:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -36($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.20186	! callcls
	j	.mendoi1.20185	! callcls
.mendoi2.20186:	! callcls
	jr	$r27	! callcls
.mendoi1.20185:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.20182:
	addi	$r2, $r0, 1
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.20187
	j	.beq_cont.20188
.beq_else.20187:
	lw	$r2, -28($r29)
	lw	$r4, 4($r2)
	lw	$r5, -24($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -20($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -16($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -12($r29)
	sw	$r4, -40($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.20190	! callcls
	j	.mendoi1.20189	! callcls
.mendoi2.20190:	! callcls
	jr	$r27	! callcls
.mendoi1.20189:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -40($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.20192	! callcls
	j	.mendoi1.20191	! callcls
.mendoi2.20192:	! callcls
	jr	$r27	! callcls
.mendoi1.20191:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.20188:
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.20193
	j	.beq_cont.20194
.beq_else.20193:
	lw	$r2, -28($r29)
	lw	$r4, 8($r2)
	lw	$r5, -24($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -20($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -16($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -12($r29)
	sw	$r4, -44($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20196	! callcls
	j	.mendoi1.20195	! callcls
.mendoi2.20196:	! callcls
	jr	$r27	! callcls
.mendoi1.20195:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -44($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20198	! callcls
	j	.mendoi1.20197	! callcls
.mendoi2.20198:	! callcls
	jr	$r27	! callcls
.mendoi1.20197:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.20194:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.20199
	j	.beq_cont.20200
.beq_else.20199:
	lw	$r2, -28($r29)
	lw	$r4, 12($r2)
	lw	$r5, -24($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -20($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -16($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -12($r29)
	sw	$r4, -48($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20202	! callcls
	j	.mendoi1.20201	! callcls
.mendoi2.20202:	! callcls
	jr	$r27	! callcls
.mendoi1.20201:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -48($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20204	! callcls
	j	.mendoi1.20203	! callcls
.mendoi2.20204:	! callcls
	jr	$r27	! callcls
.mendoi1.20203:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.20200:
	addi	$r2, $r0, 4
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.20205
	jr	$r31
.beq_else.20205:
	lw	$r2, -28($r29)
	lw	$r2, 16($r2)
	lw	$r3, -24($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -20($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r4)
	lw	$r4, -16($r29)
	lw	$r4, 0($r4)
	addi	$r4, $r4, -1
	lw	$r28, -12($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20208	! callcls
	j	.mendoi1.20207	! callcls
.mendoi2.20208:	! callcls
	jr	$r27	! callcls
.mendoi1.20207:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -52($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_diffuse_using_1point.3250:
	lw	$r4, 32($r28)
	lw	$r5, 28($r28)
	lw	$r6, 24($r28)
	lw	$r7, 20($r28)
	lw	$r8, 16($r28)
	lw	$r9, 12($r28)
	lw	$r10, 8($r28)
	lw	$r11, 4($r28)
	lw	$r12, 20($r2)
	lw	$r13, 28($r2)
	lw	$r14, 4($r2)
	lw	$r15, 16($r2)
	sll	$r16, $r3, 2
	addu	$r1, $r12, $r16
	lw	$r12, 0($r1)
	lwcl	$f0, 0($r12)
	swcl	$f0, 0($r11)
	lwcl	$f0, 4($r12)
	swcl	$f0, 4($r11)
	lwcl	$f0, 8($r12)
	swcl	$f0, 8($r11)
	lw	$r2, 24($r2)
	lw	$r2, 0($r2)
	sll	$r12, $r3, 2
	addu	$r1, $r13, $r12
	lw	$r12, 0($r1)
	sll	$r13, $r3, 2
	addu	$r1, $r14, $r13
	lw	$r13, 0($r1)
	addi	$r14, $r0, 0
	sw	$r11, -4($r29)
	sw	$r7, -8($r29)
	sw	$r15, -12($r29)
	sw	$r3, -16($r29)
	sw	$r9, -20($r29)
	sw	$r4, -24($r29)
	sw	$r12, -28($r29)
	sw	$r6, -32($r29)
	sw	$r8, -36($r29)
	sw	$r5, -40($r29)
	sw	$r13, -44($r29)
	sw	$r10, -48($r29)
	sw	$r2, -52($r29)
	bne	$r2, $r14, .beq_else.20209
	j	.beq_cont.20210
.beq_else.20209:
	lw	$r14, 0($r10)
	lwcl	$f0, 0($r13)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r13)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r13)
	swcl	$f0, 8($r5)
	lw	$r16, 0($r8)
	addi	$r16, $r16, -1
	sw	$r14, -56($r29)
	addi	$r3, $r16, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20212	! callcls
	j	.mendoi1.20211	! callcls
.mendoi2.20212:	! callcls
	jr	$r27	! callcls
.mendoi1.20211:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20213
	addi	$r3, $r0, 0
	j	.bclt_cont.20214
.bclt_else.20213:
	addi	$r3, $r0, 1
.bclt_cont.20214:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20215
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20218	! callcls
	j	.mendoi1.20217	! callcls
.mendoi2.20218:	! callcls
	jr	$r27	! callcls
.mendoi1.20217:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	j	.beq_cont.20216
.beq_else.20215:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20220	! callcls
	j	.mendoi1.20219	! callcls
.mendoi2.20220:	! callcls
	jr	$r27	! callcls
.mendoi1.20219:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.20216:
	addi	$r5, $r0, 116
	lw	$r2, -56($r29)
	lw	$r3, -28($r29)
	lw	$r4, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20222	! callcls
	j	.mendoi1.20221	! callcls
.mendoi2.20222:	! callcls
	jr	$r27	! callcls
.mendoi1.20221:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.20210:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	bne	$r3, $r2, .beq_else.20223
	j	.beq_cont.20224
.beq_else.20223:
	lw	$r2, -48($r29)
	lw	$r4, 4($r2)
	lw	$r5, -44($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -40($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -36($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -32($r29)
	sw	$r4, -60($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20226	! callcls
	j	.mendoi1.20225	! callcls
.mendoi2.20226:	! callcls
	jr	$r27	! callcls
.mendoi1.20225:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20227
	addi	$r3, $r0, 0
	j	.bclt_cont.20228
.bclt_else.20227:
	addi	$r3, $r0, 1
.bclt_cont.20228:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20229
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20232	! callcls
	j	.mendoi1.20231	! callcls
.mendoi2.20232:	! callcls
	jr	$r27	! callcls
.mendoi1.20231:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	j	.beq_cont.20230
.beq_else.20229:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20234	! callcls
	j	.mendoi1.20233	! callcls
.mendoi2.20234:	! callcls
	jr	$r27	! callcls
.mendoi1.20233:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
.beq_cont.20230:
	addi	$r5, $r0, 116
	lw	$r2, -60($r29)
	lw	$r3, -28($r29)
	lw	$r4, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20236	! callcls
	j	.mendoi1.20235	! callcls
.mendoi2.20236:	! callcls
	jr	$r27	! callcls
.mendoi1.20235:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
.beq_cont.20224:
	addi	$r2, $r0, 2
	lw	$r3, -52($r29)
	bne	$r3, $r2, .beq_else.20237
	j	.beq_cont.20238
.beq_else.20237:
	lw	$r2, -48($r29)
	lw	$r4, 8($r2)
	lw	$r5, -44($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -40($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -36($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -32($r29)
	sw	$r4, -64($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20240	! callcls
	j	.mendoi1.20239	! callcls
.mendoi2.20240:	! callcls
	jr	$r27	! callcls
.mendoi1.20239:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20241
	addi	$r3, $r0, 0
	j	.bclt_cont.20242
.bclt_else.20241:
	addi	$r3, $r0, 1
.bclt_cont.20242:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20243
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20246	! callcls
	j	.mendoi1.20245	! callcls
.mendoi2.20246:	! callcls
	jr	$r27	! callcls
.mendoi1.20245:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	j	.beq_cont.20244
.beq_else.20243:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20248	! callcls
	j	.mendoi1.20247	! callcls
.mendoi2.20248:	! callcls
	jr	$r27	! callcls
.mendoi1.20247:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.20244:
	addi	$r5, $r0, 116
	lw	$r2, -64($r29)
	lw	$r3, -28($r29)
	lw	$r4, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20250	! callcls
	j	.mendoi1.20249	! callcls
.mendoi2.20250:	! callcls
	jr	$r27	! callcls
.mendoi1.20249:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.20238:
	addi	$r2, $r0, 3
	lw	$r3, -52($r29)
	bne	$r3, $r2, .beq_else.20251
	j	.beq_cont.20252
.beq_else.20251:
	lw	$r2, -48($r29)
	lw	$r4, 12($r2)
	lw	$r5, -44($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -40($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -36($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -32($r29)
	sw	$r4, -68($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20254	! callcls
	j	.mendoi1.20253	! callcls
.mendoi2.20254:	! callcls
	jr	$r27	! callcls
.mendoi1.20253:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20255
	addi	$r3, $r0, 0
	j	.bclt_cont.20256
.bclt_else.20255:
	addi	$r3, $r0, 1
.bclt_cont.20256:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20257
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20260	! callcls
	j	.mendoi1.20259	! callcls
.mendoi2.20260:	! callcls
	jr	$r27	! callcls
.mendoi1.20259:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	j	.beq_cont.20258
.beq_else.20257:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20262	! callcls
	j	.mendoi1.20261	! callcls
.mendoi2.20262:	! callcls
	jr	$r27	! callcls
.mendoi1.20261:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.20258:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -28($r29)
	lw	$r4, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20264	! callcls
	j	.mendoi1.20263	! callcls
.mendoi2.20264:	! callcls
	jr	$r27	! callcls
.mendoi1.20263:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.20252:
	addi	$r2, $r0, 4
	lw	$r3, -52($r29)
	bne	$r3, $r2, .beq_else.20265
	j	.beq_cont.20266
.beq_else.20265:
	lw	$r2, -48($r29)
	lw	$r2, 16($r2)
	lw	$r3, -44($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -40($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r4)
	lw	$r4, -36($r29)
	lw	$r4, 0($r4)
	addi	$r4, $r4, -1
	lw	$r28, -32($r29)
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.20268	! callcls
	j	.mendoi1.20267	! callcls
.mendoi2.20268:	! callcls
	jr	$r27	! callcls
.mendoi1.20267:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -28($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20269
	addi	$r3, $r0, 0
	j	.bclt_cont.20270
.bclt_else.20269:
	addi	$r3, $r0, 1
.bclt_cont.20270:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20271
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.20274	! callcls
	j	.mendoi1.20273	! callcls
.mendoi2.20274:	! callcls
	jr	$r27	! callcls
.mendoi1.20273:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.20272
.beq_else.20271:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.20276	! callcls
	j	.mendoi1.20275	! callcls
.mendoi2.20276:	! callcls
	jr	$r27	! callcls
.mendoi1.20275:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.20272:
	addi	$r5, $r0, 116
	lw	$r2, -72($r29)
	lw	$r3, -28($r29)
	lw	$r4, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.20278	! callcls
	j	.mendoi1.20277	! callcls
.mendoi2.20278:	! callcls
	jr	$r27	! callcls
.mendoi1.20277:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.20266:
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -12($r29)
	addu	$r1, $r3, $r2
	lw	$r3, 0($r1)
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	j	.vecaccumv.2943	! calldir-tail
.calc_diffuse_using_5points.3253:
	lw	$r7, 8($r28)
	lw	$r8, 4($r28)
	sll	$r9, $r2, 2
	addu	$r1, $r3, $r9
	lw	$r3, 0($r1)
	lw	$r3, 20($r3)
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	addu	$r1, $r4, $r9
	lw	$r9, 0($r1)
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	addu	$r1, $r4, $r10
	lw	$r10, 0($r1)
	lw	$r10, 20($r10)
	addi	$r11, $r2, 1
	sll	$r11, $r11, 2
	addu	$r1, $r4, $r11
	lw	$r11, 0($r1)
	lw	$r11, 20($r11)
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r5, 0($r1)
	lw	$r5, 20($r5)
	sll	$r12, $r6, 2
	addu	$r1, $r3, $r12
	lw	$r3, 0($r1)
	lwcl	$f0, 0($r3)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	addu	$r1, $r9, $r3
	lw	$r3, 0($r1)
	lwcl	$f0, 0($r8)
	lwcl	$f2, 0($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f2, 4($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f2, 8($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	addu	$r1, $r10, $r3
	lw	$r3, 0($r1)
	lwcl	$f0, 0($r8)
	lwcl	$f2, 0($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f2, 4($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f2, 8($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	addu	$r1, $r11, $r3
	lw	$r3, 0($r1)
	lwcl	$f0, 0($r8)
	lwcl	$f2, 0($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f2, 4($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f2, 8($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r8)
	sll	$r3, $r6, 2
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lwcl	$f0, 0($r8)
	lwcl	$f2, 0($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r8)
	lwcl	$f2, 4($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r8)
	lwcl	$f2, 8($r3)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r8)
	sll	$r2, $r2, 2
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r2, 16($r2)
	sll	$r3, $r6, 2
	addu	$r1, $r2, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	j	.vecaccumv.2943	! calldir-tail
.do_without_neighbors.3259:
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 4
	bgt	$r3, $r8, .ble_else.20279
	lw	$r8, 8($r2)
	addi	$r9, $r0, 0
	sll	$r10, $r3, 2
	addu	$r1, $r8, $r10
	lw	$r8, 0($r1)
	bgt	$r9, $r8, .ble_else.20280
	lw	$r8, 12($r2)
	sll	$r9, $r3, 2
	addu	$r1, $r8, $r9
	lw	$r8, 0($r1)
	addi	$r9, $r0, 0
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	bne	$r8, $r9, .beq_else.20281
	j	.beq_cont.20282
.beq_else.20281:
	lw	$r8, 20($r2)
	lw	$r9, 28($r2)
	lw	$r10, 4($r2)
	lw	$r11, 16($r2)
	sll	$r12, $r3, 2
	addu	$r1, $r8, $r12
	lw	$r8, 0($r1)
	lwcl	$f0, 0($r8)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r8)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r8)
	swcl	$f0, 8($r6)
	lw	$r8, 24($r2)
	lw	$r8, 0($r8)
	sll	$r12, $r3, 2
	addu	$r1, $r9, $r12
	lw	$r9, 0($r1)
	sll	$r12, $r3, 2
	addu	$r1, $r10, $r12
	lw	$r10, 0($r1)
	sw	$r6, -20($r29)
	sw	$r5, -24($r29)
	sw	$r11, -28($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r10, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.20284	! callcls
	j	.mendoi1.20283	! callcls
.mendoi2.20284:	! callcls
	jr	$r27	! callcls
.mendoi1.20283:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r2, -16($r29)
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -24($r29)
	lw	$r5, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.vecaccumv.2943	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
.beq_cont.20282:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	addi	$r2, $r0, 4
	bgt	$r3, $r2, .ble_else.20285
	lw	$r2, -12($r29)
	lw	$r4, 8($r2)
	addi	$r5, $r0, 0
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	bgt	$r5, $r4, .ble_else.20286
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	addi	$r5, $r0, 0
	sw	$r3, -32($r29)
	bne	$r4, $r5, .beq_else.20287
	j	.beq_cont.20288
.beq_else.20287:
	lw	$r28, -8($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.20290	! callcls
	j	.mendoi1.20289	! callcls
.mendoi2.20290:	! callcls
	jr	$r27	! callcls
.mendoi1.20289:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
.beq_cont.20288:
	lw	$r2, -32($r29)
	addi	$r3, $r2, 1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20286:
	jr	$r31
.ble_else.20285:
	jr	$r31
.ble_else.20280:
	jr	$r31
.ble_else.20279:
	jr	$r31
.try_exploit_neighbors.3275:
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	sll	$r11, $r2, 2
	addu	$r1, $r5, $r11
	lw	$r11, 0($r1)
	addi	$r12, $r0, 4
	bgt	$r7, $r12, .ble_else.20295
	addi	$r12, $r0, 0
	lw	$r13, 8($r11)
	sll	$r14, $r7, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	bgt	$r12, $r13, .ble_else.20296
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r12, 0($r1)
	lw	$r12, 8($r12)
	sll	$r13, $r7, 2
	addu	$r1, $r12, $r13
	lw	$r12, 0($r1)
	sll	$r13, $r2, 2
	addu	$r1, $r4, $r13
	lw	$r13, 0($r1)
	lw	$r13, 8($r13)
	sll	$r14, $r7, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	bne	$r13, $r12, .beq_else.20297
	sll	$r13, $r2, 2
	addu	$r1, $r6, $r13
	lw	$r13, 0($r1)
	lw	$r13, 8($r13)
	sll	$r14, $r7, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	bne	$r13, $r12, .beq_else.20299
	addi	$r13, $r2, -1
	sll	$r13, $r13, 2
	addu	$r1, $r5, $r13
	lw	$r13, 0($r1)
	lw	$r13, 8($r13)
	sll	$r14, $r7, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	bne	$r13, $r12, .beq_else.20301
	addi	$r13, $r2, 1
	sll	$r13, $r13, 2
	addu	$r1, $r5, $r13
	lw	$r13, 0($r1)
	lw	$r13, 8($r13)
	sll	$r14, $r7, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	bne	$r13, $r12, .beq_else.20303
	addi	$r12, $r0, 1
	j	.beq_cont.20304
.beq_else.20303:
	addi	$r12, $r0, 0
.beq_cont.20304:
	j	.beq_cont.20302
.beq_else.20301:
	addi	$r12, $r0, 0
.beq_cont.20302:
	j	.beq_cont.20300
.beq_else.20299:
	addi	$r12, $r0, 0
.beq_cont.20300:
	j	.beq_cont.20298
.beq_else.20297:
	addi	$r12, $r0, 0
.beq_cont.20298:
	addi	$r13, $r0, 0
	bne	$r12, $r13, .beq_else.20305
	sll	$r2, $r2, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	addi	$r3, $r0, 4
	bgt	$r7, $r3, .ble_else.20306
	lw	$r3, 8($r2)
	addi	$r4, $r0, 0
	sll	$r5, $r7, 2
	addu	$r1, $r3, $r5
	lw	$r3, 0($r1)
	bgt	$r4, $r3, .ble_else.20307
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	addu	$r1, $r3, $r4
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	sw	$r2, -4($r29)
	sw	$r8, -8($r29)
	sw	$r7, -12($r29)
	bne	$r3, $r4, .beq_else.20308
	j	.beq_cont.20309
.beq_else.20308:
	addi	$r3, $r7, 0	! g'_args
	addi	$r28, $r10, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.20311	! callcls
	j	.mendoi1.20310	! callcls
.mendoi2.20311:	! callcls
	jr	$r27	! callcls
.mendoi1.20310:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
.beq_cont.20309:
	lw	$r2, -12($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20307:
	jr	$r31
.ble_else.20306:
	jr	$r31
.beq_else.20305:
	lw	$r10, 12($r11)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11
	lw	$r10, 0($r1)
	addi	$r11, $r0, 0
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r9, -24($r29)
	sw	$r8, -8($r29)
	sw	$r6, -28($r29)
	sw	$r4, -32($r29)
	sw	$r5, -36($r29)
	sw	$r2, -40($r29)
	sw	$r7, -12($r29)
	bne	$r10, $r11, .beq_else.20314
	j	.beq_cont.20315
.beq_else.20314:
	addi	$r3, $r4, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r6, $r7, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.20317	! callcls
	j	.mendoi1.20316	! callcls
.mendoi2.20317:	! callcls
	jr	$r27	! callcls
.mendoi1.20316:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.20315:
	lw	$r2, -12($r29)
	addi	$r3, $r2, 1
	lw	$r2, -40($r29)
	sll	$r4, $r2, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	addi	$r6, $r0, 4
	bgt	$r3, $r6, .ble_else.20318
	addi	$r6, $r0, 0
	lw	$r7, 8($r4)
	sll	$r8, $r3, 2
	addu	$r1, $r7, $r8
	lw	$r7, 0($r1)
	bgt	$r6, $r7, .ble_else.20319
	sll	$r6, $r2, 2
	addu	$r1, $r5, $r6
	lw	$r6, 0($r1)
	lw	$r6, 8($r6)
	sll	$r7, $r3, 2
	addu	$r1, $r6, $r7
	lw	$r6, 0($r1)
	sll	$r7, $r2, 2
	lw	$r8, -32($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r7, 8($r7)
	sll	$r9, $r3, 2
	addu	$r1, $r7, $r9
	lw	$r7, 0($r1)
	bne	$r7, $r6, .beq_else.20320
	sll	$r7, $r2, 2
	lw	$r9, -28($r29)
	addu	$r1, $r9, $r7
	lw	$r7, 0($r1)
	lw	$r7, 8($r7)
	sll	$r10, $r3, 2
	addu	$r1, $r7, $r10
	lw	$r7, 0($r1)
	bne	$r7, $r6, .beq_else.20322
	addi	$r7, $r2, -1
	sll	$r7, $r7, 2
	addu	$r1, $r5, $r7
	lw	$r7, 0($r1)
	lw	$r7, 8($r7)
	sll	$r10, $r3, 2
	addu	$r1, $r7, $r10
	lw	$r7, 0($r1)
	bne	$r7, $r6, .beq_else.20324
	addi	$r7, $r2, 1
	sll	$r7, $r7, 2
	addu	$r1, $r5, $r7
	lw	$r7, 0($r1)
	lw	$r7, 8($r7)
	sll	$r10, $r3, 2
	addu	$r1, $r7, $r10
	lw	$r7, 0($r1)
	bne	$r7, $r6, .beq_else.20326
	addi	$r6, $r0, 1
	j	.beq_cont.20327
.beq_else.20326:
	addi	$r6, $r0, 0
.beq_cont.20327:
	j	.beq_cont.20325
.beq_else.20324:
	addi	$r6, $r0, 0
.beq_cont.20325:
	j	.beq_cont.20323
.beq_else.20322:
	addi	$r6, $r0, 0
.beq_cont.20323:
	j	.beq_cont.20321
.beq_else.20320:
	addi	$r6, $r0, 0
.beq_cont.20321:
	addi	$r7, $r0, 0
	bne	$r6, $r7, .beq_else.20328
	sll	$r2, $r2, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.20328:
	lw	$r4, 12($r4)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	addi	$r6, $r0, 0
	sw	$r3, -44($r29)
	bne	$r4, $r6, .beq_else.20329
	j	.beq_cont.20330
.beq_else.20329:
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	addi	$r6, $r3, 0	! g'_args
	addi	$r3, $r8, 0	! g'_args
	addi	$r27, $r5, 0	! g'_args
	addi	$r5, $r4, 0	! g'_args
	addi	$r4, $r27, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20332	! callcls
	j	.mendoi1.20331	! callcls
.mendoi2.20332:	! callcls
	jr	$r27	! callcls
.mendoi1.20331:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.20330:
	lw	$r2, -44($r29)
	addi	$r7, $r2, 1
	lw	$r2, -40($r29)
	lw	$r3, -16($r29)
	lw	$r4, -32($r29)
	lw	$r5, -36($r29)
	lw	$r6, -28($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20319:
	jr	$r31
.ble_else.20318:
	jr	$r31
.ble_else.20296:
	jr	$r31
.ble_else.20295:
	jr	$r31
.write_rgb.3286:
	lw	$r2, 4($r28)
	lwcl	$f0, 0($r2)
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20337
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20339
	j	.ble_cont.20340
.ble_else.20339:
	addi	$r2, $r0, 0
.ble_cont.20340:
	j	.ble_cont.20338
.ble_else.20337:
	addi	$r2, $r0, 255
.ble_cont.20338:
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20341
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20343
	j	.ble_cont.20344
.ble_else.20343:
	addi	$r2, $r0, 0
.ble_cont.20344:
	j	.ble_cont.20342
.ble_else.20341:
	addi	$r2, $r0, 255
.ble_cont.20342:
	output	$r2
	lw	$r2, -4($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -8($r29)	! calldir
	addi	$r29, $r29, -8	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 8	! calldir
	lw	$r31, -8($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20345
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20347
	j	.ble_cont.20348
.ble_else.20347:
	addi	$r2, $r0, 0
.ble_cont.20348:
	j	.ble_cont.20346
.ble_else.20345:
	addi	$r2, $r0, 255
.ble_cont.20346:
	output	$r2
	jr	$r31
.pretrace_diffuse_rays.3288:
	lw	$r4, 28($r28)
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	addi	$r11, $r0, 4
	bgt	$r3, $r11, .ble_else.20349
	lw	$r11, 8($r2)
	sll	$r12, $r3, 2
	addu	$r1, $r11, $r12
	lw	$r11, 0($r1)
	addi	$r12, $r0, 0
	bgt	$r12, $r11, .ble_else.20350
	lw	$r11, 12($r2)
	sll	$r12, $r3, 2
	addu	$r1, $r11, $r12
	lw	$r11, 0($r1)
	addi	$r12, $r0, 0
	sw	$r28, -4($r29)
	sw	$r8, -8($r29)
	sw	$r4, -12($r29)
	sw	$r6, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r9, -28($r29)
	sw	$r10, -32($r29)
	sw	$r3, -36($r29)
	bne	$r11, $r12, .beq_else.20351
	j	.beq_cont.20352
.beq_else.20351:
	lw	$r11, 24($r2)
	lw	$r11, 0($r11)
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 0($r10)
	swcl	$f0, 4($r10)
	swcl	$f0, 8($r10)
	lw	$r12, 28($r2)
	lw	$r13, 4($r2)
	sll	$r11, $r11, 2
	addu	$r1, $r9, $r11
	lw	$r11, 0($r1)
	sll	$r14, $r3, 2
	addu	$r1, $r12, $r14
	lw	$r12, 0($r1)
	sll	$r14, $r3, 2
	addu	$r1, $r13, $r14
	lw	$r13, 0($r1)
	lwcl	$f0, 0($r13)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r13)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r13)
	swcl	$f0, 8($r5)
	lw	$r14, 0($r7)
	addi	$r14, $r14, -1
	sw	$r2, -40($r29)
	sw	$r13, -44($r29)
	sw	$r12, -48($r29)
	sw	$r11, -52($r29)
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20354	! callcls
	j	.mendoi1.20353	! callcls
.mendoi2.20354:	! callcls
	jr	$r27	! callcls
.mendoi1.20353:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -52($r29)
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	lw	$r28, -8($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20356	! callcls
	j	.mendoi1.20355	! callcls
.mendoi2.20356:	! callcls
	jr	$r27	! callcls
.mendoi1.20355:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 20($r2)
	lw	$r4, -36($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r3, $r5
	lw	$r3, 0($r1)
	lw	$r5, -32($r29)
	lwcl	$f0, 0($r5)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r3)
.beq_cont.20352:
	lw	$r3, -36($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 4
	bgt	$r3, $r4, .ble_else.20357
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	addi	$r5, $r0, 0
	bgt	$r5, $r4, .ble_else.20358
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	addi	$r5, $r0, 0
	sw	$r3, -56($r29)
	bne	$r4, $r5, .beq_else.20359
	j	.beq_cont.20360
.beq_else.20359:
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r5, -32($r29)
	swcl	$f0, 0($r5)
	swcl	$f0, 4($r5)
	swcl	$f0, 8($r5)
	lw	$r6, 28($r2)
	lw	$r7, 4($r2)
	sll	$r4, $r4, 2
	lw	$r8, -28($r29)
	addu	$r1, $r8, $r4
	lw	$r4, 0($r1)
	sll	$r8, $r3, 2
	addu	$r1, $r6, $r8
	lw	$r6, 0($r1)
	sll	$r8, $r3, 2
	addu	$r1, $r7, $r8
	lw	$r7, 0($r1)
	lwcl	$f0, 0($r7)
	lw	$r8, -24($r29)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r7)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r7)
	swcl	$f0, 8($r8)
	lw	$r8, -20($r29)
	lw	$r8, 0($r8)
	addi	$r8, $r8, -1
	lw	$r28, -16($r29)
	sw	$r2, -40($r29)
	sw	$r7, -60($r29)
	sw	$r6, -64($r29)
	sw	$r4, -68($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20362	! callcls
	j	.mendoi1.20361	! callcls
.mendoi2.20362:	! callcls
	jr	$r27	! callcls
.mendoi1.20361:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -64($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20363
	addi	$r3, $r0, 0
	j	.bclt_cont.20364
.bclt_else.20363:
	addi	$r3, $r0, 1
.bclt_cont.20364:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20365
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20368	! callcls
	j	.mendoi1.20367	! callcls
.mendoi2.20368:	! callcls
	jr	$r27	! callcls
.mendoi1.20367:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	j	.beq_cont.20366
.beq_else.20365:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20370	! callcls
	j	.mendoi1.20369	! callcls
.mendoi2.20370:	! callcls
	jr	$r27	! callcls
.mendoi1.20369:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.20366:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -64($r29)
	lw	$r4, -60($r29)
	lw	$r28, -8($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20372	! callcls
	j	.mendoi1.20371	! callcls
.mendoi2.20372:	! callcls
	jr	$r27	! callcls
.mendoi1.20371:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 20($r2)
	lw	$r4, -56($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r3, $r5
	lw	$r3, 0($r1)
	lw	$r5, -32($r29)
	lwcl	$f0, 0($r5)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r3)
.beq_cont.20360:
	lw	$r3, -56($r29)
	addi	$r3, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20358:
	jr	$r31
.ble_else.20357:
	jr	$r31
.ble_else.20350:
	jr	$r31
.ble_else.20349:
	jr	$r31
.pretrace_pixels.3291:
	lw	$r5, 64($r28)
	lw	$r6, 60($r28)
	lw	$r7, 56($r28)
	lw	$r8, 52($r28)
	lw	$r9, 48($r28)
	lw	$r10, 44($r28)
	lw	$r11, 40($r28)
	lw	$r12, 36($r28)
	lw	$r13, 32($r28)
	lw	$r14, 28($r28)
	lw	$r15, 24($r28)
	lw	$r16, 20($r28)
	lw	$r17, 16($r28)
	lw	$r18, 12($r28)
	lw	$r19, 8($r28)
	lw	$r20, 4($r28)
	addi	$r21, $r0, 0
	bgt	$r21, $r3, .ble_else.20377
	lwcl	$f6, 0($r12)
	lw	$r12, 0($r18)
	subu	$r12, $r3, $r12
	sw	$r28, -4($r29)
	sw	$r15, -8($r29)
	sw	$r17, -12($r29)
	sw	$r7, -16($r29)
	sw	$r10, -20($r29)
	sw	$r16, -24($r29)
	sw	$r8, -28($r29)
	sw	$r19, -32($r29)
	sw	$r20, -36($r29)
	sw	$r4, -40($r29)
	sw	$r6, -44($r29)
	sw	$r2, -48($r29)
	sw	$r3, -52($r29)
	sw	$r9, -56($r29)
	sw	$r5, -60($r29)
	sw	$r13, -64($r29)
	swcl	$f4, -68($r29)
	swcl	$f2, -72($r29)
	sw	$r14, -76($r29)
	swcl	$f0, -80($r29)
	sw	$r11, -84($r29)
	swcl	$f6, -88($r29)
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -84($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f4, -80($r29)
	add.s	$f2, $f2, $f4
	lw	$r3, -76($r29)
	swcl	$f2, 0($r3)
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f6, -72($r29)
	add.s	$f2, $f2, $f6
	swcl	$f2, 4($r3)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -68($r29)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r3)
	addi	$r2, $r0, 0
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.vecunit_sgn.2919	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r2, -64($r29)
	swcl	$f0, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f0, 8($r2)
	lw	$r3, -60($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r4)
	addi	$r3, $r0, 0
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r4, -52($r29)
	sll	$r5, $r4, 2
	lw	$r6, -48($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	lfh	$f2, 0
	lfl	$f2, 0
	lw	$r7, -76($r29)
	lw	$r28, -44($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.20379	! callcls
	j	.mendoi1.20378	! callcls
.mendoi2.20379:	! callcls
	jr	$r27	! callcls
.mendoi1.20378:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -52($r29)
	sll	$r3, $r2, 2
	lw	$r4, -48($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r3, 0($r3)
	lw	$r5, -64($r29)
	lwcl	$f0, 0($r5)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r3, 24($r3)
	lw	$r5, -40($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	addi	$r7, $r0, 0
	bgt	$r7, $r6, .ble_else.20380
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	addi	$r7, $r0, 0
	sw	$r3, -92($r29)
	bne	$r6, $r7, .beq_else.20382
	j	.beq_cont.20383
.beq_else.20382:
	lw	$r6, 24($r3)
	lw	$r6, 0($r6)
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r7, -36($r29)
	swcl	$f0, 0($r7)
	swcl	$f0, 4($r7)
	swcl	$f0, 8($r7)
	lw	$r8, 28($r3)
	lw	$r9, 4($r3)
	sll	$r6, $r6, 2
	lw	$r10, -32($r29)
	addu	$r1, $r10, $r6
	lw	$r6, 0($r1)
	lw	$r8, 0($r8)
	lw	$r9, 0($r9)
	lwcl	$f0, 0($r9)
	lw	$r10, -28($r29)
	swcl	$f0, 0($r10)
	lwcl	$f0, 4($r9)
	swcl	$f0, 4($r10)
	lwcl	$f0, 8($r9)
	swcl	$f0, 8($r10)
	lw	$r10, -24($r29)
	lw	$r10, 0($r10)
	addi	$r10, $r10, -1
	lw	$r28, -20($r29)
	sw	$r9, -96($r29)
	sw	$r8, -100($r29)
	sw	$r6, -104($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -108($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -108	! callcls
	jal	.mendoi2.20385	! callcls
	j	.mendoi1.20384	! callcls
.mendoi2.20385:	! callcls
	jr	$r27	! callcls
.mendoi1.20384:	! callcls
	addi	$r29, $r29, 108	! callcls
	lw	$r31, -108($r29)	! callcls
	lw	$r2, -104($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -100($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20386
	addi	$r3, $r0, 0
	j	.bclt_cont.20387
.bclt_else.20386:
	addi	$r3, $r0, 1
.bclt_cont.20387:
	addi	$r5, $r0, 0
	bne	$r3, $r5, .beq_else.20388
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -108($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -108	! callcls
	jal	.mendoi2.20391	! callcls
	j	.mendoi1.20390	! callcls
.mendoi2.20391:	! callcls
	jr	$r27	! callcls
.mendoi1.20390:	! callcls
	addi	$r29, $r29, 108	! callcls
	lw	$r31, -108($r29)	! callcls
	j	.beq_cont.20389
.beq_else.20388:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -108($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -108	! callcls
	jal	.mendoi2.20393	! callcls
	j	.mendoi1.20392	! callcls
.mendoi2.20393:	! callcls
	jr	$r27	! callcls
.mendoi1.20392:	! callcls
	addi	$r29, $r29, 108	! callcls
	lw	$r31, -108($r29)	! callcls
.beq_cont.20389:
	addi	$r5, $r0, 116
	lw	$r2, -104($r29)
	lw	$r3, -100($r29)
	lw	$r4, -96($r29)
	lw	$r28, -12($r29)
	sw	$r31, -108($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -108	! callcls
	jal	.mendoi2.20395	! callcls
	j	.mendoi1.20394	! callcls
.mendoi2.20395:	! callcls
	jr	$r27	! callcls
.mendoi1.20394:	! callcls
	addi	$r29, $r29, 108	! callcls
	lw	$r31, -108($r29)	! callcls
	lw	$r2, -92($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lw	$r4, -36($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r3)
.beq_cont.20383:
	addi	$r3, $r0, 1
	lw	$r2, -92($r29)
	lw	$r28, -8($r29)
	sw	$r31, -108($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -108	! callcls
	jal	.mendoi2.20397	! callcls
	j	.mendoi1.20396	! callcls
.mendoi2.20397:	! callcls
	jr	$r27	! callcls
.mendoi1.20396:	! callcls
	addi	$r29, $r29, 108	! callcls
	lw	$r31, -108($r29)	! callcls
	j	.ble_cont.20381
.ble_else.20380:
.ble_cont.20381:
	lw	$r2, -52($r29)
	addi	$r3, $r2, -1
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r2, .ble_else.20398
	addi	$r4, $r2, -5
	j	.ble_cont.20399
.ble_else.20398:
	addi	$r4, $r2, 0
.ble_cont.20399:
	lwcl	$f0, -80($r29)
	lwcl	$f2, -72($r29)
	lwcl	$f4, -68($r29)
	lw	$r2, -48($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20377:
	jr	$r31
.pretrace_line.3298:
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
.scan_pixel.3302:
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	lw	$r14, 0($r10)
	bgt	$r14, $r2, .ble_else.20401
	jr	$r31
.ble_else.20401:
	sll	$r14, $r2, 2
	addu	$r1, $r5, $r14
	lw	$r14, 0($r1)
	lw	$r14, 0($r14)
	lwcl	$f0, 0($r14)
	swcl	$f0, 0($r9)
	lwcl	$f0, 4($r14)
	swcl	$f0, 4($r9)
	lwcl	$f0, 8($r14)
	swcl	$f0, 8($r9)
	lw	$r14, 4($r10)
	addi	$r15, $r3, 1
	bgt	$r14, $r15, .ble_else.20403
	addi	$r14, $r0, 0
	j	.ble_cont.20404
.ble_else.20403:
	addi	$r14, $r0, 0
	bgt	$r3, $r14, .ble_else.20405
	addi	$r14, $r0, 0
	j	.ble_cont.20406
.ble_else.20405:
	lw	$r14, 0($r10)
	addi	$r15, $r2, 1
	bgt	$r14, $r15, .ble_else.20407
	addi	$r14, $r0, 0
	j	.ble_cont.20408
.ble_else.20407:
	addi	$r14, $r0, 0
	bgt	$r2, $r14, .ble_else.20409
	addi	$r14, $r0, 0
	j	.ble_cont.20410
.ble_else.20409:
	addi	$r14, $r0, 1
.ble_cont.20410:
.ble_cont.20408:
.ble_cont.20406:
.ble_cont.20404:
	addi	$r15, $r0, 0
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r6, -12($r29)
	sw	$r4, -16($r29)
	sw	$r8, -20($r29)
	sw	$r11, -24($r29)
	sw	$r3, -28($r29)
	sw	$r5, -32($r29)
	sw	$r10, -36($r29)
	sw	$r2, -40($r29)
	sw	$r9, -44($r29)
	bne	$r14, $r15, .beq_else.20411
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r12, 0($r1)
	addi	$r14, $r0, 0
	lw	$r15, 8($r12)
	addi	$r16, $r0, 0
	lw	$r15, 0($r15)
	bgt	$r16, $r15, .ble_else.20413
	lw	$r15, 12($r12)
	lw	$r15, 0($r15)
	addi	$r16, $r0, 0
	sw	$r12, -48($r29)
	bne	$r15, $r16, .beq_else.20415
	j	.beq_cont.20416
.beq_else.20415:
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	addi	$r28, $r13, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20418	! callcls
	j	.mendoi1.20417	! callcls
.mendoi2.20418:	! callcls
	jr	$r27	! callcls
.mendoi1.20417:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.20416:
	addi	$r3, $r0, 1
	lw	$r2, -48($r29)
	lw	$r28, -24($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20420	! callcls
	j	.mendoi1.20419	! callcls
.mendoi2.20420:	! callcls
	jr	$r27	! callcls
.mendoi1.20419:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	j	.ble_cont.20414
.ble_else.20413:
.ble_cont.20414:
	j	.beq_cont.20412
.beq_else.20411:
	addi	$r13, $r0, 0
	sll	$r14, $r2, 2
	addu	$r1, $r5, $r14
	lw	$r14, 0($r1)
	addi	$r15, $r0, 0
	lw	$r16, 8($r14)
	lw	$r16, 0($r16)
	bgt	$r15, $r16, .ble_else.20421
	sll	$r15, $r2, 2
	addu	$r1, $r5, $r15
	lw	$r15, 0($r1)
	lw	$r15, 8($r15)
	lw	$r15, 0($r15)
	sll	$r16, $r2, 2
	addu	$r1, $r4, $r16
	lw	$r16, 0($r1)
	lw	$r16, 8($r16)
	lw	$r16, 0($r16)
	bne	$r16, $r15, .beq_else.20423
	sll	$r16, $r2, 2
	addu	$r1, $r6, $r16
	lw	$r16, 0($r1)
	lw	$r16, 8($r16)
	lw	$r16, 0($r16)
	bne	$r16, $r15, .beq_else.20425
	addi	$r16, $r2, -1
	sll	$r16, $r16, 2
	addu	$r1, $r5, $r16
	lw	$r16, 0($r1)
	lw	$r16, 8($r16)
	lw	$r16, 0($r16)
	bne	$r16, $r15, .beq_else.20427
	addi	$r16, $r2, 1
	sll	$r16, $r16, 2
	addu	$r1, $r5, $r16
	lw	$r16, 0($r1)
	lw	$r16, 8($r16)
	lw	$r16, 0($r16)
	bne	$r16, $r15, .beq_else.20429
	addi	$r15, $r0, 1
	j	.beq_cont.20430
.beq_else.20429:
	addi	$r15, $r0, 0
.beq_cont.20430:
	j	.beq_cont.20428
.beq_else.20427:
	addi	$r15, $r0, 0
.beq_cont.20428:
	j	.beq_cont.20426
.beq_else.20425:
	addi	$r15, $r0, 0
.beq_cont.20426:
	j	.beq_cont.20424
.beq_else.20423:
	addi	$r15, $r0, 0
.beq_cont.20424:
	addi	$r16, $r0, 0
	bne	$r15, $r16, .beq_else.20431
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r12, 0($r1)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	addi	$r28, $r11, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20434	! callcls
	j	.mendoi1.20433	! callcls
.mendoi2.20434:	! callcls
	jr	$r27	! callcls
.mendoi1.20433:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	j	.beq_cont.20432
.beq_else.20431:
	lw	$r14, 12($r14)
	lw	$r14, 0($r14)
	addi	$r15, $r0, 0
	bne	$r14, $r15, .beq_else.20435
	j	.beq_cont.20436
.beq_else.20435:
	addi	$r3, $r4, 0	! g'_args
	addi	$r28, $r12, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r6, $r13, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20438	! callcls
	j	.mendoi1.20437	! callcls
.mendoi2.20438:	! callcls
	jr	$r27	! callcls
.mendoi1.20437:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.20436:
	addi	$r7, $r0, 1
	lw	$r2, -40($r29)
	lw	$r3, -28($r29)
	lw	$r4, -16($r29)
	lw	$r5, -32($r29)
	lw	$r6, -12($r29)
	lw	$r28, -20($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.20440	! callcls
	j	.mendoi1.20439	! callcls
.mendoi2.20440:	! callcls
	jr	$r27	! callcls
.mendoi1.20439:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.20432:
	j	.ble_cont.20422
.ble_else.20421:
.ble_cont.20422:
.beq_cont.20412:
	lw	$r2, -44($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20441
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20443
	j	.ble_cont.20444
.ble_else.20443:
	addi	$r2, $r0, 0
.ble_cont.20444:
	j	.ble_cont.20442
.ble_else.20441:
	addi	$r2, $r0, 255
.ble_cont.20442:
	output	$r2
	lw	$r2, -44($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20445
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20447
	j	.ble_cont.20448
.ble_else.20447:
	addi	$r2, $r0, 0
.ble_cont.20448:
	j	.ble_cont.20446
.ble_else.20445:
	addi	$r2, $r0, 255
.ble_cont.20446:
	output	$r2
	lw	$r2, -44($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.20449
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20451
	j	.ble_cont.20452
.ble_else.20451:
	addi	$r2, $r0, 0
.ble_cont.20452:
	j	.ble_cont.20450
.ble_else.20449:
	addi	$r2, $r0, 255
.ble_cont.20450:
	output	$r2
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, 0($r3)
	bgt	$r4, $r2, .ble_else.20453
	jr	$r31
.ble_else.20453:
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	lwcl	$f0, 0($r4)
	lw	$r6, -44($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r6)
	lw	$r4, 4($r3)
	lw	$r6, -28($r29)
	addi	$r7, $r6, 1
	bgt	$r4, $r7, .ble_else.20455
	addi	$r3, $r0, 0
	j	.ble_cont.20456
.ble_else.20455:
	addi	$r4, $r0, 0
	bgt	$r6, $r4, .ble_else.20457
	addi	$r3, $r0, 0
	j	.ble_cont.20458
.ble_else.20457:
	lw	$r3, 0($r3)
	addi	$r4, $r2, 1
	bgt	$r3, $r4, .ble_else.20459
	addi	$r3, $r0, 0
	j	.ble_cont.20460
.ble_else.20459:
	addi	$r3, $r0, 0
	bgt	$r2, $r3, .ble_else.20461
	addi	$r3, $r0, 0
	j	.ble_cont.20462
.ble_else.20461:
	addi	$r3, $r0, 1
.ble_cont.20462:
.ble_cont.20460:
.ble_cont.20458:
.ble_cont.20456:
	addi	$r4, $r0, 0
	sw	$r2, -52($r29)
	bne	$r3, $r4, .beq_else.20463
	sll	$r3, $r2, 2
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 0
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20466	! callcls
	j	.mendoi1.20465	! callcls
.mendoi2.20466:	! callcls
	jr	$r27	! callcls
.mendoi1.20465:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	j	.beq_cont.20464
.beq_else.20463:
	addi	$r7, $r0, 0
	lw	$r4, -16($r29)
	lw	$r3, -12($r29)
	lw	$r28, -20($r29)
	addi	$r27, $r6, 0	! g'_args
	addi	$r6, $r3, 0	! g'_args
	addi	$r3, $r27, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20468	! callcls
	j	.mendoi1.20467	! callcls
.mendoi2.20468:	! callcls
	jr	$r27	! callcls
.mendoi1.20467:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.20464:
	lw	$r28, -8($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20470	! callcls
	j	.mendoi1.20469	! callcls
.mendoi2.20470:	! callcls
	jr	$r27	! callcls
.mendoi1.20469:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	lw	$r4, -16($r29)
	lw	$r5, -32($r29)
	lw	$r6, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.scan_line.3308:
	lw	$r7, 28($r28)
	lw	$r8, 24($r28)
	lw	$r9, 20($r28)
	lw	$r10, 16($r28)
	lw	$r11, 12($r28)
	lw	$r12, 8($r28)
	lw	$r13, 4($r28)
	lw	$r14, 4($r12)
	bgt	$r14, $r2, .ble_else.20471
	jr	$r31
.ble_else.20471:
	lw	$r14, 4($r12)
	addi	$r14, $r14, -1
	sw	$r28, -4($r29)
	sw	$r11, -8($r29)
	sw	$r6, -12($r29)
	sw	$r9, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r3, -28($r29)
	sw	$r8, -32($r29)
	sw	$r13, -36($r29)
	sw	$r2, -40($r29)
	sw	$r10, -44($r29)
	sw	$r4, -48($r29)
	sw	$r12, -52($r29)
	bgt	$r14, $r2, .ble_else.20473
	j	.ble_cont.20474
.ble_else.20473:
	addi	$r14, $r2, 1
	addi	$r4, $r6, 0	! g'_args
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	addi	$r28, $r11, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20476	! callcls
	j	.mendoi1.20475	! callcls
.mendoi2.20476:	! callcls
	jr	$r27	! callcls
.mendoi1.20475:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.ble_cont.20474:
	addi	$r2, $r0, 0
	lw	$r3, -52($r29)
	lw	$r4, 0($r3)
	bgt	$r4, $r2, .ble_else.20477
	j	.ble_cont.20478
.ble_else.20477:
	lw	$r5, -48($r29)
	lw	$r4, 0($r5)
	lw	$r4, 0($r4)
	lwcl	$f0, 0($r4)
	lw	$r6, -44($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r6)
	lw	$r4, 4($r3)
	lw	$r6, -40($r29)
	addi	$r7, $r6, 1
	bgt	$r4, $r7, .ble_else.20479
	addi	$r4, $r0, 0
	j	.ble_cont.20480
.ble_else.20479:
	addi	$r4, $r0, 0
	bgt	$r6, $r4, .ble_else.20481
	addi	$r4, $r0, 0
	j	.ble_cont.20482
.ble_else.20481:
	lw	$r4, 0($r3)
	addi	$r7, $r0, 1
	bgt	$r4, $r7, .ble_else.20483
	addi	$r4, $r0, 0
	j	.ble_cont.20484
.ble_else.20483:
	addi	$r4, $r0, 0
.ble_cont.20484:
.ble_cont.20482:
.ble_cont.20480:
	addi	$r7, $r0, 0
	bne	$r4, $r7, .beq_else.20485
	lw	$r2, 0($r5)
	addi	$r4, $r0, 0
	lw	$r28, -36($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20488	! callcls
	j	.mendoi1.20487	! callcls
.mendoi2.20488:	! callcls
	jr	$r27	! callcls
.mendoi1.20487:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	j	.beq_cont.20486
.beq_else.20485:
	addi	$r7, $r0, 0
	lw	$r4, -28($r29)
	lw	$r8, -24($r29)
	lw	$r28, -32($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r6, $r8, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20490	! callcls
	j	.mendoi1.20489	! callcls
.mendoi2.20490:	! callcls
	jr	$r27	! callcls
.mendoi1.20489:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.20486:
	lw	$r28, -20($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20492	! callcls
	j	.mendoi1.20491	! callcls
.mendoi2.20492:	! callcls
	jr	$r27	! callcls
.mendoi1.20491:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r2, $r0, 1
	lw	$r3, -40($r29)
	lw	$r4, -28($r29)
	lw	$r5, -48($r29)
	lw	$r6, -24($r29)
	lw	$r28, -16($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.20494	! callcls
	j	.mendoi1.20493	! callcls
.mendoi2.20494:	! callcls
	jr	$r27	! callcls
.mendoi1.20493:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.ble_cont.20478:
	lw	$r2, -40($r29)
	addi	$r3, $r2, 1
	lw	$r2, -12($r29)
	addi	$r2, $r2, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r2, .ble_else.20495
	addi	$r4, $r2, -5
	j	.ble_cont.20496
.ble_else.20495:
	addi	$r4, $r2, 0
.ble_cont.20496:
	lw	$r2, -52($r29)
	lw	$r5, 4($r2)
	bgt	$r5, $r3, .ble_else.20497
	jr	$r31
.ble_else.20497:
	lw	$r2, 4($r2)
	addi	$r2, $r2, -1
	sw	$r4, -56($r29)
	sw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.20499
	j	.ble_cont.20500
.ble_else.20499:
	addi	$r2, $r3, 1
	lw	$r5, -28($r29)
	lw	$r28, -8($r29)
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20502	! callcls
	j	.mendoi1.20501	! callcls
.mendoi2.20502:	! callcls
	jr	$r27	! callcls
.mendoi1.20501:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
.ble_cont.20500:
	addi	$r2, $r0, 0
	lw	$r3, -60($r29)
	lw	$r4, -48($r29)
	lw	$r5, -24($r29)
	lw	$r6, -28($r29)
	lw	$r28, -16($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20504	! callcls
	j	.mendoi1.20503	! callcls
.mendoi2.20504:	! callcls
	jr	$r27	! callcls
.mendoi1.20503:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	lw	$r3, -56($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, .ble_else.20505
	addi	$r6, $r3, -5
	j	.ble_cont.20506
.ble_else.20505:
	addi	$r6, $r3, 0
.ble_cont.20506:
	lw	$r3, -24($r29)
	lw	$r4, -28($r29)
	lw	$r5, -48($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.create_float5x3array.3314:
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
.init_line_elements.3318:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.20507
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -36($r29)
	sw	$r2, 24($r3)
	lw	$r2, -32($r29)
	sw	$r2, 20($r3)
	lw	$r2, -28($r29)
	sw	$r2, 16($r3)
	lw	$r2, -24($r29)
	sw	$r2, 12($r3)
	lw	$r2, -20($r29)
	sw	$r2, 8($r3)
	lw	$r2, -16($r29)
	sw	$r2, 4($r3)
	lw	$r2, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20508
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
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -68($r29)
	sw	$r2, 24($r3)
	lw	$r2, -64($r29)
	sw	$r2, 20($r3)
	lw	$r2, -60($r29)
	sw	$r2, 16($r3)
	lw	$r2, -56($r29)
	sw	$r2, 12($r3)
	lw	$r2, -52($r29)
	sw	$r2, 8($r3)
	lw	$r2, -48($r29)
	sw	$r2, 4($r3)
	lw	$r2, -44($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	j	.init_line_elements.3318	! calldir-tail
.ble_else.20508:
	addi	$r2, $r5, 0
	jr	$r31
.ble_else.20507:
	jr	$r31
.calc_dirvec.3328:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 5
	bgt	$r6, $r2, .ble_else.20509
	mul.s	$f4, $f0, $f0
	mul.s	$f6, $f2, $f2
	add.s	$f4, $f4, $f6
	lfh	$f6, 16256
	lfl	$f6, 0
	add.s	$f4, $f4, $f6
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f2, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f2, -20($r29)
	div.s	$f2, $f2, $f0
	lwcl	$f4, -16($r29)
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
	lw	$r4, 0($r4)
	swcl	$f2, 0($r4)
	swcl	$f4, 4($r4)
	swcl	$f0, 8($r4)
	addi	$r4, $r3, 40
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	fneg	$f6, $f4
	swcl	$f2, 0($r4)
	swcl	$f0, 4($r4)
	swcl	$f6, 8($r4)
	addi	$r4, $r3, 80
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	fneg	$f6, $f2
	fneg	$f8, $f4
	swcl	$f0, 0($r4)
	swcl	$f6, 4($r4)
	swcl	$f8, 8($r4)
	addi	$r4, $r3, 1
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	fneg	$f6, $f2
	fneg	$f8, $f4
	fneg	$f10, $f0
	swcl	$f6, 0($r4)
	swcl	$f8, 4($r4)
	swcl	$f10, 8($r4)
	addi	$r4, $r3, 41
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	fneg	$f6, $f2
	fneg	$f8, $f0
	swcl	$f6, 0($r4)
	swcl	$f8, 4($r4)
	swcl	$f4, 8($r4)
	addi	$r3, $r3, 81
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	lw	$r2, 0($r2)
	fneg	$f0, $f0
	swcl	$f0, 0($r2)
	swcl	$f2, 4($r2)
	swcl	$f4, 8($r2)
	jr	$r31
.ble_else.20509:
	mul.s	$f0, $f2, $f2
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f0, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r3, -12($r29)
	sw	$r28, -24($r29)
	swcl	$f6, -28($r29)
	sw	$r2, -32($r29)
	swcl	$f4, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.atan.2806	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lfh	$f2, 16329
	lfl	$f2, 4059
	lwcl	$f4, -44($r29)
	sub.s	$f2, $f2, $f4
	swcl	$f0, -48($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -40($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	mul.s	$f2, $f0, $f0
	lfh	$f4, 15820
	lfl	$f4, 52429
	add.s	$f2, $f2, $f4
	swcl	$f0, -52($r29)
	sw	$r2, -56($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f0, -60($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.atan.2806	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f2, -28($r29)
	mul.s	$f0, $f0, $f2
	swcl	$f0, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lfh	$f2, 16329
	lfl	$f2, 4059
	lwcl	$f4, -64($r29)
	sub.s	$f2, $f2, $f4
	swcl	$f0, -68($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.sin.2812	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -68($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	mul.s	$f2, $f0, $f2
	lwcl	$f0, -52($r29)
	lwcl	$f4, -36($r29)
	lwcl	$f6, -28($r29)
	lw	$r2, -56($r29)
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	lw	$r28, -24($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_dirvecs.3336:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.20511
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
	jal	.mendoi2.20513	! callcls
	j	.mendoi1.20512	! callcls
.mendoi2.20513:	! callcls
	jr	$r27	! callcls
.mendoi1.20512:	! callcls
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
	jal	.mendoi2.20515	! callcls
	j	.mendoi1.20514	! callcls
.mendoi2.20515:	! callcls
	jr	$r27	! callcls
.mendoi1.20514:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r3, .ble_else.20516
	addi	$r3, $r3, -5
	j	.ble_cont.20517
.ble_else.20516:
.ble_cont.20517:
	lwcl	$f0, -12($r29)
	lw	$r4, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20511:
	jr	$r31
.calc_dirvec_rows.3341:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.20519
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
	jal	.mendoi2.20521	! callcls
	j	.mendoi1.20520	! callcls
.mendoi2.20521:	! callcls
	jr	$r27	! callcls
.mendoi1.20520:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -16($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, .ble_else.20522
	addi	$r3, $r3, -5
	j	.ble_cont.20523
.ble_else.20522:
.ble_cont.20523:
	lw	$r4, -12($r29)
	addi	$r4, $r4, 4
	addi	$r5, $r0, 0
	bgt	$r5, $r2, .ble_else.20524
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r3, -32($r29)
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16230
	lfl	$f2, 26214
	sub.s	$f0, $f0, $f2
	addi	$r2, $r0, 4
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	lw	$r28, -20($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.20526	! callcls
	j	.mendoi1.20525	! callcls
.mendoi2.20526:	! callcls
	jr	$r27	! callcls
.mendoi1.20525:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	lw	$r3, -32($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, .ble_else.20527
	addi	$r3, $r3, -5
	j	.ble_cont.20528
.ble_else.20527:
.ble_cont.20528:
	lw	$r4, -28($r29)
	addi	$r4, $r4, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20524:
	jr	$r31
.ble_else.20519:
	jr	$r31
.create_dirvec_elements.3347:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.20531
	addi	$r5, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	lw	$r4, 0($r2)
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -20($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20532
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	lw	$r4, 0($r2)
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -28($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20533
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
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	lw	$r4, 0($r2)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -36($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20534
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
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r3, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -44($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	lw	$r28, -4($r29)
	addi	$r2, $r5, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20534:
	jr	$r31
.ble_else.20533:
	jr	$r31
.ble_else.20532:
	jr	$r31
.ble_else.20531:
	jr	$r31
.create_dirvecs.3350:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.20539
	addi	$r6, $r0, 120
	addi	$r7, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r6, -20($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -28($r29)
	sw	$r2, 0($r3)
	lw	$r2, -20($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	sll	$r2, $r3, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -36($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -40($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -44($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -44($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 115
	lw	$r28, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20541	! callcls
	j	.mendoi1.20540	! callcls
.mendoi2.20541:	! callcls
	jr	$r27	! callcls
.mendoi1.20540:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20542
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -48($r29)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -56($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -56($r29)
	sw	$r2, 0($r3)
	lw	$r2, -52($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	sll	$r2, $r3, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -60($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r4, 0($r2)
	sw	$r3, -64($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -64($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -24($r29)
	lw	$r2, 0($r2)
	sw	$r3, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -68($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 116
	lw	$r28, -8($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.20544	! callcls
	j	.mendoi1.20543	! callcls
.mendoi2.20544:	! callcls
	jr	$r27	! callcls
.mendoi1.20543:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -48($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20542:
	jr	$r31
.ble_else.20539:
	jr	$r31
.init_dirvec_constants.3352:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	bgt	$r7, $r3, .ble_else.20547
	sll	$r7, $r3, 2
	addu	$r1, $r2, $r7
	lw	$r7, 0($r1)
	lw	$r8, 0($r5)
	addi	$r8, $r8, -1
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.20549	! callcls
	j	.mendoi1.20548	! callcls
.mendoi2.20549:	! callcls
	jr	$r27	! callcls
.mendoi1.20548:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20550
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -16($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	addi	$r7, $r0, 0
	sw	$r2, -28($r29)
	bgt	$r7, $r6, .ble_else.20551
	sll	$r7, $r6, 2
	lw	$r8, -12($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r3)
	lw	$r10, 0($r3)
	lw	$r11, 4($r7)
	addi	$r12, $r0, 1
	sw	$r3, -32($r29)
	bne	$r11, $r12, .beq_else.20553
	sw	$r9, -36($r29)
	sw	$r6, -40($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20554
.beq_else.20553:
	addi	$r12, $r0, 2
	bne	$r11, $r12, .beq_else.20555
	sw	$r9, -36($r29)
	sw	$r6, -40($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20556
.beq_else.20555:
	sw	$r9, -36($r29)
	sw	$r6, -40($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20556:
.beq_cont.20554:
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	lw	$r28, -8($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.20558	! callcls
	j	.mendoi1.20557	! callcls
.mendoi2.20558:	! callcls
	jr	$r27	! callcls
.mendoi1.20557:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	j	.ble_cont.20552
.ble_else.20551:
.ble_cont.20552:
	lw	$r2, -28($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20559
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -16($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	lw	$r28, -8($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20561	! callcls
	j	.mendoi1.20560	! callcls
.mendoi2.20561:	! callcls
	jr	$r27	! callcls
.mendoi1.20560:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20562
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -16($r29)
	lw	$r5, 0($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r2, -48($r29)
	bgt	$r6, $r5, .ble_else.20563
	sll	$r6, $r5, 2
	lw	$r7, -12($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r3, -52($r29)
	bne	$r9, $r10, .beq_else.20565
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20566
.beq_else.20565:
	addi	$r10, $r0, 2
	bne	$r9, $r10, .beq_else.20567
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20568
.beq_else.20567:
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20568:
.beq_cont.20566:
	addi	$r3, $r3, -1
	lw	$r2, -52($r29)
	lw	$r28, -8($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20570	! callcls
	j	.mendoi1.20569	! callcls
.mendoi2.20570:	! callcls
	jr	$r27	! callcls
.mendoi1.20569:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	j	.ble_cont.20564
.ble_else.20563:
.ble_cont.20564:
	lw	$r2, -48($r29)
	addi	$r3, $r2, -1
	lw	$r2, -20($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20562:
	jr	$r31
.ble_else.20559:
	jr	$r31
.ble_else.20550:
	jr	$r31
.ble_else.20547:
	jr	$r31
.init_vecset_constants.3355:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	bgt	$r8, $r2, .ble_else.20575
	sll	$r8, $r2, 2
	addu	$r1, $r7, $r8
	lw	$r8, 0($r1)
	lw	$r9, 476($r8)
	lw	$r10, 0($r4)
	addi	$r10, $r10, -1
	addi	$r11, $r0, 0
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r2, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r5, -24($r29)
	sw	$r4, -28($r29)
	sw	$r8, -32($r29)
	bgt	$r11, $r10, .ble_else.20576
	sll	$r11, $r10, 2
	addu	$r1, $r3, $r11
	lw	$r11, 0($r1)
	lw	$r12, 4($r9)
	lw	$r13, 0($r9)
	lw	$r14, 4($r11)
	addi	$r15, $r0, 1
	sw	$r9, -36($r29)
	bne	$r14, $r15, .beq_else.20578
	sw	$r12, -40($r29)
	sw	$r10, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20579
.beq_else.20578:
	addi	$r15, $r0, 2
	bne	$r14, $r15, .beq_else.20580
	sw	$r12, -40($r29)
	sw	$r10, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20581
.beq_else.20580:
	sw	$r12, -40($r29)
	sw	$r10, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20581:
.beq_cont.20579:
	addi	$r3, $r3, -1
	lw	$r2, -36($r29)
	lw	$r28, -24($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20583	! callcls
	j	.mendoi1.20582	! callcls
.mendoi2.20583:	! callcls
	jr	$r27	! callcls
.mendoi1.20582:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	j	.ble_cont.20577
.ble_else.20576:
.ble_cont.20577:
	lw	$r2, -32($r29)
	lw	$r3, 472($r2)
	lw	$r4, -28($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	lw	$r28, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.20585	! callcls
	j	.mendoi1.20584	! callcls
.mendoi2.20585:	! callcls
	jr	$r27	! callcls
.mendoi1.20584:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -32($r29)
	lw	$r3, 468($r2)
	lw	$r4, -28($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	bgt	$r6, $r5, .ble_else.20586
	sll	$r6, $r5, 2
	lw	$r7, -20($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r8, 4($r3)
	lw	$r9, 0($r3)
	lw	$r10, 4($r6)
	addi	$r11, $r0, 1
	sw	$r3, -48($r29)
	bne	$r10, $r11, .beq_else.20588
	sw	$r8, -52($r29)
	sw	$r5, -56($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20589
.beq_else.20588:
	addi	$r11, $r0, 2
	bne	$r10, $r11, .beq_else.20590
	sw	$r8, -52($r29)
	sw	$r5, -56($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20591
.beq_else.20590:
	sw	$r8, -52($r29)
	sw	$r5, -56($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20591:
.beq_cont.20589:
	addi	$r3, $r3, -1
	lw	$r2, -48($r29)
	lw	$r28, -24($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20593	! callcls
	j	.mendoi1.20592	! callcls
.mendoi2.20593:	! callcls
	jr	$r27	! callcls
.mendoi1.20592:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	j	.ble_cont.20587
.ble_else.20586:
.ble_cont.20587:
	addi	$r3, $r0, 116
	lw	$r2, -32($r29)
	lw	$r28, -16($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.20595	! callcls
	j	.mendoi1.20594	! callcls
.mendoi2.20595:	! callcls
	jr	$r27	! callcls
.mendoi1.20594:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20596
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, 476($r3)
	lw	$r6, -28($r29)
	lw	$r7, 0($r6)
	addi	$r7, $r7, -1
	lw	$r28, -24($r29)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.20598	! callcls
	j	.mendoi1.20597	! callcls
.mendoi2.20598:	! callcls
	jr	$r27	! callcls
.mendoi1.20597:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 472($r2)
	lw	$r4, -28($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	bgt	$r6, $r5, .ble_else.20599
	sll	$r6, $r5, 2
	lw	$r7, -20($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r8, 4($r3)
	lw	$r9, 0($r3)
	lw	$r10, 4($r6)
	addi	$r11, $r0, 1
	sw	$r3, -68($r29)
	bne	$r10, $r11, .beq_else.20601
	sw	$r8, -72($r29)
	sw	$r5, -76($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20602
.beq_else.20601:
	addi	$r11, $r0, 2
	bne	$r10, $r11, .beq_else.20603
	sw	$r8, -72($r29)
	sw	$r5, -76($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20604
.beq_else.20603:
	sw	$r8, -72($r29)
	sw	$r5, -76($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20604:
.beq_cont.20602:
	addi	$r3, $r3, -1
	lw	$r2, -68($r29)
	lw	$r28, -24($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.20606	! callcls
	j	.mendoi1.20605	! callcls
.mendoi2.20606:	! callcls
	jr	$r27	! callcls
.mendoi1.20605:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	j	.ble_cont.20600
.ble_else.20599:
.ble_cont.20600:
	addi	$r3, $r0, 117
	lw	$r2, -64($r29)
	lw	$r28, -16($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.20608	! callcls
	j	.mendoi1.20607	! callcls
.mendoi2.20608:	! callcls
	jr	$r27	! callcls
.mendoi1.20607:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20609
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, 476($r3)
	lw	$r6, -28($r29)
	lw	$r6, 0($r6)
	addi	$r6, $r6, -1
	addi	$r7, $r0, 0
	sw	$r2, -80($r29)
	sw	$r3, -84($r29)
	bgt	$r7, $r6, .ble_else.20610
	sll	$r7, $r6, 2
	lw	$r8, -20($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r8, 4($r5)
	lw	$r9, 0($r5)
	lw	$r10, 4($r7)
	addi	$r11, $r0, 1
	sw	$r5, -88($r29)
	bne	$r10, $r11, .beq_else.20612
	sw	$r8, -92($r29)
	sw	$r6, -96($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20613
.beq_else.20612:
	addi	$r11, $r0, 2
	bne	$r10, $r11, .beq_else.20614
	sw	$r8, -92($r29)
	sw	$r6, -96($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20615
.beq_else.20614:
	sw	$r8, -92($r29)
	sw	$r6, -96($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20615:
.beq_cont.20613:
	addi	$r3, $r3, -1
	lw	$r2, -88($r29)
	lw	$r28, -24($r29)
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.20617	! callcls
	j	.mendoi1.20616	! callcls
.mendoi2.20617:	! callcls
	jr	$r27	! callcls
.mendoi1.20616:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	j	.ble_cont.20611
.ble_else.20610:
.ble_cont.20611:
	addi	$r3, $r0, 118
	lw	$r2, -84($r29)
	lw	$r28, -16($r29)
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.20619	! callcls
	j	.mendoi1.20618	! callcls
.mendoi2.20619:	! callcls
	jr	$r27	! callcls
.mendoi1.20618:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -80($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20620
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	addi	$r4, $r0, 119
	lw	$r28, -16($r29)
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.20622	! callcls
	j	.mendoi1.20621	! callcls
.mendoi2.20622:	! callcls
	jr	$r27	! callcls
.mendoi1.20621:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	lw	$r2, -100($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.20620:
	jr	$r31
.ble_else.20609:
	jr	$r31
.ble_else.20596:
	jr	$r31
.ble_else.20575:
	jr	$r31
.setup_rect_reflection.3366:
	lw	$r4, 24($r28)
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r2, $r2, 2
	lw	$r10, 0($r6)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, 28($r3)
	lwcl	$f2, 0($r3)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 0($r8)
	fneg	$f2, $f2
	lwcl	$f4, 4($r8)
	fneg	$f4, $f4
	lwcl	$f6, 8($r8)
	fneg	$f6, $f6
	addi	$r3, $r2, 1
	lwcl	$f8, 0($r8)
	addi	$r11, $r0, 3
	lfh	$f10, 0
	lfl	$f10, 0
	sw	$r6, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r8, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	sw	$r10, -24($r29)
	sw	$r3, -28($r29)
	swcl	$f0, -32($r29)
	sw	$r9, -36($r29)
	sw	$r5, -40($r29)
	swcl	$f6, -44($r29)
	swcl	$f4, -48($r29)
	swcl	$f8, -52($r29)
	sw	$r7, -56($r29)
	addi	$r2, $r11, 0	! g'_args
	fmove	$f0, $f10	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	lw	$r4, 0($r2)
	sw	$r3, -60($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -60($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -52($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -48($r29)
	swcl	$f0, 4($r4)
	lwcl	$f2, -44($r29)
	swcl	$f2, 8($r4)
	lw	$r5, -56($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	addi	$r7, $r0, 0
	sw	$r3, -64($r29)
	bgt	$r7, $r6, .ble_else.20627
	sll	$r7, $r6, 2
	lw	$r8, -40($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r7)
	addi	$r10, $r0, 1
	bne	$r9, $r10, .beq_else.20629
	sw	$r2, -68($r29)
	sw	$r6, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20630
.beq_else.20629:
	addi	$r10, $r0, 2
	bne	$r9, $r10, .beq_else.20631
	sw	$r2, -68($r29)
	sw	$r6, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20632
.beq_else.20631:
	sw	$r2, -68($r29)
	sw	$r6, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20632:
.beq_cont.20630:
	addi	$r3, $r3, -1
	lw	$r2, -64($r29)
	lw	$r28, -36($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.20634	! callcls
	j	.mendoi1.20633	! callcls
.mendoi2.20634:	! callcls
	jr	$r27	! callcls
.mendoi1.20633:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.ble_cont.20628
.ble_else.20627:
.ble_cont.20628:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -64($r29)
	sw	$r3, 4($r2)
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r4, -16($r29)
	addi	$r6, $r4, 2
	lw	$r7, -12($r29)
	lwcl	$f2, 4($r7)
	addi	$r8, $r0, 3
	lfh	$f4, 0
	lfl	$f4, 0
	sw	$r2, -76($r29)
	sw	$r6, -80($r29)
	swcl	$f2, -84($r29)
	addi	$r2, $r8, 0	! g'_args
	fmove	$f0, $f4	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	lw	$r4, 0($r2)
	sw	$r3, -88($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -88($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -8($r29)
	swcl	$f0, 0($r4)
	lwcl	$f2, -84($r29)
	swcl	$f2, 4($r4)
	lwcl	$f2, -44($r29)
	swcl	$f2, 8($r4)
	lw	$r5, -56($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	addi	$r7, $r0, 0
	sw	$r3, -92($r29)
	bgt	$r7, $r6, .ble_else.20635
	sll	$r7, $r6, 2
	lw	$r8, -40($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r7)
	addi	$r10, $r0, 1
	bne	$r9, $r10, .beq_else.20637
	sw	$r2, -96($r29)
	sw	$r6, -100($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20638
.beq_else.20637:
	addi	$r10, $r0, 2
	bne	$r9, $r10, .beq_else.20639
	sw	$r2, -96($r29)
	sw	$r6, -100($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20640
.beq_else.20639:
	sw	$r2, -96($r29)
	sw	$r6, -100($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20640:
.beq_cont.20638:
	addi	$r3, $r3, -1
	lw	$r2, -92($r29)
	lw	$r28, -36($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.20642	! callcls
	j	.mendoi1.20641	! callcls
.mendoi2.20642:	! callcls
	jr	$r27	! callcls
.mendoi1.20641:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	j	.ble_cont.20636
.ble_else.20635:
.ble_cont.20636:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -92($r29)
	sw	$r3, 4($r2)
	lw	$r3, -80($r29)
	sw	$r3, 0($r2)
	lw	$r3, -76($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	sw	$r2, 0($r1)
	lw	$r2, -24($r29)
	addi	$r3, $r2, 2
	lw	$r5, -16($r29)
	addi	$r5, $r5, 3
	lw	$r6, -12($r29)
	lwcl	$f2, 8($r6)
	addi	$r6, $r0, 3
	lfh	$f4, 0
	lfl	$f4, 0
	sw	$r3, -104($r29)
	sw	$r5, -108($r29)
	swcl	$f2, -112($r29)
	addi	$r2, $r6, 0	! g'_args
	fmove	$f0, $f4	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	lw	$r4, 0($r2)
	sw	$r3, -116($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -116($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -8($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -48($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -112($r29)
	swcl	$f0, 8($r4)
	lw	$r5, -56($r29)
	lw	$r5, 0($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -120($r29)
	bgt	$r6, $r5, .ble_else.20643
	sll	$r6, $r5, 2
	lw	$r7, -40($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, .beq_else.20645
	sw	$r2, -124($r29)
	sw	$r5, -128($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20646
.beq_else.20645:
	addi	$r8, $r0, 2
	bne	$r7, $r8, .beq_else.20647
	sw	$r2, -124($r29)
	sw	$r5, -128($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20648
.beq_else.20647:
	sw	$r2, -124($r29)
	sw	$r5, -128($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20648:
.beq_cont.20646:
	addi	$r3, $r3, -1
	lw	$r2, -120($r29)
	lw	$r28, -36($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.20650	! callcls
	j	.mendoi1.20649	! callcls
.mendoi2.20650:	! callcls
	jr	$r27	! callcls
.mendoi1.20649:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	j	.ble_cont.20644
.ble_else.20643:
.ble_cont.20644:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -120($r29)
	sw	$r3, 4($r2)
	lw	$r3, -108($r29)
	sw	$r3, 0($r2)
	lw	$r3, -104($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3
	sw	$r2, 0($r1)
	lw	$r2, -24($r29)
	addi	$r2, $r2, 3
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.setup_surface_reflection.3369:
	lw	$r4, 24($r28)
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	sll	$r2, $r2, 2
	addi	$r2, $r2, 1
	lw	$r10, 0($r6)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r11, 28($r3)
	lwcl	$f2, 0($r11)
	sub.s	$f0, $f0, $f2
	lw	$r11, 16($r3)
	lwcl	$f2, 0($r8)
	lwcl	$f4, 0($r11)
	mul.s	$f2, $f2, $f4
	lwcl	$f4, 4($r8)
	lwcl	$f6, 4($r11)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lwcl	$f4, 8($r8)
	lwcl	$f6, 8($r11)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	lw	$r11, 16($r3)
	lwcl	$f6, 0($r11)
	mul.s	$f4, $f4, $f6
	mul.s	$f4, $f4, $f2
	lwcl	$f6, 0($r8)
	sub.s	$f4, $f4, $f6
	lfh	$f6, 16384
	lfl	$f6, 0
	lw	$r11, 16($r3)
	lwcl	$f8, 4($r11)
	mul.s	$f6, $f6, $f8
	mul.s	$f6, $f6, $f2
	lwcl	$f8, 4($r8)
	sub.s	$f6, $f6, $f8
	lfh	$f8, 16384
	lfl	$f8, 0
	lw	$r3, 16($r3)
	lwcl	$f10, 8($r3)
	mul.s	$f8, $f8, $f10
	mul.s	$f2, $f8, $f2
	lwcl	$f8, 8($r8)
	sub.s	$f2, $f2, $f8
	addi	$r3, $r0, 3
	lfh	$f8, 0
	lfl	$f8, 0
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r10, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r9, -24($r29)
	sw	$r5, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f6, -36($r29)
	swcl	$f4, -40($r29)
	sw	$r7, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	fmove	$f0, $f8	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -44($r29)
	lw	$r4, 0($r2)
	sw	$r3, -48($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -48($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -40($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -36($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -32($r29)
	swcl	$f0, 8($r4)
	lw	$r5, -44($r29)
	lw	$r5, 0($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -52($r29)
	bgt	$r6, $r5, .ble_else.20652
	sll	$r6, $r5, 2
	lw	$r7, -28($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, .beq_else.20654
	sw	$r2, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20655
.beq_else.20654:
	addi	$r8, $r0, 2
	bne	$r7, $r8, .beq_else.20656
	sw	$r2, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20657
.beq_else.20656:
	sw	$r2, -56($r29)
	sw	$r5, -60($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20657:
.beq_cont.20655:
	addi	$r3, $r3, -1
	lw	$r2, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.20659	! callcls
	j	.mendoi1.20658	! callcls
.mendoi2.20659:	! callcls
	jr	$r27	! callcls
.mendoi1.20658:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	j	.ble_cont.20653
.ble_else.20652:
.ble_cont.20653:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -52($r29)
	sw	$r3, 4($r2)
	lw	$r3, -16($r29)
	sw	$r3, 0($r2)
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.rt.3374:
	lw	$r4, 104($r28)
	lw	$r5, 100($r28)
	lw	$r6, 96($r28)
	lw	$r7, 92($r28)
	lw	$r8, 88($r28)
	lw	$r9, 84($r28)
	lw	$r10, 80($r28)
	lw	$r11, 76($r28)
	lw	$r12, 72($r28)
	lw	$r13, 68($r28)
	lw	$r14, 64($r28)
	lw	$r15, 60($r28)
	lw	$r16, 56($r28)
	lw	$r17, 52($r28)
	lw	$r18, 48($r28)
	lw	$r19, 44($r28)
	lw	$r20, 40($r28)
	lw	$r21, 36($r28)
	lw	$r22, 32($r28)
	lw	$r23, 28($r28)
	lw	$r24, 24($r28)
	lw	$r25, 20($r28)
	lw	$r26, 16($r28)
	lw	$r27, 12($r28)
	sw	$r9, -4($r29)
	lw	$r9, 8($r28)
	lw	$r28, 4($r28)
	sw	$r2, 0($r25)
	sw	$r3, 4($r25)
	sw	$r7, -8($r29)
	sra	$r7, $r2, 1
	sw	$r7, 0($r26)
	sra	$r3, $r3, 1
	sw	$r3, 4($r26)
	lfh	$f0, 17152
	lfl	$f0, 0
	sw	$r16, -12($r29)
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	sw	$r20, -24($r29)
	sw	$r4, -28($r29)
	sw	$r21, -32($r29)
	sw	$r23, -36($r29)
	sw	$r24, -40($r29)
	sw	$r22, -44($r29)
	sw	$r18, -48($r29)
	sw	$r27, -52($r29)
	sw	$r28, -56($r29)
	sw	$r9, -60($r29)
	sw	$r17, -64($r29)
	sw	$r11, -68($r29)
	sw	$r15, -72($r29)
	sw	$r12, -76($r29)
	sw	$r19, -80($r29)
	sw	$r13, -84($r29)
	sw	$r14, -88($r29)
	sw	$r10, -92($r29)
	sw	$r25, -96($r29)
	sw	$r8, -100($r29)
	swcl	$f0, -104($r29)
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lwcl	$f2, -104($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -100($r29)
	swcl	$f0, 0($r2)
	lw	$r2, -96($r29)
	lw	$r3, 0($r2)
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -108($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	sw	$r2, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -120($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	sw	$r2, -124($r29)
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	sw	$r2, -128($r29)
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	sw	$r2, -136($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -136($r29)
	sw	$r2, 24($r3)
	lw	$r2, -132($r29)
	sw	$r2, 20($r3)
	lw	$r2, -128($r29)
	sw	$r2, 16($r3)
	lw	$r2, -124($r29)
	sw	$r2, 12($r3)
	lw	$r2, -120($r29)
	sw	$r2, 8($r3)
	lw	$r2, -116($r29)
	sw	$r2, 4($r3)
	lw	$r2, -112($r29)
	sw	$r2, 0($r3)
	lw	$r2, -108($r29)
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -96($r29)
	lw	$r4, 0($r3)
	addi	$r4, $r4, -2
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.init_line_elements.3318	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -96($r29)
	lw	$r4, 0($r3)
	addi	$r5, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -140($r29)
	sw	$r4, -144($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	sw	$r2, -148($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	sw	$r2, -160($r29)
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	sw	$r2, -164($r29)
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -168($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	sw	$r2, -172($r29)
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -172($r29)
	sw	$r2, 24($r3)
	lw	$r2, -168($r29)
	sw	$r2, 20($r3)
	lw	$r2, -164($r29)
	sw	$r2, 16($r3)
	lw	$r2, -160($r29)
	sw	$r2, 12($r3)
	lw	$r2, -156($r29)
	sw	$r2, 8($r3)
	lw	$r2, -152($r29)
	sw	$r2, 4($r3)
	lw	$r2, -148($r29)
	sw	$r2, 0($r3)
	lw	$r2, -144($r29)
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -96($r29)
	lw	$r4, 0($r3)
	addi	$r4, $r4, -2
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.init_line_elements.3318	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -96($r29)
	lw	$r4, 0($r3)
	addi	$r5, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -176($r29)
	sw	$r4, -180($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	sw	$r2, -184($r29)
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -188($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	sw	$r2, -196($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	sw	$r2, -200($r29)
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -204($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	sw	$r2, -208($r29)
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.create_float5x3array.3314	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 32
	sw	$r2, 28($r3)
	lw	$r2, -208($r29)
	sw	$r2, 24($r3)
	lw	$r2, -204($r29)
	sw	$r2, 20($r3)
	lw	$r2, -200($r29)
	sw	$r2, 16($r3)
	lw	$r2, -196($r29)
	sw	$r2, 12($r3)
	lw	$r2, -192($r29)
	sw	$r2, 8($r3)
	lw	$r2, -188($r29)
	sw	$r2, 4($r3)
	lw	$r2, -184($r29)
	sw	$r2, 0($r3)
	lw	$r2, -180($r29)
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -96($r29)
	lw	$r4, 0($r3)
	addi	$r4, $r4, -2
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.init_line_elements.3318	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r28, -92($r29)
	sw	$r2, -212($r29)
	sw	$r31, -216($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -216	! callcls
	jal	.mendoi2.20662	! callcls
	j	.mendoi1.20661	! callcls
.mendoi2.20662:	! callcls
	jr	$r27	! callcls
.mendoi1.20661:	! callcls
	addi	$r29, $r29, 216	! callcls
	lw	$r31, -216($r29)	! callcls
	lw	$r28, -88($r29)
	sw	$r31, -216($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -216	! callcls
	jal	.mendoi2.20664	! callcls
	j	.mendoi1.20663	! callcls
.mendoi2.20664:	! callcls
	jr	$r27	! callcls
.mendoi1.20663:	! callcls
	addi	$r29, $r29, 216	! callcls
	lw	$r31, -216($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -84($r29)
	sw	$r2, -216($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20666	! callcls
	j	.mendoi1.20665	! callcls
.mendoi2.20666:	! callcls
	jr	$r27	! callcls
.mendoi1.20665:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.20667
	lw	$r2, -80($r29)
	lw	$r3, -216($r29)
	sw	$r3, 0($r2)
	j	.beq_cont.20668
.beq_else.20667:
	addi	$r2, $r0, 1
	lw	$r28, -76($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20670	! callcls
	j	.mendoi1.20669	! callcls
.mendoi2.20670:	! callcls
	jr	$r27	! callcls
.mendoi1.20669:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
.beq_cont.20668:
	addi	$r2, $r0, 0
	lw	$r28, -72($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20672	! callcls
	j	.mendoi1.20671	! callcls
.mendoi2.20672:	! callcls
	jr	$r27	! callcls
.mendoi1.20671:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
	addi	$r2, $r0, 0
	lw	$r28, -68($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20674	! callcls
	j	.mendoi1.20673	! callcls
.mendoi2.20674:	! callcls
	jr	$r27	! callcls
.mendoi1.20673:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
	lw	$r3, -64($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 80
	output	$r2
	addi	$r2, $r0, 54
	output	$r2
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -96($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.print_int.2854	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	lw	$r2, -96($r29)
	lw	$r3, 4($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.print_int.2854	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	addi	$r2, $r0, 32
	output	$r2
	addi	$r2, $r0, 255
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.print_int.2854	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	addi	$r2, $r0, 4
	lw	$r28, -60($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20676	! callcls
	j	.mendoi1.20675	! callcls
.mendoi2.20676:	! callcls
	jr	$r27	! callcls
.mendoi1.20675:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r28, -56($r29)
	sw	$r31, -220($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -220	! callcls
	jal	.mendoi2.20678	! callcls
	j	.mendoi1.20677	! callcls
.mendoi2.20678:	! callcls
	jr	$r27	! callcls
.mendoi1.20677:	! callcls
	addi	$r29, $r29, 220	! callcls
	lw	$r31, -220($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r3, 16($r2)
	lw	$r4, 476($r3)
	lw	$r5, -80($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	addi	$r7, $r0, 0
	sw	$r3, -220($r29)
	bgt	$r7, $r6, .ble_else.20679
	sll	$r7, $r6, 2
	lw	$r8, -48($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r4)
	lw	$r10, 0($r4)
	lw	$r11, 4($r7)
	addi	$r12, $r0, 1
	sw	$r4, -224($r29)
	bne	$r11, $r12, .beq_else.20681
	sw	$r9, -228($r29)
	sw	$r6, -232($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -236($r29)	! calldir
	addi	$r29, $r29, -236	! calldir
	jal	.setup_rect_table.3125	! calldir
	addi	$r29, $r29, 236	! calldir
	lw	$r31, -236($r29)	! calldir
	lw	$r3, -232($r29)
	sll	$r4, $r3, 2
	lw	$r5, -228($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20682
.beq_else.20681:
	addi	$r12, $r0, 2
	bne	$r11, $r12, .beq_else.20683
	sw	$r9, -228($r29)
	sw	$r6, -232($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -236($r29)	! calldir
	addi	$r29, $r29, -236	! calldir
	jal	.setup_surface_table.3128	! calldir
	addi	$r29, $r29, 236	! calldir
	lw	$r31, -236($r29)	! calldir
	lw	$r3, -232($r29)
	sll	$r4, $r3, 2
	lw	$r5, -228($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.20684
.beq_else.20683:
	sw	$r9, -228($r29)
	sw	$r6, -232($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -236($r29)	! calldir
	addi	$r29, $r29, -236	! calldir
	jal	.setup_second_table.3131	! calldir
	addi	$r29, $r29, 236	! calldir
	lw	$r31, -236($r29)	! calldir
	lw	$r3, -232($r29)
	sll	$r4, $r3, 2
	lw	$r5, -228($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.20684:
.beq_cont.20682:
	addi	$r3, $r3, -1
	lw	$r2, -224($r29)
	lw	$r28, -44($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20686	! callcls
	j	.mendoi1.20685	! callcls
.mendoi2.20686:	! callcls
	jr	$r27	! callcls
.mendoi1.20685:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	j	.ble_cont.20680
.ble_else.20679:
.ble_cont.20680:
	addi	$r3, $r0, 118
	lw	$r2, -220($r29)
	lw	$r28, -40($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20688	! callcls
	j	.mendoi1.20687	! callcls
.mendoi2.20688:	! callcls
	jr	$r27	! callcls
.mendoi1.20687:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r2, 12($r2)
	addi	$r3, $r0, 119
	lw	$r28, -40($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20690	! callcls
	j	.mendoi1.20689	! callcls
.mendoi2.20690:	! callcls
	jr	$r27	! callcls
.mendoi1.20689:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	addi	$r2, $r0, 2
	lw	$r28, -36($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20692	! callcls
	j	.mendoi1.20691	! callcls
.mendoi2.20692:	! callcls
	jr	$r27	! callcls
.mendoi1.20691:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	lw	$r2, -32($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -28($r29)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r3)
	lw	$r2, -80($r29)
	lw	$r3, 0($r2)
	addi	$r3, $r3, -1
	lw	$r4, -24($r29)
	lw	$r28, -44($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20694	! callcls
	j	.mendoi1.20693	! callcls
.mendoi2.20694:	! callcls
	jr	$r27	! callcls
.mendoi1.20693:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	lw	$r2, -80($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.20695
	sll	$r3, $r2, 2
	lw	$r4, -48($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, 8($r3)
	addi	$r5, $r0, 2
	bne	$r4, $r5, .beq_else.20697
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.20699
	addi	$r4, $r0, 0
	j	.bclt_cont.20700
.bclt_else.20699:
	addi	$r4, $r0, 1
.bclt_cont.20700:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.20701
	j	.beq_cont.20702
.beq_else.20701:
	lw	$r4, 4($r3)
	addi	$r5, $r0, 1
	bne	$r4, $r5, .beq_else.20703
	lw	$r28, -20($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20706	! callcls
	j	.mendoi1.20705	! callcls
.mendoi2.20706:	! callcls
	jr	$r27	! callcls
.mendoi1.20705:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	j	.beq_cont.20704
.beq_else.20703:
	addi	$r5, $r0, 2
	bne	$r4, $r5, .beq_else.20707
	lw	$r28, -16($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20710	! callcls
	j	.mendoi1.20709	! callcls
.mendoi2.20710:	! callcls
	jr	$r27	! callcls
.mendoi1.20709:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	j	.beq_cont.20708
.beq_else.20707:
.beq_cont.20708:
.beq_cont.20704:
.beq_cont.20702:
	j	.beq_cont.20698
.beq_else.20697:
.beq_cont.20698:
	j	.ble_cont.20696
.ble_else.20695:
.ble_cont.20696:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r2, -176($r29)
	lw	$r28, -12($r29)
	sw	$r31, -236($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -236	! callcls
	jal	.mendoi2.20712	! callcls
	j	.mendoi1.20711	! callcls
.mendoi2.20712:	! callcls
	jr	$r27	! callcls
.mendoi1.20711:	! callcls
	addi	$r29, $r29, 236	! callcls
	lw	$r31, -236($r29)	! callcls
	addi	$r3, $r0, 0
	addi	$r4, $r0, 2
	lw	$r2, -96($r29)
	lw	$r5, 4($r2)
	bgt	$r5, $r3, .ble_else.20713
	jr	$r31
.ble_else.20713:
	lw	$r2, 4($r2)
	addi	$r2, $r2, -1
	sw	$r3, -236($r29)
	bgt	$r2, $r3, .ble_else.20715
	j	.ble_cont.20716
.ble_else.20715:
	addi	$r2, $r0, 1
	lw	$r5, -212($r29)
	lw	$r28, -12($r29)
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -240($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -240	! callcls
	jal	.mendoi2.20718	! callcls
	j	.mendoi1.20717	! callcls
.mendoi2.20718:	! callcls
	jr	$r27	! callcls
.mendoi1.20717:	! callcls
	addi	$r29, $r29, 240	! callcls
	lw	$r31, -240($r29)	! callcls
.ble_cont.20716:
	addi	$r2, $r0, 0
	lw	$r3, -236($r29)
	lw	$r4, -140($r29)
	lw	$r5, -176($r29)
	lw	$r6, -212($r29)
	lw	$r28, -8($r29)
	sw	$r31, -240($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -240	! callcls
	jal	.mendoi2.20720	! callcls
	j	.mendoi1.20719	! callcls
.mendoi2.20720:	! callcls
	jr	$r27	! callcls
.mendoi1.20719:	! callcls
	addi	$r29, $r29, 240	! callcls
	lw	$r31, -240($r29)	! callcls
	addi	$r2, $r0, 1
	addi	$r6, $r0, 4
	lw	$r3, -176($r29)
	lw	$r4, -212($r29)
	lw	$r5, -140($r29)
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
	la	$r4, .read_int_token.2820
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -4($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r0, 1
	addi	$r6, $r0, 0
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
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
	la	$r4, .read_float_token1.2829
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -16($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, .read_float_token2.2832
	sw	$r6, 0($r5)
	lw	$r6, -20($r29)
	sw	$r6, 8($r5)
	lw	$r7, -24($r29)
	sw	$r7, 4($r5)
	addi	$r8, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, .read_float.2834
	sw	$r9, 0($r8)
	sw	$r5, 24($r8)
	sw	$r3, 20($r8)
	sw	$r2, 16($r8)
	sw	$r4, 12($r8)
	sw	$r6, 8($r8)
	sw	$r7, 4($r8)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r8, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
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
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_array	! calldir
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
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 17279
	lfl	$f0, 0
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 50
	addi	$r4, $r0, 1
	addi	$r5, $r0, -1
	sw	$r2, -52($r29)
	sw	$r3, -56($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -56($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 1
	lw	$r5, 0($r2)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_array	! calldir
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
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_float_array	! calldir
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
	addi	$r3, $r0, 2
	addi	$r4, $r0, 0
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	addi	$r3, $r0, 1
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
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -140($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -144($r29)
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	addi	$r3, $r0, 0
	addi	$r4, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r4)
	lw	$r2, -144($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r4, 0
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	addi	$r3, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	addi	$r3, $r0, 60
	lw	$r4, -152($r29)
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -156($r29)
	sw	$r4, 0($r3)
	addi	$r5, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -160($r29)
	sw	$r2, -164($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 0
	sw	$r3, -168($r29)
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -168($r29)
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
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, -172($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r4, .read_screen_settings.3020
	sw	$r4, 0($r3)
	lw	$r4, -44($r29)
	sw	$r4, 24($r3)
	lw	$r5, -136($r29)
	sw	$r5, 20($r3)
	lw	$r6, -132($r29)
	sw	$r6, 16($r3)
	lw	$r7, -128($r29)
	sw	$r7, 12($r3)
	lw	$r8, -40($r29)
	sw	$r8, 8($r3)
	lw	$r8, -28($r29)
	sw	$r8, 4($r3)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 28
	la	$r10, .read_light.3022
	sw	$r10, 0($r9)
	lw	$r10, -12($r29)
	sw	$r10, 24($r9)
	lw	$r11, -8($r29)
	sw	$r11, 20($r9)
	lw	$r12, -4($r29)
	sw	$r12, 16($r9)
	sw	$r8, 12($r9)
	lw	$r13, -48($r29)
	sw	$r13, 8($r9)
	lw	$r14, -52($r29)
	sw	$r14, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 24
	la	$r16, .read_nth_object.3027
	sw	$r16, 0($r15)
	sw	$r10, 20($r15)
	sw	$r11, 16($r15)
	sw	$r12, 12($r15)
	sw	$r8, 8($r15)
	lw	$r8, -36($r29)
	sw	$r8, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, .read_object.3029
	sw	$r17, 0($r16)
	sw	$r15, 8($r16)
	lw	$r17, -32($r29)
	sw	$r17, 4($r16)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 16
	la	$r19, .read_net_item.3033
	sw	$r19, 0($r18)
	sw	$r10, 12($r18)
	sw	$r11, 8($r18)
	sw	$r12, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 20
	la	$r20, .read_or_network.3035
	sw	$r20, 0($r19)
	sw	$r18, 16($r19)
	sw	$r10, 12($r19)
	sw	$r11, 8($r19)
	sw	$r12, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 24
	la	$r21, .read_and_network.3037
	sw	$r21, 0($r20)
	sw	$r18, 20($r20)
	sw	$r10, 16($r20)
	sw	$r11, 12($r20)
	sw	$r12, 8($r20)
	lw	$r10, -60($r29)
	sw	$r10, 4($r20)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 8
	la	$r12, .solver_rect_surface.3041
	sw	$r12, 0($r11)
	lw	$r12, -72($r29)
	sw	$r12, 4($r11)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 8
	la	$r21, .solver_surface.3056
	sw	$r21, 0($r18)
	sw	$r12, 4($r18)
	addi	$r21, $r30, 0
	addi	$r30, $r30, 8
	la	$r22, .solver_second.3075
	sw	$r22, 0($r21)
	sw	$r12, 4($r21)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 20
	la	$r23, .solver.3081
	sw	$r23, 0($r22)
	sw	$r21, 16($r22)
	sw	$r11, 12($r22)
	sw	$r12, 8($r22)
	sw	$r8, 4($r22)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 8
	la	$r24, .solver_rect_fast.3085
	sw	$r24, 0($r23)
	sw	$r12, 4($r23)
	addi	$r24, $r30, 0
	addi	$r30, $r30, 8
	la	$r25, .solver_second_fast.3098
	sw	$r25, 0($r24)
	sw	$r12, 4($r24)
	addi	$r25, $r30, 0
	addi	$r30, $r30, 8
	la	$r26, .solver_second_fast2.3115
	sw	$r26, 0($r25)
	sw	$r12, 4($r25)
	addi	$r26, $r30, 0
	addi	$r30, $r30, 20
	la	$r27, .solver_fast2.3122
	sw	$r27, 0($r26)
	sw	$r25, 16($r26)
	sw	$r23, 12($r26)
	sw	$r12, 8($r26)
	sw	$r8, 4($r26)
	addi	$r27, $r30, 0
	addi	$r30, $r30, 8
	la	$r28, .iter_setup_dirvec_constants.3134
	sw	$r28, 0($r27)
	sw	$r8, 4($r27)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 8
	sw	$r20, -176($r29)
	la	$r20, .setup_startp_constants.3139
	sw	$r20, 0($r28)
	sw	$r8, 4($r28)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 8
	sw	$r9, -180($r29)
	la	$r9, .check_all_inside.3164
	sw	$r9, 0($r20)
	sw	$r8, 4($r20)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 40
	sw	$r15, -184($r29)
	la	$r15, .shadow_check_and_group.3170
	sw	$r15, 0($r9)
	lw	$r15, -156($r29)
	sw	$r15, 36($r9)
	sw	$r24, 32($r9)
	sw	$r23, 28($r9)
	sw	$r12, 24($r9)
	sw	$r8, 20($r9)
	sw	$r13, 16($r9)
	sw	$r16, -188($r29)
	lw	$r16, -84($r29)
	sw	$r16, 12($r9)
	sw	$r19, -192($r29)
	lw	$r19, -164($r29)
	sw	$r19, 8($r9)
	sw	$r20, 4($r9)
	sw	$r3, -196($r29)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	sw	$r27, -200($r29)
	la	$r27, .shadow_check_one_or_group.3173
	sw	$r27, 0($r3)
	sw	$r9, 8($r3)
	sw	$r10, 4($r3)
	addi	$r27, $r30, 0
	addi	$r30, $r30, 44
	la	$r6, .shadow_check_one_or_matrix.3176
	sw	$r6, 0($r27)
	sw	$r15, 40($r27)
	sw	$r24, 36($r27)
	sw	$r23, 32($r27)
	sw	$r12, 28($r27)
	sw	$r3, 24($r27)
	sw	$r9, 20($r27)
	sw	$r8, 16($r27)
	sw	$r16, 12($r27)
	sw	$r19, 8($r27)
	sw	$r10, 4($r27)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 48
	la	$r6, .solve_each_element.3179
	sw	$r6, 0($r3)
	lw	$r6, -80($r29)
	sw	$r6, 44($r3)
	lw	$r9, -120($r29)
	sw	$r9, 40($r3)
	sw	$r18, 36($r3)
	sw	$r21, 32($r3)
	sw	$r11, 28($r3)
	sw	$r12, 24($r3)
	sw	$r8, 20($r3)
	lw	$r19, -76($r29)
	sw	$r19, 16($r3)
	sw	$r16, 12($r3)
	lw	$r24, -88($r29)
	sw	$r24, 8($r3)
	sw	$r20, 4($r3)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 12
	la	$r5, .solve_one_or_network.3183
	sw	$r5, 0($r15)
	sw	$r3, 8($r15)
	sw	$r10, 4($r15)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 48
	la	$r7, .trace_or_matrix.3187
	sw	$r7, 0($r5)
	sw	$r6, 44($r5)
	sw	$r9, 40($r5)
	sw	$r18, 36($r5)
	sw	$r21, 32($r5)
	sw	$r11, 28($r5)
	sw	$r12, 24($r5)
	sw	$r22, 20($r5)
	sw	$r15, 16($r5)
	sw	$r3, 12($r5)
	sw	$r8, 8($r5)
	sw	$r10, 4($r5)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	la	$r7, .solve_each_element_fast.3193
	sw	$r7, 0($r3)
	sw	$r6, 40($r3)
	lw	$r7, -124($r29)
	sw	$r7, 36($r3)
	sw	$r25, 32($r3)
	sw	$r23, 28($r3)
	sw	$r12, 24($r3)
	sw	$r8, 20($r3)
	sw	$r19, 16($r3)
	sw	$r16, 12($r3)
	sw	$r24, 8($r3)
	sw	$r20, 4($r3)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 12
	la	$r15, .solve_one_or_network_fast.3197
	sw	$r15, 0($r11)
	sw	$r3, 8($r11)
	sw	$r10, 4($r11)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 40
	la	$r18, .trace_or_matrix_fast.3201
	sw	$r18, 0($r15)
	sw	$r6, 36($r15)
	sw	$r25, 32($r15)
	sw	$r23, 28($r15)
	sw	$r26, 24($r15)
	sw	$r12, 20($r15)
	sw	$r11, 16($r15)
	sw	$r3, 12($r15)
	sw	$r8, 8($r15)
	sw	$r10, 4($r15)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 36
	la	$r20, .judge_intersection_fast.3205
	sw	$r20, 0($r18)
	sw	$r15, 32($r18)
	sw	$r6, 28($r18)
	sw	$r26, 24($r18)
	sw	$r12, 20($r18)
	sw	$r11, 16($r18)
	sw	$r3, 12($r18)
	lw	$r3, -68($r29)
	sw	$r3, 8($r18)
	sw	$r10, 4($r18)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r11, .get_nvector_second.3211
	sw	$r11, 0($r10)
	lw	$r11, -92($r29)
	sw	$r11, 8($r10)
	sw	$r16, 4($r10)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 16
	la	$r20, .get_nvector.3213
	sw	$r20, 0($r12)
	sw	$r11, 12($r12)
	sw	$r19, 8($r12)
	sw	$r10, 4($r12)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 8
	la	$r21, .utexture.3216
	sw	$r21, 0($r20)
	lw	$r21, -96($r29)
	sw	$r21, 4($r20)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 44
	la	$r23, .trace_reflections.3223
	sw	$r23, 0($r22)
	sw	$r15, 40($r22)
	sw	$r6, 36($r22)
	sw	$r21, 32($r22)
	sw	$r27, 28($r22)
	lw	$r23, -104($r29)
	sw	$r23, 24($r22)
	lw	$r25, -172($r29)
	sw	$r25, 20($r22)
	sw	$r3, 16($r22)
	sw	$r11, 12($r22)
	sw	$r19, 8($r22)
	sw	$r24, 4($r22)
	addi	$r26, $r30, 0
	addi	$r30, $r30, 88
	la	$r25, .trace_ray.3228
	sw	$r25, 0($r26)
	sw	$r20, 84($r26)
	sw	$r22, 80($r26)
	sw	$r5, 76($r26)
	sw	$r6, 72($r26)
	sw	$r21, 68($r26)
	sw	$r7, 64($r26)
	sw	$r9, 60($r26)
	sw	$r27, 56($r26)
	sw	$r28, 52($r26)
	sw	$r23, 48($r26)
	sw	$r3, 44($r26)
	sw	$r8, 40($r26)
	sw	$r11, 36($r26)
	sw	$r2, 32($r26)
	sw	$r17, 28($r26)
	sw	$r13, 24($r26)
	sw	$r19, 20($r26)
	sw	$r16, 16($r26)
	sw	$r24, 12($r26)
	sw	$r10, 8($r26)
	sw	$r14, 4($r26)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 60
	la	$r14, .trace_diffuse_ray.3234
	sw	$r14, 0($r5)
	sw	$r20, 56($r5)
	sw	$r15, 52($r5)
	sw	$r6, 48($r5)
	sw	$r21, 44($r5)
	sw	$r27, 40($r5)
	sw	$r3, 36($r5)
	sw	$r8, 32($r5)
	sw	$r11, 28($r5)
	sw	$r13, 24($r5)
	sw	$r19, 20($r5)
	sw	$r16, 16($r5)
	sw	$r24, 12($r5)
	sw	$r10, 8($r5)
	lw	$r6, -100($r29)
	sw	$r6, 4($r5)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 56
	la	$r14, .iter_trace_diffuse_rays.3237
	sw	$r14, 0($r10)
	sw	$r20, 52($r10)
	sw	$r5, 48($r10)
	sw	$r21, 44($r10)
	sw	$r27, 40($r10)
	sw	$r3, 36($r10)
	sw	$r8, 32($r10)
	sw	$r11, 28($r10)
	sw	$r13, 24($r10)
	sw	$r18, 20($r10)
	sw	$r16, 16($r10)
	sw	$r24, 12($r10)
	sw	$r12, 8($r10)
	sw	$r6, 4($r10)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 24
	la	$r12, .trace_diffuse_ray_80percent.3246
	sw	$r12, 0($r11)
	sw	$r7, 20($r11)
	sw	$r28, 16($r11)
	sw	$r17, 12($r11)
	sw	$r10, 8($r11)
	lw	$r12, -148($r29)
	sw	$r12, 4($r11)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 36
	la	$r15, .calc_diffuse_using_1point.3250
	sw	$r15, 0($r14)
	sw	$r5, 32($r14)
	sw	$r7, 28($r14)
	sw	$r28, 24($r14)
	sw	$r23, 20($r14)
	sw	$r17, 16($r14)
	sw	$r10, 12($r14)
	sw	$r12, 8($r14)
	sw	$r6, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 12
	la	$r16, .calc_diffuse_using_5points.3253
	sw	$r16, 0($r15)
	sw	$r23, 8($r15)
	sw	$r6, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 20
	la	$r18, .do_without_neighbors.3259
	sw	$r18, 0($r16)
	sw	$r11, 16($r16)
	sw	$r23, 12($r16)
	sw	$r6, 8($r16)
	sw	$r14, 4($r16)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, .try_exploit_neighbors.3275
	sw	$r18, 0($r11)
	sw	$r16, 12($r11)
	sw	$r15, 8($r11)
	sw	$r14, 4($r11)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 8
	la	$r19, .write_rgb.3286
	sw	$r19, 0($r18)
	sw	$r23, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 32
	la	$r20, .pretrace_diffuse_rays.3288
	sw	$r20, 0($r19)
	sw	$r5, 28($r19)
	sw	$r7, 24($r19)
	sw	$r28, 20($r19)
	sw	$r17, 16($r19)
	sw	$r10, 12($r19)
	sw	$r12, 8($r19)
	sw	$r6, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 68
	la	$r21, .pretrace_pixels.3291
	sw	$r21, 0($r20)
	sw	$r4, 64($r20)
	sw	$r26, 60($r20)
	sw	$r5, 56($r20)
	sw	$r7, 52($r20)
	sw	$r9, 48($r20)
	sw	$r28, 44($r20)
	lw	$r4, -128($r29)
	sw	$r4, 40($r20)
	lw	$r4, -116($r29)
	sw	$r4, 36($r20)
	sw	$r23, 32($r20)
	lw	$r5, -140($r29)
	sw	$r5, 28($r20)
	sw	$r19, 24($r20)
	sw	$r17, 20($r20)
	sw	$r10, 16($r20)
	lw	$r5, -112($r29)
	sw	$r5, 12($r20)
	sw	$r12, 8($r20)
	sw	$r6, 4($r20)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 28
	la	$r7, .pretrace_line.3298
	sw	$r7, 0($r6)
	lw	$r7, -136($r29)
	sw	$r7, 24($r6)
	lw	$r7, -132($r29)
	sw	$r7, 20($r6)
	sw	$r4, 16($r6)
	sw	$r20, 12($r6)
	lw	$r7, -108($r29)
	sw	$r7, 8($r6)
	sw	$r5, 4($r6)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 32
	la	$r10, .scan_pixel.3302
	sw	$r10, 0($r9)
	sw	$r18, 28($r9)
	sw	$r11, 24($r9)
	sw	$r23, 20($r9)
	sw	$r7, 16($r9)
	sw	$r16, 12($r9)
	sw	$r15, 8($r9)
	sw	$r14, 4($r9)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 32
	la	$r14, .scan_line.3308
	sw	$r14, 0($r10)
	sw	$r18, 28($r10)
	sw	$r11, 24($r10)
	sw	$r9, 20($r10)
	sw	$r23, 16($r10)
	sw	$r6, 12($r10)
	sw	$r7, 8($r10)
	sw	$r16, 4($r10)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 8
	la	$r14, .calc_dirvec.3328
	sw	$r14, 0($r11)
	sw	$r12, 4($r11)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .calc_dirvecs.3336
	sw	$r15, 0($r14)
	sw	$r11, 4($r14)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .calc_dirvec_rows.3341
	sw	$r15, 0($r11)
	sw	$r14, 4($r11)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .create_dirvec_elements.3347
	sw	$r15, 0($r14)
	sw	$r17, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r16, .create_dirvecs.3350
	sw	$r16, 0($r15)
	sw	$r17, 12($r15)
	sw	$r12, 8($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 16
	la	$r16, .init_dirvec_constants.3352
	sw	$r16, 0($r14)
	sw	$r8, 12($r14)
	sw	$r17, 8($r14)
	lw	$r16, -200($r29)
	sw	$r16, 4($r14)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 24
	la	$r19, .init_vecset_constants.3355
	sw	$r19, 0($r18)
	sw	$r8, 20($r18)
	sw	$r17, 16($r18)
	sw	$r16, 12($r18)
	sw	$r14, 8($r18)
	sw	$r12, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 28
	la	$r20, .setup_rect_reflection.3366
	sw	$r20, 0($r19)
	lw	$r20, -172($r29)
	sw	$r20, 24($r19)
	sw	$r8, 20($r19)
	sw	$r2, 16($r19)
	sw	$r17, 12($r19)
	sw	$r13, 8($r19)
	sw	$r16, 4($r19)
	addi	$r21, $r30, 0
	addi	$r30, $r30, 28
	la	$r22, .setup_surface_reflection.3369
	sw	$r22, 0($r21)
	sw	$r20, 24($r21)
	sw	$r8, 20($r21)
	sw	$r2, 16($r21)
	sw	$r17, 12($r21)
	sw	$r13, 8($r21)
	sw	$r16, 4($r21)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 108
	la	$r2, .rt.3374
	sw	$r2, 0($r28)
	lw	$r2, -156($r29)
	sw	$r2, 104($r28)
	sw	$r21, 100($r28)
	sw	$r19, 96($r28)
	sw	$r9, 92($r28)
	sw	$r4, 88($r28)
	sw	$r10, 84($r28)
	lw	$r2, -196($r29)
	sw	$r2, 80($r28)
	lw	$r2, -192($r29)
	sw	$r2, 76($r28)
	lw	$r2, -188($r29)
	sw	$r2, 72($r28)
	lw	$r2, -184($r29)
	sw	$r2, 68($r28)
	lw	$r2, -180($r29)
	sw	$r2, 64($r28)
	lw	$r2, -176($r29)
	sw	$r2, 60($r28)
	sw	$r6, 56($r28)
	sw	$r3, 52($r28)
	sw	$r8, 48($r28)
	sw	$r17, 44($r28)
	lw	$r2, -160($r29)
	sw	$r2, 40($r28)
	sw	$r13, 36($r28)
	sw	$r16, 32($r28)
	sw	$r18, 28($r28)
	sw	$r14, 24($r28)
	sw	$r7, 20($r28)
	sw	$r5, 16($r28)
	sw	$r12, 12($r28)
	sw	$r15, 8($r28)
	sw	$r11, 4($r28)
	addi	$r2, $r0, 128
	addi	$r3, $r0, 128
	sw	$r31, -204($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -204	! callcls
	jal	.mendoi2.20722	! callcls
	j	.mendoi1.20721	! callcls
.mendoi2.20722:	! callcls
	jr	$r27	! callcls
.mendoi1.20721:	! callcls
	addi	$r29, $r29, 204	! callcls
	lw	$r31, -204($r29)	! callcls
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

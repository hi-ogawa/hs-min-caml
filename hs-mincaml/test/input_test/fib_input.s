	j	min_caml_start
fequal.345:
	bne	$r2, $r3, bne.935
	addi	$r2, $r0, 1
	jr	$r31
bne.935:
	addi	$r2, $r0, 0
	jr	$r31
fless.348:
	bgt	$r3, $r2, bgt.937
	addi	$r2, $r0, 0
	jr	$r31
bgt.937:
	addi	$r2, $r0, 1
	jr	$r31
fispos.351:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.939
	addi	$r2, $r0, 0
	jr	$r31
bclf.939:
	addi	$r2, $r0, 1
	jr	$r31
fisneg.354:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.941
	addi	$r2, $r0, 0
	jr	$r31
bclf.941:
	addi	$r2, $r0, 1
	jr	$r31
fiszero.357:
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.943
	addi	$r2, $r0, 1
	jr	$r31
bclf.943:
	addi	$r2, $r0, 0
	jr	$r31
xor.360:
	bne	$r2, $r3, bne.945
	addi	$r2, $r0, 0
	jr	$r31
bne.945:
	addi	$r2, $r0, 1
	jr	$r31
fabs.363:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.947
	addi	$r2, $r0, 0
	j	cont.946
bclf.947:
	addi	$r2, $r0, 1
cont.946:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.949
	fneg	$f0, $f0
	jr	$r31
bne.949:
	jr	$r31
abs_float.368:
	j	fabs.363
fneg.370:
	fneg	$f0, $f0
	jr	$r31
fhalf.372:
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	jr	$r31
fsqr.375:
	mul.s	$f0, $f0, $f0
	jr	$r31
atan_sub.382:
	lfh	$f3, 16128
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.951
	addi	$r2, $r0, 0
	j	cont.950
bclf.951:
	addi	$r2, $r0, 1
cont.950:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.953
	fmove	$f0, $f2
	jr	$r31
bne.953:
	lfh	$f3, 16256
	lfl	$f3, 0
	sub.s	$f3, $f0, $f3
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	lfh	$f5, 16256
	lfl	$f5, 0
	add.s	$f0, $f0, $f5
	add.s	$f0, $f0, $f2
	div.s	$f2, $f4, $f0
	fmove	$f0, $f3
	j	atan_sub.382
atan.398:
	lwcl	$f1, 4($r28)
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	bclf.955
	addi	$r2, $r0, 0
	j	cont.954
bclf.955:
	addi	$r2, $r0, 1
cont.954:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.957
	addi	$r2, $r0, 1
	j	cont.956
bne.957:
	lfh	$f2, 16256
	lfl	$f2, 0
	fneg	$f2, $f2
	c.le.s	$f2, $f0
	bclf	bclf.959
	addi	$r2, $r0, 0
	j	cont.958
bclf.959:
	addi	$r2, $r0, 1
cont.958:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.961
	addi	$r2, $r0, 1
	subu	$r2, $r0, $r2
	j	cont.960
bne.961:
	addi	$r2, $r0, 0
cont.960:
cont.956:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.963
	addi	$r3, $r0, 0
	j	cont.962
bne.963:
	addi	$r3, $r0, 1
cont.962:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.965
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
	j	cont.964
bne.965:
cont.964:
	lfh	$f2, 16688
	lfl	$f2, 0
	mul.s	$f3, $f0, $f0
	lfh	$f4, 0
	lfl	$f4, 0
	swcl	$f1, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f2
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	atan_sub.382
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lfh	$f1, 16256
	lfl	$f1, 0
	add.s	$f0, $f1, $f0
	lwcl	$f1, -12($r29)
	div.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	lw	$r3, -8($r29)
	bgt	$r3, $r2, bgt.967
	addi	$r2, $r0, 0
	j	cont.966
bgt.967:
	addi	$r2, $r0, 1
cont.966:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.969
	lfh	$f1, 16384
	lfl	$f1, 0
	lwcl	$f2, -4($r29)
	div.s	$f1, $f2, $f1
	sub.s	$f0, $f1, $f0
	jr	$r31
bne.969:
	addi	$r2, $r0, 0
	bgt	$r2, $r3, bgt.971
	addi	$r2, $r0, 0
	j	cont.970
bgt.971:
	addi	$r2, $r0, 1
cont.970:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.973
	lwcl	$f1, -4($r29)
	fneg	$f1, $f1
	lfh	$f2, 16384
	lfl	$f2, 0
	div.s	$f1, $f1, $f2
	sub.s	$f0, $f1, $f0
	jr	$r31
bne.973:
	jr	$r31
tan_sub.434:
	lfh	$f3, 16416
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.975
	addi	$r2, $r0, 0
	j	cont.974
bclf.975:
	addi	$r2, $r0, 1
cont.974:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.977
	fmove	$f0, $f2
	jr	$r31
bne.977:
	lfh	$f3, 16384
	lfl	$f3, 0
	sub.s	$f3, $f0, $f3
	sub.s	$f0, $f0, $f2
	div.s	$f2, $f1, $f0
	fmove	$f0, $f3
	j	tan_sub.434
tan.432:
	lfh	$f1, 16256
	lfl	$f1, 0
	lfh	$f2, 16656
	lfl	$f2, 0
	mul.s	$f3, $f0, $f0
	lfh	$f4, 0
	lfl	$f4, 0
	swcl	$f0, -4($r29)
	swcl	$f1, -8($r29)
	fmove	$f0, $f2
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	tan_sub.434
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lwcl	$f1, -8($r29)
	sub.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	div.s	$f0, $f1, $f0
	jr	$r31
sin_sub.451:
	lwcl	$f1, 4($r28)
	lfh	$f2, 16384
	lfl	$f2, 0
	mul.s	$f1, $f1, $f2
	c.le.s	$f0, $f1
	bclf	bclf.979
	addi	$r2, $r0, 0
	j	cont.978
bclf.979:
	addi	$r2, $r0, 1
cont.978:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.981
	sub.s	$f0, $f0, $f1
	lw	$r27, 0($r28)
	jr	$r27
bne.981:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclf.983
	addi	$r2, $r0, 0
	j	cont.982
bclf.983:
	addi	$r2, $r0, 1
cont.982:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.985
	add.s	$f0, $f0, $f1
	lw	$r27, 0($r28)
	jr	$r27
bne.985:
	jr	$r31
sin.462:
	lw	$r2, 4($r28)
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16384
	lfl	$f2, 0
	mul.s	$f2, $f1, $f2
	lfh	$f3, 16128
	lfl	$f3, 0
	mul.s	$f3, $f1, $f3
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f0, $f4
	bclf	bclf.987
	addi	$r3, $r0, 0
	j	cont.986
bclf.987:
	addi	$r3, $r0, 1
cont.986:
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f1, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	fabs.363
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r28, -20($r29)
	sw	$r31, -24($r29)	!call-cls
	lw	$r27, 0($r28)	!..
	addi	$r29, $r29, -24
	jal	lab2.989
	j	lab1.988
lab2.989:
	jr	$r27
lab1.988:
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lwcl	$f1, -16($r29)
	c.le.s	$f0, $f1
	bclf	bclf.991
	addi	$r2, $r0, 0
	j	cont.990
bclf.991:
	addi	$r2, $r0, 1
cont.990:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.993
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.995
	addi	$r2, $r0, 0
	j	cont.994
bne.995:
	addi	$r2, $r0, 1
cont.994:
	j	cont.992
bne.993:
	lw	$r2, -12($r29)
cont.992:
	c.le.s	$f0, $f1
	bclf	bclf.997
	addi	$r3, $r0, 0
	j	cont.996
bclf.997:
	addi	$r3, $r0, 1
cont.996:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.999
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	j	cont.998
bne.999:
cont.998:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.1001
	addi	$r3, $r0, 0
	j	cont.1000
bclf.1001:
	addi	$r3, $r0, 1
cont.1000:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1003
	sub.s	$f0, $f1, $f0
	j	cont.1002
bne.1003:
cont.1002:
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	tan.432
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lfh	$f1, 16384
	lfl	$f1, 0
	mul.s	$f1, $f1, $f0
	lfh	$f2, 16256
	lfl	$f2, 0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f2, $f0
	div.s	$f0, $f1, $f0
	addi	$r2, $r0, 1
	lw	$r3, -24($r29)
	bne	$r3, $r2, bne.1005
	jr	$r31
bne.1005:
	j	fneg.370
cos.493:
	lw	$r2, 8($r28)
	lwcl	$f1, 4($r28)
	lfh	$f2, 16128
	lfl	$f2, 0
	mul.s	$f1, $f1, $f2
	sub.s	$f0, $f1, $f0
	addi	$r28, $r2, 0
	lw	$r27, 0($r28)
	jr	$r27
mul10.498:
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	jr	$r31
read_int_token.508:
	lw	$r4, 8($r0)
	lw	$r5, 4($r0)
	sw	$r3, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.1007
	addi	$r2, $r0, 0
	j	cont.1006
bgt.1007:
	addi	$r2, $r0, 1
cont.1006:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.1009
	addi	$r2, $r0, 1
	j	cont.1008
bne.1009:
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.1011
	addi	$r2, $r0, 0
	j	cont.1010
bgt.1011:
	addi	$r2, $r0, 1
cont.1010:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.1013
	addi	$r2, $r0, 1
	j	cont.1012
bne.1013:
	addi	$r2, $r0, 0
cont.1012:
cont.1008:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.1015
	addi	$r2, $r0, 1
	lw	$r4, -16($r29)
	bne	$r4, $r2, bne.1017
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.1019
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	jr	$r31
bne.1019:
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
bne.1017:
	addi	$r2, $r0, 0
	j	read_int_token.508
bne.1015:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.1021
	addi	$r4, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r4, bne.1023
	addi	$r4, $r0, 1
	subu	$r4, $r0, $r4
	sw	$r4, 0($r2)
	j	cont.1022
bne.1023:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
cont.1022:
	j	cont.1020
bne.1021:
cont.1020:
	lw	$r2, -8($r29)
	lw	$r4, 0($r2)
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul10.498
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	lw	$r4, -8($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r0, 1
	j	read_int_token.508
read_int.548:
	lw	$r2, 8($r0)
	lw	$r3, 4($r0)
	addi	$r4, $r0, 0
	sw	$r4, 0($r3)
	addi	$r3, $r0, 0
	sw	$r3, 0($r2)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	j	read_int_token.508
read_float_token1.570:
	lw	$r4, 24($r0)
	lw	$r5, 12($r0)
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.1025
	addi	$r3, $r0, 0
	j	cont.1024
bgt.1025:
	addi	$r3, $r0, 1
cont.1024:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1027
	addi	$r3, $r0, 1
	j	cont.1026
bne.1027:
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.1029
	addi	$r3, $r0, 0
	j	cont.1028
bgt.1029:
	addi	$r3, $r0, 1
cont.1028:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1031
	addi	$r3, $r0, 1
	j	cont.1030
bne.1031:
	addi	$r3, $r0, 0
cont.1030:
cont.1026:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1033
	addi	$r3, $r0, 1
	lw	$r4, -16($r29)
	bne	$r4, $r3, bne.1035
	jr	$r31
bne.1035:
	addi	$r3, $r0, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	read_float_token1.570
bne.1033:
	lw	$r3, -12($r29)
	lw	$r4, 0($r3)
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.1037
	addi	$r4, $r0, 45
	lw	$r5, -8($r29)
	bne	$r5, $r4, bne.1039
	addi	$r4, $r0, 1
	subu	$r4, $r0, $r4
	sw	$r4, 0($r3)
	j	cont.1038
bne.1039:
	addi	$r4, $r0, 1
	sw	$r4, 0($r3)
cont.1038:
	j	cont.1036
bne.1037:
cont.1036:
	lw	$r3, -4($r29)
	lw	$r4, 0($r3)
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul10.498
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	lw	$r4, -4($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r0, 1
	j	read_float_token1.570
read_float_token2.604:
	lw	$r3, 16($r0)
	lw	$r4, 20($r0)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.1041
	addi	$r3, $r0, 0
	j	cont.1040
bgt.1041:
	addi	$r3, $r0, 1
cont.1040:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1043
	addi	$r3, $r0, 1
	j	cont.1042
bne.1043:
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.1045
	addi	$r3, $r0, 0
	j	cont.1044
bgt.1045:
	addi	$r3, $r0, 1
cont.1044:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1047
	addi	$r3, $r0, 1
	j	cont.1046
bne.1047:
	addi	$r3, $r0, 0
cont.1046:
cont.1042:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1049
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.1051
	jr	$r31
bne.1051:
	addi	$r2, $r0, 0
	j	read_float_token2.604
bne.1049:
	lw	$r3, -8($r29)
	lw	$r4, 0($r3)
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	mul10.498
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -16($r29)
	addi	$r3, $r3, -48
	addu	$r2, $r2, $r3
	lw	$r3, -8($r29)
	sw	$r2, 0($r3)
	lw	$r2, -4($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	mul10.498
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 1
	j	read_float_token2.604
read_float.632:
	lw	$r2, 24($r0)
	lw	$r3, 12($r0)
	lw	$r4, 16($r0)
	lw	$r5, 20($r0)
	addi	$r6, $r0, 0
	sw	$r6, 0($r3)
	addi	$r6, $r0, 0
	sw	$r6, 0($r4)
	addi	$r6, $r0, 1
	sw	$r6, 0($r5)
	addi	$r6, $r0, 0
	sw	$r6, 0($r2)
	addi	$r6, $r0, 0
	addi	$r7, $r0, 32
	sw	$r2, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_float_token1.570
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.1053
	addi	$r2, $r0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_float_token2.604
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lwcl	$f1, -24($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -20($r29)
	add.s	$f0, $f1, $f0
	j	cont.1052
bne.1053:
	lw	$r2, -16($r29)
	lw	$r2, 0($r2)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
cont.1052:
	lw	$r2, -4($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.1055
	jr	$r31
bne.1055:
	fneg	$f0, $f0
	jr	$r31
mul_sub.668:
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.1057
	addi	$r2, $r0, 0
	jr	$r31
bne.1057:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.1059
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.668
bne.1059:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	mul_sub.668
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.681:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.1061
	addi	$r4, $r0, 0
	j	cont.1060
bgt.1061:
	addi	$r4, $r0, 1
cont.1060:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.1063
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	j	mul_sub.668
bne.1063:
	j	mul_sub.668
div_binary_search.689:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	sw	$r6, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul.681
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r5, -20($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, bgt.1065
	addi	$r2, $r4, 0
	jr	$r31
bgt.1065:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.1067
	addi	$r6, $r0, 0
	j	cont.1066
bgt.1067:
	addi	$r6, $r0, 1
cont.1066:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.1069
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.689
bne.1069:
	bne	$r2, $r3, bne.1071
	lw	$r2, -4($r29)
	jr	$r31
bne.1071:
	lw	$r2, -8($r29)
	lw	$r5, -4($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.689
div_sub.701:
	sll	$r5, $r3, 1
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	mul.681
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -12($r29)
	bgt	$r2, $r3, bgt.1073
	lw	$r2, -8($r29)
	sll	$r4, $r2, 1
	lw	$r2, -4($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_sub.701
bgt.1073:
	lw	$r4, -8($r29)
	sll	$r5, $r4, 1
	lw	$r2, -4($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.689
div.709:
	addi	$r4, $r0, 0
	bgt	$r4, $r2, bgt.1075
	addi	$r4, $r2, 0
	j	cont.1074
bgt.1075:
	subu	$r4, $r0, $r2
cont.1074:
	addi	$r5, $r0, 0
	bgt	$r5, $r3, bgt.1077
	addi	$r5, $r3, 0
	j	cont.1076
bgt.1077:
	subu	$r5, $r0, $r3
cont.1076:
	bgt	$r5, $r4, bgt.1079
	addi	$r6, $r0, 0
	j	cont.1078
bgt.1079:
	addi	$r6, $r0, 1
cont.1078:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.1081
	addi	$r2, $r0, 0
	jr	$r31
bne.1081:
	addi	$r6, $r0, 1
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	div_sub.701
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 0
	lw	$r4, -8($r29)
	bgt	$r3, $r4, bgt.1083
	addi	$r3, $r0, 0
	lw	$r4, -4($r29)
	bgt	$r3, $r4, bgt.1085
	jr	$r31
bgt.1085:
	subu	$r2, $r0, $r2
	jr	$r31
bgt.1083:
	addi	$r3, $r0, 0
	lw	$r4, -4($r29)
	bgt	$r3, $r4, bgt.1087
	subu	$r2, $r0, $r2
	jr	$r31
bgt.1087:
	jr	$r31
print_int.723:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.1089
	addi	$r3, $r0, 0
	j	cont.1088
bgt.1089:
	addi	$r3, $r0, 1
cont.1088:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.1091
	addi	$r3, $r0, 45
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r2, -4($r29)
	subu	$r2, $r0, $r2
	j	print_int.723
bne.1091:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	mul.681
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bgt	$r4, $r3, bgt.1093
	addi	$r2, $r0, 0
	j	cont.1092
bgt.1093:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r2, $r0, 1
cont.1092:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -12($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul.681
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -12($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	sw	$r2, -24($r29)
	bgt	$r4, $r3, bgt.1095
	addi	$r3, $r0, 1
	lw	$r5, -16($r29)
	bne	$r5, $r3, bne.1097
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1096
bne.1097:
	addi	$r2, $r0, 0
cont.1096:
	j	cont.1094
bgt.1095:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 1
cont.1094:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	mul.681
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -24($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -32($r29)
	sw	$r2, -36($r29)
	bgt	$r4, $r3, bgt.1099
	addi	$r3, $r0, 1
	lw	$r5, -28($r29)
	bne	$r5, $r3, bne.1101
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1100
bne.1101:
	addi	$r2, $r0, 0
cont.1100:
	j	cont.1098
bgt.1099:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 1
cont.1098:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -36($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	mul.681
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r3, -36($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -44($r29)
	sw	$r2, -48($r29)
	bgt	$r4, $r3, bgt.1103
	addi	$r3, $r0, 1
	lw	$r5, -40($r29)
	bne	$r5, $r3, bne.1105
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1104
bne.1105:
	addi	$r2, $r0, 0
cont.1104:
	j	cont.1102
bgt.1103:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	addi	$r2, $r0, 1
cont.1102:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r3, $r0, 10000
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!..
	jal	mul.681
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!..
	lw	$r3, -48($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -56($r29)
	sw	$r2, -60($r29)
	bgt	$r4, $r3, bgt.1107
	addi	$r3, $r0, 1
	lw	$r5, -52($r29)
	bne	$r5, $r3, bne.1109
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1108
bne.1109:
	addi	$r2, $r0, 0
cont.1108:
	j	cont.1106
bgt.1107:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!..
	addi	$r2, $r0, 1
cont.1106:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -60($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!..
	addi	$r3, $r0, 1000
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!..
	jal	mul.681
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!..
	lw	$r3, -60($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -68($r29)
	sw	$r2, -72($r29)
	bgt	$r4, $r3, bgt.1111
	addi	$r3, $r0, 1
	lw	$r5, -64($r29)
	bne	$r5, $r3, bne.1113
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1112
bne.1113:
	addi	$r2, $r0, 0
cont.1112:
	j	cont.1110
bgt.1111:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	addi	$r2, $r0, 1
cont.1110:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -72($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	addi	$r3, $r0, 100
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!..
	jal	mul.681
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!..
	lw	$r3, -72($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, bgt.1115
	addi	$r3, $r0, 1
	lw	$r5, -76($r29)
	bne	$r5, $r3, bne.1117
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1116
bne.1117:
	addi	$r2, $r0, 0
cont.1116:
	j	cont.1114
bgt.1115:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!..
	addi	$r2, $r0, 1
cont.1114:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	lw	$r6, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r6, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!..
	jal	div_binary_search.689
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!..
	addi	$r3, $r0, 10
	sw	$r2, -92($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!..
	jal	mul.681
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!..
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -92($r29)
	sw	$r2, -96($r29)
	bgt	$r4, $r3, bgt.1119
	addi	$r3, $r0, 1
	lw	$r5, -88($r29)
	bne	$r5, $r3, bne.1121
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!..
	addi	$r2, $r0, 1
	j	cont.1120
bne.1121:
	addi	$r2, $r0, 0
cont.1120:
	j	cont.1118
bgt.1119:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!..
	addi	$r2, $r0, 1
cont.1118:
	lw	$r2, -96($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
print_newline.857:
	addi	$r2, $r0, 10
	j	min_caml_print_char
fib.862:
	addi	$r3, $r0, 1
	bgt	$r2, $r3, bgt.1123
	jr	$r31
bgt.1123:
	addi	$r3, $r2, -1
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	fib.862
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r3, -4($r29)
	addi	$r3, $r3, -2
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	fib.862
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	addu	$r2, $r3, $r2
	jr	$r31
min_caml_start:
	ori	$r30, $r0, 28
	lui	$r29, 64
	ori	$r29, $r29, 0
	lfh	$f0, 16457
	lfl	$f0, 4059
	lfh	$f1, 16384
	lfl	$f1, 0
	mul.s	$f1, $f0, $f1
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 4($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 8($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 12($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 1
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 20($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r2, 24($r0)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_int.548
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	fib.862
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	print_int.723
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	halt
min_caml_print_char:
	output	$r2
	jr	$r31
min_caml_input_char:	
	input	$r2
	jr	$r31	
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
min_caml_sqrt:		! 引数 $f0, (r2, f1, f2, f3, f4)
	addi	$r2, $r0, 10
	lfh	$f1, 16256	! $f1 初期値 1.0
	lfl	$f1, 0
	lfh	$f4, 16384	! $f4 定数 2.0
	lfl	$f4, 0
SQRT_SUB:		! ニュートン法10回, 初期値($f1 1.0)	x $f0, y $f1
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
!	jal	min_caml_myfinv	! $f3 = 1.0 /. $f3
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
	bne	$r2, $r0, SQRT_SUB	! ループ
	fmove	$f0, $f1
	jr	$r31

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

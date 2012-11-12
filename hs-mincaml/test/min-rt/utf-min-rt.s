	j	min_caml_start
atan_sub.2623:
	lfh	$f3, 16128
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.18087
	addi	$r2, $r0, 0
	j	cont.18086
bclf.18087:
	addi	$r2, $r0, 1
cont.18086:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18089
	fmove	$f0, $f2
	jr	$r31
bne.18089:
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
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	lfl	$f2, 0
	c.le.s	$f2, $f3
	bclf	bclf.18091
	addi	$r2, $r0, 0
	j	cont.18090
bclf.18091:
	addi	$r2, $r0, 1
cont.18090:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18093
	jr	$r31
bne.18093:
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f2, $f3, $f2
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	lfh	$f5, 16256
	lfl	$f5, 0
	add.s	$f3, $f3, $f5
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	lfl	$f3, 0
	c.le.s	$f3, $f2
	bclf	bclf.18095
	addi	$r2, $r0, 0
	j	cont.18094
bclf.18095:
	addi	$r2, $r0, 1
cont.18094:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18097
	jr	$r31
bne.18097:
	lfh	$f3, 16256
	lfl	$f3, 0
	sub.s	$f3, $f2, $f3
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	lfh	$f5, 16256
	lfl	$f5, 0
	add.s	$f2, $f2, $f5
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	lfl	$f2, 0
	c.le.s	$f2, $f3
	bclf	bclf.18099
	addi	$r2, $r0, 0
	j	cont.18098
bclf.18099:
	addi	$r2, $r0, 1
cont.18098:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18101
	jr	$r31
bne.18101:
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f2, $f3, $f2
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	lfh	$f5, 16256
	lfl	$f5, 0
	add.s	$f3, $f3, $f5
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	fmove	$f31, $f0
	fmove	$f0, $f2
	fmove	$f2, $f31
	j	atan_sub.2623
atan.2639:
	lfh	$f1, 16256
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18103
	addi	$r2, $r0, 0
	j	cont.18102
bclf.18103:
	addi	$r2, $r0, 1
cont.18102:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18105
	addi	$r2, $r0, 1
	j	cont.18104
bne.18105:
	lfh	$f1, 49024
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18107
	addi	$r2, $r0, 0
	j	cont.18106
bclf.18107:
	addi	$r2, $r0, 1
cont.18106:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18109
	addi	$r2, $r0, -1
	j	cont.18108
bne.18109:
	addi	$r2, $r0, 0
cont.18108:
cont.18104:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.18111
	addi	$r3, $r0, 0
	j	cont.18110
bne.18111:
	addi	$r3, $r0, 1
cont.18110:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18113
	lfh	$f1, 16256
	lfl	$f1, 0
	div.s	$f0, $f1, $f0
	j	cont.18112
bne.18113:
cont.18112:
	mul.s	$f1, $f0, $f0
	lfh	$f2, 17138
	lfl	$f2, 0
	mul.s	$f2, $f2, $f1
	lfh	$f3, 16824
	lfl	$f3, 0
	div.s	$f2, $f2, $f3
	lfh	$f3, 17096
	lfl	$f3, 0
	mul.s	$f3, $f3, $f1
	lfh	$f4, 16808
	lfl	$f4, 0
	add.s	$f2, $f4, $f2
	div.s	$f2, $f3, $f2
	lfh	$f3, 16640
	lfl	$f3, 0
	lfh	$f4, 17058
	lfl	$f4, 0
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16792
	lfl	$f5, 0
	add.s	$f2, $f5, $f2
	div.s	$f2, $f4, $f2
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f3
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	atan_sub.2623
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lfh	$f1, 16256
	lfl	$f1, 0
	add.s	$f0, $f1, $f0
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	bgt	$r3, $r2, bgt.18115
	addi	$r2, $r0, 0
	j	cont.18114
bgt.18115:
	addi	$r2, $r0, 1
cont.18114:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18117
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
bne.18117:
	addi	$r2, $r0, 0
	bgt	$r2, $r3, bgt.18119
	addi	$r2, $r0, 0
	j	cont.18118
bgt.18119:
	addi	$r2, $r0, 1
cont.18118:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18121
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	jr	$r31
bne.18121:
	jr	$r31
sin_sub.2692:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.18123
	addi	$r2, $r0, 0
	j	cont.18122
bclf.18123:
	addi	$r2, $r0, 1
cont.18122:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18125
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.18127
	addi	$r2, $r0, 0
	j	cont.18126
bclf.18127:
	addi	$r2, $r0, 1
cont.18126:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18129
	sub.s	$f0, $f0, $f1
	j	sin_sub.2692
bne.18129:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclf.18131
	addi	$r2, $r0, 0
	j	cont.18130
bclf.18131:
	addi	$r2, $r0, 1
cont.18130:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18133
	add.s	$f0, $f0, $f1
	j	sin_sub.2692
bne.18133:
	jr	$r31
bne.18125:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclf.18135
	addi	$r2, $r0, 0
	j	cont.18134
bclf.18135:
	addi	$r2, $r0, 1
cont.18134:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18137
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.18139
	addi	$r2, $r0, 0
	j	cont.18138
bclf.18139:
	addi	$r2, $r0, 1
cont.18138:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18141
	sub.s	$f0, $f0, $f1
	j	sin_sub.2692
bne.18141:
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	bclf.18143
	addi	$r2, $r0, 0
	j	cont.18142
bclf.18143:
	addi	$r2, $r0, 1
cont.18142:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18145
	add.s	$f0, $f0, $f1
	j	sin_sub.2692
bne.18145:
	jr	$r31
bne.18137:
	jr	$r31
tan_sub.2675.6800:
	lfh	$f3, 16416
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.18147
	addi	$r2, $r0, 0
	j	cont.18146
bclf.18147:
	addi	$r2, $r0, 1
cont.18146:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18149
	fmove	$f0, $f2
	jr	$r31
bne.18149:
	lfh	$f3, 16384
	lfl	$f3, 0
	sub.s	$f3, $f0, $f3
	sub.s	$f0, $f0, $f2
	div.s	$f0, $f1, $f0
	lfh	$f2, 16416
	lfl	$f2, 0
	c.le.s	$f2, $f3
	bclf	bclf.18151
	addi	$r2, $r0, 0
	j	cont.18150
bclf.18151:
	addi	$r2, $r0, 1
cont.18150:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18153
	jr	$r31
bne.18153:
	lfh	$f2, 16384
	lfl	$f2, 0
	sub.s	$f2, $f3, $f2
	sub.s	$f0, $f3, $f0
	div.s	$f0, $f1, $f0
	lfh	$f3, 16416
	lfl	$f3, 0
	c.le.s	$f3, $f2
	bclf	bclf.18155
	addi	$r2, $r0, 0
	j	cont.18154
bclf.18155:
	addi	$r2, $r0, 1
cont.18154:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18157
	jr	$r31
bne.18157:
	lfh	$f3, 16384
	lfl	$f3, 0
	sub.s	$f3, $f2, $f3
	sub.s	$f0, $f2, $f0
	div.s	$f0, $f1, $f0
	lfh	$f2, 16416
	lfl	$f2, 0
	c.le.s	$f2, $f3
	bclf	bclf.18159
	addi	$r2, $r0, 0
	j	cont.18158
bclf.18159:
	addi	$r2, $r0, 1
cont.18158:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18161
	jr	$r31
bne.18161:
	lfh	$f2, 16384
	lfl	$f2, 0
	sub.s	$f2, $f3, $f2
	sub.s	$f0, $f3, $f0
	div.s	$f0, $f1, $f0
	fmove	$f31, $f0
	fmove	$f0, $f2
	fmove	$f2, $f31
	j	tan_sub.2675.6800
sin.2703:
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f0, $f4
	bclf	bclf.18163
	addi	$r2, $r0, 0
	j	cont.18162
bclf.18163:
	addi	$r2, $r0, 1
cont.18162:
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	bclf.18165
	addi	$r3, $r0, 0
	j	cont.18164
bclf.18165:
	addi	$r3, $r0, 1
cont.18164:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18167
	fneg	$f0, $f0
	j	cont.18166
bne.18167:
cont.18166:
	lfh	$f4, 16585
	lfl	$f4, 4059
	c.le.s	$f0, $f4
	bclf	bclf.18169
	addi	$r3, $r0, 0
	j	cont.18168
bclf.18169:
	addi	$r3, $r0, 1
cont.18168:
	addi	$r4, $r0, 1
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f1, -16($r29)
	bne	$r3, $r4, bne.18171
	sub.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	sin_sub.2692
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.18170
bne.18171:
	lfh	$f5, 0
	lfl	$f5, 0
	c.le.s	$f5, $f0
	bclf	bclf.18173
	addi	$r3, $r0, 0
	j	cont.18172
bclf.18173:
	addi	$r3, $r0, 1
cont.18172:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18175
	add.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	sin_sub.2692
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.18174
bne.18175:
cont.18174:
cont.18170:
	lwcl	$f1, -16($r29)
	c.le.s	$f0, $f1
	bclf	bclf.18177
	addi	$r2, $r0, 0
	j	cont.18176
bclf.18177:
	addi	$r2, $r0, 1
cont.18176:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18179
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.18181
	addi	$r2, $r0, 0
	j	cont.18180
bne.18181:
	addi	$r2, $r0, 1
cont.18180:
	j	cont.18178
bne.18179:
	lw	$r2, -12($r29)
cont.18178:
	c.le.s	$f0, $f1
	bclf	bclf.18183
	addi	$r3, $r0, 0
	j	cont.18182
bclf.18183:
	addi	$r3, $r0, 1
cont.18182:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18185
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
	j	cont.18184
bne.18185:
cont.18184:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.18187
	addi	$r3, $r0, 0
	j	cont.18186
bclf.18187:
	addi	$r3, $r0, 1
cont.18186:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18189
	sub.s	$f0, $f1, $f0
	j	cont.18188
bne.18189:
cont.18188:
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16256
	lfl	$f1, 0
	mul.s	$f2, $f0, $f0
	lfh	$f3, 16608
	lfl	$f3, 0
	lfh	$f4, 16656
	lfl	$f4, 0
	div.s	$f4, $f2, $f4
	lfh	$f5, 16544
	lfl	$f5, 0
	sub.s	$f3, $f3, $f4
	div.s	$f3, $f2, $f3
	lfh	$f4, 16448
	lfl	$f4, 0
	sub.s	$f3, $f5, $f3
	div.s	$f3, $f2, $f3
	sw	$r2, -20($r29)
	swcl	$f0, -24($r29)
	swcl	$f1, -28($r29)
	fmove	$f0, $f4
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	tan_sub.2675.6800
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lwcl	$f1, -28($r29)
	sub.s	$f0, $f1, $f0
	lwcl	$f1, -24($r29)
	div.s	$f0, $f1, $f0
	lfh	$f1, 16384
	lfl	$f1, 0
	mul.s	$f1, $f1, $f0
	lfh	$f2, 16256
	lfl	$f2, 0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f2, $f0
	div.s	$f0, $f1, $f0
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	bne	$r3, $r2, bne.18191
	jr	$r31
bne.18191:
	fneg	$f0, $f0
	jr	$r31
read_int_token.2749:
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.18193
	addi	$r2, $r0, 0
	j	cont.18192
bgt.18193:
	addi	$r2, $r0, 1
cont.18192:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18195
	addi	$r2, $r0, 1
	j	cont.18194
bne.18195:
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.18197
	addi	$r2, $r0, 0
	j	cont.18196
bgt.18197:
	addi	$r2, $r0, 1
cont.18196:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18199
	addi	$r2, $r0, 1
	j	cont.18198
bne.18199:
	addi	$r2, $r0, 0
cont.18198:
cont.18194:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18201
	addi	$r2, $r0, 1
	lw	$r4, -8($r29)
	bne	$r4, $r2, bne.18203
	addi	$r2, $r0, 0
	lw	$r2, 8($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18205
	addi	$r2, $r0, 0
	lw	$r2, 4($r2)
	jr	$r31
bne.18205:
	addi	$r2, $r0, 0
	lw	$r2, 4($r2)
	subu	$r2, $r0, $r2
	jr	$r31
bne.18203:
	addi	$r2, $r0, 0
	j	read_int_token.2749
bne.18201:
	addi	$r2, $r0, 0
	lw	$r2, 8($r2)
	addi	$r4, $r0, 0
	bne	$r2, $r4, bne.18207
	addi	$r2, $r0, 45
	lw	$r4, -4($r29)
	bne	$r4, $r2, bne.18209
	addi	$r2, $r0, -1
	addi	$r4, $r0, 0
	sw	$r2, 8($r4)
	j	cont.18208
bne.18209:
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	sw	$r2, 8($r4)
cont.18208:
	j	cont.18206
bne.18207:
cont.18206:
	addi	$r2, $r0, 0
	lw	$r2, 4($r2)
	sll	$r4, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r4, $r2
	addi	$r4, $r3, -48
	addu	$r2, $r2, $r4
	addi	$r4, $r0, 0
	sw	$r2, 4($r4)
	addi	$r2, $r0, 1
	j	read_int_token.2749
read_float_token1.2811:
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.18211
	addi	$r3, $r0, 0
	j	cont.18210
bgt.18211:
	addi	$r3, $r0, 1
cont.18210:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18213
	addi	$r3, $r0, 1
	j	cont.18212
bne.18213:
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.18215
	addi	$r3, $r0, 0
	j	cont.18214
bgt.18215:
	addi	$r3, $r0, 1
cont.18214:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18217
	addi	$r3, $r0, 1
	j	cont.18216
bne.18217:
	addi	$r3, $r0, 0
cont.18216:
cont.18212:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18219
	addi	$r3, $r0, 1
	lw	$r4, -8($r29)
	bne	$r4, $r3, bne.18221
	jr	$r31
bne.18221:
	addi	$r3, $r0, 0
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	read_float_token1.2811
bne.18219:
	addi	$r3, $r0, 0
	lw	$r3, 24($r3)
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18223
	addi	$r3, $r0, 45
	lw	$r4, -4($r29)
	bne	$r4, $r3, bne.18225
	addi	$r3, $r0, -1
	addi	$r4, $r0, 0
	sw	$r3, 24($r4)
	j	cont.18224
bne.18225:
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	sw	$r3, 24($r4)
cont.18224:
	j	cont.18222
bne.18223:
cont.18222:
	addi	$r3, $r0, 0
	lw	$r3, 12($r3)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r4, $r2, -48
	addu	$r3, $r3, $r4
	addi	$r4, $r0, 0
	sw	$r3, 12($r4)
	addi	$r3, $r0, 1
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	read_float_token1.2811
read_float_token2.2845:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.18227
	addi	$r3, $r0, 0
	j	cont.18226
bgt.18227:
	addi	$r3, $r0, 1
cont.18226:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18229
	addi	$r3, $r0, 1
	j	cont.18228
bne.18229:
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.18231
	addi	$r3, $r0, 0
	j	cont.18230
bgt.18231:
	addi	$r3, $r0, 1
cont.18230:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18233
	addi	$r3, $r0, 1
	j	cont.18232
bne.18233:
	addi	$r3, $r0, 0
cont.18232:
cont.18228:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18235
	addi	$r2, $r0, 1
	lw	$r3, -4($r29)
	bne	$r3, $r2, bne.18237
	jr	$r31
bne.18237:
	addi	$r2, $r0, 0
	j	read_float_token2.2845
bne.18235:
	addi	$r3, $r0, 0
	lw	$r3, 16($r3)
	sll	$r4, $r3, 3
	sll	$r3, $r3, 1
	addu	$r3, $r4, $r3
	addi	$r2, $r2, -48
	addu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	sw	$r2, 16($r3)
	addi	$r2, $r0, 0
	lw	$r2, 20($r2)
	sll	$r3, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	sw	$r2, 20($r3)
	addi	$r2, $r0, 1
	j	read_float_token2.2845
read_float.2873:
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 12($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r2, 20($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 24($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float_token1.2811
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.18239
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float_token2.2845
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 12($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 16($r2)
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 20($r2)
	swcl	$f0, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lwcl	$f1, -8($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	add.s	$f0, $f1, $f0
	j	cont.18238
bne.18239:
	addi	$r2, $r0, 0
	lw	$r2, 12($r2)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
cont.18238:
	addi	$r2, $r0, 0
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18241
	jr	$r31
bne.18241:
	fneg	$f0, $f0
	jr	$r31
mul_sub.2909:
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18243
	addi	$r2, $r0, 0
	jr	$r31
bne.18243:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18245
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18247
	addi	$r2, $r0, 0
	jr	$r31
bne.18247:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18249
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2909
bne.18249:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bne.18245:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	addi	$r5, $r0, 0
	sw	$r2, -8($r29)
	bne	$r3, $r5, bne.18251
	addi	$r2, $r0, 0
	j	cont.18250
bne.18251:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	addi	$r6, $r0, 0
	bne	$r5, $r6, bne.18253
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	j	cont.18252
bne.18253:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
cont.18252:
cont.18250:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2922:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.18255
	addi	$r4, $r0, 0
	j	cont.18254
bgt.18255:
	addi	$r4, $r0, 1
cont.18254:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18257
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18259
	addi	$r2, $r0, 0
	jr	$r31
bne.18259:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18261
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2909
bne.18261:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -4($r29)
	addi	$r2, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r3, -4($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bne.18257:
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18263
	addi	$r2, $r0, 0
	jr	$r31
bne.18263:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18265
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2909
bne.18265:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
div_binary_search.2930:
	addu	$r6, $r4, $r5
	sra	$r6, $r6, 1
	addi	$r7, $r0, 0
	bgt	$r7, $r3, bgt.18267
	addi	$r7, $r0, 0
	j	cont.18266
bgt.18267:
	addi	$r7, $r0, 1
cont.18266:
	addi	$r8, $r0, 1
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	bne	$r7, $r8, bne.18269
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.18268
bne.18269:
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.18268:
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	addi	$r6, $r0, 1
	bgt	$r5, $r6, bgt.18271
	addi	$r2, $r4, 0
	jr	$r31
bgt.18271:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.18273
	addi	$r6, $r0, 0
	j	cont.18272
bgt.18273:
	addi	$r6, $r0, 1
cont.18272:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.18275
	lw	$r2, -8($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	mul.2922
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r5, -20($r29)
	lw	$r4, -8($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, bgt.18277
	addi	$r2, $r4, 0
	jr	$r31
bgt.18277:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.18279
	addi	$r6, $r0, 0
	j	cont.18278
bgt.18279:
	addi	$r6, $r0, 1
cont.18278:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.18281
	lw	$r2, -4($r29)
	lw	$r4, -24($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2930
bne.18281:
	bne	$r2, $r3, bne.18283
	lw	$r2, -24($r29)
	jr	$r31
bne.18283:
	lw	$r2, -4($r29)
	lw	$r5, -24($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2930
bne.18275:
	bne	$r2, $r5, bne.18285
	lw	$r2, -8($r29)
	jr	$r31
bne.18285:
	lw	$r2, -8($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	mul.2922
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r5, -8($r29)
	lw	$r4, -16($r29)
	subu	$r3, $r5, $r4
	addi	$r6, $r0, 1
	bgt	$r3, $r6, bgt.18287
	addi	$r2, $r4, 0
	jr	$r31
bgt.18287:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.18289
	addi	$r6, $r0, 0
	j	cont.18288
bgt.18289:
	addi	$r6, $r0, 1
cont.18288:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.18291
	lw	$r2, -4($r29)
	lw	$r4, -28($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2930
bne.18291:
	bne	$r2, $r3, bne.18293
	lw	$r2, -28($r29)
	jr	$r31
bne.18293:
	lw	$r2, -4($r29)
	lw	$r5, -28($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2930
print_int.2964:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.18295
	addi	$r3, $r0, 0
	j	cont.18294
bgt.18295:
	addi	$r3, $r0, 1
cont.18294:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18297
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
	j	print_int.2964
bne.18297:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	addi	$r4, $r0, 0
	addi	$r5, $r0, 3
	addi	$r6, $r0, 1
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r6, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -4($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	mul.2922
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -4($r29)
	bgt	$r3, $r2, bgt.18299
	addi	$r4, $r0, 0
	j	cont.18298
bgt.18299:
	addi	$r4, $r0, 1
cont.18298:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18301
	lw	$r2, -20($r29)
	lw	$r4, -16($r29)
	lw	$r5, -12($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.18300
bne.18301:
	bne	$r2, $r3, bne.18303
	addi	$r2, $r0, 1
	j	cont.18302
bne.18303:
	lw	$r2, -20($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.18302:
cont.18300:
	lui	$r3, 1525
	ori	$r3, $r3, 57600
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -4($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -24($r29)
	sw	$r2, -28($r29)
	bgt	$r4, $r3, bgt.18305
	addi	$r2, $r0, 0
	j	cont.18304
bgt.18305:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r2, $r0, 1
cont.18304:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -32($r29)
	sw	$r4, -36($r29)
	sw	$r5, -40($r29)
	sw	$r6, -44($r29)
	sw	$r3, -48($r29)
	addi	$r2, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	mul.2922
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	lw	$r3, -28($r29)
	bgt	$r3, $r2, bgt.18307
	addi	$r4, $r0, 0
	j	cont.18306
bgt.18307:
	addi	$r4, $r0, 1
cont.18306:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18309
	lw	$r2, -48($r29)
	lw	$r4, -44($r29)
	lw	$r5, -40($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	j	cont.18308
bne.18309:
	bne	$r2, $r3, bne.18311
	addi	$r2, $r0, 5
	j	cont.18310
bne.18311:
	lw	$r2, -48($r29)
	lw	$r4, -36($r29)
	lw	$r5, -44($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
cont.18310:
cont.18308:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -28($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -52($r29)
	sw	$r2, -56($r29)
	bgt	$r4, $r3, bgt.18313
	addi	$r3, $r0, 1
	lw	$r5, -32($r29)
	bne	$r5, $r3, bne.18315
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18314
bne.18315:
	addi	$r2, $r0, 0
cont.18314:
	j	cont.18312
bgt.18313:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!..
	addi	$r2, $r0, 1
cont.18312:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -60($r29)
	sw	$r4, -64($r29)
	sw	$r5, -68($r29)
	sw	$r6, -72($r29)
	sw	$r3, -76($r29)
	addi	$r2, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	mul.2922
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	lw	$r3, -56($r29)
	bgt	$r3, $r2, bgt.18317
	addi	$r4, $r0, 0
	j	cont.18316
bgt.18317:
	addi	$r4, $r0, 1
cont.18316:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18319
	lw	$r2, -76($r29)
	lw	$r4, -72($r29)
	lw	$r5, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	j	cont.18318
bne.18319:
	bne	$r2, $r3, bne.18321
	addi	$r2, $r0, 5
	j	cont.18320
bne.18321:
	lw	$r2, -76($r29)
	lw	$r4, -64($r29)
	lw	$r5, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
cont.18320:
cont.18318:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!..
	lw	$r3, -56($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -80($r29)
	sw	$r2, -84($r29)
	bgt	$r4, $r3, bgt.18323
	addi	$r3, $r0, 1
	lw	$r5, -60($r29)
	bne	$r5, $r3, bne.18325
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18324
bne.18325:
	addi	$r2, $r0, 0
cont.18324:
	j	cont.18322
bgt.18323:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!..
	addi	$r2, $r0, 1
cont.18322:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -88($r29)
	sw	$r4, -92($r29)
	sw	$r5, -96($r29)
	sw	$r6, -100($r29)
	sw	$r3, -104($r29)
	addi	$r2, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	mul.2922
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	lw	$r3, -84($r29)
	bgt	$r3, $r2, bgt.18327
	addi	$r4, $r0, 0
	j	cont.18326
bgt.18327:
	addi	$r4, $r0, 1
cont.18326:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18329
	lw	$r2, -104($r29)
	lw	$r4, -100($r29)
	lw	$r5, -96($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	j	cont.18328
bne.18329:
	bne	$r2, $r3, bne.18331
	addi	$r2, $r0, 5
	j	cont.18330
bne.18331:
	lw	$r2, -104($r29)
	lw	$r4, -92($r29)
	lw	$r5, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
cont.18330:
cont.18328:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sw	$r2, -108($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!..
	lw	$r3, -84($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -108($r29)
	sw	$r2, -112($r29)
	bgt	$r4, $r3, bgt.18333
	addi	$r3, $r0, 1
	lw	$r5, -88($r29)
	bne	$r5, $r3, bne.18335
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18334
bne.18335:
	addi	$r2, $r0, 0
cont.18334:
	j	cont.18332
bgt.18333:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!..
	addi	$r2, $r0, 1
cont.18332:
	addi	$r3, $r0, 10000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -116($r29)
	sw	$r4, -120($r29)
	sw	$r5, -124($r29)
	sw	$r6, -128($r29)
	sw	$r3, -132($r29)
	addi	$r2, $r6, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!..
	jal	mul.2922
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!..
	lw	$r3, -112($r29)
	bgt	$r3, $r2, bgt.18337
	addi	$r4, $r0, 0
	j	cont.18336
bgt.18337:
	addi	$r4, $r0, 1
cont.18336:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18339
	lw	$r2, -132($r29)
	lw	$r4, -128($r29)
	lw	$r5, -124($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!..
	j	cont.18338
bne.18339:
	bne	$r2, $r3, bne.18341
	addi	$r2, $r0, 5
	j	cont.18340
bne.18341:
	lw	$r2, -132($r29)
	lw	$r4, -120($r29)
	lw	$r5, -128($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!..
cont.18340:
cont.18338:
	addi	$r3, $r0, 10000
	sw	$r2, -136($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!..
	lw	$r3, -112($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -136($r29)
	sw	$r2, -140($r29)
	bgt	$r4, $r3, bgt.18343
	addi	$r3, $r0, 1
	lw	$r5, -116($r29)
	bne	$r5, $r3, bne.18345
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18344
bne.18345:
	addi	$r2, $r0, 0
cont.18344:
	j	cont.18342
bgt.18343:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!..
	addi	$r2, $r0, 1
cont.18342:
	addi	$r3, $r0, 1000
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -144($r29)
	sw	$r4, -148($r29)
	sw	$r5, -152($r29)
	sw	$r6, -156($r29)
	sw	$r3, -160($r29)
	addi	$r2, $r6, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!..
	jal	mul.2922
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!..
	lw	$r3, -140($r29)
	bgt	$r3, $r2, bgt.18347
	addi	$r4, $r0, 0
	j	cont.18346
bgt.18347:
	addi	$r4, $r0, 1
cont.18346:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18349
	lw	$r2, -160($r29)
	lw	$r4, -156($r29)
	lw	$r5, -152($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!..
	j	cont.18348
bne.18349:
	bne	$r2, $r3, bne.18351
	addi	$r2, $r0, 5
	j	cont.18350
bne.18351:
	lw	$r2, -160($r29)
	lw	$r4, -148($r29)
	lw	$r5, -156($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!..
cont.18350:
cont.18348:
	addi	$r3, $r0, 1000
	sw	$r2, -164($r29)
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!..
	lw	$r3, -140($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -164($r29)
	sw	$r2, -168($r29)
	bgt	$r4, $r3, bgt.18353
	addi	$r3, $r0, 1
	lw	$r5, -144($r29)
	bne	$r5, $r3, bne.18355
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18354
bne.18355:
	addi	$r2, $r0, 0
cont.18354:
	j	cont.18352
bgt.18353:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!..
	addi	$r2, $r0, 1
cont.18352:
	addi	$r3, $r0, 100
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -172($r29)
	sw	$r4, -176($r29)
	sw	$r5, -180($r29)
	sw	$r6, -184($r29)
	sw	$r3, -188($r29)
	addi	$r2, $r6, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!..
	jal	mul.2922
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!..
	lw	$r3, -168($r29)
	bgt	$r3, $r2, bgt.18357
	addi	$r4, $r0, 0
	j	cont.18356
bgt.18357:
	addi	$r4, $r0, 1
cont.18356:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18359
	lw	$r2, -188($r29)
	lw	$r4, -184($r29)
	lw	$r5, -180($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!..
	j	cont.18358
bne.18359:
	bne	$r2, $r3, bne.18361
	addi	$r2, $r0, 5
	j	cont.18360
bne.18361:
	lw	$r2, -188($r29)
	lw	$r4, -176($r29)
	lw	$r5, -184($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!..
cont.18360:
cont.18358:
	addi	$r3, $r0, 100
	sw	$r2, -192($r29)
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!..
	lw	$r3, -168($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -192($r29)
	sw	$r2, -196($r29)
	bgt	$r4, $r3, bgt.18363
	addi	$r3, $r0, 1
	lw	$r5, -172($r29)
	bne	$r5, $r3, bne.18365
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18364
bne.18365:
	addi	$r2, $r0, 0
cont.18364:
	j	cont.18362
bgt.18363:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!..
	addi	$r2, $r0, 1
cont.18362:
	addi	$r3, $r0, 10
	addi	$r4, $r0, 0
	addi	$r5, $r0, 10
	addi	$r6, $r0, 5
	sw	$r2, -200($r29)
	sw	$r4, -204($r29)
	sw	$r5, -208($r29)
	sw	$r6, -212($r29)
	sw	$r3, -216($r29)
	addi	$r2, $r6, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!..
	jal	mul.2922
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!..
	lw	$r3, -196($r29)
	bgt	$r3, $r2, bgt.18367
	addi	$r4, $r0, 0
	j	cont.18366
bgt.18367:
	addi	$r4, $r0, 1
cont.18366:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18369
	lw	$r2, -216($r29)
	lw	$r4, -212($r29)
	lw	$r5, -208($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!..
	j	cont.18368
bne.18369:
	bne	$r2, $r3, bne.18371
	addi	$r2, $r0, 5
	j	cont.18370
bne.18371:
	lw	$r2, -216($r29)
	lw	$r4, -204($r29)
	lw	$r5, -212($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!..
	jal	div_binary_search.2930
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!..
cont.18370:
cont.18368:
	addi	$r3, $r0, 10
	sw	$r2, -220($r29)
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!..
	jal	mul_sub.2909
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!..
	lw	$r3, -196($r29)
	subu	$r2, $r3, $r2
	addi	$r3, $r0, 0
	lw	$r4, -220($r29)
	sw	$r2, -224($r29)
	bgt	$r4, $r3, bgt.18373
	addi	$r3, $r0, 1
	lw	$r5, -200($r29)
	bne	$r5, $r3, bne.18375
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!..
	addi	$r2, $r0, 1
	j	cont.18374
bne.18375:
	addi	$r2, $r0, 0
cont.18374:
	j	cont.18372
bgt.18373:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!..
	addi	$r2, $r0, 1
cont.18372:
	lw	$r2, -224($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
vecunit_sgn.3335:
	lwcl	$f0, 0($r2)
	mul.s	$f0, $f0, $f0
	lwcl	$f1, 4($r2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	mul.s	$f1, $f1, $f1
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18377
	addi	$r4, $r0, 1
	j	cont.18376
bclf.18377:
	addi	$r4, $r0, 0
cont.18376:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18379
	lfh	$f0, 16256
	lfl	$f0, 0
	j	cont.18378
bne.18379:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18381
	lfh	$f1, 49024
	lfl	$f1, 0
	div.s	$f0, $f1, $f0
	j	cont.18380
bne.18381:
	lfh	$f1, 16256
	lfl	$f1, 0
	div.s	$f0, $f1, $f0
cont.18380:
cont.18378:
	lwcl	$f1, 0($r2)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r2)
	lwcl	$f1, 4($r2)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r2)
	lwcl	$f1, 8($r2)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r2)
	jr	$r31
vecaccumv.3495:
	lwcl	$f0, 0($r2)
	lwcl	$f1, 0($r3)
	lwcl	$f2, 0($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r2)
	lwcl	$f1, 4($r3)
	lwcl	$f2, 4($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 4($r2)
	lwcl	$f0, 8($r2)
	lwcl	$f1, 8($r3)
	lwcl	$f2, 8($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 8($r2)
	jr	$r31
read_screen_settings.3934:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float.2873
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 0
	swcl	$f0, 320($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float.2873
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 4
	swcl	$f0, 320($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float.2873
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 8
	swcl	$f0, 320($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float.2873
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -4($r29)
	fmove	$f0, $f1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	sin.2703
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lwcl	$f1, -4($r29)
	swcl	$f0, -8($r29)
	fmove	$f0, $f1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	sin.2703
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	swcl	$f0, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_float.2873
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	sin.2703
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lwcl	$f1, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	sin.2703
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lwcl	$f1, -8($r29)
	mul.s	$f2, $f1, $f0
	lfh	$f3, 17224
	lfl	$f3, 0
	mul.s	$f2, $f2, $f3
	addi	$r2, $r0, 0
	swcl	$f2, 720($r2)
	lfh	$f2, 49992
	lfl	$f2, 0
	lwcl	$f3, -12($r29)
	mul.s	$f2, $f3, $f2
	addi	$r2, $r0, 4
	swcl	$f2, 720($r2)
	lwcl	$f2, -20($r29)
	mul.s	$f4, $f1, $f2
	lfh	$f5, 17224
	lfl	$f5, 0
	mul.s	$f4, $f4, $f5
	addi	$r2, $r0, 8
	swcl	$f4, 720($r2)
	addi	$r2, $r0, 0
	swcl	$f2, 696($r2)
	lfh	$f4, 0
	lfl	$f4, 0
	addi	$r2, $r0, 4
	swcl	$f4, 696($r2)
	fneg	$f4, $f0
	addi	$r2, $r0, 8
	swcl	$f4, 696($r2)
	fneg	$f4, $f3
	mul.s	$f0, $f4, $f0
	addi	$r2, $r0, 0
	swcl	$f0, 708($r2)
	fneg	$f0, $f1
	addi	$r2, $r0, 4
	swcl	$f0, 708($r2)
	fneg	$f0, $f3
	mul.s	$f0, $f0, $f2
	addi	$r2, $r0, 8
	swcl	$f0, 708($r2)
	addi	$r2, $r0, 0
	lwcl	$f0, 320($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 720($r2)
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	swcl	$f0, 332($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, 320($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 720($r2)
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	swcl	$f0, 332($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, 320($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 720($r2)
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	swcl	$f0, 332($r2)
	jr	$r31
read_light.4012:
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 4($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 8($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	read_float.2873
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	sin.2703
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	fneg	$f0, $f0
	addi	$r2, $r0, 4
	swcl	$f0, 344($r2)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_float.2873
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
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
	addi	$r29, $r29, -12	!..
	jal	sin.2703
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lwcl	$f1, -8($r29)
	swcl	$f0, -12($r29)
	fmove	$f0, $f1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	sin.2703
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	swcl	$f0, 344($r2)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f0, $f2
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	sin.2703
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 344($r2)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_float.2873
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r2, $r0, 0
	swcl	$f0, 356($r2)
	jr	$r31
rotate_quadratic_matrix.4038:
	lwcl	$f0, 0($r3)
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	sin.2703
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r2, -8($r29)
	lwcl	$f1, 0($r2)
	swcl	$f0, -12($r29)
	fmove	$f0, $f1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	sin.2703
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -16($r29)
	fmove	$f0, $f1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	sin.2703
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	sin.2703
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	swcl	$f0, -24($r29)
	fmove	$f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	sin.2703
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	swcl	$f0, -28($r29)
	fmove	$f0, $f1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	sin.2703
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
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
	lfl	$f12, 0
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
	lfl	$f12, 0
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
	lfl	$f0, 0
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
read_nth_object.4151:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18383
	addi	$r3, $r0, 0
	j	cont.18382
bne.18383:
	addi	$r3, $r0, 1
cont.18382:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18385
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	read_float.2873
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	read_float.2873
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	read_float.2873
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_float.2873
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_float.2873
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_float.2873
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	swcl	$f0, 8($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_float.2873
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18387
	addi	$r2, $r0, 0
	j	cont.18386
bclf.18387:
	addi	$r2, $r0, 1
cont.18386:
	addi	$r3, $r0, 2
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_float.2873
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r2, -36($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_float.2873
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r2, -36($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	read_float.2873
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	read_float.2873
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	read_float.2873
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	swcl	$f0, 8($r2)
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r3, $r0, 0
	lw	$r4, -20($r29)
	bne	$r4, $r3, bne.18389
	addi	$r3, $r0, 0
	j	cont.18388
bne.18389:
	addi	$r3, $r0, 1
cont.18388:
	addi	$r5, $r0, 1
	bne	$r3, $r5, bne.18391
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	read_float.2873
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -44($r29)
	swcl	$f0, 0($r2)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	read_float.2873
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -44($r29)
	swcl	$f0, 4($r2)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	read_float.2873
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -44($r29)
	swcl	$f0, 8($r2)
	j	cont.18390
bne.18391:
cont.18390:
	addi	$r3, $r0, 2
	lw	$r4, -12($r29)
	bne	$r4, $r3, bne.18393
	addi	$r3, $r0, 1
	j	cont.18392
bne.18393:
	lw	$r3, -32($r29)
cont.18392:
	addi	$r5, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -48($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -44($r29)
	sw	$r2, 36($r3)
	lw	$r4, -40($r29)
	sw	$r4, 32($r3)
	lw	$r4, -36($r29)
	sw	$r4, 28($r3)
	lw	$r4, -48($r29)
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
	addi	$r3, $r0, 3
	bne	$r6, $r3, bne.18395
	lwcl	$f0, 0($r4)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18397
	addi	$r3, $r0, 1
	j	cont.18396
bclf.18397:
	addi	$r3, $r0, 0
cont.18396:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18399
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.18398
bne.18399:
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18401
	addi	$r3, $r0, 1
	j	cont.18400
bclf.18401:
	addi	$r3, $r0, 0
cont.18400:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18403
	lfh	$f1, 0
	lfl	$f1, 0
	j	cont.18402
bne.18403:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18405
	addi	$r3, $r0, 0
	j	cont.18404
bclf.18405:
	addi	$r3, $r0, 1
cont.18404:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18407
	lfh	$f1, 16256
	lfl	$f1, 0
	j	cont.18406
bne.18407:
	lfh	$f1, 49024
	lfl	$f1, 0
cont.18406:
cont.18402:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.18398:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18409
	addi	$r3, $r0, 1
	j	cont.18408
bclf.18409:
	addi	$r3, $r0, 0
cont.18408:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18411
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.18410
bne.18411:
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18413
	addi	$r3, $r0, 1
	j	cont.18412
bclf.18413:
	addi	$r3, $r0, 0
cont.18412:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18415
	lfh	$f1, 0
	lfl	$f1, 0
	j	cont.18414
bne.18415:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18417
	addi	$r3, $r0, 0
	j	cont.18416
bclf.18417:
	addi	$r3, $r0, 1
cont.18416:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18419
	lfh	$f1, 16256
	lfl	$f1, 0
	j	cont.18418
bne.18419:
	lfh	$f1, 49024
	lfl	$f1, 0
cont.18418:
cont.18414:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.18410:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18421
	addi	$r3, $r0, 1
	j	cont.18420
bclf.18421:
	addi	$r3, $r0, 0
cont.18420:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18423
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.18422
bne.18423:
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18425
	addi	$r3, $r0, 1
	j	cont.18424
bclf.18425:
	addi	$r3, $r0, 0
cont.18424:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18427
	lfh	$f1, 0
	lfl	$f1, 0
	j	cont.18426
bne.18427:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18429
	addi	$r3, $r0, 0
	j	cont.18428
bclf.18429:
	addi	$r3, $r0, 1
cont.18428:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.18431
	lfh	$f1, 16256
	lfl	$f1, 0
	j	cont.18430
bne.18431:
	lfh	$f1, 49024
	lfl	$f1, 0
cont.18430:
cont.18426:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.18422:
	swcl	$f0, 8($r4)
	j	cont.18394
bne.18395:
	addi	$r3, $r0, 2
	bne	$r6, $r3, bne.18433
	addi	$r3, $r0, 1
	lw	$r6, -32($r29)
	bne	$r6, $r3, bne.18435
	addi	$r3, $r0, 0
	j	cont.18434
bne.18435:
	addi	$r3, $r0, 1
cont.18434:
	addi	$r2, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	vecunit_sgn.3335
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	j	cont.18432
bne.18433:
cont.18432:
cont.18394:
	addi	$r2, $r0, 0
	lw	$r3, -20($r29)
	bne	$r3, $r2, bne.18437
	addi	$r2, $r0, 0
	j	cont.18436
bne.18437:
	addi	$r2, $r0, 1
cont.18436:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18439
	lw	$r2, -24($r29)
	lw	$r3, -44($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	rotate_quadratic_matrix.4038
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	j	cont.18438
bne.18439:
cont.18438:
	addi	$r2, $r0, 1
	jr	$r31
bne.18385:
	addi	$r2, $r0, 0
	jr	$r31
read_object.4287:
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.18441
	addi	$r3, $r0, 0
	j	cont.18440
bgt.18441:
	addi	$r3, $r0, 1
cont.18440:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18443
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_nth_object.4151
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18445
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.18447
	addi	$r3, $r0, 0
	j	cont.18446
bgt.18447:
	addi	$r3, $r0, 1
cont.18446:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18449
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	read_nth_object.4151
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18451
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.18453
	addi	$r3, $r0, 0
	j	cont.18452
bgt.18453:
	addi	$r3, $r0, 1
cont.18452:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18455
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_nth_object.4151
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18457
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.18459
	addi	$r3, $r0, 0
	j	cont.18458
bgt.18459:
	addi	$r3, $r0, 1
cont.18458:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18461
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_nth_object.4151
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18463
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	j	read_object.4287
bne.18463:
	addi	$r2, $r0, 0
	lw	$r3, -16($r29)
	sw	$r3, 28($r2)
	jr	$r31
bne.18461:
	jr	$r31
bne.18457:
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	sw	$r3, 28($r2)
	jr	$r31
bne.18455:
	jr	$r31
bne.18451:
	addi	$r2, $r0, 0
	lw	$r3, -8($r29)
	sw	$r3, 28($r2)
	jr	$r31
bne.18449:
	jr	$r31
bne.18445:
	addi	$r2, $r0, 0
	lw	$r3, -4($r29)
	sw	$r3, 28($r2)
	jr	$r31
bne.18443:
	jr	$r31
read_net_item.4300:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18465
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bne.18465:
	lw	$r3, -4($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 0
	addi	$r6, $r0, 0
	sw	$r5, 4($r6)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 0
	sw	$r5, 8($r6)
	addi	$r5, $r0, 0
	addi	$r6, $r0, 32
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18467
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.18466
bne.18467:
	lw	$r3, -12($r29)
	addi	$r4, $r3, 1
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	addu	$r1, $r2, $r3	!st var
	sw	$r4, 0($r1)	!st var
cont.18466:
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -8($r29)
	addu	$r1, $r2, $r3	!st var
	sw	$r4, 0($r1)	!st var
	jr	$r31
read_or_network.4314:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18469
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	j	cont.18468
bne.18469:
	addi	$r3, $r0, 1
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.18468:
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, bne.18471
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bne.18471:
	lw	$r2, -4($r29)
	addi	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, bne.18473
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.18472
bne.18473:
	lw	$r2, -16($r29)
	addi	$r4, $r2, 1
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	read_or_network.4314
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -16($r29)
	sll	$r3, $r3, 2
	lw	$r4, -20($r29)
	addu	$r1, $r2, $r3	!st var
	sw	$r4, 0($r1)	!st var
cont.18472:
	lw	$r3, -4($r29)
	sll	$r3, $r3, 2
	lw	$r4, -12($r29)
	addu	$r1, $r2, $r3	!st var
	sw	$r4, 0($r1)	!st var
	jr	$r31
read_and_network.4328:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18475
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	j	cont.18474
bne.18475:
	addi	$r3, $r0, 1
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
cont.18474:
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18477
	jr	$r31
bne.18477:
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18479
	jr	$r31
bne.18479:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 4($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r3, 8($r4)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 32
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.18481
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.18480
bne.18481:
	addi	$r3, $r0, 1
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sw	$r3, 0($r2)
cont.18480:
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18483
	jr	$r31
bne.18483:
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18485
	jr	$r31
bne.18485:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	j	read_and_network.4328
solver_rect_surface.4352:
	sll	$r7, $r4, 2
	addu	$r1, $r3, $r7	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	lfh	$f4, 0
	lfl	$f4, 0
	c.eq.s	$f3, $f4
	bclf	bclf.18487
	addi	$r7, $r0, 1
	j	cont.18486
bclf.18487:
	addi	$r7, $r0, 0
cont.18486:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.18489
	addi	$r2, $r0, 0
	jr	$r31
bne.18489:
	lw	$r7, 16($r2)
	lw	$r2, 24($r2)
	sll	$r8, $r4, 2
	addu	$r1, $r3, $r8	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f3
	bclf	bclf.18491
	addi	$r8, $r0, 0
	j	cont.18490
bclf.18491:
	addi	$r8, $r0, 1
cont.18490:
	addi	$r9, $r0, 1
	bne	$r2, $r9, bne.18493
	addi	$r2, $r0, 1
	bne	$r8, $r2, bne.18495
	addi	$r2, $r0, 0
	j	cont.18494
bne.18495:
	addi	$r2, $r0, 1
cont.18494:
	j	cont.18492
bne.18493:
	addi	$r2, $r8, 0
cont.18492:
	sll	$r8, $r4, 2
	addu	$r1, $r7, $r8	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	addi	$r8, $r0, 1
	bne	$r2, $r8, bne.18497
	j	cont.18496
bne.18497:
	fneg	$f3, $f3
cont.18496:
	sub.s	$f0, $f3, $f0
	sll	$r2, $r4, 2
	addu	$r1, $r3, $r2	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	div.s	$f0, $f0, $f3
	sll	$r2, $r5, 2
	addu	$r1, $r3, $r2	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	mul.s	$f3, $f0, $f3
	add.s	$f1, $f3, $f1
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f3, $f1
	bclf	bclf.18499
	addi	$r2, $r0, 0
	j	cont.18498
bclf.18499:
	addi	$r2, $r0, 1
cont.18498:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18501
	fneg	$f1, $f1
	j	cont.18500
bne.18501:
cont.18500:
	sll	$r2, $r5, 2
	addu	$r1, $r7, $r2	!ldf var
	lwcl	$f3, 0($r1)	!ldf var
	c.le.s	$f3, $f1
	bclf	bclf.18503
	addi	$r2, $r0, 0
	j	cont.18502
bclf.18503:
	addi	$r2, $r0, 1
cont.18502:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18505
	sll	$r2, $r6, 2
	addu	$r1, $r3, $r2	!ldf var
	lwcl	$f1, 0($r1)	!ldf var
	mul.s	$f1, $f0, $f1
	add.s	$f1, $f1, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f1
	bclf	bclf.18507
	addi	$r2, $r0, 0
	j	cont.18506
bclf.18507:
	addi	$r2, $r0, 1
cont.18506:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18509
	fneg	$f1, $f1
	j	cont.18508
bne.18509:
cont.18508:
	sll	$r2, $r6, 2
	addu	$r1, $r7, $r2	!ldf var
	lwcl	$f2, 0($r1)	!ldf var
	c.le.s	$f2, $f1
	bclf	bclf.18511
	addi	$r2, $r0, 0
	j	cont.18510
bclf.18511:
	addi	$r2, $r0, 1
cont.18510:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18513
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	addi	$r2, $r0, 1
	jr	$r31
bne.18513:
	addi	$r2, $r0, 0
	jr	$r31
bne.18505:
	addi	$r2, $r0, 0
	jr	$r31
solver_surface.4411:
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
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f3, $f4
	bclf	bclf.18515
	addi	$r3, $r0, 0
	j	cont.18514
bclf.18515:
	addi	$r3, $r0, 1
cont.18514:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18517
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
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	addi	$r2, $r0, 1
	jr	$r31
bne.18517:
	addi	$r2, $r0, 0
	jr	$r31
quadratic.4426:
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
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18519
	fmove	$f0, $f3
	jr	$r31
bne.18519:
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
	lw	$r2, 36($r2)
	lwcl	$f1, 8($r2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
	jr	$r31
bilinear.4455:
	mul.s	$f6, $f0, $f3
	lw	$r3, 16($r2)
	lwcl	$f7, 0($r3)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f1, $f4
	lw	$r3, 16($r2)
	lwcl	$f8, 4($r3)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f2, $f5
	lw	$r3, 16($r2)
	lwcl	$f8, 8($r3)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r3, 12($r2)
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18521
	fmove	$f0, $f6
	jr	$r31
bne.18521:
	mul.s	$f7, $f2, $f4
	mul.s	$f8, $f1, $f5
	add.s	$f7, $f7, $f8
	lw	$r3, 36($r2)
	lwcl	$f8, 0($r3)
	mul.s	$f7, $f7, $f8
	mul.s	$f5, $f0, $f5
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f5, $f2
	lw	$r3, 36($r2)
	lwcl	$f5, 4($r3)
	mul.s	$f2, $f2, $f5
	add.s	$f2, $f7, $f2
	mul.s	$f0, $f0, $f4
	mul.s	$f1, $f1, $f3
	add.s	$f0, $f0, $f1
	lw	$r2, 36($r2)
	lwcl	$f1, 8($r2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f6, $f0
	jr	$r31
solver_second.4494:
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
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18523
	fmove	$f3, $f6
	j	cont.18522
bne.18523:
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
cont.18522:
	lfh	$f4, 0
	lfl	$f4, 0
	c.eq.s	$f3, $f4
	bclf	bclf.18525
	addi	$r4, $r0, 1
	j	cont.18524
bclf.18525:
	addi	$r4, $r0, 0
cont.18524:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18527
	addi	$r2, $r0, 0
	jr	$r31
bne.18527:
	lwcl	$f4, 0($r3)
	lwcl	$f5, 4($r3)
	lwcl	$f6, 8($r3)
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f1, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f3, $f0
	fmove	$f0, $f4
	fmove	$f4, $f1
	fmove	$f1, $f5
	fmove	$f5, $f2
	fmove	$f2, $f6
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	bilinear.4455
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lwcl	$f1, -20($r29)
	mul.s	$f2, $f1, $f1
	lw	$r2, -16($r29)
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	mul.s	$f2, $f2, $f3
	lwcl	$f3, -12($r29)
	mul.s	$f4, $f3, $f3
	lw	$r3, 16($r2)
	lwcl	$f5, 4($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f2, $f2, $f4
	lwcl	$f4, -8($r29)
	mul.s	$f5, $f4, $f4
	lw	$r3, 16($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	lw	$r3, 12($r2)
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18529
	fmove	$f1, $f2
	j	cont.18528
bne.18529:
	mul.s	$f5, $f3, $f4
	lw	$r3, 36($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f5, $f5, $f6
	add.s	$f2, $f2, $f5
	mul.s	$f4, $f4, $f1
	lw	$r3, 36($r2)
	lwcl	$f5, 4($r3)
	mul.s	$f4, $f4, $f5
	add.s	$f2, $f2, $f4
	mul.s	$f1, $f1, $f3
	lw	$r3, 36($r2)
	lwcl	$f3, 8($r3)
	mul.s	$f1, $f1, $f3
	add.s	$f1, $f2, $f1
cont.18528:
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, bne.18531
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f1, $f1, $f2
	j	cont.18530
bne.18531:
cont.18530:
	mul.s	$f2, $f0, $f0
	lwcl	$f3, -4($r29)
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f1, $f2
	bclf	bclf.18533
	addi	$r3, $r0, 0
	j	cont.18532
bclf.18533:
	addi	$r3, $r0, 1
cont.18532:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18535
	sqrt	$f1, $f1
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18537
	j	cont.18536
bne.18537:
	fneg	$f1, $f1
cont.18536:
	sub.s	$f0, $f1, $f0
	div.s	$f0, $f0, $f3
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	addi	$r2, $r0, 1
	jr	$r31
bne.18535:
	addi	$r2, $r0, 0
	jr	$r31
solver.4534:
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
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18539
	addi	$r4, $r0, 0
	addi	$r5, $r0, 1
	addi	$r6, $r0, 2
	swcl	$f0, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f1, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18541
	addi	$r2, $r0, 1
	jr	$r31
bne.18541:
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lwcl	$f0, -12($r29)
	lwcl	$f1, -8($r29)
	lwcl	$f2, -4($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18543
	addi	$r2, $r0, 2
	jr	$r31
bne.18543:
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lwcl	$f0, -8($r29)
	lwcl	$f1, -4($r29)
	lwcl	$f2, -12($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18545
	addi	$r2, $r0, 3
	jr	$r31
bne.18545:
	addi	$r2, $r0, 0
	jr	$r31
bne.18539:
	addi	$r5, $r0, 2
	bne	$r4, $r5, bne.18547
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
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f3, $f4
	bclf	bclf.18549
	addi	$r3, $r0, 0
	j	cont.18548
bclf.18549:
	addi	$r3, $r0, 1
cont.18548:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18551
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
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	addi	$r2, $r0, 1
	jr	$r31
bne.18551:
	addi	$r2, $r0, 0
	jr	$r31
bne.18547:
	j	solver_second.4494
solver_rect_fast.4554:
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r4)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f1
	lfh	$f5, 0
	lfl	$f5, 0
	c.le.s	$f5, $f4
	bclf	bclf.18553
	addi	$r5, $r0, 0
	j	cont.18552
bclf.18553:
	addi	$r5, $r0, 1
cont.18552:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18555
	fneg	$f4, $f4
	j	cont.18554
bne.18555:
cont.18554:
	lw	$r5, 16($r2)
	lwcl	$f5, 4($r5)
	c.le.s	$f5, $f4
	bclf	bclf.18557
	addi	$r5, $r0, 0
	j	cont.18556
bclf.18557:
	addi	$r5, $r0, 1
cont.18556:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18559
	lwcl	$f4, 8($r3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	lfh	$f5, 0
	lfl	$f5, 0
	c.le.s	$f5, $f4
	bclf	bclf.18561
	addi	$r5, $r0, 0
	j	cont.18560
bclf.18561:
	addi	$r5, $r0, 1
cont.18560:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18563
	fneg	$f4, $f4
	j	cont.18562
bne.18563:
cont.18562:
	lw	$r5, 16($r2)
	lwcl	$f5, 8($r5)
	c.le.s	$f5, $f4
	bclf	bclf.18565
	addi	$r5, $r0, 0
	j	cont.18564
bclf.18565:
	addi	$r5, $r0, 1
cont.18564:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18567
	lwcl	$f4, 4($r4)
	lfh	$f5, 0
	lfl	$f5, 0
	c.eq.s	$f4, $f5
	bclf	bclf.18569
	addi	$r5, $r0, 1
	j	cont.18568
bclf.18569:
	addi	$r5, $r0, 0
cont.18568:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18571
	addi	$r5, $r0, 0
	j	cont.18570
bne.18571:
	addi	$r5, $r0, 1
cont.18570:
	j	cont.18566
bne.18567:
	addi	$r5, $r0, 0
cont.18566:
	j	cont.18558
bne.18559:
	addi	$r5, $r0, 0
cont.18558:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18573
	addi	$r2, $r0, 0
	swcl	$f3, 576($r2)
	addi	$r2, $r0, 1
	jr	$r31
bne.18573:
	lwcl	$f3, 8($r4)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r4)
	mul.s	$f3, $f3, $f4
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f0
	lfh	$f5, 0
	lfl	$f5, 0
	c.le.s	$f5, $f4
	bclf	bclf.18575
	addi	$r5, $r0, 0
	j	cont.18574
bclf.18575:
	addi	$r5, $r0, 1
cont.18574:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18577
	fneg	$f4, $f4
	j	cont.18576
bne.18577:
cont.18576:
	lw	$r5, 16($r2)
	lwcl	$f5, 0($r5)
	c.le.s	$f5, $f4
	bclf	bclf.18579
	addi	$r5, $r0, 0
	j	cont.18578
bclf.18579:
	addi	$r5, $r0, 1
cont.18578:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18581
	lwcl	$f4, 8($r3)
	mul.s	$f4, $f3, $f4
	add.s	$f4, $f4, $f2
	lfh	$f5, 0
	lfl	$f5, 0
	c.le.s	$f5, $f4
	bclf	bclf.18583
	addi	$r5, $r0, 0
	j	cont.18582
bclf.18583:
	addi	$r5, $r0, 1
cont.18582:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18585
	fneg	$f4, $f4
	j	cont.18584
bne.18585:
cont.18584:
	lw	$r5, 16($r2)
	lwcl	$f5, 8($r5)
	c.le.s	$f5, $f4
	bclf	bclf.18587
	addi	$r5, $r0, 0
	j	cont.18586
bclf.18587:
	addi	$r5, $r0, 1
cont.18586:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18589
	lwcl	$f4, 12($r4)
	lfh	$f5, 0
	lfl	$f5, 0
	c.eq.s	$f4, $f5
	bclf	bclf.18591
	addi	$r5, $r0, 1
	j	cont.18590
bclf.18591:
	addi	$r5, $r0, 0
cont.18590:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18593
	addi	$r5, $r0, 0
	j	cont.18592
bne.18593:
	addi	$r5, $r0, 1
cont.18592:
	j	cont.18588
bne.18589:
	addi	$r5, $r0, 0
cont.18588:
	j	cont.18580
bne.18581:
	addi	$r5, $r0, 0
cont.18580:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18595
	addi	$r2, $r0, 0
	swcl	$f3, 576($r2)
	addi	$r2, $r0, 2
	jr	$r31
bne.18595:
	lwcl	$f3, 16($r4)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r4)
	mul.s	$f2, $f2, $f3
	lwcl	$f3, 0($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f0, $f3, $f0
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.18597
	addi	$r5, $r0, 0
	j	cont.18596
bclf.18597:
	addi	$r5, $r0, 1
cont.18596:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18599
	fneg	$f0, $f0
	j	cont.18598
bne.18599:
cont.18598:
	lw	$r5, 16($r2)
	lwcl	$f3, 0($r5)
	c.le.s	$f3, $f0
	bclf	bclf.18601
	addi	$r5, $r0, 0
	j	cont.18600
bclf.18601:
	addi	$r5, $r0, 1
cont.18600:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18603
	lwcl	$f0, 4($r3)
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f0, $f1
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18605
	addi	$r3, $r0, 0
	j	cont.18604
bclf.18605:
	addi	$r3, $r0, 1
cont.18604:
	addi	$r5, $r0, 1
	bne	$r3, $r5, bne.18607
	fneg	$f0, $f0
	j	cont.18606
bne.18607:
cont.18606:
	lw	$r2, 16($r2)
	lwcl	$f1, 4($r2)
	c.le.s	$f1, $f0
	bclf	bclf.18609
	addi	$r2, $r0, 0
	j	cont.18608
bclf.18609:
	addi	$r2, $r0, 1
cont.18608:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18611
	lwcl	$f0, 20($r4)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18613
	addi	$r2, $r0, 1
	j	cont.18612
bclf.18613:
	addi	$r2, $r0, 0
cont.18612:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18615
	addi	$r2, $r0, 0
	j	cont.18614
bne.18615:
	addi	$r2, $r0, 1
cont.18614:
	j	cont.18610
bne.18611:
	addi	$r2, $r0, 0
cont.18610:
	j	cont.18602
bne.18603:
	addi	$r2, $r0, 0
cont.18602:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18617
	addi	$r2, $r0, 0
	swcl	$f2, 576($r2)
	addi	$r2, $r0, 3
	jr	$r31
bne.18617:
	addi	$r2, $r0, 0
	jr	$r31
solver_second_fast.4674:
	lwcl	$f3, 0($r3)
	lfh	$f4, 0
	lfl	$f4, 0
	c.eq.s	$f3, $f4
	bclf	bclf.18619
	addi	$r4, $r0, 1
	j	cont.18618
bclf.18619:
	addi	$r4, $r0, 0
cont.18618:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18621
	addi	$r2, $r0, 0
	jr	$r31
bne.18621:
	lwcl	$f4, 4($r3)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r3)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r4, 16($r2)
	lwcl	$f7, 4($r4)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r4, 16($r2)
	lwcl	$f7, 8($r4)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r4, 12($r2)
	addi	$r5, $r0, 0
	bne	$r4, $r5, bne.18623
	fmove	$f0, $f5
	j	cont.18622
bne.18623:
	mul.s	$f6, $f1, $f2
	lw	$r4, 36($r2)
	lwcl	$f7, 0($r4)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r4, 36($r2)
	lwcl	$f6, 4($r4)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r4, 36($r2)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.18622:
	lw	$r4, 4($r2)
	addi	$r5, $r0, 3
	bne	$r4, $r5, bne.18625
	lfh	$f1, 16256
	lfl	$f1, 0
	sub.s	$f0, $f0, $f1
	j	cont.18624
bne.18625:
cont.18624:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18627
	addi	$r4, $r0, 0
	j	cont.18626
bclf.18627:
	addi	$r4, $r0, 1
cont.18626:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18629
	lw	$r2, 24($r2)
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18631
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	j	cont.18630
bne.18631:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
cont.18630:
	addi	$r2, $r0, 1
	jr	$r31
bne.18629:
	addi	$r2, $r0, 0
	jr	$r31
solver_second_fast2.4761:
	lwcl	$f3, 0($r3)
	lfh	$f4, 0
	lfl	$f4, 0
	c.eq.s	$f3, $f4
	bclf	bclf.18633
	addi	$r5, $r0, 1
	j	cont.18632
bclf.18633:
	addi	$r5, $r0, 0
cont.18632:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18635
	addi	$r2, $r0, 0
	jr	$r31
bne.18635:
	lwcl	$f4, 4($r3)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r3)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f1, $f2
	bclf	bclf.18637
	addi	$r4, $r0, 0
	j	cont.18636
bclf.18637:
	addi	$r4, $r0, 1
cont.18636:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18639
	lw	$r2, 24($r2)
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18641
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
	j	cont.18640
bne.18641:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r3)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	swcl	$f0, 576($r2)
cont.18640:
	addi	$r2, $r0, 1
	jr	$r31
bne.18639:
	addi	$r2, $r0, 0
	jr	$r31
setup_rect_table.4822:
	addi	$r4, $r0, 6
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18643
	addi	$r4, $r0, 1
	j	cont.18642
bclf.18643:
	addi	$r4, $r0, 0
cont.18642:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18645
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 4($r2)
	j	cont.18644
bne.18645:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18647
	addi	$r6, $r0, 0
	j	cont.18646
bclf.18647:
	addi	$r6, $r0, 1
cont.18646:
	addi	$r7, $r0, 1
	bne	$r5, $r7, bne.18649
	addi	$r5, $r0, 1
	bne	$r6, $r5, bne.18651
	addi	$r5, $r0, 0
	j	cont.18650
bne.18651:
	addi	$r5, $r0, 1
cont.18650:
	j	cont.18648
bne.18649:
	addi	$r5, $r6, 0
cont.18648:
	lw	$r6, 16($r4)
	lwcl	$f0, 0($r6)
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18653
	j	cont.18652
bne.18653:
	fneg	$f0, $f0
cont.18652:
	swcl	$f0, 0($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f1, 0($r3)
	div.s	$f0, $f0, $f1
	swcl	$f0, 4($r2)
cont.18644:
	lwcl	$f0, 4($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18655
	addi	$r4, $r0, 1
	j	cont.18654
bclf.18655:
	addi	$r4, $r0, 0
cont.18654:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18657
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 12($r2)
	j	cont.18656
bne.18657:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18659
	addi	$r6, $r0, 0
	j	cont.18658
bclf.18659:
	addi	$r6, $r0, 1
cont.18658:
	addi	$r7, $r0, 1
	bne	$r5, $r7, bne.18661
	addi	$r5, $r0, 1
	bne	$r6, $r5, bne.18663
	addi	$r5, $r0, 0
	j	cont.18662
bne.18663:
	addi	$r5, $r0, 1
cont.18662:
	j	cont.18660
bne.18661:
	addi	$r5, $r6, 0
cont.18660:
	lw	$r6, 16($r4)
	lwcl	$f0, 4($r6)
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18665
	j	cont.18664
bne.18665:
	fneg	$f0, $f0
cont.18664:
	swcl	$f0, 8($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f1, 4($r3)
	div.s	$f0, $f0, $f1
	swcl	$f0, 12($r2)
cont.18656:
	lwcl	$f0, 8($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18667
	addi	$r4, $r0, 1
	j	cont.18666
bclf.18667:
	addi	$r4, $r0, 0
cont.18666:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18669
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 20($r2)
	j	cont.18668
bne.18669:
	lw	$r4, -4($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18671
	addi	$r6, $r0, 0
	j	cont.18670
bclf.18671:
	addi	$r6, $r0, 1
cont.18670:
	addi	$r7, $r0, 1
	bne	$r5, $r7, bne.18673
	addi	$r5, $r0, 1
	bne	$r6, $r5, bne.18675
	addi	$r5, $r0, 0
	j	cont.18674
bne.18675:
	addi	$r5, $r0, 1
cont.18674:
	j	cont.18672
bne.18673:
	addi	$r5, $r6, 0
cont.18672:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	addi	$r4, $r0, 1
	bne	$r5, $r4, bne.18677
	j	cont.18676
bne.18677:
	fneg	$f0, $f0
cont.18676:
	swcl	$f0, 16($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f1, 8($r3)
	div.s	$f0, $f0, $f1
	swcl	$f0, 20($r2)
cont.18668:
	jr	$r31
setup_surface_table.4891:
	addi	$r4, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18679
	addi	$r3, $r0, 0
	j	cont.18678
bclf.18679:
	addi	$r3, $r0, 1
cont.18678:
	addi	$r5, $r0, 1
	bne	$r3, $r5, bne.18681
	lfh	$f1, 49024
	lfl	$f1, 0
	div.s	$f1, $f1, $f0
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
	j	cont.18680
bne.18681:
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 0($r2)
cont.18680:
	jr	$r31
setup_second_table.4935:
	addi	$r4, $r0, 5
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
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
	addi	$r6, $r0, 0
	bne	$r5, $r6, bne.18683
	fmove	$f0, $f3
	j	cont.18682
bne.18683:
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
cont.18682:
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
	addi	$r6, $r0, 0
	bne	$r5, $r6, bne.18685
	addi	$r5, $r0, 0
	j	cont.18684
bne.18685:
	addi	$r5, $r0, 1
cont.18684:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18687
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
	lfl	$f5, 0
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
	lfl	$f4, 0
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
	lfl	$f2, 0
	mul.s	$f1, $f1, $f2
	sub.s	$f1, $f3, $f1
	swcl	$f1, 12($r2)
	j	cont.18686
bne.18687:
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
cont.18686:
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.18689
	addi	$r3, $r0, 1
	j	cont.18688
bclf.18689:
	addi	$r3, $r0, 0
cont.18688:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18691
	addi	$r3, $r0, 0
	j	cont.18690
bne.18691:
	addi	$r3, $r0, 1
cont.18690:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18693
	lfh	$f1, 16256
	lfl	$f1, 0
	div.s	$f0, $f1, $f0
	swcl	$f0, 16($r2)
	j	cont.18692
bne.18693:
cont.18692:
	jr	$r31
iter_setup_dirvec_constants.5021:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.18695
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	addi	$r8, $r0, 1
	sw	$r2, -4($r29)
	bne	$r7, $r8, bne.18697
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.18696
bne.18697:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18699
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.18698
bne.18699:
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.18698:
cont.18696:
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.18701
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.18703
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.18702
bne.18703:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18705
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.18704
bne.18705:
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.18704:
cont.18702:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.5021
bgt.18701:
	jr	$r31
bgt.18695:
	jr	$r31
setup_startp_constants.5043:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.18707
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
	addi	$r7, $r0, 2
	bne	$r6, $r7, bne.18709
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
	j	cont.18708
bne.18709:
	addi	$r7, $r0, 2
	bgt	$r6, $r7, bgt.18711
	addi	$r7, $r0, 0
	j	cont.18710
bgt.18711:
	addi	$r7, $r0, 1
cont.18710:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.18713
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
	addi	$r8, $r0, 0
	bne	$r7, $r8, bne.18715
	fmove	$f0, $f3
	j	cont.18714
bne.18715:
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
cont.18714:
	addi	$r4, $r0, 3
	bne	$r6, $r4, bne.18717
	lfh	$f1, 16256
	lfl	$f1, 0
	sub.s	$f0, $f0, $f1
	j	cont.18716
bne.18717:
cont.18716:
	swcl	$f0, 12($r5)
	j	cont.18712
bne.18713:
cont.18712:
cont.18708:
	addi	$r3, $r3, -1
	j	setup_startp_constants.5043
bgt.18707:
	jr	$r31
is_rect_outside.5102:
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.18719
	addi	$r3, $r0, 0
	j	cont.18718
bclf.18719:
	addi	$r3, $r0, 1
cont.18718:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18721
	fneg	$f0, $f0
	j	cont.18720
bne.18721:
cont.18720:
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f3, $f0
	bclf	bclf.18723
	addi	$r3, $r0, 0
	j	cont.18722
bclf.18723:
	addi	$r3, $r0, 1
cont.18722:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18725
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f1
	bclf	bclf.18727
	addi	$r3, $r0, 0
	j	cont.18726
bclf.18727:
	addi	$r3, $r0, 1
cont.18726:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18729
	fneg	$f0, $f1
	j	cont.18728
bne.18729:
	fmove	$f0, $f1
cont.18728:
	lw	$r3, 16($r2)
	lwcl	$f1, 4($r3)
	c.le.s	$f1, $f0
	bclf	bclf.18731
	addi	$r3, $r0, 0
	j	cont.18730
bclf.18731:
	addi	$r3, $r0, 1
cont.18730:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18733
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f2
	bclf	bclf.18735
	addi	$r3, $r0, 0
	j	cont.18734
bclf.18735:
	addi	$r3, $r0, 1
cont.18734:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18737
	fneg	$f0, $f2
	j	cont.18736
bne.18737:
	fmove	$f0, $f2
cont.18736:
	lw	$r3, 16($r2)
	lwcl	$f1, 8($r3)
	c.le.s	$f1, $f0
	bclf	bclf.18739
	addi	$r3, $r0, 0
	j	cont.18738
bclf.18739:
	addi	$r3, $r0, 1
cont.18738:
	j	cont.18732
bne.18733:
	addi	$r3, $r0, 0
cont.18732:
	j	cont.18724
bne.18725:
	addi	$r3, $r0, 0
cont.18724:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18741
	lw	$r2, 24($r2)
	jr	$r31
bne.18741:
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18743
	addi	$r2, $r0, 0
	jr	$r31
bne.18743:
	addi	$r2, $r0, 1
	jr	$r31
is_second_outside.5132:
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
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.18745
	fmove	$f0, $f3
	j	cont.18744
bne.18745:
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
cont.18744:
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, bne.18747
	lfh	$f1, 16256
	lfl	$f1, 0
	sub.s	$f0, $f0, $f1
	j	cont.18746
bne.18747:
cont.18746:
	lw	$r2, 24($r2)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18749
	addi	$r3, $r0, 0
	j	cont.18748
bclf.18749:
	addi	$r3, $r0, 1
cont.18748:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18751
	addi	$r2, $r0, 1
	bne	$r3, $r2, bne.18753
	addi	$r2, $r0, 0
	j	cont.18752
bne.18753:
	addi	$r2, $r0, 1
cont.18752:
	j	cont.18750
bne.18751:
	addi	$r2, $r3, 0
cont.18750:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18755
	addi	$r2, $r0, 0
	jr	$r31
bne.18755:
	addi	$r2, $r0, 1
	jr	$r31
is_outside.5146:
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
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18757
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.18759
	addi	$r3, $r0, 0
	j	cont.18758
bclf.18759:
	addi	$r3, $r0, 1
cont.18758:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18761
	fneg	$f0, $f0
	j	cont.18760
bne.18761:
cont.18760:
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f3, $f0
	bclf	bclf.18763
	addi	$r3, $r0, 0
	j	cont.18762
bclf.18763:
	addi	$r3, $r0, 1
cont.18762:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18765
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f1
	bclf	bclf.18767
	addi	$r3, $r0, 0
	j	cont.18766
bclf.18767:
	addi	$r3, $r0, 1
cont.18766:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18769
	fneg	$f0, $f1
	j	cont.18768
bne.18769:
	fmove	$f0, $f1
cont.18768:
	lw	$r3, 16($r2)
	lwcl	$f1, 4($r3)
	c.le.s	$f1, $f0
	bclf	bclf.18771
	addi	$r3, $r0, 0
	j	cont.18770
bclf.18771:
	addi	$r3, $r0, 1
cont.18770:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18773
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f0, $f2
	bclf	bclf.18775
	addi	$r3, $r0, 0
	j	cont.18774
bclf.18775:
	addi	$r3, $r0, 1
cont.18774:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18777
	fneg	$f0, $f2
	j	cont.18776
bne.18777:
	fmove	$f0, $f2
cont.18776:
	lw	$r3, 16($r2)
	lwcl	$f1, 8($r3)
	c.le.s	$f1, $f0
	bclf	bclf.18779
	addi	$r3, $r0, 0
	j	cont.18778
bclf.18779:
	addi	$r3, $r0, 1
cont.18778:
	j	cont.18772
bne.18773:
	addi	$r3, $r0, 0
cont.18772:
	j	cont.18764
bne.18765:
	addi	$r3, $r0, 0
cont.18764:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18781
	lw	$r2, 24($r2)
	jr	$r31
bne.18781:
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18783
	addi	$r2, $r0, 0
	jr	$r31
bne.18783:
	addi	$r2, $r0, 1
	jr	$r31
bne.18757:
	addi	$r4, $r0, 2
	bne	$r3, $r4, bne.18785
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18787
	addi	$r3, $r0, 0
	j	cont.18786
bclf.18787:
	addi	$r3, $r0, 1
cont.18786:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18789
	addi	$r2, $r0, 1
	bne	$r3, $r2, bne.18791
	addi	$r2, $r0, 0
	j	cont.18790
bne.18791:
	addi	$r2, $r0, 1
cont.18790:
	j	cont.18788
bne.18789:
	addi	$r2, $r3, 0
cont.18788:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18793
	addi	$r2, $r0, 0
	jr	$r31
bne.18793:
	addi	$r2, $r0, 1
	jr	$r31
bne.18785:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	quadratic.4426
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r2, -4($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, bne.18795
	lfh	$f1, 16256
	lfl	$f1, 0
	sub.s	$f0, $f0, $f1
	j	cont.18794
bne.18795:
cont.18794:
	lw	$r2, 24($r2)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.18797
	addi	$r3, $r0, 0
	j	cont.18796
bclf.18797:
	addi	$r3, $r0, 1
cont.18796:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.18799
	addi	$r2, $r0, 1
	bne	$r3, $r2, bne.18801
	addi	$r2, $r0, 0
	j	cont.18800
bne.18801:
	addi	$r2, $r0, 1
cont.18800:
	j	cont.18798
bne.18799:
	addi	$r2, $r3, 0
cont.18798:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18803
	addi	$r2, $r0, 0
	jr	$r31
bne.18803:
	addi	$r2, $r0, 1
	jr	$r31
check_all_inside.5160:
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r4, $r5, bne.18805
	addi	$r2, $r0, 1
	jr	$r31
bne.18805:
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
	addi	$r6, $r0, 1
	swcl	$f2, -4($r29)
	swcl	$f1, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.18807
	addi	$r2, $r4, 0
	fmove	$f0, $f3
	fmove	$f1, $f4
	fmove	$f2, $f5
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	is_rect_outside.5102
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.18806
bne.18807:
	addi	$r6, $r0, 2
	bne	$r5, $r6, bne.18809
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
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f3
	bclf	bclf.18811
	addi	$r5, $r0, 0
	j	cont.18810
bclf.18811:
	addi	$r5, $r0, 1
cont.18810:
	addi	$r6, $r0, 1
	bne	$r4, $r6, bne.18813
	addi	$r4, $r0, 1
	bne	$r5, $r4, bne.18815
	addi	$r4, $r0, 0
	j	cont.18814
bne.18815:
	addi	$r4, $r0, 1
cont.18814:
	j	cont.18812
bne.18813:
	addi	$r4, $r5, 0
cont.18812:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18817
	addi	$r2, $r0, 0
	j	cont.18816
bne.18817:
	addi	$r2, $r0, 1
cont.18816:
	j	cont.18808
bne.18809:
	addi	$r2, $r4, 0
	fmove	$f0, $f3
	fmove	$f1, $f4
	fmove	$f2, $f5
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	is_second_outside.5132
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.18808:
cont.18806:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18819
	addi	$r2, $r0, 0
	jr	$r31
bne.18819:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18821
	addi	$r2, $r0, 1
	jr	$r31
bne.18821:
	sll	$r3, $r3, 2
	lw	$r3, 80($r3)
	lwcl	$f0, -12($r29)
	lwcl	$f1, -8($r29)
	lwcl	$f2, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	is_outside.5146
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18823
	addi	$r2, $r0, 0
	jr	$r31
bne.18823:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lwcl	$f0, -12($r29)
	lwcl	$f1, -8($r29)
	lwcl	$f2, -4($r29)
	j	check_all_inside.5160
shadow_check_and_group.5174:
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r4, $r5, bne.18825
	addi	$r2, $r0, 0
	jr	$r31
bne.18825:
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	addi	$r6, $r0, 0
	lwcl	$f0, 588($r6)
	lw	$r6, 20($r5)
	lwcl	$f1, 0($r6)
	sub.s	$f0, $f0, $f1
	addi	$r6, $r0, 4
	lwcl	$f1, 588($r6)
	lw	$r6, 20($r5)
	lwcl	$f2, 4($r6)
	sub.s	$f1, $f1, $f2
	addi	$r6, $r0, 8
	lwcl	$f2, 588($r6)
	lw	$r6, 20($r5)
	lwcl	$f3, 8($r6)
	sub.s	$f2, $f2, $f3
	sll	$r6, $r4, 2
	lw	$r6, 800($r6)
	lw	$r7, 4($r5)
	addi	$r8, $r0, 1
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	bne	$r7, $r8, bne.18827
	addi	$r7, $r0, 788
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.18826
bne.18827:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18829
	lwcl	$f3, 0($r6)
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f3
	bclf	bclf.18831
	addi	$r5, $r0, 0
	j	cont.18830
bclf.18831:
	addi	$r5, $r0, 1
cont.18830:
	addi	$r7, $r0, 1
	bne	$r5, $r7, bne.18833
	lwcl	$f3, 4($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r5, $r0, 0
	swcl	$f0, 576($r5)
	addi	$r2, $r0, 1
	j	cont.18832
bne.18833:
	addi	$r2, $r0, 0
cont.18832:
	j	cont.18828
bne.18829:
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_second_fast.4674
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.18828:
cont.18826:
	addi	$r3, $r0, 0
	lwcl	$f0, 576($r3)
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.18835
	addi	$r2, $r0, 0
	j	cont.18834
bne.18835:
	addi	$r2, $r0, 1
cont.18834:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18837
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.18839
	addi	$r2, $r0, 0
	j	cont.18838
bclf.18839:
	addi	$r2, $r0, 1
cont.18838:
	j	cont.18836
bne.18837:
	addi	$r2, $r0, 0
cont.18836:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18841
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 344($r2)
	mul.s	$f1, $f1, $f0
	addi	$r2, $r0, 0
	lwcl	$f2, 588($r2)
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 4
	lwcl	$f2, 344($r2)
	mul.s	$f2, $f2, $f0
	addi	$r2, $r0, 4
	lwcl	$f3, 588($r2)
	add.s	$f2, $f2, $f3
	addi	$r2, $r0, 8
	lwcl	$f3, 344($r2)
	mul.s	$f0, $f3, $f0
	addi	$r2, $r0, 8
	lwcl	$f3, 588($r2)
	add.s	$f0, $f0, $f3
	lw	$r3, -12($r29)
	lw	$r2, 0($r3)
	addi	$r4, $r0, -1
	bne	$r2, $r4, bne.18843
	addi	$r2, $r0, 1
	j	cont.18842
bne.18843:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f1, -24($r29)
	fmove	$f31, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f31
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	is_outside.5146
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18845
	addi	$r2, $r0, 0
	j	cont.18844
bne.18845:
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	check_all_inside.5160
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
cont.18844:
cont.18842:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18847
	addi	$r2, $r0, 1
	jr	$r31
bne.18847:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.5174
bne.18841:
	lw	$r2, -4($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18849
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.5174
bne.18849:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.5221:
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r4, $r5, bne.18851
	addi	$r2, $r0, 0
	jr	$r31
bne.18851:
	sll	$r4, $r4, 2
	lw	$r4, 364($r4)
	addi	$r5, $r0, 0
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18853
	addi	$r2, $r0, 1
	jr	$r31
bne.18853:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18855
	addi	$r2, $r0, 0
	jr	$r31
bne.18855:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18857
	addi	$r2, $r0, 1
	jr	$r31
bne.18857:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18859
	addi	$r2, $r0, 0
	jr	$r31
bne.18859:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18861
	addi	$r2, $r0, 1
	jr	$r31
bne.18861:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18863
	addi	$r2, $r0, 0
	jr	$r31
bne.18863:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18865
	addi	$r2, $r0, 1
	jr	$r31
bne.18865:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_group.5221
shadow_check_one_or_matrix.5233:
	sll	$r4, $r2, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	lw	$r5, 0($r4)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.18867
	addi	$r2, $r0, 0
	jr	$r31
bne.18867:
	addi	$r6, $r0, 99
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r5, $r6, bne.18869
	addi	$r2, $r0, 1
	j	cont.18868
bne.18869:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	addi	$r7, $r0, 0
	lwcl	$f0, 588($r7)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	lwcl	$f1, 588($r7)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	addi	$r7, $r0, 8
	lwcl	$f2, 588($r7)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	sll	$r5, $r5, 2
	lw	$r5, 800($r5)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.18871
	addi	$r7, $r0, 788
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.18870
bne.18871:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18873
	lwcl	$f3, 0($r5)
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f3
	bclf	bclf.18875
	addi	$r6, $r0, 0
	j	cont.18874
bclf.18875:
	addi	$r6, $r0, 1
cont.18874:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.18877
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r5, $r0, 0
	swcl	$f0, 576($r5)
	addi	$r2, $r0, 1
	j	cont.18876
bne.18877:
	addi	$r2, $r0, 0
cont.18876:
	j	cont.18872
bne.18873:
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_second_fast.4674
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.18872:
cont.18870:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.18879
	addi	$r2, $r0, 0
	j	cont.18878
bne.18879:
	addi	$r2, $r0, 1
cont.18878:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18881
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.18883
	addi	$r2, $r0, 0
	j	cont.18882
bclf.18883:
	addi	$r2, $r0, 1
cont.18882:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18885
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18887
	addi	$r2, $r0, 0
	j	cont.18886
bne.18887:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18889
	addi	$r2, $r0, 1
	j	cont.18888
bne.18889:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18891
	addi	$r2, $r0, 0
	j	cont.18890
bne.18891:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18893
	addi	$r2, $r0, 1
	j	cont.18892
bne.18893:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18895
	addi	$r2, $r0, 0
	j	cont.18894
bne.18895:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18897
	addi	$r2, $r0, 1
	j	cont.18896
bne.18897:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_one_or_group.5221
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.18896:
cont.18894:
cont.18892:
cont.18890:
cont.18888:
cont.18886:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18899
	addi	$r2, $r0, 1
	j	cont.18898
bne.18899:
	addi	$r2, $r0, 0
cont.18898:
	j	cont.18884
bne.18885:
	addi	$r2, $r0, 0
cont.18884:
	j	cont.18880
bne.18881:
	addi	$r2, $r0, 0
cont.18880:
cont.18868:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18901
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18903
	addi	$r2, $r0, 0
	j	cont.18902
bne.18903:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18905
	addi	$r2, $r0, 1
	j	cont.18904
bne.18905:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18907
	addi	$r2, $r0, 0
	j	cont.18906
bne.18907:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18909
	addi	$r2, $r0, 1
	j	cont.18908
bne.18909:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18911
	addi	$r2, $r0, 0
	j	cont.18910
bne.18911:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_and_group.5174
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18913
	addi	$r2, $r0, 1
	j	cont.18912
bne.18913:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_one_or_group.5221
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.18912:
cont.18910:
cont.18908:
cont.18906:
cont.18904:
cont.18902:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18915
	addi	$r2, $r0, 1
	jr	$r31
bne.18915:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.5233
bne.18901:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.5233
solve_each_element.5264:
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.18917
	jr	$r31
bne.18917:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	addi	$r7, $r0, 0
	lwcl	$f0, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	lwcl	$f1, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	addi	$r7, $r0, 8
	lwcl	$f2, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	sw	$r2, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	bne	$r7, $r8, bne.18919
	addi	$r7, $r0, 0
	addi	$r8, $r0, 1
	addi	$r9, $r0, 2
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	swcl	$f1, -28($r29)
	sw	$r6, -32($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	addi	$r5, $r8, 0
	addi	$r4, $r7, 0
	addi	$r6, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18921
	addi	$r2, $r0, 1
	j	cont.18920
bne.18921:
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lw	$r2, -32($r29)
	lw	$r3, -16($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18923
	addi	$r2, $r0, 2
	j	cont.18922
bne.18923:
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lw	$r2, -32($r29)
	lw	$r3, -16($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18925
	addi	$r2, $r0, 3
	j	cont.18924
bne.18925:
	addi	$r2, $r0, 0
cont.18924:
cont.18922:
cont.18920:
	j	cont.18918
bne.18919:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18927
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_surface.4411
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.18926
bne.18927:
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_second.4494
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
cont.18926:
cont.18918:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.18929
	addi	$r3, $r0, 0
	j	cont.18928
bne.18929:
	addi	$r3, $r0, 1
cont.18928:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18931
	addi	$r3, $r0, 0
	lwcl	$f0, 576($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.18933
	addi	$r3, $r0, 0
	j	cont.18932
bclf.18933:
	addi	$r3, $r0, 1
cont.18932:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18935
	addi	$r3, $r0, 0
	lwcl	$f1, 584($r3)
	c.le.s	$f1, $f0
	bclf	bclf.18937
	addi	$r3, $r0, 0
	j	cont.18936
bclf.18937:
	addi	$r3, $r0, 1
cont.18936:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.18939
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -16($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	addi	$r3, $r0, 0
	lwcl	$f2, 672($r3)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	addi	$r3, $r0, 4
	lwcl	$f3, 672($r3)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	addi	$r3, $r0, 8
	lwcl	$f4, 672($r3)
	add.s	$f3, $f3, $f4
	lw	$r3, -12($r29)
	lw	$r5, 0($r3)
	addi	$r6, $r0, -1
	sw	$r2, -36($r29)
	swcl	$f3, -40($r29)
	swcl	$f2, -44($r29)
	swcl	$f1, -48($r29)
	swcl	$f0, -52($r29)
	bne	$r5, $r6, bne.18941
	addi	$r2, $r0, 1
	j	cont.18940
bne.18941:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	is_outside.5146
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18943
	addi	$r2, $r0, 0
	j	cont.18942
bne.18943:
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	lwcl	$f0, -48($r29)
	lwcl	$f1, -44($r29)
	lwcl	$f2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	check_all_inside.5160
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
cont.18942:
cont.18940:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18945
	addi	$r2, $r0, 0
	lwcl	$f0, -52($r29)
	swcl	$f0, 584($r2)
	addi	$r2, $r0, 0
	lwcl	$f0, -48($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, -44($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, -40($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 0
	lw	$r3, -8($r29)
	sw	$r3, 600($r2)
	addi	$r2, $r0, 0
	lw	$r3, -36($r29)
	sw	$r3, 580($r2)
	j	cont.18944
bne.18945:
cont.18944:
	j	cont.18938
bne.18939:
cont.18938:
	j	cont.18934
bne.18935:
cont.18934:
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	j	solve_each_element.5264
bne.18931:
	lw	$r2, -8($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18947
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	j	solve_each_element.5264
bne.18947:
	jr	$r31
solve_one_or_network.5321:
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.18949
	addi	$r6, $r0, 0
	j	cont.18948
bne.18949:
	addi	$r6, $r0, 1
cont.18948:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.18951
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18953
	addi	$r5, $r0, 0
	j	cont.18952
bne.18953:
	addi	$r5, $r0, 1
cont.18952:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18955
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18957
	addi	$r5, $r0, 0
	j	cont.18956
bne.18957:
	addi	$r5, $r0, 1
cont.18956:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18959
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.18961
	addi	$r5, $r0, 0
	j	cont.18960
bne.18961:
	addi	$r5, $r0, 1
cont.18960:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.18963
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network.5321
bne.18963:
	jr	$r31
bne.18959:
	jr	$r31
bne.18955:
	jr	$r31
bne.18951:
	jr	$r31
trace_or_matrix.5335:
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r6, 0($r5)
	addi	$r7, $r0, -1
	bne	$r6, $r7, bne.18965
	jr	$r31
bne.18965:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.18967
	lw	$r6, 4($r5)
	addi	$r7, $r0, -1
	bne	$r6, $r7, bne.18969
	addi	$r7, $r0, 0
	j	cont.18968
bne.18969:
	addi	$r7, $r0, 1
cont.18968:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.18971
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18973
	addi	$r4, $r0, 0
	j	cont.18972
bne.18973:
	addi	$r4, $r0, 1
cont.18972:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18975
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18977
	addi	$r4, $r0, 0
	j	cont.18976
bne.18977:
	addi	$r4, $r0, 1
cont.18976:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.18979
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_one_or_network.5321
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.18978
bne.18979:
cont.18978:
	j	cont.18974
bne.18975:
cont.18974:
	j	cont.18970
bne.18971:
cont.18970:
	j	cont.18966
bne.18967:
	sll	$r6, $r6, 2
	lw	$r6, 80($r6)
	addi	$r7, $r0, 0
	lwcl	$f0, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f1, 0($r7)
	sub.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	lwcl	$f1, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f2, 4($r7)
	sub.s	$f1, $f1, $f2
	addi	$r7, $r0, 8
	lwcl	$f2, 672($r7)
	lw	$r7, 20($r6)
	lwcl	$f3, 8($r7)
	sub.s	$f2, $f2, $f3
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	sw	$r5, -16($r29)
	bne	$r7, $r8, bne.18981
	addi	$r7, $r0, 0
	addi	$r8, $r0, 1
	addi	$r9, $r0, 2
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	swcl	$f1, -28($r29)
	sw	$r6, -32($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	addi	$r5, $r8, 0
	addi	$r4, $r7, 0
	addi	$r6, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18983
	addi	$r2, $r0, 1
	j	cont.18982
bne.18983:
	addi	$r4, $r0, 1
	addi	$r5, $r0, 2
	addi	$r6, $r0, 0
	lw	$r2, -32($r29)
	lw	$r3, -4($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18985
	addi	$r2, $r0, 2
	j	cont.18984
bne.18985:
	addi	$r4, $r0, 2
	addi	$r5, $r0, 0
	addi	$r6, $r0, 1
	lw	$r2, -32($r29)
	lw	$r3, -4($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_rect_surface.4352
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18987
	addi	$r2, $r0, 3
	j	cont.18986
bne.18987:
	addi	$r2, $r0, 0
cont.18986:
cont.18984:
cont.18982:
	j	cont.18980
bne.18981:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.18989
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_surface.4411
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.18988
bne.18989:
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solver_second.4494
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
cont.18988:
cont.18980:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.18991
	addi	$r2, $r0, 0
	j	cont.18990
bne.18991:
	addi	$r2, $r0, 1
cont.18990:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18993
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 584($r2)
	c.le.s	$f1, $f0
	bclf	bclf.18995
	addi	$r2, $r0, 0
	j	cont.18994
bclf.18995:
	addi	$r2, $r0, 1
cont.18994:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.18997
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.18999
	addi	$r4, $r0, 0
	j	cont.18998
bne.18999:
	addi	$r4, $r0, 1
cont.18998:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19001
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19003
	addi	$r4, $r0, 0
	j	cont.19002
bne.19003:
	addi	$r4, $r0, 1
cont.19002:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19005
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19007
	addi	$r4, $r0, 0
	j	cont.19006
bne.19007:
	addi	$r4, $r0, 1
cont.19006:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19009
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	solve_one_or_network.5321
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.19008
bne.19009:
cont.19008:
	j	cont.19004
bne.19005:
cont.19004:
	j	cont.19000
bne.19001:
cont.19000:
	j	cont.18996
bne.18997:
cont.18996:
	j	cont.18992
bne.18993:
cont.18992:
cont.18966:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r5, 0($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19011
	jr	$r31
bne.19011:
	addi	$r6, $r0, 99
	sw	$r2, -36($r29)
	bne	$r5, $r6, bne.19013
	lw	$r5, 4($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19015
	addi	$r6, $r0, 0
	j	cont.19014
bne.19015:
	addi	$r6, $r0, 1
cont.19014:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.19017
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -40($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19019
	addi	$r4, $r0, 0
	j	cont.19018
bne.19019:
	addi	$r4, $r0, 1
cont.19018:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19021
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -40($r29)
	lw	$r4, -4($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_one_or_network.5321
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	j	cont.19020
bne.19021:
cont.19020:
	j	cont.19016
bne.19017:
cont.19016:
	j	cont.19012
bne.19013:
	addi	$r6, $r0, 672
	lw	$r7, -4($r29)
	sw	$r3, -40($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solver.4534
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.19023
	addi	$r2, $r0, 0
	j	cont.19022
bne.19023:
	addi	$r2, $r0, 1
cont.19022:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19025
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 584($r2)
	c.le.s	$f1, $f0
	bclf	bclf.19027
	addi	$r2, $r0, 0
	j	cont.19026
bclf.19027:
	addi	$r2, $r0, 1
cont.19026:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19029
	lw	$r2, -40($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19031
	addi	$r4, $r0, 0
	j	cont.19030
bne.19031:
	addi	$r4, $r0, 1
cont.19030:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19033
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19035
	addi	$r4, $r0, 0
	j	cont.19034
bne.19035:
	addi	$r4, $r0, 1
cont.19034:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19037
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_each_element.5264
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -40($r29)
	lw	$r4, -4($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	solve_one_or_network.5321
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	j	cont.19036
bne.19037:
cont.19036:
	j	cont.19032
bne.19033:
cont.19032:
	j	cont.19028
bne.19029:
cont.19028:
	j	cont.19024
bne.19025:
cont.19024:
cont.19012:
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.5335
solve_each_element_fast.5376:
	lw	$r5, 0($r4)
	sll	$r6, $r2, 2
	addu	$r1, $r3, $r6	!ld var
	lw	$r6, 0($r1)	!ld var
	addi	$r7, $r0, -1
	bne	$r6, $r7, bne.19039
	jr	$r31
bne.19039:
	sll	$r7, $r6, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r10, $r6, 2
	addu	$r1, $r9, $r10	!ld var
	lw	$r9, 0($r1)	!ld var
	lw	$r10, 4($r7)
	addi	$r11, $r0, 1
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	bne	$r10, $r11, bne.19041
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19040
bne.19041:
	addi	$r11, $r0, 2
	bne	$r10, $r11, bne.19043
	lwcl	$f0, 0($r9)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19045
	addi	$r7, $r0, 0
	j	cont.19044
bclf.19045:
	addi	$r7, $r0, 1
cont.19044:
	addi	$r10, $r0, 1
	bne	$r7, $r10, bne.19047
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	addi	$r7, $r0, 0
	swcl	$f0, 576($r7)
	addi	$r2, $r0, 1
	j	cont.19046
bne.19047:
	addi	$r2, $r0, 0
cont.19046:
	j	cont.19042
bne.19043:
	addi	$r2, $r7, 0
	addi	$r3, $r9, 0
	addi	$r4, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solver_second_fast2.4761
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.19042:
cont.19040:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.19049
	addi	$r3, $r0, 0
	j	cont.19048
bne.19049:
	addi	$r3, $r0, 1
cont.19048:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19051
	addi	$r3, $r0, 0
	lwcl	$f0, 576($r3)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19053
	addi	$r3, $r0, 0
	j	cont.19052
bclf.19053:
	addi	$r3, $r0, 1
cont.19052:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19055
	addi	$r3, $r0, 0
	lwcl	$f1, 584($r3)
	c.le.s	$f1, $f0
	bclf	bclf.19057
	addi	$r3, $r0, 0
	j	cont.19056
bclf.19057:
	addi	$r3, $r0, 1
cont.19056:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19059
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -20($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	addi	$r4, $r0, 0
	lwcl	$f2, 684($r4)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	addi	$r4, $r0, 4
	lwcl	$f3, 684($r4)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	addi	$r3, $r0, 8
	lwcl	$f4, 684($r3)
	add.s	$f3, $f3, $f4
	lw	$r3, -16($r29)
	lw	$r4, 0($r3)
	addi	$r5, $r0, -1
	sw	$r2, -24($r29)
	swcl	$f3, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f1, -36($r29)
	swcl	$f0, -40($r29)
	bne	$r4, $r5, bne.19061
	addi	$r2, $r0, 1
	j	cont.19060
bne.19061:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	addi	$r2, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	is_outside.5146
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19063
	addi	$r2, $r0, 0
	j	cont.19062
bne.19063:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lwcl	$f0, -36($r29)
	lwcl	$f1, -32($r29)
	lwcl	$f2, -28($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	check_all_inside.5160
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
cont.19062:
cont.19060:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19065
	addi	$r2, $r0, 0
	lwcl	$f0, -40($r29)
	swcl	$f0, 584($r2)
	addi	$r2, $r0, 0
	lwcl	$f0, -36($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, -32($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, -28($r29)
	swcl	$f0, 588($r2)
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	sw	$r3, 600($r2)
	addi	$r2, $r0, 0
	lw	$r3, -24($r29)
	sw	$r3, 580($r2)
	j	cont.19064
bne.19065:
cont.19064:
	j	cont.19058
bne.19059:
cont.19058:
	j	cont.19054
bne.19055:
cont.19054:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5376
bne.19051:
	lw	$r2, -12($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19067
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	j	solve_each_element_fast.5376
bne.19067:
	jr	$r31
solve_one_or_network_fast.5434:
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19069
	addi	$r6, $r0, 0
	j	cont.19068
bne.19069:
	addi	$r6, $r0, 1
cont.19068:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.19071
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.19073
	addi	$r5, $r0, 0
	j	cont.19072
bne.19073:
	addi	$r5, $r0, 1
cont.19072:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.19075
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -16($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.19077
	addi	$r5, $r0, 0
	j	cont.19076
bne.19077:
	addi	$r5, $r0, 1
cont.19076:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.19079
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, -1
	bne	$r3, $r5, bne.19081
	addi	$r5, $r0, 0
	j	cont.19080
bne.19081:
	addi	$r5, $r0, 1
cont.19080:
	addi	$r6, $r0, 1
	bne	$r5, $r6, bne.19083
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network_fast.5434
bne.19083:
	jr	$r31
bne.19079:
	jr	$r31
bne.19075:
	jr	$r31
bne.19071:
	jr	$r31
trace_or_matrix_fast.5448:
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r6, 0($r5)
	addi	$r7, $r0, -1
	bne	$r6, $r7, bne.19085
	jr	$r31
bne.19085:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.19087
	lw	$r6, 4($r5)
	addi	$r7, $r0, -1
	bne	$r6, $r7, bne.19089
	addi	$r7, $r0, 0
	j	cont.19088
bne.19089:
	addi	$r7, $r0, 1
cont.19088:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19091
	sll	$r6, $r6, 2
	lw	$r6, 364($r6)
	addi	$r7, $r0, 0
	sw	$r5, -16($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19093
	addi	$r4, $r0, 0
	j	cont.19092
bne.19093:
	addi	$r4, $r0, 1
cont.19092:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19095
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19097
	addi	$r4, $r0, 0
	j	cont.19096
bne.19097:
	addi	$r4, $r0, 1
cont.19096:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19099
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.19098
bne.19099:
cont.19098:
	j	cont.19094
bne.19095:
cont.19094:
	j	cont.19090
bne.19091:
cont.19090:
	j	cont.19086
bne.19087:
	sll	$r7, $r6, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r6, $r6, 2
	addu	$r1, $r9, $r6	!ld var
	lw	$r6, 0($r1)	!ld var
	lw	$r9, 4($r7)
	addi	$r10, $r0, 1
	sw	$r5, -16($r29)
	bne	$r9, $r10, bne.19101
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.19100
bne.19101:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19103
	lwcl	$f0, 0($r6)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19105
	addi	$r7, $r0, 0
	j	cont.19104
bclf.19105:
	addi	$r7, $r0, 1
cont.19104:
	addi	$r9, $r0, 1
	bne	$r7, $r9, bne.19107
	lwcl	$f0, 0($r6)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	addi	$r6, $r0, 0
	swcl	$f0, 576($r6)
	addi	$r2, $r0, 1
	j	cont.19106
bne.19107:
	addi	$r2, $r0, 0
cont.19106:
	j	cont.19102
bne.19103:
	addi	$r2, $r7, 0
	addi	$r3, $r6, 0
	addi	$r4, $r8, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solver_second_fast2.4761
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
cont.19102:
cont.19100:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.19109
	addi	$r2, $r0, 0
	j	cont.19108
bne.19109:
	addi	$r2, $r0, 1
cont.19108:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19111
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 584($r2)
	c.le.s	$f1, $f0
	bclf	bclf.19113
	addi	$r2, $r0, 0
	j	cont.19112
bclf.19113:
	addi	$r2, $r0, 1
cont.19112:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19115
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19117
	addi	$r4, $r0, 0
	j	cont.19116
bne.19117:
	addi	$r4, $r0, 1
cont.19116:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19119
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19121
	addi	$r4, $r0, 0
	j	cont.19120
bne.19121:
	addi	$r4, $r0, 1
cont.19120:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19123
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19125
	addi	$r4, $r0, 0
	j	cont.19124
bne.19125:
	addi	$r4, $r0, 1
cont.19124:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19127
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.19126
bne.19127:
cont.19126:
	j	cont.19122
bne.19123:
cont.19122:
	j	cont.19118
bne.19119:
cont.19118:
	j	cont.19114
bne.19115:
cont.19114:
	j	cont.19110
bne.19111:
cont.19110:
cont.19086:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r5, 0($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19129
	jr	$r31
bne.19129:
	addi	$r6, $r0, 99
	sw	$r2, -20($r29)
	bne	$r5, $r6, bne.19131
	lw	$r5, 4($r3)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19133
	addi	$r6, $r0, 0
	j	cont.19132
bne.19133:
	addi	$r6, $r0, 1
cont.19132:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.19135
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19137
	addi	$r4, $r0, 0
	j	cont.19136
bne.19137:
	addi	$r4, $r0, 1
cont.19136:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19139
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19138
bne.19139:
cont.19138:
	j	cont.19134
bne.19135:
cont.19134:
	j	cont.19130
bne.19131:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lw	$r8, -4($r29)
	lw	$r9, 4($r8)
	sll	$r5, $r5, 2
	addu	$r1, $r9, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r3, -24($r29)
	bne	$r9, $r10, bne.19141
	lw	$r7, 0($r8)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19140
bne.19141:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19143
	lwcl	$f0, 0($r5)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19145
	addi	$r6, $r0, 0
	j	cont.19144
bclf.19145:
	addi	$r6, $r0, 1
cont.19144:
	addi	$r9, $r0, 1
	bne	$r6, $r9, bne.19147
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	addi	$r5, $r0, 0
	swcl	$f0, 576($r5)
	addi	$r2, $r0, 1
	j	cont.19146
bne.19147:
	addi	$r2, $r0, 0
cont.19146:
	j	cont.19142
bne.19143:
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solver_second_fast2.4761
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
cont.19142:
cont.19140:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.19149
	addi	$r2, $r0, 0
	j	cont.19148
bne.19149:
	addi	$r2, $r0, 1
cont.19148:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19151
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 584($r2)
	c.le.s	$f1, $f0
	bclf	bclf.19153
	addi	$r2, $r0, 0
	j	cont.19152
bclf.19153:
	addi	$r2, $r0, 1
cont.19152:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19155
	lw	$r2, -24($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19157
	addi	$r4, $r0, 0
	j	cont.19156
bne.19157:
	addi	$r4, $r0, 1
cont.19156:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19159
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -24($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19161
	addi	$r4, $r0, 0
	j	cont.19160
bne.19161:
	addi	$r4, $r0, 1
cont.19160:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19163
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19162
bne.19163:
cont.19162:
	j	cont.19158
bne.19159:
cont.19158:
	j	cont.19154
bne.19155:
cont.19154:
	j	cont.19150
bne.19151:
cont.19150:
cont.19130:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5448
judge_intersection_fast.5473:
	lfh	$f0, 20078
	lfl	$f0, 27432
	addi	$r3, $r0, 0
	swcl	$f0, 584($r3)
	addi	$r3, $r0, 0
	lw	$r3, 572($r3)
	lw	$r4, 0($r3)
	lw	$r5, 0($r4)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19165
	j	cont.19164
bne.19165:
	addi	$r6, $r0, 99
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bne	$r5, $r6, bne.19167
	lw	$r5, 4($r4)
	addi	$r6, $r0, -1
	bne	$r5, $r6, bne.19169
	addi	$r6, $r0, 0
	j	cont.19168
bne.19169:
	addi	$r6, $r0, 1
cont.19168:
	addi	$r7, $r0, 1
	bne	$r6, $r7, bne.19171
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -12($r29)
	addi	$r3, $r5, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19173
	addi	$r4, $r0, 0
	j	cont.19172
bne.19173:
	addi	$r4, $r0, 1
cont.19172:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19175
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.19174
bne.19175:
cont.19174:
	j	cont.19170
bne.19171:
cont.19170:
	j	cont.19166
bne.19167:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lw	$r8, 4($r2)
	sll	$r5, $r5, 2
	addu	$r1, $r8, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r8, 4($r6)
	addi	$r9, $r0, 1
	sw	$r4, -12($r29)
	bne	$r8, $r9, bne.19177
	lw	$r7, 0($r2)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_rect_fast.4554
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.19176
bne.19177:
	addi	$r9, $r0, 2
	bne	$r8, $r9, bne.19179
	lwcl	$f0, 0($r5)
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19181
	addi	$r6, $r0, 0
	j	cont.19180
bclf.19181:
	addi	$r6, $r0, 1
cont.19180:
	addi	$r8, $r0, 1
	bne	$r6, $r8, bne.19183
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	addi	$r5, $r0, 0
	swcl	$f0, 576($r5)
	addi	$r2, $r0, 1
	j	cont.19182
bne.19183:
	addi	$r2, $r0, 0
cont.19182:
	j	cont.19178
bne.19179:
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solver_second_fast2.4761
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.19178:
cont.19176:
	addi	$r3, $r0, 0
	bne	$r2, $r3, bne.19185
	addi	$r2, $r0, 0
	j	cont.19184
bne.19185:
	addi	$r2, $r0, 1
cont.19184:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19187
	addi	$r2, $r0, 0
	lwcl	$f0, 576($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 584($r2)
	c.le.s	$f1, $f0
	bclf	bclf.19189
	addi	$r2, $r0, 0
	j	cont.19188
bclf.19189:
	addi	$r2, $r0, 1
cont.19188:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19191
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19193
	addi	$r4, $r0, 0
	j	cont.19192
bne.19193:
	addi	$r4, $r0, 1
cont.19192:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19195
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19197
	addi	$r4, $r0, 0
	j	cont.19196
bne.19197:
	addi	$r4, $r0, 1
cont.19196:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19199
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_each_element_fast.5376
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	solve_one_or_network_fast.5434
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.19198
bne.19199:
cont.19198:
	j	cont.19194
bne.19195:
cont.19194:
	j	cont.19190
bne.19191:
cont.19190:
	j	cont.19186
bne.19187:
cont.19186:
cont.19166:
	addi	$r2, $r0, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	trace_or_matrix_fast.5448
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.19164:
	addi	$r2, $r0, 0
	lwcl	$f0, 584($r2)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.19201
	addi	$r2, $r0, 0
	j	cont.19200
bclf.19201:
	addi	$r2, $r0, 1
cont.19200:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19203
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.19205
	addi	$r2, $r0, 0
	jr	$r31
bclf.19205:
	addi	$r2, $r0, 1
	jr	$r31
bne.19203:
	addi	$r2, $r0, 0
	jr	$r31
get_nvector_second.5514:
	addi	$r3, $r0, 0
	lwcl	$f0, 588($r3)
	lw	$r3, 20($r2)
	lwcl	$f1, 0($r3)
	sub.s	$f0, $f0, $f1
	addi	$r3, $r0, 4
	lwcl	$f1, 588($r3)
	lw	$r3, 20($r2)
	lwcl	$f2, 4($r3)
	sub.s	$f1, $f1, $f2
	addi	$r3, $r0, 8
	lwcl	$f2, 588($r3)
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
	addi	$r4, $r0, 0
	bne	$r3, $r4, bne.19207
	addi	$r3, $r0, 0
	swcl	$f3, 604($r3)
	addi	$r3, $r0, 4
	swcl	$f4, 604($r3)
	addi	$r3, $r0, 8
	swcl	$f5, 604($r3)
	j	cont.19206
bne.19207:
	lw	$r3, 36($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f6, $f1, $f6
	lw	$r3, 36($r2)
	lwcl	$f7, 4($r3)
	mul.s	$f7, $f2, $f7
	add.s	$f6, $f6, $f7
	lfh	$f7, 16128
	lfl	$f7, 0
	mul.s	$f6, $f6, $f7
	add.s	$f3, $f3, $f6
	addi	$r3, $r0, 0
	swcl	$f3, 604($r3)
	lw	$r3, 36($r2)
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f0, $f3
	lw	$r3, 36($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f3, $f2
	lfh	$f3, 16128
	lfl	$f3, 0
	mul.s	$f2, $f2, $f3
	add.s	$f2, $f4, $f2
	addi	$r3, $r0, 4
	swcl	$f2, 604($r3)
	lw	$r3, 36($r2)
	lwcl	$f2, 4($r3)
	mul.s	$f0, $f0, $f2
	lw	$r3, 36($r2)
	lwcl	$f2, 0($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lfh	$f1, 16128
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f5, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 604($r3)
cont.19206:
	lw	$r3, 24($r2)
	addi	$r2, $r0, 604
	j	vecunit_sgn.3335
utexture.5575:
	lw	$r4, 0($r2)
	lw	$r5, 32($r2)
	lwcl	$f0, 0($r5)
	addi	$r5, $r0, 0
	swcl	$f0, 616($r5)
	lw	$r5, 32($r2)
	lwcl	$f0, 4($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 616($r5)
	lw	$r5, 32($r2)
	lwcl	$f0, 8($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 616($r5)
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19209
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
	addi	$r29, $r29, -16	!..
	jal	min_caml_floor
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lfh	$f1, 16800
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -12($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16672
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19211
	addi	$r2, $r0, 0
	j	cont.19210
bclf.19211:
	addi	$r2, $r0, 1
cont.19210:
	lw	$r3, -8($r29)
	lwcl	$f0, 8($r3)
	lw	$r3, -4($r29)
	lw	$r3, 20($r3)
	lwcl	$f1, 8($r3)
	sub.s	$f0, $f0, $f1
	lfh	$f1, 15692
	lfl	$f1, 52429
	mul.s	$f1, $f0, $f1
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	fmove	$f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_floor
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lfh	$f1, 16800
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -20($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16672
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19213
	addi	$r2, $r0, 0
	j	cont.19212
bclf.19213:
	addi	$r2, $r0, 1
cont.19212:
	addi	$r3, $r0, 1
	lw	$r4, -16($r29)
	bne	$r4, $r3, bne.19215
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19217
	lfh	$f0, 17279
	lfl	$f0, 0
	j	cont.19216
bne.19217:
	lfh	$f0, 0
	lfl	$f0, 0
cont.19216:
	j	cont.19214
bne.19215:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19219
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.19218
bne.19219:
	lfh	$f0, 17279
	lfl	$f0, 0
cont.19218:
cont.19214:
	addi	$r2, $r0, 4
	swcl	$f0, 616($r2)
	jr	$r31
bne.19209:
	addi	$r5, $r0, 2
	bne	$r4, $r5, bne.19221
	lwcl	$f0, 4($r3)
	lfh	$f1, 16000
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	sin.2703
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	lfl	$f1, 0
	mul.s	$f1, $f1, $f0
	addi	$r2, $r0, 0
	swcl	$f1, 616($r2)
	lfh	$f1, 17279
	lfl	$f1, 0
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f1, $f0
	addi	$r2, $r0, 4
	swcl	$f0, 616($r2)
	jr	$r31
bne.19221:
	addi	$r5, $r0, 3
	bne	$r4, $r5, bne.19223
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
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	swcl	$f0, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_floor
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lwcl	$f1, -24($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16457
	lfl	$f1, 4059
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	sin.2703
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	lfl	$f1, 0
	mul.s	$f1, $f0, $f1
	addi	$r2, $r0, 4
	swcl	$f1, 616($r2)
	lfh	$f1, 16256
	lfl	$f1, 0
	sub.s	$f0, $f1, $f0
	lfh	$f1, 17279
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	swcl	$f0, 616($r2)
	jr	$r31
bne.19223:
	addi	$r5, $r0, 4
	bne	$r4, $r5, bne.19225
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
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f3, $f0
	bclf	bclf.19227
	addi	$r4, $r0, 0
	j	cont.19226
bclf.19227:
	addi	$r4, $r0, 1
cont.19226:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19229
	fneg	$f3, $f0
	j	cont.19228
bne.19229:
	fmove	$f3, $f0
cont.19228:
	lfh	$f4, 14545
	lfl	$f4, 46871
	c.le.s	$f4, $f3
	bclf	bclf.19231
	addi	$r4, $r0, 0
	j	cont.19230
bclf.19231:
	addi	$r4, $r0, 1
cont.19230:
	addi	$r5, $r0, 1
	swcl	$f2, -28($r29)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bne	$r4, $r5, bne.19233
	lfh	$f0, 16752
	lfl	$f0, 0
	j	cont.19232
bne.19233:
	div.s	$f0, $f1, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19235
	addi	$r4, $r0, 0
	j	cont.19234
bclf.19235:
	addi	$r4, $r0, 1
cont.19234:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19237
	fneg	$f0, $f0
	j	cont.19236
bne.19237:
cont.19236:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	atan.2639
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lfh	$f1, 16880
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.19232:
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_floor
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lwcl	$f1, -32($r29)
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
	lfh	$f2, 0
	lfl	$f2, 0
	lwcl	$f3, -28($r29)
	c.le.s	$f2, $f3
	bclf	bclf.19239
	addi	$r2, $r0, 0
	j	cont.19238
bclf.19239:
	addi	$r2, $r0, 1
cont.19238:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19241
	fneg	$f2, $f3
	j	cont.19240
bne.19241:
	fmove	$f2, $f3
cont.19240:
	lfh	$f4, 14545
	lfl	$f4, 46871
	c.le.s	$f4, $f2
	bclf	bclf.19243
	addi	$r2, $r0, 0
	j	cont.19242
bclf.19243:
	addi	$r2, $r0, 1
cont.19242:
	addi	$r3, $r0, 1
	swcl	$f0, -36($r29)
	bne	$r2, $r3, bne.19245
	lfh	$f0, 16752
	lfl	$f0, 0
	j	cont.19244
bne.19245:
	div.s	$f1, $f1, $f3
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f1
	bclf	bclf.19247
	addi	$r2, $r0, 0
	j	cont.19246
bclf.19247:
	addi	$r2, $r0, 1
cont.19246:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19249
	fneg	$f1, $f1
	j	cont.19248
bne.19249:
cont.19248:
	fmove	$f0, $f1
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	atan.2639
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lfh	$f1, 16880
	lfl	$f1, 0
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
cont.19244:
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_floor
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lwcl	$f1, -40($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 15897
	lfl	$f1, 39322
	lfh	$f2, 16128
	lfl	$f2, 0
	lwcl	$f3, -36($r29)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16128
	lfl	$f2, 0
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19251
	addi	$r2, $r0, 0
	j	cont.19250
bclf.19251:
	addi	$r2, $r0, 1
cont.19250:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19253
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.19252
bne.19253:
cont.19252:
	lfh	$f1, 17279
	lfl	$f1, 0
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	swcl	$f0, 616($r2)
	jr	$r31
bne.19225:
	jr	$r31
trace_reflections.5758:
	addi	$r4, $r0, 0
	bgt	$r4, $r2, bgt.19255
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	addi	$r6, $r0, 0
	swcl	$f2, 584($r6)
	addi	$r6, $r0, 0
	addi	$r7, $r0, 0
	lw	$r7, 572($r7)
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
	addi	$r29, $r29, -28	!..
	jal	trace_or_matrix_fast.5448
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 0
	lwcl	$f0, 584($r2)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.19257
	addi	$r2, $r0, 0
	j	cont.19256
bclf.19257:
	addi	$r2, $r0, 1
cont.19256:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19259
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.19261
	addi	$r2, $r0, 0
	j	cont.19260
bclf.19261:
	addi	$r2, $r0, 1
cont.19260:
	j	cont.19258
bne.19259:
	addi	$r2, $r0, 0
cont.19258:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19263
	addi	$r2, $r0, 0
	lw	$r2, 600($r2)
	sll	$r2, $r2, 2
	addi	$r3, $r0, 0
	lw	$r3, 580($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.19265
	addi	$r2, $r0, 0
	addi	$r4, $r0, 0
	lw	$r4, 572($r4)
	addi	$r3, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	shadow_check_one_or_matrix.5233
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19267
	addi	$r2, $r0, 0
	j	cont.19266
bne.19267:
	addi	$r2, $r0, 1
cont.19266:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19269
	lw	$r2, -20($r29)
	lw	$r3, 0($r2)
	addi	$r4, $r0, 0
	lwcl	$f0, 604($r4)
	lwcl	$f1, 0($r3)
	mul.s	$f0, $f0, $f1
	addi	$r4, $r0, 4
	lwcl	$f1, 604($r4)
	lwcl	$f2, 4($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r4, $r0, 8
	lwcl	$f1, 604($r4)
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
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f0, $f3
	bclf	bclf.19271
	addi	$r2, $r0, 0
	j	cont.19270
bclf.19271:
	addi	$r2, $r0, 1
cont.19270:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19273
	addi	$r2, $r0, 0
	lwcl	$f3, 640($r2)
	addi	$r2, $r0, 0
	lwcl	$f4, 616($r2)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	addi	$r2, $r0, 0
	swcl	$f3, 640($r2)
	addi	$r2, $r0, 4
	lwcl	$f3, 640($r2)
	addi	$r2, $r0, 4
	lwcl	$f4, 616($r2)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	addi	$r2, $r0, 4
	swcl	$f3, 640($r2)
	addi	$r2, $r0, 8
	lwcl	$f3, 640($r2)
	addi	$r2, $r0, 8
	lwcl	$f4, 616($r2)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 640($r2)
	j	cont.19272
bne.19273:
cont.19272:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f1, $f0
	bclf	bclf.19275
	addi	$r2, $r0, 0
	j	cont.19274
bclf.19275:
	addi	$r2, $r0, 1
cont.19274:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19277
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -8($r29)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f3, 640($r2)
	add.s	$f3, $f3, $f0
	addi	$r2, $r0, 0
	swcl	$f3, 640($r2)
	addi	$r2, $r0, 4
	lwcl	$f3, 640($r2)
	add.s	$f3, $f3, $f0
	addi	$r2, $r0, 4
	swcl	$f3, 640($r2)
	addi	$r2, $r0, 8
	lwcl	$f3, 640($r2)
	add.s	$f0, $f3, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 640($r2)
	j	cont.19276
bne.19277:
cont.19276:
	j	cont.19268
bne.19269:
cont.19268:
	j	cont.19264
bne.19265:
cont.19264:
	j	cont.19262
bne.19263:
cont.19262:
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5758
bgt.19255:
	jr	$r31
trace_ray.5793:
	addi	$r5, $r0, 4
	bgt	$r2, $r5, bgt.19279
	lw	$r5, 8($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	addi	$r6, $r0, 0
	swcl	$f2, 584($r6)
	addi	$r6, $r0, 0
	addi	$r7, $r0, 0
	lw	$r7, 572($r7)
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
	addi	$r29, $r29, -28	!..
	jal	trace_or_matrix.5335
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r2, $r0, 0
	lwcl	$f0, 584($r2)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.19281
	addi	$r2, $r0, 0
	j	cont.19280
bclf.19281:
	addi	$r2, $r0, 1
cont.19280:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19283
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.19285
	addi	$r2, $r0, 0
	j	cont.19284
bclf.19285:
	addi	$r2, $r0, 1
cont.19284:
	j	cont.19282
bne.19283:
	addi	$r2, $r0, 0
cont.19282:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19287
	addi	$r2, $r0, 0
	lw	$r2, 600($r2)
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	lw	$r5, 28($r3)
	lwcl	$f0, 0($r5)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lw	$r5, 4($r3)
	addi	$r6, $r0, 1
	sw	$r4, -28($r29)
	swcl	$f0, -32($r29)
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	bne	$r5, $r6, bne.19289
	addi	$r5, $r0, 0
	lw	$r5, 580($r5)
	lfh	$f2, 0
	lfl	$f2, 0
	addi	$r6, $r0, 0
	swcl	$f2, 604($r6)
	addi	$r6, $r0, 4
	swcl	$f2, 604($r6)
	addi	$r6, $r0, 8
	swcl	$f2, 604($r6)
	addi	$r6, $r5, -1
	addi	$r5, $r5, -1
	sll	$r5, $r5, 2
	lw	$r7, -20($r29)
	addu	$r1, $r7, $r5	!ldf var
	lwcl	$f2, 0($r1)	!ldf var
	lfh	$f3, 0
	lfl	$f3, 0
	c.eq.s	$f2, $f3
	bclf	bclf.19291
	addi	$r5, $r0, 1
	j	cont.19290
bclf.19291:
	addi	$r5, $r0, 0
cont.19290:
	addi	$r8, $r0, 1
	bne	$r5, $r8, bne.19293
	lfh	$f2, 0
	lfl	$f2, 0
	j	cont.19292
bne.19293:
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f2, $f3
	bclf	bclf.19295
	addi	$r5, $r0, 0
	j	cont.19294
bclf.19295:
	addi	$r5, $r0, 1
cont.19294:
	addi	$r8, $r0, 1
	bne	$r5, $r8, bne.19297
	lfh	$f2, 16256
	lfl	$f2, 0
	j	cont.19296
bne.19297:
	lfh	$f2, 49024
	lfl	$f2, 0
cont.19296:
cont.19292:
	fneg	$f2, $f2
	sll	$r5, $r6, 2
	swcl	$f2, 604($r5)
	j	cont.19288
bne.19289:
	addi	$r6, $r0, 2
	bne	$r5, $r6, bne.19299
	lw	$r5, 16($r3)
	lwcl	$f2, 0($r5)
	fneg	$f2, $f2
	addi	$r5, $r0, 0
	swcl	$f2, 604($r5)
	lw	$r5, 16($r3)
	lwcl	$f2, 4($r5)
	fneg	$f2, $f2
	addi	$r5, $r0, 4
	swcl	$f2, 604($r5)
	lw	$r5, 16($r3)
	lwcl	$f2, 8($r5)
	fneg	$f2, $f2
	addi	$r5, $r0, 8
	swcl	$f2, 604($r5)
	j	cont.19298
bne.19299:
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	get_nvector_second.5514
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
cont.19298:
cont.19288:
	addi	$r2, $r0, 0
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 0
	swcl	$f0, 672($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 4
	swcl	$f0, 672($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 8
	swcl	$f0, 672($r2)
	addi	$r3, $r0, 588
	lw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	utexture.5575
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -36($r29)
	sll	$r2, $r2, 2
	addi	$r3, $r0, 0
	lw	$r3, 580($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	lw	$r2, -8($r29)
	lw	$r4, 4($r2)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r6, $r0, 0
	lwcl	$f0, 588($r6)
	swcl	$f0, 0($r4)
	addi	$r6, $r0, 4
	lwcl	$f0, 588($r6)
	swcl	$f0, 4($r4)
	addi	$r6, $r0, 8
	lwcl	$f0, 588($r6)
	swcl	$f0, 8($r4)
	lw	$r4, 12($r2)
	lw	$r6, -40($r29)
	lw	$r7, 28($r6)
	lwcl	$f0, 0($r7)
	lfh	$f1, 16128
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19301
	addi	$r7, $r0, 0
	j	cont.19300
bclf.19301:
	addi	$r7, $r0, 1
cont.19300:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19303
	addi	$r7, $r0, 0
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8	!st var
	sw	$r7, 0($r1)	!st var
	j	cont.19302
bne.19303:
	addi	$r7, $r0, 1
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8	!st var
	sw	$r7, 0($r1)	!st var
	lw	$r4, 16($r2)
	sll	$r7, $r3, 2
	addu	$r1, $r4, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	addi	$r8, $r0, 0
	lwcl	$f0, 616($r8)
	swcl	$f0, 0($r7)
	addi	$r8, $r0, 4
	lwcl	$f0, 616($r8)
	swcl	$f0, 4($r7)
	addi	$r8, $r0, 8
	lwcl	$f0, 616($r8)
	swcl	$f0, 8($r7)
	sll	$r7, $r3, 2
	addu	$r1, $r4, $r7	!ld var
	lw	$r4, 0($r1)	!ld var
	lfh	$f0, 15232
	lfl	$f0, 0
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
	addu	$r1, $r4, $r7	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r7, $r0, 0
	lwcl	$f0, 604($r7)
	swcl	$f0, 0($r4)
	addi	$r7, $r0, 4
	lwcl	$f0, 604($r7)
	swcl	$f0, 4($r4)
	addi	$r7, $r0, 8
	lwcl	$f0, 604($r7)
	swcl	$f0, 8($r4)
cont.19302:
	lfh	$f0, 49152
	lfl	$f0, 0
	lw	$r4, -20($r29)
	lwcl	$f1, 0($r4)
	addi	$r7, $r0, 0
	lwcl	$f2, 604($r7)
	mul.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	addi	$r7, $r0, 4
	lwcl	$f3, 604($r7)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	addi	$r7, $r0, 8
	lwcl	$f3, 604($r7)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 0($r4)
	addi	$r7, $r0, 0
	lwcl	$f2, 604($r7)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	addi	$r7, $r0, 4
	lwcl	$f2, 604($r7)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	addi	$r7, $r0, 8
	lwcl	$f2, 604($r7)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	lw	$r7, 28($r6)
	lwcl	$f0, 4($r7)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f1, $f0
	addi	$r7, $r0, 0
	addi	$r8, $r0, 0
	lw	$r8, 572($r8)
	swcl	$f0, -44($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	shadow_check_one_or_matrix.5233
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19305
	addi	$r2, $r0, 0
	j	cont.19304
bne.19305:
	addi	$r2, $r0, 1
cont.19304:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19307
	addi	$r2, $r0, 0
	lwcl	$f0, 604($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 344($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	addi	$r3, $r0, 0
	lwcl	$f3, 344($r3)
	mul.s	$f2, $f2, $f3
	lwcl	$f3, 4($r2)
	addi	$r3, $r0, 4
	lwcl	$f4, 344($r3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r2)
	addi	$r3, $r0, 8
	lwcl	$f4, 344($r3)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	fneg	$f2, $f2
	lfh	$f3, 0
	lfl	$f3, 0
	c.le.s	$f0, $f3
	bclf	bclf.19309
	addi	$r3, $r0, 0
	j	cont.19308
bclf.19309:
	addi	$r3, $r0, 1
cont.19308:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19311
	addi	$r3, $r0, 0
	lwcl	$f3, 640($r3)
	addi	$r3, $r0, 0
	lwcl	$f4, 616($r3)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	addi	$r3, $r0, 0
	swcl	$f3, 640($r3)
	addi	$r3, $r0, 4
	lwcl	$f3, 640($r3)
	addi	$r3, $r0, 4
	lwcl	$f4, 616($r3)
	mul.s	$f4, $f0, $f4
	add.s	$f3, $f3, $f4
	addi	$r3, $r0, 4
	swcl	$f3, 640($r3)
	addi	$r3, $r0, 8
	lwcl	$f3, 640($r3)
	addi	$r3, $r0, 8
	lwcl	$f4, 616($r3)
	mul.s	$f0, $f0, $f4
	add.s	$f0, $f3, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 640($r3)
	j	cont.19310
bne.19311:
cont.19310:
	lfh	$f0, 0
	lfl	$f0, 0
	c.le.s	$f2, $f0
	bclf	bclf.19313
	addi	$r3, $r0, 0
	j	cont.19312
bclf.19313:
	addi	$r3, $r0, 1
cont.19312:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19315
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f0, $f2
	addi	$r3, $r0, 0
	lwcl	$f3, 640($r3)
	add.s	$f3, $f3, $f0
	addi	$r3, $r0, 0
	swcl	$f3, 640($r3)
	addi	$r3, $r0, 4
	lwcl	$f3, 640($r3)
	add.s	$f3, $f3, $f0
	addi	$r3, $r0, 4
	swcl	$f3, 640($r3)
	addi	$r3, $r0, 8
	lwcl	$f3, 640($r3)
	add.s	$f0, $f3, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 640($r3)
	j	cont.19314
bne.19315:
cont.19314:
	j	cont.19306
bne.19307:
cont.19306:
	addi	$r2, $r0, 0
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 0
	swcl	$f0, 684($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 4
	swcl	$f0, 684($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, 588($r2)
	addi	$r2, $r0, 8
	swcl	$f0, 684($r2)
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 588
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 1796($r2)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -32($r29)
	lwcl	$f1, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	trace_reflections.5758
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f1, -24($r29)
	c.le.s	$f1, $f0
	bclf	bclf.19317
	addi	$r2, $r0, 0
	j	cont.19316
bclf.19317:
	addi	$r2, $r0, 1
cont.19316:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19319
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	bgt	$r2, $r3, bgt.19321
	addi	$r2, $r0, 0
	j	cont.19320
bgt.19321:
	addi	$r2, $r0, 1
cont.19320:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19323
	addi	$r2, $r3, 1
	addi	$r4, $r0, -1
	sll	$r2, $r2, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r2	!st var
	sw	$r4, 0($r1)	!st var
	j	cont.19322
bne.19323:
cont.19322:
	addi	$r2, $r0, 2
	lw	$r4, -28($r29)
	bne	$r4, $r2, bne.19325
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r2, -40($r29)
	lw	$r2, 28($r2)
	lwcl	$f2, 0($r2)
	sub.s	$f0, $f0, $f2
	mul.s	$f0, $f1, $f0
	addi	$r2, $r3, 1
	addi	$r3, $r0, 0
	lwcl	$f1, 584($r3)
	lwcl	$f2, -4($r29)
	add.s	$f1, $f2, $f1
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	j	trace_ray.5793
bne.19325:
	jr	$r31
bne.19319:
	jr	$r31
bne.19287:
	addi	$r2, $r0, -1
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r2, $r0, 0
	bne	$r3, $r2, bne.19327
	addi	$r2, $r0, 0
	j	cont.19326
bne.19327:
	addi	$r2, $r0, 1
cont.19326:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19329
	lw	$r2, -20($r29)
	lwcl	$f0, 0($r2)
	addi	$r3, $r0, 0
	lwcl	$f1, 344($r3)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, 4($r2)
	addi	$r3, $r0, 4
	lwcl	$f2, 344($r3)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19331
	addi	$r2, $r0, 0
	j	cont.19330
bclf.19331:
	addi	$r2, $r0, 1
cont.19330:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19333
	mul.s	$f1, $f0, $f0
	mul.s	$f0, $f1, $f0
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 356($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 640($r2)
	add.s	$f1, $f1, $f0
	addi	$r2, $r0, 0
	swcl	$f1, 640($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 640($r2)
	add.s	$f1, $f1, $f0
	addi	$r2, $r0, 4
	swcl	$f1, 640($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 640($r2)
	add.s	$f0, $f1, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 640($r2)
	jr	$r31
bne.19333:
	jr	$r31
bne.19329:
	jr	$r31
bgt.19279:
	jr	$r31
trace_diffuse_ray.5917:
	lfh	$f1, 20078
	lfl	$f1, 27432
	addi	$r3, $r0, 0
	swcl	$f1, 584($r3)
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r4, 572($r4)
	swcl	$f0, -4($r29)
	sw	$r2, -8($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	trace_or_matrix_fast.5448
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r2, $r0, 0
	lwcl	$f0, 584($r2)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.19335
	addi	$r2, $r0, 0
	j	cont.19334
bclf.19335:
	addi	$r2, $r0, 1
cont.19334:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19337
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.19339
	addi	$r2, $r0, 0
	j	cont.19338
bclf.19339:
	addi	$r2, $r0, 1
cont.19338:
	j	cont.19336
bne.19337:
	addi	$r2, $r0, 0
cont.19336:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19341
	addi	$r2, $r0, 0
	lw	$r2, 600($r2)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -8($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	addi	$r5, $r0, 1
	sw	$r2, -12($r29)
	bne	$r4, $r5, bne.19343
	addi	$r4, $r0, 0
	lw	$r4, 580($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r0, 0
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 604($r5)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	addu	$r1, $r3, $r4	!ldf var
	lwcl	$f0, 0($r1)	!ldf var
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.19345
	addi	$r3, $r0, 1
	j	cont.19344
bclf.19345:
	addi	$r3, $r0, 0
cont.19344:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19347
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.19346
bne.19347:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19349
	addi	$r3, $r0, 0
	j	cont.19348
bclf.19349:
	addi	$r3, $r0, 1
cont.19348:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19351
	lfh	$f0, 16256
	lfl	$f0, 0
	j	cont.19350
bne.19351:
	lfh	$f0, 49024
	lfl	$f0, 0
cont.19350:
cont.19346:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.19342
bne.19343:
	addi	$r3, $r0, 2
	bne	$r4, $r3, bne.19353
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 0
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 4
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 604($r3)
	j	cont.19352
bne.19353:
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	get_nvector_second.5514
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
cont.19352:
cont.19342:
	addi	$r3, $r0, 588
	lw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	utexture.5575
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	lw	$r3, 572($r3)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	shadow_check_one_or_matrix.5233
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19355
	addi	$r2, $r0, 0
	j	cont.19354
bne.19355:
	addi	$r2, $r0, 1
cont.19354:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19357
	addi	$r2, $r0, 0
	lwcl	$f0, 604($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 344($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19359
	addi	$r2, $r0, 0
	j	cont.19358
bclf.19359:
	addi	$r2, $r0, 1
cont.19358:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19361
	j	cont.19360
bne.19361:
	lfh	$f0, 0
	lfl	$f0, 0
cont.19360:
	lwcl	$f1, -4($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -12($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 0
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 0
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 4
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 616($r2)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 628($r2)
	jr	$r31
bne.19357:
	jr	$r31
bne.19341:
	jr	$r31
iter_trace_diffuse_rays.5943:
	addi	$r6, $r0, 0
	bgt	$r6, $r5, bgt.19363
	sll	$r6, $r5, 2
	addu	$r1, $r2, $r6	!ld var
	lw	$r6, 0($r1)	!ld var
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19365
	addi	$r6, $r0, 0
	j	cont.19364
bclf.19365:
	addi	$r6, $r0, 1
cont.19364:
	addi	$r7, $r0, 1
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r5, -16($r29)
	bne	$r6, $r7, bne.19367
	addi	$r6, $r5, 1
	sll	$r6, $r6, 2
	addu	$r1, $r2, $r6	!ld var
	lw	$r6, 0($r1)	!ld var
	lfh	$f1, 49942
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	swcl	$f0, -20($r29)
	sw	$r6, -24($r29)
	addi	$r2, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	judge_intersection_fast.5473
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19369
	addi	$r2, $r0, 0
	lw	$r2, 600($r2)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	addi	$r5, $r0, 1
	sw	$r2, -28($r29)
	bne	$r4, $r5, bne.19371
	addi	$r4, $r0, 0
	lw	$r4, 580($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r0, 0
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 604($r5)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	addu	$r1, $r3, $r4	!ldf var
	lwcl	$f0, 0($r1)	!ldf var
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.19373
	addi	$r3, $r0, 1
	j	cont.19372
bclf.19373:
	addi	$r3, $r0, 0
cont.19372:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19375
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.19374
bne.19375:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19377
	addi	$r3, $r0, 0
	j	cont.19376
bclf.19377:
	addi	$r3, $r0, 1
cont.19376:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19379
	lfh	$f0, 16256
	lfl	$f0, 0
	j	cont.19378
bne.19379:
	lfh	$f0, 49024
	lfl	$f0, 0
cont.19378:
cont.19374:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.19370
bne.19371:
	addi	$r3, $r0, 2
	bne	$r4, $r3, bne.19381
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 0
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 4
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 604($r3)
	j	cont.19380
bne.19381:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	get_nvector_second.5514
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
cont.19380:
cont.19370:
	addi	$r3, $r0, 588
	lw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	utexture.5575
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	lw	$r3, 572($r3)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	shadow_check_one_or_matrix.5233
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19383
	addi	$r2, $r0, 0
	j	cont.19382
bne.19383:
	addi	$r2, $r0, 1
cont.19382:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19385
	addi	$r2, $r0, 0
	lwcl	$f0, 604($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 344($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19387
	addi	$r2, $r0, 0
	j	cont.19386
bclf.19387:
	addi	$r2, $r0, 1
cont.19386:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19389
	j	cont.19388
bne.19389:
	lfh	$f0, 0
	lfl	$f0, 0
cont.19388:
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -28($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 0
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 0
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 4
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 616($r2)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 628($r2)
	j	cont.19384
bne.19385:
cont.19384:
	j	cont.19368
bne.19369:
cont.19368:
	j	cont.19366
bne.19367:
	sll	$r6, $r5, 2
	addu	$r1, $r2, $r6	!ld var
	lw	$r6, 0($r1)	!ld var
	lfh	$f1, 17174
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	swcl	$f0, -32($r29)
	sw	$r6, -36($r29)
	addi	$r2, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	judge_intersection_fast.5473
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19391
	addi	$r2, $r0, 0
	lw	$r2, 600($r2)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -36($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	addi	$r5, $r0, 1
	sw	$r2, -40($r29)
	bne	$r4, $r5, bne.19393
	addi	$r4, $r0, 0
	lw	$r4, 580($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r0, 0
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 604($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 604($r5)
	addi	$r5, $r4, -1
	addi	$r4, $r4, -1
	sll	$r4, $r4, 2
	addu	$r1, $r3, $r4	!ldf var
	lwcl	$f0, 0($r1)	!ldf var
	lfh	$f1, 0
	lfl	$f1, 0
	c.eq.s	$f0, $f1
	bclf	bclf.19395
	addi	$r3, $r0, 1
	j	cont.19394
bclf.19395:
	addi	$r3, $r0, 0
cont.19394:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19397
	lfh	$f0, 0
	lfl	$f0, 0
	j	cont.19396
bne.19397:
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19399
	addi	$r3, $r0, 0
	j	cont.19398
bclf.19399:
	addi	$r3, $r0, 1
cont.19398:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19401
	lfh	$f0, 16256
	lfl	$f0, 0
	j	cont.19400
bne.19401:
	lfh	$f0, 49024
	lfl	$f0, 0
cont.19400:
cont.19396:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.19392
bne.19393:
	addi	$r3, $r0, 2
	bne	$r4, $r3, bne.19403
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 0
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 4
	swcl	$f0, 604($r3)
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fneg	$f0, $f0
	addi	$r3, $r0, 8
	swcl	$f0, 604($r3)
	j	cont.19402
bne.19403:
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	get_nvector_second.5514
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
cont.19402:
cont.19392:
	addi	$r3, $r0, 588
	lw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	utexture.5575
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	lw	$r3, 572($r3)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	shadow_check_one_or_matrix.5233
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19405
	addi	$r2, $r0, 0
	j	cont.19404
bne.19405:
	addi	$r2, $r0, 1
cont.19404:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19407
	addi	$r2, $r0, 0
	lwcl	$f0, 604($r2)
	addi	$r2, $r0, 0
	lwcl	$f1, 344($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	lwcl	$f1, 604($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 344($r2)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	fneg	$f0, $f0
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f0, $f1
	bclf	bclf.19409
	addi	$r2, $r0, 0
	j	cont.19408
bclf.19409:
	addi	$r2, $r0, 1
cont.19408:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19411
	j	cont.19410
bne.19411:
	lfh	$f0, 0
	lfl	$f0, 0
cont.19410:
	lwcl	$f1, -32($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -40($r29)
	lw	$r2, 28($r2)
	lwcl	$f1, 0($r2)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 0
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 0
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 4
	lwcl	$f2, 616($r2)
	mul.s	$f2, $f0, $f2
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 4
	swcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 628($r2)
	addi	$r2, $r0, 8
	lwcl	$f2, 616($r2)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f1, $f0
	addi	$r2, $r0, 8
	swcl	$f0, 628($r2)
	j	cont.19406
bne.19407:
cont.19406:
	j	cont.19390
bne.19391:
cont.19390:
cont.19366:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -2
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19413
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19415
	addi	$r3, $r0, 0
	j	cont.19414
bclf.19415:
	addi	$r3, $r0, 1
cont.19414:
	addi	$r6, $r0, 1
	sw	$r2, -44($r29)
	bne	$r3, $r6, bne.19417
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lfh	$f1, 49942
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	j	cont.19416
bne.19417:
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lfh	$f1, 17174
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
cont.19416:
	lw	$r2, -44($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5943
bgt.19413:
	jr	$r31
bgt.19363:
	jr	$r31
trace_diffuse_ray_80percent.5972:
	addi	$r5, $r0, 0
	bne	$r2, $r5, bne.19419
	addi	$r5, $r0, 0
	j	cont.19418
bne.19419:
	addi	$r5, $r0, 1
cont.19418:
	addi	$r6, $r0, 1
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bne	$r5, $r6, bne.19421
	addi	$r5, $r0, 0
	lw	$r5, 764($r5)
	lwcl	$f0, 0($r4)
	addi	$r6, $r0, 0
	swcl	$f0, 684($r6)
	lwcl	$f0, 4($r4)
	addi	$r6, $r0, 4
	swcl	$f0, 684($r6)
	lwcl	$f0, 8($r4)
	addi	$r6, $r0, 8
	swcl	$f0, 684($r6)
	addi	$r6, $r0, 0
	lw	$r6, 28($r6)
	addi	$r6, $r6, -1
	sw	$r5, -16($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -16($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	j	cont.19420
bne.19421:
cont.19420:
	addi	$r2, $r0, 1
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.19423
	addi	$r2, $r0, 0
	j	cont.19422
bne.19423:
	addi	$r2, $r0, 1
cont.19422:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19425
	addi	$r2, $r0, 4
	lw	$r2, 764($r2)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	addi	$r5, $r0, 0
	swcl	$f0, 684($r5)
	lwcl	$f0, 4($r4)
	addi	$r5, $r0, 4
	swcl	$f0, 684($r5)
	lwcl	$f0, 8($r4)
	addi	$r5, $r0, 8
	swcl	$f0, 684($r5)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -20($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19424
bne.19425:
cont.19424:
	addi	$r2, $r0, 2
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.19427
	addi	$r2, $r0, 0
	j	cont.19426
bne.19427:
	addi	$r2, $r0, 1
cont.19426:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19429
	addi	$r2, $r0, 8
	lw	$r2, 764($r2)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	addi	$r5, $r0, 0
	swcl	$f0, 684($r5)
	lwcl	$f0, 4($r4)
	addi	$r5, $r0, 4
	swcl	$f0, 684($r5)
	lwcl	$f0, 8($r4)
	addi	$r5, $r0, 8
	swcl	$f0, 684($r5)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -24($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -24($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19428
bne.19429:
cont.19428:
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.19431
	addi	$r2, $r0, 0
	j	cont.19430
bne.19431:
	addi	$r2, $r0, 1
cont.19430:
	addi	$r4, $r0, 1
	bne	$r2, $r4, bne.19433
	addi	$r2, $r0, 12
	lw	$r2, 764($r2)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	addi	$r5, $r0, 0
	swcl	$f0, 684($r5)
	lwcl	$f0, 4($r4)
	addi	$r5, $r0, 4
	swcl	$f0, 684($r5)
	lwcl	$f0, 8($r4)
	addi	$r5, $r0, 8
	swcl	$f0, 684($r5)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -28($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	j	cont.19432
bne.19433:
cont.19432:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	bne	$r3, $r2, bne.19435
	addi	$r2, $r0, 0
	j	cont.19434
bne.19435:
	addi	$r2, $r0, 1
cont.19434:
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19437
	addi	$r2, $r0, 16
	lw	$r2, 764($r2)
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	addi	$r4, $r0, 0
	swcl	$f0, 684($r4)
	lwcl	$f0, 4($r3)
	addi	$r4, $r0, 4
	swcl	$f0, 684($r4)
	lwcl	$f0, 8($r3)
	addi	$r4, $r0, 8
	swcl	$f0, 684($r4)
	addi	$r4, $r0, 0
	lw	$r4, 28($r4)
	addi	$r4, $r4, -1
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -32($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	j	iter_trace_diffuse_rays.5943
bne.19437:
	jr	$r31
calc_diffuse_using_5points.6019:
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 20($r3)
	addi	$r7, $r2, -1
	sll	$r7, $r7, 2
	addu	$r1, $r4, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 20($r7)
	sll	$r8, $r2, 2
	addu	$r1, $r4, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	lw	$r8, 20($r8)
	addi	$r9, $r2, 1
	sll	$r9, $r9, 2
	addu	$r1, $r4, $r9	!ld var
	lw	$r9, 0($r1)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r5, 20($r5)
	sll	$r10, $r6, 2
	addu	$r1, $r3, $r10	!ld var
	lw	$r3, 0($r1)	!ld var
	lwcl	$f0, 0($r3)
	addi	$r10, $r0, 0
	swcl	$f0, 628($r10)
	lwcl	$f0, 4($r3)
	addi	$r10, $r0, 4
	swcl	$f0, 628($r10)
	lwcl	$f0, 8($r3)
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	sll	$r3, $r6, 2
	addu	$r1, $r7, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r7, $r0, 0
	lwcl	$f0, 628($r7)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 0
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 4
	lwcl	$f0, 628($r7)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 8
	lwcl	$f0, 628($r7)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	sll	$r3, $r6, 2
	addu	$r1, $r8, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r7, $r0, 0
	lwcl	$f0, 628($r7)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 0
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 4
	lwcl	$f0, 628($r7)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 8
	lwcl	$f0, 628($r7)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	sll	$r3, $r6, 2
	addu	$r1, $r9, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r7, $r0, 0
	lwcl	$f0, 628($r7)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 0
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 4
	lwcl	$f0, 628($r7)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	addi	$r7, $r0, 4
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 8
	lwcl	$f0, 628($r7)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	sll	$r3, $r6, 2
	addu	$r1, $r5, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lwcl	$f0, 628($r5)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	addi	$r5, $r0, 0
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 4
	lwcl	$f0, 628($r5)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	addi	$r5, $r0, 4
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 8
	lwcl	$f0, 628($r5)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	sll	$r2, $r2, 2
	addu	$r1, $r4, $r2	!ld var
	lw	$r2, 0($r1)	!ld var
	lw	$r2, 16($r2)
	sll	$r3, $r6, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r4, $r0, 628
	addi	$r2, $r0, 640
	j	vecaccumv.3495
do_without_neighbors.6052:
	addi	$r4, $r0, 4
	bgt	$r3, $r4, bgt.19439
	lw	$r4, 8($r2)
	addi	$r5, $r0, 0
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6	!ld var
	lw	$r4, 0($r1)	!ld var
	bgt	$r5, $r4, bgt.19441
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bne	$r4, $r5, bne.19443
	lw	$r4, 20($r2)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	lw	$r7, 16($r2)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8	!ld var
	lw	$r4, 0($r1)	!ld var
	lwcl	$f0, 0($r4)
	addi	$r8, $r0, 0
	swcl	$f0, 628($r8)
	lwcl	$f0, 4($r4)
	addi	$r8, $r0, 4
	swcl	$f0, 628($r8)
	lwcl	$f0, 8($r4)
	addi	$r4, $r0, 8
	swcl	$f0, 628($r4)
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	sll	$r8, $r3, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r5, 0($r1)	!ld var
	sll	$r8, $r3, 2
	addu	$r1, $r6, $r8	!ld var
	lw	$r6, 0($r1)	!ld var
	sw	$r7, -12($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	trace_diffuse_ray_80percent.5972
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r2, -8($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r4, $r0, 628
	addi	$r5, $r0, 640
	addi	$r2, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	vecaccumv.3495
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	j	cont.19442
bne.19443:
cont.19442:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 4
	bgt	$r2, $r3, bgt.19445
	lw	$r3, -4($r29)
	lw	$r4, 8($r3)
	addi	$r5, $r0, 0
	sll	$r6, $r2, 2
	addu	$r1, $r4, $r6	!ld var
	lw	$r4, 0($r1)	!ld var
	bgt	$r5, $r4, bgt.19447
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 1
	sw	$r2, -16($r29)
	bne	$r4, $r5, bne.19449
	lw	$r4, 20($r3)
	lw	$r5, 28($r3)
	lw	$r6, 4($r3)
	lw	$r7, 16($r3)
	sll	$r8, $r2, 2
	addu	$r1, $r4, $r8	!ld var
	lw	$r4, 0($r1)	!ld var
	lwcl	$f0, 0($r4)
	addi	$r8, $r0, 0
	swcl	$f0, 628($r8)
	lwcl	$f0, 4($r4)
	addi	$r8, $r0, 4
	swcl	$f0, 628($r8)
	lwcl	$f0, 8($r4)
	addi	$r4, $r0, 8
	swcl	$f0, 628($r4)
	lw	$r4, 24($r3)
	lw	$r4, 0($r4)
	sll	$r8, $r2, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r5, 0($r1)	!ld var
	sll	$r8, $r2, 2
	addu	$r1, $r6, $r8	!ld var
	lw	$r6, 0($r1)	!ld var
	sw	$r7, -20($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	trace_diffuse_ray_80percent.5972
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -16($r29)
	sll	$r3, $r2, 2
	lw	$r4, -20($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r4, $r0, 628
	addi	$r5, $r0, 640
	addi	$r2, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	vecaccumv.3495
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19448
bne.19449:
cont.19448:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.6052
bgt.19447:
	jr	$r31
bgt.19445:
	jr	$r31
bgt.19441:
	jr	$r31
bgt.19439:
	jr	$r31
try_exploit_neighbors.6111:
	sll	$r8, $r2, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 4
	bgt	$r7, $r9, bgt.19451
	addi	$r9, $r0, 0
	lw	$r10, 8($r8)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11	!ld var
	lw	$r10, 0($r1)	!ld var
	bgt	$r9, $r10, bgt.19453
	sll	$r9, $r2, 2
	addu	$r1, $r5, $r9	!ld var
	lw	$r9, 0($r1)	!ld var
	lw	$r9, 8($r9)
	sll	$r10, $r7, 2
	addu	$r1, $r9, $r10	!ld var
	lw	$r9, 0($r1)	!ld var
	sll	$r10, $r2, 2
	addu	$r1, $r4, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11	!ld var
	lw	$r10, 0($r1)	!ld var
	bne	$r10, $r9, bne.19455
	sll	$r10, $r2, 2
	addu	$r1, $r6, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11	!ld var
	lw	$r10, 0($r1)	!ld var
	bne	$r10, $r9, bne.19457
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11	!ld var
	lw	$r10, 0($r1)	!ld var
	bne	$r10, $r9, bne.19459
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11	!ld var
	lw	$r10, 0($r1)	!ld var
	bne	$r10, $r9, bne.19461
	addi	$r9, $r0, 1
	j	cont.19460
bne.19461:
	addi	$r9, $r0, 0
cont.19460:
	j	cont.19458
bne.19459:
	addi	$r9, $r0, 0
cont.19458:
	j	cont.19456
bne.19457:
	addi	$r9, $r0, 0
cont.19456:
	j	cont.19454
bne.19455:
	addi	$r9, $r0, 0
cont.19454:
	addi	$r10, $r0, 1
	bne	$r9, $r10, bne.19463
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	addu	$r1, $r8, $r9	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 1
	sw	$r3, -4($r29)
	sw	$r6, -8($r29)
	sw	$r4, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	sw	$r7, -24($r29)
	bne	$r8, $r9, bne.19465
	sll	$r8, $r2, 2
	addu	$r1, $r4, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	lw	$r8, 20($r8)
	addi	$r9, $r2, -1
	sll	$r9, $r9, 2
	addu	$r1, $r5, $r9	!ld var
	lw	$r9, 0($r1)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 20($r10)
	addi	$r11, $r2, 1
	sll	$r11, $r11, 2
	addu	$r1, $r5, $r11	!ld var
	lw	$r11, 0($r1)	!ld var
	lw	$r11, 20($r11)
	sll	$r12, $r2, 2
	addu	$r1, $r6, $r12	!ld var
	lw	$r12, 0($r1)	!ld var
	lw	$r12, 20($r12)
	sll	$r13, $r7, 2
	addu	$r1, $r8, $r13	!ld var
	lw	$r8, 0($r1)	!ld var
	lwcl	$f0, 0($r8)
	addi	$r13, $r0, 0
	swcl	$f0, 628($r13)
	lwcl	$f0, 4($r8)
	addi	$r13, $r0, 4
	swcl	$f0, 628($r13)
	lwcl	$f0, 8($r8)
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	sll	$r8, $r7, 2
	addu	$r1, $r9, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 0
	lwcl	$f0, 628($r9)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 0
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 4
	lwcl	$f0, 628($r9)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 4
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 8
	lwcl	$f0, 628($r9)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	sll	$r8, $r7, 2
	addu	$r1, $r10, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 0
	lwcl	$f0, 628($r9)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 0
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 4
	lwcl	$f0, 628($r9)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 4
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 8
	lwcl	$f0, 628($r9)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	sll	$r8, $r7, 2
	addu	$r1, $r11, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 0
	lwcl	$f0, 628($r9)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 0
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 4
	lwcl	$f0, 628($r9)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 4
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 8
	lwcl	$f0, 628($r9)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	sll	$r8, $r7, 2
	addu	$r1, $r12, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 0
	lwcl	$f0, 628($r9)
	lwcl	$f1, 0($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 0
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 4
	lwcl	$f0, 628($r9)
	lwcl	$f1, 4($r8)
	add.s	$f0, $f0, $f1
	addi	$r9, $r0, 4
	swcl	$f0, 628($r9)
	addi	$r9, $r0, 8
	lwcl	$f0, 628($r9)
	lwcl	$f1, 8($r8)
	add.s	$f0, $f0, $f1
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	sll	$r8, $r2, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	lw	$r8, 16($r8)
	sll	$r9, $r7, 2
	addu	$r1, $r8, $r9	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 628
	addi	$r10, $r0, 640
	addi	$r2, $r10, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	vecaccumv.3495
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19464
bne.19465:
cont.19464:
	lw	$r2, -24($r29)
	addi	$r6, $r2, 1
	lw	$r2, -20($r29)
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 4
	bgt	$r6, $r5, bgt.19467
	addi	$r5, $r0, 0
	lw	$r7, 8($r3)
	sll	$r8, $r6, 2
	addu	$r1, $r7, $r8	!ld var
	lw	$r7, 0($r1)	!ld var
	bgt	$r5, $r7, bgt.19469
	sll	$r5, $r2, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r5, 0($r1)	!ld var
	lw	$r5, 8($r5)
	sll	$r7, $r6, 2
	addu	$r1, $r5, $r7	!ld var
	lw	$r5, 0($r1)	!ld var
	sll	$r7, $r2, 2
	lw	$r8, -12($r29)
	addu	$r1, $r8, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 8($r7)
	sll	$r9, $r6, 2
	addu	$r1, $r7, $r9	!ld var
	lw	$r7, 0($r1)	!ld var
	bne	$r7, $r5, bne.19471
	sll	$r7, $r2, 2
	lw	$r9, -8($r29)
	addu	$r1, $r9, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 8($r7)
	sll	$r10, $r6, 2
	addu	$r1, $r7, $r10	!ld var
	lw	$r7, 0($r1)	!ld var
	bne	$r7, $r5, bne.19473
	addi	$r7, $r2, -1
	sll	$r7, $r7, 2
	addu	$r1, $r4, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 8($r7)
	sll	$r10, $r6, 2
	addu	$r1, $r7, $r10	!ld var
	lw	$r7, 0($r1)	!ld var
	bne	$r7, $r5, bne.19475
	addi	$r7, $r2, 1
	sll	$r7, $r7, 2
	addu	$r1, $r4, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 8($r7)
	sll	$r10, $r6, 2
	addu	$r1, $r7, $r10	!ld var
	lw	$r7, 0($r1)	!ld var
	bne	$r7, $r5, bne.19477
	addi	$r5, $r0, 1
	j	cont.19476
bne.19477:
	addi	$r5, $r0, 0
cont.19476:
	j	cont.19474
bne.19475:
	addi	$r5, $r0, 0
cont.19474:
	j	cont.19472
bne.19473:
	addi	$r5, $r0, 0
cont.19472:
	j	cont.19470
bne.19471:
	addi	$r5, $r0, 0
cont.19470:
	addi	$r7, $r0, 1
	bne	$r5, $r7, bne.19479
	lw	$r3, 12($r3)
	sll	$r5, $r6, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 1
	sw	$r6, -28($r29)
	bne	$r3, $r5, bne.19481
	lw	$r5, -8($r29)
	addi	$r3, $r8, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	calc_diffuse_using_5points.6019
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	j	cont.19480
bne.19481:
cont.19480:
	lw	$r2, -28($r29)
	addi	$r7, $r2, 1
	lw	$r2, -20($r29)
	lw	$r3, -4($r29)
	lw	$r4, -12($r29)
	lw	$r5, -16($r29)
	lw	$r6, -8($r29)
	j	try_exploit_neighbors.6111
bne.19479:
	sll	$r2, $r2, 2
	addu	$r1, $r4, $r2	!ld var
	lw	$r2, 0($r1)	!ld var
	addi	$r3, $r6, 0
	j	do_without_neighbors.6052
bgt.19469:
	jr	$r31
bgt.19467:
	jr	$r31
bne.19463:
	sll	$r2, $r2, 2
	addu	$r1, $r5, $r2	!ld var
	lw	$r2, 0($r1)	!ld var
	addi	$r3, $r0, 4
	bgt	$r7, $r3, bgt.19483
	lw	$r3, 8($r2)
	addi	$r4, $r0, 0
	sll	$r5, $r7, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r3, 0($r1)	!ld var
	bgt	$r4, $r3, bgt.19485
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	addu	$r1, $r3, $r4	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r4, $r0, 1
	sw	$r2, -32($r29)
	sw	$r7, -24($r29)
	bne	$r3, $r4, bne.19487
	lw	$r3, 20($r2)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	lw	$r6, 16($r2)
	sll	$r8, $r7, 2
	addu	$r1, $r3, $r8	!ld var
	lw	$r3, 0($r1)	!ld var
	lwcl	$f0, 0($r3)
	addi	$r8, $r0, 0
	swcl	$f0, 628($r8)
	lwcl	$f0, 4($r3)
	addi	$r8, $r0, 4
	swcl	$f0, 628($r8)
	lwcl	$f0, 8($r3)
	addi	$r3, $r0, 8
	swcl	$f0, 628($r3)
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	sll	$r8, $r7, 2
	addu	$r1, $r4, $r8	!ld var
	lw	$r4, 0($r1)	!ld var
	sll	$r8, $r7, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r5, 0($r1)	!ld var
	sw	$r6, -36($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	trace_diffuse_ray_80percent.5972
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r4, $r0, 628
	addi	$r5, $r0, 640
	addi	$r2, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	vecaccumv.3495
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	j	cont.19486
bne.19487:
cont.19486:
	lw	$r2, -24($r29)
	addi	$r3, $r2, 1
	lw	$r2, -32($r29)
	j	do_without_neighbors.6052
bgt.19485:
	jr	$r31
bgt.19483:
	jr	$r31
bgt.19453:
	jr	$r31
bgt.19451:
	jr	$r31
write_rgb.6164:
	addi	$r2, $r0, 0
	lwcl	$f0, 640($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19489
	addi	$r3, $r0, 0
	j	cont.19488
bgt.19489:
	addi	$r3, $r0, 1
cont.19488:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19491
	addi	$r2, $r0, 255
	j	cont.19490
bne.19491:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19493
	addi	$r3, $r0, 0
	j	cont.19492
bgt.19493:
	addi	$r3, $r0, 1
cont.19492:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19495
	addi	$r2, $r0, 0
	j	cont.19494
bne.19495:
cont.19494:
cont.19490:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 4
	lwcl	$f0, 640($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19497
	addi	$r3, $r0, 0
	j	cont.19496
bgt.19497:
	addi	$r3, $r0, 1
cont.19496:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19499
	addi	$r2, $r0, 255
	j	cont.19498
bne.19499:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19501
	addi	$r3, $r0, 0
	j	cont.19500
bgt.19501:
	addi	$r3, $r0, 1
cont.19500:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19503
	addi	$r2, $r0, 0
	j	cont.19502
bne.19503:
cont.19502:
cont.19498:
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r2, $r0, 8
	lwcl	$f0, 640($r2)
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19505
	addi	$r3, $r0, 0
	j	cont.19504
bgt.19505:
	addi	$r3, $r0, 1
cont.19504:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19507
	addi	$r2, $r0, 255
	j	cont.19506
bne.19507:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19509
	addi	$r3, $r0, 0
	j	cont.19508
bgt.19509:
	addi	$r3, $r0, 1
cont.19508:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19511
	addi	$r2, $r0, 0
	j	cont.19510
bne.19511:
cont.19510:
cont.19506:
	j	min_caml_print_char
pretrace_diffuse_rays.6174:
	addi	$r4, $r0, 4
	bgt	$r3, $r4, bgt.19513
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 0
	bgt	$r5, $r4, bgt.19515
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 1
	sw	$r3, -4($r29)
	bne	$r4, $r5, bne.19517
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r0, 0
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 628($r5)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	sll	$r4, $r4, 2
	lw	$r4, 764($r4)
	sll	$r7, $r3, 2
	addu	$r1, $r5, $r7	!ld var
	lw	$r5, 0($r1)	!ld var
	sll	$r7, $r3, 2
	addu	$r1, $r6, $r7	!ld var
	lw	$r6, 0($r1)	!ld var
	lwcl	$f0, 0($r6)
	addi	$r7, $r0, 0
	swcl	$f0, 684($r7)
	lwcl	$f0, 4($r6)
	addi	$r7, $r0, 4
	swcl	$f0, 684($r7)
	lwcl	$f0, 8($r6)
	addi	$r7, $r0, 8
	swcl	$f0, 684($r7)
	addi	$r7, $r0, 0
	lw	$r7, 28($r7)
	addi	$r7, $r7, -1
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r5, -16($r29)
	sw	$r4, -20($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r5, $r0, 118
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -4($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lwcl	$f0, 628($r5)
	swcl	$f0, 0($r3)
	addi	$r5, $r0, 4
	lwcl	$f0, 628($r5)
	swcl	$f0, 4($r3)
	addi	$r5, $r0, 8
	lwcl	$f0, 628($r5)
	swcl	$f0, 8($r3)
	j	cont.19516
bne.19517:
cont.19516:
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 4
	bgt	$r3, $r4, bgt.19519
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 0
	bgt	$r5, $r4, bgt.19521
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 1
	sw	$r3, -24($r29)
	bne	$r4, $r5, bne.19523
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r5, $r0, 0
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 4
	swcl	$f0, 628($r5)
	addi	$r5, $r0, 8
	swcl	$f0, 628($r5)
	lw	$r5, 28($r2)
	lw	$r6, 4($r2)
	sll	$r4, $r4, 2
	lw	$r4, 764($r4)
	sll	$r7, $r3, 2
	addu	$r1, $r5, $r7	!ld var
	lw	$r5, 0($r1)	!ld var
	sll	$r7, $r3, 2
	addu	$r1, $r6, $r7	!ld var
	lw	$r6, 0($r1)	!ld var
	lwcl	$f0, 0($r6)
	addi	$r7, $r0, 0
	swcl	$f0, 684($r7)
	lwcl	$f0, 4($r6)
	addi	$r7, $r0, 4
	swcl	$f0, 684($r7)
	lwcl	$f0, 8($r6)
	addi	$r7, $r0, 8
	swcl	$f0, 684($r7)
	addi	$r7, $r0, 0
	lw	$r7, 28($r7)
	addi	$r7, $r7, -1
	sw	$r2, -8($r29)
	sw	$r6, -28($r29)
	sw	$r5, -32($r29)
	sw	$r4, -36($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19525
	addi	$r3, $r0, 0
	j	cont.19524
bclf.19525:
	addi	$r3, $r0, 1
cont.19524:
	addi	$r5, $r0, 1
	bne	$r3, $r5, bne.19527
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	j	cont.19526
bne.19527:
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
cont.19526:
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -24($r29)
	sll	$r5, $r4, 2
	addu	$r1, $r3, $r5	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lwcl	$f0, 628($r5)
	swcl	$f0, 0($r3)
	addi	$r5, $r0, 4
	lwcl	$f0, 628($r5)
	swcl	$f0, 4($r3)
	addi	$r5, $r0, 8
	lwcl	$f0, 628($r5)
	swcl	$f0, 8($r3)
	j	cont.19522
bne.19523:
cont.19522:
	lw	$r3, -24($r29)
	addi	$r3, $r3, 1
	j	pretrace_diffuse_rays.6174
bgt.19521:
	jr	$r31
bgt.19519:
	jr	$r31
bgt.19515:
	jr	$r31
bgt.19513:
	jr	$r31
pretrace_pixels.6196:
	addi	$r5, $r0, 0
	bgt	$r5, $r3, bgt.19529
	addi	$r5, $r0, 0
	lwcl	$f3, 668($r5)
	addi	$r5, $r0, 0
	lw	$r5, 660($r5)
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
	addi	$r29, $r29, -32	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lwcl	$f1, -28($r29)
	mul.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	lwcl	$f1, 696($r2)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -24($r29)
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 0
	swcl	$f1, 732($r2)
	addi	$r2, $r0, 4
	lwcl	$f1, 696($r2)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -20($r29)
	add.s	$f1, $f1, $f3
	addi	$r2, $r0, 4
	swcl	$f1, 732($r2)
	addi	$r2, $r0, 8
	lwcl	$f1, 696($r2)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -16($r29)
	add.s	$f0, $f0, $f1
	addi	$r2, $r0, 8
	swcl	$f0, 732($r2)
	addi	$r3, $r0, 0
	addi	$r2, $r0, 732
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	vecunit_sgn.3335
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r2, $r0, 0
	swcl	$f0, 640($r2)
	addi	$r2, $r0, 4
	swcl	$f0, 640($r2)
	addi	$r2, $r0, 8
	swcl	$f0, 640($r2)
	addi	$r2, $r0, 0
	lwcl	$f0, 332($r2)
	addi	$r2, $r0, 0
	swcl	$f0, 672($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, 332($r2)
	addi	$r2, $r0, 4
	swcl	$f0, 672($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, 332($r2)
	addi	$r2, $r0, 8
	swcl	$f0, 672($r2)
	addi	$r2, $r0, 0
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	lfh	$f1, 0
	lfl	$f1, 0
	addi	$r6, $r0, 732
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	trace_ray.5793
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -12($r29)
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	addi	$r5, $r0, 0
	lwcl	$f0, 640($r5)
	swcl	$f0, 0($r3)
	addi	$r5, $r0, 4
	lwcl	$f0, 640($r5)
	swcl	$f0, 4($r3)
	addi	$r5, $r0, 8
	lwcl	$f0, 640($r5)
	swcl	$f0, 8($r3)
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 24($r3)
	lw	$r5, -4($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	addi	$r7, $r0, 0
	bgt	$r7, $r6, bgt.19531
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	addi	$r7, $r0, 1
	sw	$r3, -32($r29)
	bne	$r6, $r7, bne.19533
	lw	$r6, 24($r3)
	lw	$r6, 0($r6)
	lfh	$f0, 0
	lfl	$f0, 0
	addi	$r7, $r0, 0
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 4
	swcl	$f0, 628($r7)
	addi	$r7, $r0, 8
	swcl	$f0, 628($r7)
	lw	$r7, 28($r3)
	lw	$r8, 4($r3)
	sll	$r6, $r6, 2
	lw	$r6, 764($r6)
	lw	$r7, 0($r7)
	lw	$r8, 0($r8)
	lwcl	$f0, 0($r8)
	addi	$r9, $r0, 0
	swcl	$f0, 684($r9)
	lwcl	$f0, 4($r8)
	addi	$r9, $r0, 4
	swcl	$f0, 684($r9)
	lwcl	$f0, 8($r8)
	addi	$r9, $r0, 8
	swcl	$f0, 684($r9)
	addi	$r9, $r0, 0
	lw	$r9, 28($r9)
	addi	$r9, $r9, -1
	sw	$r8, -36($r29)
	sw	$r7, -40($r29)
	sw	$r6, -44($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	setup_startp_constants.5043
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
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
	lfh	$f1, 0
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19535
	addi	$r3, $r0, 0
	j	cont.19534
bclf.19535:
	addi	$r3, $r0, 1
cont.19534:
	addi	$r5, $r0, 1
	bne	$r3, $r5, bne.19537
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	j	cont.19536
bne.19537:
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	lfl	$f1, 0
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	trace_diffuse_ray.5917
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
cont.19536:
	addi	$r5, $r0, 116
	lw	$r2, -44($r29)
	lw	$r3, -40($r29)
	lw	$r4, -36($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	iter_trace_diffuse_rays.5943
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r2, -32($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	addi	$r4, $r0, 0
	lwcl	$f0, 628($r4)
	swcl	$f0, 0($r3)
	addi	$r4, $r0, 4
	lwcl	$f0, 628($r4)
	swcl	$f0, 4($r3)
	addi	$r4, $r0, 8
	lwcl	$f0, 628($r4)
	swcl	$f0, 8($r3)
	j	cont.19532
bne.19533:
cont.19532:
	addi	$r3, $r0, 1
	lw	$r2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	pretrace_diffuse_rays.6174
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	j	cont.19530
bgt.19531:
cont.19530:
	lw	$r2, -12($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r2, bgt.19539
	addi	$r4, $r2, -5
	j	cont.19538
bgt.19539:
	addi	$r4, $r2, 0
cont.19538:
	lw	$r2, -8($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -16($r29)
	j	pretrace_pixels.6196
bgt.19529:
	jr	$r31
pretrace_line.6250:
	addi	$r5, $r0, 0
	lwcl	$f0, 668($r5)
	addi	$r5, $r0, 4
	lw	$r5, 660($r5)
	subu	$r3, $r3, $r5
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	lwcl	$f1, 708($r2)
	mul.s	$f1, $f0, $f1
	addi	$r2, $r0, 0
	lwcl	$f2, 720($r2)
	add.s	$f1, $f1, $f2
	addi	$r2, $r0, 4
	lwcl	$f2, 708($r2)
	mul.s	$f2, $f0, $f2
	addi	$r2, $r0, 4
	lwcl	$f3, 720($r2)
	add.s	$f2, $f2, $f3
	addi	$r2, $r0, 8
	lwcl	$f3, 708($r2)
	mul.s	$f0, $f0, $f3
	addi	$r2, $r0, 8
	lwcl	$f3, 720($r2)
	add.s	$f0, $f0, $f3
	addi	$r2, $r0, 0
	lw	$r2, 652($r2)
	addi	$r3, $r2, -1
	lw	$r2, -8($r29)
	lw	$r4, -4($r29)
	fmove	$f31, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f31
	j	pretrace_pixels.6196
scan_pixel.6283:
	addi	$r7, $r0, 0
	lw	$r7, 652($r7)
	bgt	$r7, $r2, bgt.19541
	addi	$r7, $r0, 0
	j	cont.19540
bgt.19541:
	addi	$r7, $r0, 1
cont.19540:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19543
	sll	$r7, $r2, 2
	addu	$r1, $r5, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r7, 0($r7)
	lwcl	$f0, 0($r7)
	addi	$r8, $r0, 0
	swcl	$f0, 640($r8)
	lwcl	$f0, 4($r7)
	addi	$r8, $r0, 4
	swcl	$f0, 640($r8)
	lwcl	$f0, 8($r7)
	addi	$r7, $r0, 8
	swcl	$f0, 640($r7)
	addi	$r7, $r0, 4
	lw	$r7, 652($r7)
	addi	$r8, $r3, 1
	bgt	$r7, $r8, bgt.19545
	addi	$r7, $r0, 0
	j	cont.19544
bgt.19545:
	addi	$r7, $r0, 1
cont.19544:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19547
	addi	$r7, $r0, 0
	bgt	$r3, $r7, bgt.19549
	addi	$r7, $r0, 0
	j	cont.19548
bgt.19549:
	addi	$r7, $r0, 1
cont.19548:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19551
	addi	$r7, $r0, 0
	lw	$r7, 652($r7)
	addi	$r8, $r2, 1
	bgt	$r7, $r8, bgt.19553
	addi	$r7, $r0, 0
	j	cont.19552
bgt.19553:
	addi	$r7, $r0, 1
cont.19552:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19555
	addi	$r7, $r0, 0
	bgt	$r2, $r7, bgt.19557
	addi	$r7, $r0, 0
	j	cont.19556
bgt.19557:
	addi	$r7, $r0, 1
cont.19556:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19559
	addi	$r7, $r0, 1
	j	cont.19558
bne.19559:
	addi	$r7, $r0, 0
cont.19558:
	j	cont.19554
bne.19555:
	addi	$r7, $r0, 0
cont.19554:
	j	cont.19550
bne.19551:
	addi	$r7, $r0, 0
cont.19550:
	j	cont.19546
bne.19547:
	addi	$r7, $r0, 0
cont.19546:
	addi	$r8, $r0, 1
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bne	$r7, $r8, bne.19561
	addi	$r7, $r0, 0
	sll	$r8, $r2, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r9, $r0, 0
	lw	$r10, 8($r8)
	lw	$r10, 0($r10)
	bgt	$r9, $r10, bgt.19563
	sll	$r9, $r2, 2
	addu	$r1, $r5, $r9	!ld var
	lw	$r9, 0($r1)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	sll	$r10, $r2, 2
	addu	$r1, $r4, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.19565
	sll	$r10, $r2, 2
	addu	$r1, $r6, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.19567
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.19569
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	addu	$r1, $r5, $r10	!ld var
	lw	$r10, 0($r1)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.19571
	addi	$r9, $r0, 1
	j	cont.19570
bne.19571:
	addi	$r9, $r0, 0
cont.19570:
	j	cont.19568
bne.19569:
	addi	$r9, $r0, 0
cont.19568:
	j	cont.19566
bne.19567:
	addi	$r9, $r0, 0
cont.19566:
	j	cont.19564
bne.19565:
	addi	$r9, $r0, 0
cont.19564:
	addi	$r10, $r0, 1
	bne	$r9, $r10, bne.19573
	lw	$r8, 12($r8)
	lw	$r8, 0($r8)
	addi	$r9, $r0, 1
	bne	$r8, $r9, bne.19575
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	addi	$r5, $r6, 0
	addi	$r6, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	calc_diffuse_using_5points.6019
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19574
bne.19575:
cont.19574:
	addi	$r7, $r0, 1
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	try_exploit_neighbors.6111
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19572
bne.19573:
	sll	$r8, $r2, 2
	addu	$r1, $r5, $r8	!ld var
	lw	$r8, 0($r1)	!ld var
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	do_without_neighbors.6052
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.19572:
	j	cont.19562
bgt.19563:
cont.19562:
	j	cont.19560
bne.19561:
	sll	$r7, $r2, 2
	addu	$r1, $r5, $r7	!ld var
	lw	$r7, 0($r1)	!ld var
	lw	$r8, 8($r7)
	addi	$r9, $r0, 0
	lw	$r8, 0($r8)
	bgt	$r9, $r8, bgt.19577
	lw	$r8, 12($r7)
	lw	$r8, 0($r8)
	addi	$r9, $r0, 1
	sw	$r7, -24($r29)
	bne	$r8, $r9, bne.19579
	lw	$r8, 20($r7)
	lw	$r9, 28($r7)
	lw	$r10, 4($r7)
	lw	$r11, 16($r7)
	lw	$r8, 0($r8)
	lwcl	$f0, 0($r8)
	addi	$r12, $r0, 0
	swcl	$f0, 628($r12)
	lwcl	$f0, 4($r8)
	addi	$r12, $r0, 4
	swcl	$f0, 628($r12)
	lwcl	$f0, 8($r8)
	addi	$r8, $r0, 8
	swcl	$f0, 628($r8)
	lw	$r8, 24($r7)
	lw	$r8, 0($r8)
	lw	$r9, 0($r9)
	lw	$r10, 0($r10)
	sw	$r11, -28($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	addi	$r4, $r10, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	trace_diffuse_ray_80percent.5972
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	lw	$r3, 0($r2)
	addi	$r4, $r0, 628
	addi	$r2, $r0, 640
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	vecaccumv.3495
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	j	cont.19578
bne.19579:
cont.19578:
	addi	$r3, $r0, 1
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	do_without_neighbors.6052
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	j	cont.19576
bgt.19577:
cont.19576:
cont.19560:
	addi	$r2, $r0, 0
	lwcl	$f0, 640($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19581
	addi	$r3, $r0, 0
	j	cont.19580
bgt.19581:
	addi	$r3, $r0, 1
cont.19580:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19583
	addi	$r2, $r0, 255
	j	cont.19582
bne.19583:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19585
	addi	$r3, $r0, 0
	j	cont.19584
bgt.19585:
	addi	$r3, $r0, 1
cont.19584:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19587
	addi	$r2, $r0, 0
	j	cont.19586
bne.19587:
cont.19586:
cont.19582:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r2, $r0, 4
	lwcl	$f0, 640($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19589
	addi	$r3, $r0, 0
	j	cont.19588
bgt.19589:
	addi	$r3, $r0, 1
cont.19588:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19591
	addi	$r2, $r0, 255
	j	cont.19590
bne.19591:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19593
	addi	$r3, $r0, 0
	j	cont.19592
bgt.19593:
	addi	$r3, $r0, 1
cont.19592:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19595
	addi	$r2, $r0, 0
	j	cont.19594
bne.19595:
cont.19594:
cont.19590:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r2, $r0, 8
	lwcl	$f0, 640($r2)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_int_of_float
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.19597
	addi	$r3, $r0, 0
	j	cont.19596
bgt.19597:
	addi	$r3, $r0, 1
cont.19596:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19599
	addi	$r2, $r0, 255
	j	cont.19598
bne.19599:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19601
	addi	$r3, $r0, 0
	j	cont.19600
bgt.19601:
	addi	$r3, $r0, 1
cont.19600:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19603
	addi	$r2, $r0, 0
	j	cont.19602
bne.19603:
cont.19602:
cont.19598:
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	bgt	$r3, $r2, bgt.19605
	addi	$r3, $r0, 0
	j	cont.19604
bgt.19605:
	addi	$r3, $r0, 1
cont.19604:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19607
	sll	$r3, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	addi	$r4, $r0, 0
	swcl	$f0, 640($r4)
	lwcl	$f0, 4($r3)
	addi	$r4, $r0, 4
	swcl	$f0, 640($r4)
	lwcl	$f0, 8($r3)
	addi	$r3, $r0, 8
	swcl	$f0, 640($r3)
	addi	$r3, $r0, 4
	lw	$r3, 652($r3)
	lw	$r4, -12($r29)
	addi	$r6, $r4, 1
	bgt	$r3, $r6, bgt.19609
	addi	$r3, $r0, 0
	j	cont.19608
bgt.19609:
	addi	$r3, $r0, 1
cont.19608:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19611
	addi	$r3, $r0, 0
	bgt	$r4, $r3, bgt.19613
	addi	$r3, $r0, 0
	j	cont.19612
bgt.19613:
	addi	$r3, $r0, 1
cont.19612:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19615
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	addi	$r6, $r2, 1
	bgt	$r3, $r6, bgt.19617
	addi	$r3, $r0, 0
	j	cont.19616
bgt.19617:
	addi	$r3, $r0, 1
cont.19616:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19619
	addi	$r3, $r0, 0
	bgt	$r2, $r3, bgt.19621
	addi	$r3, $r0, 0
	j	cont.19620
bgt.19621:
	addi	$r3, $r0, 1
cont.19620:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19623
	addi	$r3, $r0, 1
	j	cont.19622
bne.19623:
	addi	$r3, $r0, 0
cont.19622:
	j	cont.19618
bne.19619:
	addi	$r3, $r0, 0
cont.19618:
	j	cont.19614
bne.19615:
	addi	$r3, $r0, 0
cont.19614:
	j	cont.19610
bne.19611:
	addi	$r3, $r0, 0
cont.19610:
	addi	$r6, $r0, 1
	sw	$r2, -32($r29)
	bne	$r3, $r6, bne.19625
	addi	$r7, $r0, 0
	lw	$r3, -8($r29)
	lw	$r6, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	try_exploit_neighbors.6111
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.19624
bne.19625:
	sll	$r3, $r2, 2
	addu	$r1, $r5, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r6, $r0, 0
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	do_without_neighbors.6052
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
cont.19624:
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	write_rgb.6164
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.6283
bne.19607:
	jr	$r31
bne.19543:
	jr	$r31
scan_line.6306:
	addi	$r7, $r0, 4
	lw	$r7, 652($r7)
	bgt	$r7, $r2, bgt.19627
	addi	$r7, $r0, 0
	j	cont.19626
bgt.19627:
	addi	$r7, $r0, 1
cont.19626:
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19629
	addi	$r7, $r0, 4
	lw	$r7, 652($r7)
	addi	$r7, $r7, -1
	bgt	$r7, $r2, bgt.19631
	addi	$r7, $r0, 0
	j	cont.19630
bgt.19631:
	addi	$r7, $r0, 1
cont.19630:
	addi	$r8, $r0, 1
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	bne	$r7, $r8, bne.19633
	addi	$r7, $r2, 1
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	pretrace_line.6250
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19632
bne.19633:
cont.19632:
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	bgt	$r3, $r2, bgt.19635
	addi	$r3, $r0, 0
	j	cont.19634
bgt.19635:
	addi	$r3, $r0, 1
cont.19634:
	addi	$r4, $r0, 1
	bne	$r3, $r4, bne.19637
	lw	$r5, -20($r29)
	lw	$r3, 0($r5)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	addi	$r4, $r0, 0
	swcl	$f0, 640($r4)
	lwcl	$f0, 4($r3)
	addi	$r4, $r0, 4
	swcl	$f0, 640($r4)
	lwcl	$f0, 8($r3)
	addi	$r3, $r0, 8
	swcl	$f0, 640($r3)
	addi	$r3, $r0, 4
	lw	$r3, 652($r3)
	lw	$r4, -16($r29)
	addi	$r6, $r4, 1
	bgt	$r3, $r6, bgt.19639
	addi	$r3, $r0, 0
	j	cont.19638
bgt.19639:
	addi	$r3, $r0, 1
cont.19638:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19641
	addi	$r3, $r0, 0
	bgt	$r4, $r3, bgt.19643
	addi	$r3, $r0, 0
	j	cont.19642
bgt.19643:
	addi	$r3, $r0, 1
cont.19642:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19645
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	addi	$r6, $r0, 1
	bgt	$r3, $r6, bgt.19647
	addi	$r3, $r0, 0
	j	cont.19646
bgt.19647:
	addi	$r3, $r0, 1
cont.19646:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19649
	addi	$r3, $r0, 0
	j	cont.19648
bne.19649:
	addi	$r3, $r0, 0
cont.19648:
	j	cont.19644
bne.19645:
	addi	$r3, $r0, 0
cont.19644:
	j	cont.19640
bne.19641:
	addi	$r3, $r0, 0
cont.19640:
	addi	$r6, $r0, 1
	bne	$r3, $r6, bne.19651
	addi	$r7, $r0, 0
	lw	$r3, -12($r29)
	lw	$r6, -8($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	try_exploit_neighbors.6111
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19650
bne.19651:
	lw	$r2, 0($r5)
	addi	$r3, $r0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	do_without_neighbors.6052
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
cont.19650:
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	write_rgb.6164
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	scan_pixel.6283
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19636
bne.19637:
cont.19636:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r2, bgt.19653
	addi	$r4, $r2, -5
	j	cont.19652
bgt.19653:
	addi	$r4, $r2, 0
cont.19652:
	addi	$r2, $r0, 4
	lw	$r2, 652($r2)
	bgt	$r2, $r3, bgt.19655
	addi	$r2, $r0, 0
	j	cont.19654
bgt.19655:
	addi	$r2, $r0, 1
cont.19654:
	addi	$r5, $r0, 1
	bne	$r2, $r5, bne.19657
	addi	$r2, $r0, 4
	lw	$r2, 652($r2)
	addi	$r2, $r2, -1
	bgt	$r2, $r3, bgt.19659
	addi	$r2, $r0, 0
	j	cont.19658
bgt.19659:
	addi	$r2, $r0, 1
cont.19658:
	addi	$r5, $r0, 1
	sw	$r4, -24($r29)
	sw	$r3, -28($r29)
	bne	$r2, $r5, bne.19661
	addi	$r2, $r3, 1
	lw	$r5, -12($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	pretrace_line.6250
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	j	cont.19660
bne.19661:
cont.19660:
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	lw	$r4, -20($r29)
	lw	$r5, -8($r29)
	lw	$r6, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	scan_pixel.6283
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -24($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, bgt.19663
	addi	$r6, $r3, -5
	j	cont.19662
bgt.19663:
	addi	$r6, $r3, 0
cont.19662:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.6306
bne.19657:
	jr	$r31
bne.19629:
	jr	$r31
create_pixel.6358:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r3, -8($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
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
init_line_elements.6380:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.19665
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -16($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -16($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -16($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r3, -16($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r3, -28($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r3, -28($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r3, -28($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r3, -28($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
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
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19667
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	create_pixel.6358
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	init_line_elements.6380
bgt.19667:
	addi	$r2, $r5, 0
	jr	$r31
bgt.19665:
	jr	$r31
calc_dirvec.6416:
	addi	$r5, $r0, 5
	bgt	$r5, $r2, bgt.19669
	mul.s	$f2, $f0, $f0
	mul.s	$f3, $f1, $f1
	add.s	$f2, $f2, $f3
	lfh	$f3, 16256
	lfl	$f3, 0
	add.s	$f2, $f2, $f3
	sqrt	$f2, $f2
	div.s	$f0, $f0, $f2
	div.s	$f1, $f1, $f2
	lfh	$f3, 16256
	lfl	$f3, 0
	div.s	$f2, $f3, $f2
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	sll	$r3, $r4, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	swcl	$f0, 0($r3)
	swcl	$f1, 4($r3)
	swcl	$f2, 8($r3)
	addi	$r3, $r4, 40
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f1
	swcl	$f0, 0($r3)
	swcl	$f2, 4($r3)
	swcl	$f3, 8($r3)
	addi	$r3, $r4, 80
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f1
	swcl	$f2, 0($r3)
	swcl	$f3, 4($r3)
	swcl	$f4, 8($r3)
	addi	$r3, $r4, 1
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f1
	fneg	$f5, $f2
	swcl	$f3, 0($r3)
	swcl	$f4, 4($r3)
	swcl	$f5, 8($r3)
	addi	$r3, $r4, 41
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	lw	$r3, 0($r3)
	fneg	$f3, $f0
	fneg	$f4, $f2
	swcl	$f3, 0($r3)
	swcl	$f4, 4($r3)
	swcl	$f1, 8($r3)
	addi	$r3, $r4, 81
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3	!ld var
	lw	$r2, 0($r1)	!ld var
	lw	$r2, 0($r2)
	fneg	$f2, $f2
	swcl	$f2, 0($r2)
	swcl	$f0, 4($r2)
	swcl	$f1, 8($r2)
	jr	$r31
bgt.19669:
	mul.s	$f0, $f1, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	lfh	$f1, 16256
	lfl	$f1, 0
	div.s	$f1, $f1, $f0
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f3, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	fmove	$f0, $f1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	atan.2639
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	sin.2703
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -28($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -32($r29)
	fmove	$f0, $f1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	sin.2703
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
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
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f2, $f2, $f1
	swcl	$f0, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f1, -44($r29)
	fmove	$f0, $f2
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	atan.2639
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	sin.2703
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -48($r29)
	sub.s	$f1, $f1, $f2
	swcl	$f0, -52($r29)
	fmove	$f0, $f1
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	sin.2703
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
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
	j	calc_dirvec.6416
calc_dirvecs.6476:
	addi	$r5, $r0, 0
	bgt	$r5, $r2, bgt.19671
	sw	$r2, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lwcl	$f3, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -4($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -12($r29)
	addi	$r4, $r3, 2
	lw	$r5, -16($r29)
	lwcl	$f3, -8($r29)
	addi	$r3, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -16($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r3, bgt.19673
	addi	$r3, $r3, -5
	j	cont.19672
bgt.19673:
cont.19672:
	addi	$r4, $r0, 0
	bgt	$r4, $r2, bgt.19675
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -24($r29)
	lw	$r4, -12($r29)
	lwcl	$f3, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -20($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -12($r29)
	addi	$r4, $r3, 2
	lw	$r5, -24($r29)
	lwcl	$f3, -8($r29)
	addi	$r3, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r2, -20($r29)
	addi	$r2, $r2, -1
	lw	$r3, -24($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r3, bgt.19677
	addi	$r3, $r3, -5
	j	cont.19676
bgt.19677:
cont.19676:
	lw	$r4, -12($r29)
	lwcl	$f0, -8($r29)
	j	calc_dirvecs.6476
bgt.19675:
	jr	$r31
bgt.19671:
	jr	$r31
calc_dirvec_rows.6506:
	addi	$r5, $r0, 0
	bgt	$r5, $r2, bgt.19679
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lwcl	$f3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -16($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	lfh	$f1, 0
	lfl	$f1, 0
	lw	$r3, -8($r29)
	addi	$r4, $r3, 2
	lw	$r5, -12($r29)
	lwcl	$f3, -20($r29)
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	calc_dirvec.6416
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 5
	bgt	$r5, $r4, bgt.19681
	addi	$r4, $r4, -5
	j	cont.19680
bgt.19681:
cont.19680:
	lw	$r5, -8($r29)
	lwcl	$f0, -20($r29)
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	calc_dirvecs.6476
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, bgt.19683
	addi	$r3, $r3, -5
	j	cont.19682
bgt.19683:
cont.19682:
	lw	$r4, -8($r29)
	addi	$r4, $r4, 4
	addi	$r5, $r0, 0
	bgt	$r5, $r2, bgt.19685
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -32($r29)
	lw	$r4, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	calc_dirvecs.6476
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r2, -24($r29)
	addi	$r2, $r2, -1
	lw	$r3, -32($r29)
	addi	$r3, $r3, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r3, bgt.19687
	addi	$r3, $r3, -5
	j	cont.19686
bgt.19687:
cont.19686:
	lw	$r4, -28($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6506
bgt.19685:
	jr	$r31
bgt.19679:
	jr	$r31
create_dirvec_elements.6532:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.19689
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -12($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19691
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -20($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19693
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -28($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r2, $r3, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19695
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -36($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	create_dirvec_elements.6532
bgt.19695:
	jr	$r31
bgt.19693:
	jr	$r31
bgt.19691:
	jr	$r31
bgt.19689:
	jr	$r31
create_dirvecs.6541:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19697
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -12($r29)
	sw	$r2, 0($r3)
	lw	$r2, -8($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -16($r29)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -20($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -24($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
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
	addi	$r29, $r29, -32	!..
	jal	create_dirvec_elements.6532
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19699
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -32($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -40($r29)
	sw	$r2, 0($r3)
	lw	$r2, -36($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -48($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
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
	addi	$r29, $r29, -56	!..
	jal	create_dirvec_elements.6532
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r2, -32($r29)
	addi	$r2, $r2, -1
	j	create_dirvecs.6541
bgt.19699:
	jr	$r31
bgt.19697:
	jr	$r31
init_dirvec_constants.6554:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, bgt.19701
	sll	$r4, $r3, 2
	addu	$r1, $r2, $r4	!ld var
	lw	$r4, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19703
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r2, -12($r29)
	bgt	$r6, $r5, bgt.19705
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r3, -16($r29)
	bne	$r9, $r10, bne.19707
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19706
bne.19707:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19709
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19708
bne.19709:
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19708:
cont.19706:
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	j	cont.19704
bgt.19705:
cont.19704:
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19711
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	lw	$r2, -28($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19713
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	addu	$r1, $r4, $r3	!ld var
	lw	$r3, 0($r1)	!ld var
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r2, -32($r29)
	bgt	$r6, $r5, bgt.19715
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r3, -36($r29)
	bne	$r9, $r10, bne.19717
	sw	$r7, -40($r29)
	sw	$r5, -44($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19716
bne.19717:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19719
	sw	$r7, -40($r29)
	sw	$r5, -44($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19718
bne.19719:
	sw	$r7, -40($r29)
	sw	$r5, -44($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19718:
cont.19716:
	addi	$r3, $r3, -1
	lw	$r2, -36($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!..
	j	cont.19714
bgt.19715:
cont.19714:
	lw	$r2, -32($r29)
	addi	$r3, $r2, -1
	lw	$r2, -4($r29)
	j	init_dirvec_constants.6554
bgt.19713:
	jr	$r31
bgt.19711:
	jr	$r31
bgt.19703:
	jr	$r31
bgt.19701:
	jr	$r31
init_vecset_constants.6562:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19721
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bgt	$r6, $r5, bgt.19723
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r4, -12($r29)
	bne	$r9, $r10, bne.19725
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19724
bne.19725:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19727
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19726
bne.19727:
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19726:
cont.19724:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	j	cont.19722
bgt.19723:
cont.19722:
	lw	$r2, -8($r29)
	lw	$r3, 472($r2)
	addi	$r4, $r0, 0
	lw	$r4, 28($r4)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r2, -8($r29)
	lw	$r3, 468($r2)
	addi	$r4, $r0, 0
	lw	$r4, 28($r4)
	addi	$r4, $r4, -1
	addi	$r5, $r0, 0
	bgt	$r5, $r4, bgt.19729
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	addi	$r9, $r0, 1
	sw	$r3, -24($r29)
	bne	$r8, $r9, bne.19731
	sw	$r6, -28($r29)
	sw	$r4, -32($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19730
bne.19731:
	addi	$r9, $r0, 2
	bne	$r8, $r9, bne.19733
	sw	$r6, -28($r29)
	sw	$r4, -32($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19732
bne.19733:
	sw	$r6, -28($r29)
	sw	$r4, -32($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19732:
cont.19730:
	addi	$r3, $r3, -1
	lw	$r2, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.19728
bgt.19729:
cont.19728:
	addi	$r3, $r0, 116
	lw	$r2, -8($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19735
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r2, -40($r29)
	lw	$r3, 472($r2)
	addi	$r4, $r0, 0
	lw	$r4, 28($r4)
	addi	$r4, $r4, -1
	addi	$r5, $r0, 0
	bgt	$r5, $r4, bgt.19737
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	addi	$r9, $r0, 1
	sw	$r3, -44($r29)
	bne	$r8, $r9, bne.19739
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19738
bne.19739:
	addi	$r9, $r0, 2
	bne	$r8, $r9, bne.19741
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19740
bne.19741:
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19740:
cont.19738:
	addi	$r3, $r3, -1
	lw	$r2, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	j	cont.19736
bgt.19737:
cont.19736:
	addi	$r3, $r0, 117
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r2, -36($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19743
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	bgt	$r6, $r5, bgt.19745
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r4, -64($r29)
	bne	$r9, $r10, bne.19747
	sw	$r7, -68($r29)
	sw	$r5, -72($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19746
bne.19747:
	addi	$r10, $r0, 2
	bne	$r9, $r10, bne.19749
	sw	$r7, -68($r29)
	sw	$r5, -72($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19748
bne.19749:
	sw	$r7, -68($r29)
	sw	$r5, -72($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19748:
cont.19746:
	addi	$r3, $r3, -1
	lw	$r2, -64($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	j	cont.19744
bgt.19745:
cont.19744:
	addi	$r3, $r0, 118
	lw	$r2, -60($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!..
	lw	$r2, -56($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19751
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	addi	$r4, $r0, 119
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	lw	$r2, -76($r29)
	addi	$r2, $r2, -1
	j	init_vecset_constants.6562
bgt.19751:
	jr	$r31
bgt.19743:
	jr	$r31
bgt.19735:
	jr	$r31
bgt.19721:
	jr	$r31
setup_rect_reflection.6592:
	sll	$r2, $r2, 2
	addi	$r4, $r0, 0
	lw	$r4, 1796($r4)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, 28($r3)
	lwcl	$f1, 0($r3)
	sub.s	$f0, $f0, $f1
	addi	$r3, $r0, 0
	lwcl	$f1, 344($r3)
	fneg	$f1, $f1
	addi	$r3, $r0, 4
	lwcl	$f2, 344($r3)
	fneg	$f2, $f2
	addi	$r3, $r0, 8
	lwcl	$f3, 344($r3)
	fneg	$f3, $f3
	addi	$r3, $r2, 1
	addi	$r5, $r0, 0
	lwcl	$f4, 344($r5)
	addi	$r5, $r0, 3
	lfh	$f5, 0
	lfl	$f5, 0
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
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
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
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -40($r29)
	bgt	$r6, $r5, bgt.19753
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19755
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19754
bne.19755:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.19757
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19756
bne.19757:
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19756:
cont.19754:
	addi	$r3, $r3, -1
	lw	$r2, -40($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!..
	j	cont.19752
bgt.19753:
cont.19752:
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
	addi	$r6, $r0, 4
	lwcl	$f1, 344($r6)
	addi	$r6, $r0, 3
	lfh	$f2, 0
	lfl	$f2, 0
	sw	$r2, -52($r29)
	sw	$r5, -56($r29)
	swcl	$f1, -60($r29)
	addi	$r2, $r6, 0
	fmove	$f0, $f2
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -64($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f1, -60($r29)
	swcl	$f1, 4($r4)
	lwcl	$f1, -24($r29)
	swcl	$f1, 8($r4)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -68($r29)
	bgt	$r6, $r5, bgt.19759
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19761
	sw	$r2, -72($r29)
	sw	$r5, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19760
bne.19761:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.19763
	sw	$r2, -72($r29)
	sw	$r5, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19762
bne.19763:
	sw	$r2, -72($r29)
	sw	$r5, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19762:
cont.19760:
	addi	$r3, $r3, -1
	lw	$r2, -68($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!..
	j	cont.19758
bgt.19759:
cont.19758:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -68($r29)
	sw	$r3, 4($r2)
	lw	$r3, -56($r29)
	sw	$r3, 0($r2)
	lw	$r3, -52($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r3, $r2, 2
	lw	$r4, -8($r29)
	addi	$r4, $r4, 3
	addi	$r5, $r0, 8
	lwcl	$f1, 344($r5)
	addi	$r5, $r0, 3
	lfh	$f2, 0
	lfl	$f2, 0
	sw	$r3, -80($r29)
	sw	$r4, -84($r29)
	swcl	$f1, -88($r29)
	addi	$r2, $r5, 0
	fmove	$f0, $f2
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -92($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!..
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -92($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -4($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -28($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -88($r29)
	swcl	$f0, 8($r4)
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -96($r29)
	bgt	$r6, $r5, bgt.19765
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19767
	sw	$r2, -100($r29)
	sw	$r5, -104($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19766
bne.19767:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.19769
	sw	$r2, -100($r29)
	sw	$r5, -104($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19768
bne.19769:
	sw	$r2, -100($r29)
	sw	$r5, -104($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -100($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19768:
cont.19766:
	addi	$r3, $r3, -1
	lw	$r2, -96($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!..
	j	cont.19764
bgt.19765:
cont.19764:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -96($r29)
	sw	$r3, 4($r2)
	lw	$r3, -84($r29)
	sw	$r3, 0($r2)
	lw	$r3, -80($r29)
	sll	$r3, $r3, 2
	sw	$r2, 1076($r3)
	lw	$r2, -12($r29)
	addi	$r2, $r2, 3
	addi	$r3, $r0, 0
	sw	$r2, 1796($r3)
	jr	$r31
setup_surface_reflection.6632:
	sll	$r2, $r2, 2
	addi	$r2, $r2, 1
	addi	$r4, $r0, 0
	lw	$r4, 1796($r4)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r5, 28($r3)
	lwcl	$f1, 0($r5)
	sub.s	$f0, $f0, $f1
	lw	$r5, 16($r3)
	addi	$r6, $r0, 0
	lwcl	$f1, 344($r6)
	lwcl	$f2, 0($r5)
	mul.s	$f1, $f1, $f2
	addi	$r6, $r0, 4
	lwcl	$f2, 344($r6)
	lwcl	$f3, 4($r5)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	addi	$r6, $r0, 8
	lwcl	$f2, 344($r6)
	lwcl	$f3, 8($r5)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lfh	$f2, 16384
	lfl	$f2, 0
	lw	$r5, 16($r3)
	lwcl	$f3, 0($r5)
	mul.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f1
	addi	$r5, $r0, 0
	lwcl	$f3, 344($r5)
	sub.s	$f2, $f2, $f3
	lfh	$f3, 16384
	lfl	$f3, 0
	lw	$r5, 16($r3)
	lwcl	$f4, 4($r5)
	mul.s	$f3, $f3, $f4
	mul.s	$f3, $f3, $f1
	addi	$r5, $r0, 4
	lwcl	$f4, 344($r5)
	sub.s	$f3, $f3, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	lw	$r3, 16($r3)
	lwcl	$f5, 8($r3)
	mul.s	$f4, $f4, $f5
	mul.s	$f1, $f4, $f1
	addi	$r3, $r0, 8
	lwcl	$f4, 344($r3)
	sub.s	$f1, $f1, $f4
	addi	$r3, $r0, 3
	lfh	$f4, 0
	lfl	$f4, 0
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	swcl	$f1, -16($r29)
	swcl	$f3, -20($r29)
	swcl	$f2, -24($r29)
	addi	$r2, $r3, 0
	fmove	$f0, $f4
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	sw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
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
	addi	$r5, $r0, 0
	lw	$r5, 28($r5)
	addi	$r5, $r5, -1
	addi	$r6, $r0, 0
	sw	$r3, -32($r29)
	bgt	$r6, $r5, bgt.19771
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r6)
	addi	$r8, $r0, 1
	bne	$r7, $r8, bne.19773
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19772
bne.19773:
	addi	$r8, $r0, 2
	bne	$r7, $r8, bne.19775
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19774
bne.19775:
	sw	$r2, -36($r29)
	sw	$r5, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19774:
cont.19772:
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!..
	j	cont.19770
bgt.19771:
cont.19770:
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
	addi	$r3, $r0, 0
	sw	$r2, 1796($r3)
	jr	$r31
rt.6683:
	addi	$r4, $r0, 0
	sw	$r2, 652($r4)
	addi	$r4, $r0, 4
	sw	$r3, 652($r4)
	sra	$r4, $r2, 1
	addi	$r5, $r0, 0
	sw	$r4, 660($r5)
	sra	$r3, $r3, 1
	addi	$r4, $r0, 4
	sw	$r3, 660($r4)
	lfh	$f0, 17152
	lfl	$f0, 0
	swcl	$f0, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_float_of_int
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lwcl	$f1, -4($r29)
	div.s	$f0, $f1, $f0
	addi	$r2, $r0, 0
	swcl	$f0, 668($r2)
	addi	$r2, $r0, 0
	lw	$r2, 652($r2)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	create_pixel.6358
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	addi	$r3, $r3, -2
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	init_line_elements.6380
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	create_pixel.6358
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	addi	$r3, $r3, -2
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	init_line_elements.6380
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	create_pixel.6358
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	addi	$r3, $r0, 0
	lw	$r3, 652($r3)
	addi	$r3, $r3, -2
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!..
	jal	init_line_elements.6380
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!..
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_screen_settings.3934
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!..
	jal	read_light.4012
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!..
	addi	$r2, $r0, 0
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	read_nth_object.4151
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, 1
	bne	$r2, $r3, bne.19777
	addi	$r2, $r0, 1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	read_object.4287
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.19776
bne.19777:
	addi	$r2, $r0, 0
	lw	$r3, -32($r29)
	sw	$r3, 28($r2)
cont.19776:
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 4($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 0
	sw	$r2, 8($r3)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	read_int_token.2749
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	addi	$r3, $r0, -1
	bne	$r2, $r3, bne.19779
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!..
	j	cont.19778
bne.19779:
	addi	$r3, $r0, 1
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r3, -36($r29)
	sw	$r3, 0($r2)
cont.19778:
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19781
	j	cont.19780
bne.19781:
	addi	$r3, $r0, 0
	sw	$r2, 364($r3)
	addi	$r2, $r0, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_net_item.4300
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	lw	$r3, 0($r2)
	addi	$r4, $r0, -1
	bne	$r3, $r4, bne.19783
	j	cont.19782
bne.19783:
	addi	$r3, $r0, 4
	sw	$r2, 364($r3)
	addi	$r2, $r0, 2
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_and_network.4328
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
cont.19782:
cont.19780:
	addi	$r2, $r0, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	read_or_network.4314
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r3, $r0, 0
	sw	$r2, 572($r3)
	addi	$r2, $r0, 80
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 54
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 10
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 652($r2)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	print_int.2964
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 32
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 4
	lw	$r2, 652($r2)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	print_int.2964
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 32
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 255
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	print_int.2964
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 10
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	min_caml_print_char
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 4
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	create_dirvecs.6541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!..
	jal	calc_dirvec_rows.6506
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!..
	addi	$r2, $r0, 16
	lw	$r2, 764($r2)
	lw	$r3, 476($r2)
	addi	$r4, $r0, 0
	lw	$r4, 28($r4)
	addi	$r4, $r4, -1
	addi	$r5, $r0, 0
	sw	$r2, -40($r29)
	bgt	$r5, $r4, bgt.19785
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	addi	$r9, $r0, 1
	sw	$r3, -44($r29)
	bne	$r8, $r9, bne.19787
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_rect_table.4822
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19786
bne.19787:
	addi	$r9, $r0, 2
	bne	$r8, $r9, bne.19789
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_surface_table.4891
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
	j	cont.19788
bne.19789:
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_second_table.4935
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4	!st var
	sw	$r2, 0($r1)	!st var
cont.19788:
cont.19786:
	addi	$r3, $r3, -1
	lw	$r2, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	j	cont.19784
bgt.19785:
cont.19784:
	addi	$r3, $r0, 118
	lw	$r2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r2, $r0, 12
	lw	$r2, 764($r2)
	addi	$r3, $r0, 119
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	init_dirvec_constants.6554
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r2, $r0, 2
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	init_vecset_constants.6562
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r2, $r0, 0
	lwcl	$f0, 344($r2)
	addi	$r2, $r0, 0
	swcl	$f0, 788($r2)
	addi	$r2, $r0, 4
	lwcl	$f0, 344($r2)
	addi	$r2, $r0, 4
	swcl	$f0, 788($r2)
	addi	$r2, $r0, 8
	lwcl	$f0, 344($r2)
	addi	$r2, $r0, 8
	swcl	$f0, 788($r2)
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 1040
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	iter_setup_dirvec_constants.5021
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r2, $r0, 0
	lw	$r2, 28($r2)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	bgt	$r3, $r2, bgt.19791
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	addi	$r5, $r0, 2
	bne	$r4, $r5, bne.19793
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	lfh	$f1, 16256
	lfl	$f1, 0
	c.le.s	$f1, $f0
	bclf	bclf.19795
	addi	$r4, $r0, 0
	j	cont.19794
bclf.19795:
	addi	$r4, $r0, 1
cont.19794:
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19797
	lw	$r4, 4($r3)
	addi	$r5, $r0, 1
	bne	$r4, $r5, bne.19799
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_rect_reflection.6592
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	j	cont.19798
bne.19799:
	addi	$r5, $r0, 2
	bne	$r4, $r5, bne.19801
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	setup_surface_reflection.6632
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	j	cont.19800
bne.19801:
cont.19800:
cont.19798:
	j	cont.19796
bne.19797:
cont.19796:
	j	cont.19792
bne.19793:
cont.19792:
	j	cont.19790
bgt.19791:
cont.19790:
	addi	$r3, $r0, 0
	addi	$r4, $r0, 0
	lw	$r2, -20($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!..
	jal	pretrace_line.6250
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!..
	addi	$r3, $r0, 0
	addi	$r4, $r0, 2
	addi	$r2, $r0, 4
	lw	$r2, 652($r2)
	bgt	$r2, $r3, bgt.19803
	addi	$r2, $r0, 0
	j	cont.19802
bgt.19803:
	addi	$r2, $r0, 1
cont.19802:
	addi	$r5, $r0, 1
	bne	$r2, $r5, bne.19805
	addi	$r2, $r0, 4
	lw	$r2, 652($r2)
	addi	$r2, $r2, -1
	bgt	$r2, $r3, bgt.19807
	addi	$r2, $r0, 0
	j	cont.19806
bgt.19807:
	addi	$r2, $r0, 1
cont.19806:
	addi	$r5, $r0, 1
	sw	$r3, -56($r29)
	bne	$r2, $r5, bne.19809
	addi	$r2, $r0, 1
	lw	$r5, -28($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!..
	jal	pretrace_line.6250
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!..
	j	cont.19808
bne.19809:
cont.19808:
	addi	$r2, $r0, 0
	lw	$r3, -56($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	lw	$r6, -28($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!..
	jal	scan_pixel.6283
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!..
	addi	$r2, $r0, 1
	addi	$r6, $r0, 4
	lw	$r3, -20($r29)
	lw	$r4, -28($r29)
	lw	$r5, -12($r29)
	j	scan_line.6306
bne.19805:
	jr	$r31
min_caml_start:
	ori	$r30, $r0, 1800
	lui	$r29, 64
	ori	$r29, $r29, 0
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 4
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 8
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 12
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 16
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 1
	sw	$r30, 0($r0)
	addi	$r30, $r0, 20
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 24
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 28
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 32
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
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
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 320
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 332
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 344
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 17279
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 356
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!..
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
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 364
	addi	$r3, $r0, 360
	lw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 1
	addi	$r4, $r0, 0
	lw	$r4, 364($r4)
	sw	$r4, 564($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 568
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 572
	addi	$r3, $r0, 568
	lw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 576
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 580
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 20078
	lfl	$f0, 27432
	sw	$r30, 0($r0)
	addi	$r30, $r0, 584
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 588
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 600
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 604
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 616
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 628
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 640
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 2
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 652
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 2
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 660
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 668
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 672
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 684
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 696
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 708
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 720
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 732
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 744
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!..
	lw	$r30, 0($r0)
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 748
	addi	$r4, $r0, 744
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
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
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 764
	addi	$r3, $r0, 760
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 0
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 784
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 788
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!..
	lw	$r30, 0($r0)
	addi	$r3, $r0, 60
	sw	$r30, 0($r0)
	addi	$r30, $r0, 800
	addi	$r4, $r0, 784
	sw	$r2, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
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
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1048
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!..
	jal	min_caml_create_float_array
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!..
	lw	$r30, 0($r0)
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1052
	addi	$r4, $r0, 1048
	sw	$r2, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
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
	lfh	$f0, 0
	lfl	$f0, 0
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
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 1796
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
	lw	$r30, 0($r0)
	addi	$r2, $r0, 128
	addi	$r3, $r0, 128
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!..
	jal	rt.6683
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!..
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

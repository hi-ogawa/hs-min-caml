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
	bclf	bclf.55257
	sub.s	$f3, $f0, $f31
	mul.s	$f4, $f0, $f0
	mul.s	$f4, $f4, $f1
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f31
	add.s	$f0, $f0, $f2
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.55259
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.55261
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.55263
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.55265
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.55267
	sub.s	$f2, $f3, $f31
	mul.s	$f4, $f3, $f3
	mul.s	$f4, $f4, $f1
	add.s	$f3, $f3, $f3
	add.s	$f3, $f3, $f31
	add.s	$f0, $f3, $f0
	div.s	$f0, $f4, $f0
	lfh	$f3, 16128
	c.le.s	$f3, $f2
	bclf	bclf.55269
	sub.s	$f3, $f2, $f31
	mul.s	$f4, $f2, $f2
	mul.s	$f4, $f4, $f1
	add.s	$f2, $f2, $f2
	add.s	$f2, $f2, $f31
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	lfh	$f2, 16128
	c.le.s	$f2, $f3
	bclf	bclf.55271
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
bclf.55271:
	jr	$r31
bclf.55269:
	jr	$r31
bclf.55267:
	jr	$r31
bclf.55265:
	jr	$r31
bclf.55263:
	jr	$r31
bclf.55261:
	jr	$r31
bclf.55259:
	jr	$r31
bclf.55257:
	fmove	$f0, $f2
	jr	$r31
sin_sub.2460:
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55273
	c.le.s	$f30, $f0
	bclf	bclf.55275
	jr	$r31
bclf.55275:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55277
	c.le.s	$f30, $f0
	bclf	bclf.55279
	jr	$r31
bclf.55279:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55281
	c.le.s	$f30, $f0
	bclf	bclf.55283
	jr	$r31
bclf.55283:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55285
	c.le.s	$f30, $f0
	bclf	bclf.55287
	jr	$r31
bclf.55287:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55285:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55281:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55289
	c.le.s	$f30, $f0
	bclf	bclf.55291
	jr	$r31
bclf.55291:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55289:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55277:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55293
	c.le.s	$f30, $f0
	bclf	bclf.55295
	jr	$r31
bclf.55295:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55297
	c.le.s	$f30, $f0
	bclf	bclf.55299
	jr	$r31
bclf.55299:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55297:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55293:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55301
	c.le.s	$f30, $f0
	bclf	bclf.55303
	jr	$r31
bclf.55303:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55301:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55273:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55305
	c.le.s	$f30, $f0
	bclf	bclf.55307
	jr	$r31
bclf.55307:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55309
	c.le.s	$f30, $f0
	bclf	bclf.55311
	jr	$r31
bclf.55311:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55313
	c.le.s	$f30, $f0
	bclf	bclf.55315
	jr	$r31
bclf.55315:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55313:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55309:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55317
	c.le.s	$f30, $f0
	bclf	bclf.55319
	jr	$r31
bclf.55319:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55317:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55305:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55321
	c.le.s	$f30, $f0
	bclf	bclf.55323
	jr	$r31
bclf.55323:
	add.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55325
	c.le.s	$f30, $f0
	bclf	bclf.55327
	jr	$r31
bclf.55327:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55325:
	sub.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55321:
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16585
	lfl	$f1, 4059
	c.le.s	$f0, $f1
	bclf	bclf.55329
	c.le.s	$f30, $f0
	bclf	bclf.55331
	jr	$r31
bclf.55331:
	add.s	$f0, $f0, $f1
	j	sin_sub.2460
bclf.55329:
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
	bclf	bclf.55333
	addi	$r2, $r0, 0
	j	cont.55332
bclf.55333:
	addi	$r2, $r0, 1
cont.55332:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f1, -20($r29)
	c.le.s	$f4, $f5
	bclf	bclf.55335
	c.le.s	$f30, $f4
	bclf	bclf.55337
	fmove	$f0, $f4
	j	cont.55336
bclf.55337:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55339
	c.le.s	$f30, $f4
	bclf	bclf.55341
	fmove	$f0, $f4
	j	cont.55340
bclf.55341:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55343
	c.le.s	$f30, $f4
	bclf	bclf.55345
	fmove	$f0, $f4
	j	cont.55344
bclf.55345:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55344:
	j	cont.55342
bclf.55343:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55342:
cont.55340:
	j	cont.55338
bclf.55339:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55347
	c.le.s	$f30, $f4
	bclf	bclf.55349
	fmove	$f0, $f4
	j	cont.55348
bclf.55349:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55348:
	j	cont.55346
bclf.55347:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55346:
cont.55338:
cont.55336:
	j	cont.55334
bclf.55335:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55351
	c.le.s	$f30, $f4
	bclf	bclf.55353
	fmove	$f0, $f4
	j	cont.55352
bclf.55353:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55355
	c.le.s	$f30, $f4
	bclf	bclf.55357
	fmove	$f0, $f4
	j	cont.55356
bclf.55357:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55356:
	j	cont.55354
bclf.55355:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55354:
cont.55352:
	j	cont.55350
bclf.55351:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.55359
	c.le.s	$f30, $f4
	bclf	bclf.55361
	fmove	$f0, $f4
	j	cont.55360
bclf.55361:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55360:
	j	cont.55358
bclf.55359:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.55358:
cont.55350:
cont.55334:
	lwcl	$f1, -20($r29)
	c.le.s	$f0, $f1
	bclf	bclf.55363
	lw	$r2, -16($r29)
	j	cont.55362
bclf.55363:
	lwcl	$f2, -12($r29)
	c.le.s	$f2, $f30
	bclf	bclf.55365
	addi	$r2, $r0, 1
	j	cont.55364
bclf.55365:
	addi	$r2, $r0, 0
cont.55364:
cont.55362:
	c.le.s	$f0, $f1
	bclf	bclf.55367
	j	cont.55366
bclf.55367:
	lwcl	$f2, -8($r29)
	sub.s	$f0, $f2, $f0
cont.55366:
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	bclf.55369
	j	cont.55368
bclf.55369:
	sub.s	$f0, $f1, $f0
cont.55368:
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
	bnei	$r2, 1, bnei.55371
	jr	$r31
bnei.55371:
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
	bgt	$r3, $r2, bgt.55373
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55375
	addi	$r3, $r0, 0
	j	cont.55374
bgt.55375:
	addi	$r3, $r0, 1
cont.55374:
	j	cont.55372
bgt.55373:
	addi	$r3, $r0, 1
cont.55372:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55377
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.55379
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.55381
	lw	$r2, 4($r0)
	jr	$r31
bnei.55381:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.55379:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.55383
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.55385
	addi	$r2, $r0, 0
	j	cont.55384
bgt.55385:
	addi	$r2, $r0, 1
cont.55384:
	j	cont.55382
bgt.55383:
	addi	$r2, $r0, 1
cont.55382:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.55387
	addi	$r2, $r0, 0
	j	read_int_token.2507
bnei.55387:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.55389
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.55391
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	j	cont.55390
bne.55391:
	sw	$r4, 8($r0)
cont.55390:
	j	cont.55388
bnei.55389:
cont.55388:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	j	read_int_token.2507
bnei.55377:
	lw	$r3, 8($r0)
	bnei	$r3, 0, bnei.55393
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.55395
	addi	$r3, $r0, -1
	sw	$r3, 8($r0)
	j	cont.55394
bne.55395:
	sw	$r4, 8($r0)
cont.55394:
	j	cont.55392
bnei.55393:
cont.55392:
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
	bgt	$r2, $r3, bgt.55397
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.55399
	addi	$r2, $r0, 0
	j	cont.55398
bgt.55399:
	addi	$r2, $r0, 1
cont.55398:
	j	cont.55396
bgt.55397:
	addi	$r2, $r0, 1
cont.55396:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.55401
	lw	$r2, 8($r0)
	bnei	$r2, 1, bnei.55403
	lw	$r2, 4($r0)
	jr	$r31
bnei.55403:
	lw	$r2, 4($r0)
	subu	$r2, $r0, $r2
	jr	$r31
bnei.55401:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.55405
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.55407
	addi	$r2, $r0, -1
	sw	$r2, 8($r0)
	j	cont.55406
bne.55407:
	sw	$r4, 8($r0)
cont.55406:
	j	cont.55404
bnei.55405:
cont.55404:
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
	bgt	$r3, $r2, bgt.55409
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55411
	addi	$r3, $r0, 0
	j	cont.55410
bgt.55411:
	addi	$r3, $r0, 1
cont.55410:
	j	cont.55408
bgt.55409:
	addi	$r3, $r0, 1
cont.55408:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55413
	lw	$r3, -8($r29)
	bnei	$r3, 1, bnei.55415
	jr	$r31
bnei.55415:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.55417
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.55419
	addi	$r2, $r0, 0
	j	cont.55418
bgt.55419:
	addi	$r2, $r0, 1
cont.55418:
	j	cont.55416
bgt.55417:
	addi	$r2, $r0, 1
cont.55416:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.55421
	addi	$r2, $r0, 0
	j	read_float_token1.2565
bnei.55421:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.55423
	addi	$r2, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r2, bne.55425
	addi	$r2, $r0, -1
	sw	$r2, 24($r0)
	j	cont.55424
bne.55425:
	sw	$r4, 24($r0)
cont.55424:
	j	cont.55422
bnei.55423:
cont.55422:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	j	read_float_token1.2565
bnei.55413:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.55427
	addi	$r3, $r0, 45
	lw	$r5, -4($r29)
	bne	$r5, $r3, bne.55429
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.55428
bne.55429:
	sw	$r4, 24($r0)
cont.55428:
	j	cont.55426
bnei.55427:
cont.55426:
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
	bgt	$r3, $r2, bgt.55431
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55433
	addi	$r3, $r0, 0
	j	cont.55432
bgt.55433:
	addi	$r3, $r0, 1
cont.55432:
	j	cont.55430
bgt.55431:
	addi	$r3, $r0, 1
cont.55430:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55435
	jr	$r31
bnei.55435:
	lw	$r3, 24($r0)
	bnei	$r3, 0, bnei.55437
	addi	$r3, $r0, 45
	lw	$r5, -12($r29)
	bne	$r5, $r3, bne.55439
	addi	$r3, $r0, -1
	sw	$r3, 24($r0)
	j	cont.55438
bne.55439:
	sw	$r4, 24($r0)
cont.55438:
	j	cont.55436
bnei.55437:
cont.55436:
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
	bgt	$r3, $r2, bgt.55441
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55443
	addi	$r3, $r0, 0
	j	cont.55442
bgt.55443:
	addi	$r3, $r0, 1
cont.55442:
	j	cont.55440
bgt.55441:
	addi	$r3, $r0, 1
cont.55440:
	bnei	$r3, 1, bnei.55445
	lw	$r2, -4($r29)
	bnei	$r2, 1, bnei.55447
	jr	$r31
bnei.55447:
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.55449
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55451
	addi	$r3, $r0, 0
	j	cont.55450
bgt.55451:
	addi	$r3, $r0, 1
cont.55450:
	j	cont.55448
bgt.55449:
	addi	$r3, $r0, 1
cont.55448:
	bnei	$r3, 1, bnei.55453
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.55455
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55457
	addi	$r3, $r0, 0
	j	cont.55456
bgt.55457:
	addi	$r3, $r0, 1
cont.55456:
	j	cont.55454
bgt.55455:
	addi	$r3, $r0, 1
cont.55454:
	bnei	$r3, 1, bnei.55459
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.55461
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55463
	addi	$r3, $r0, 0
	j	cont.55462
bgt.55463:
	addi	$r3, $r0, 1
cont.55462:
	j	cont.55460
bgt.55461:
	addi	$r3, $r0, 1
cont.55460:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55465
	addi	$r2, $r0, 0
	j	read_float_token2.2595
bnei.55465:
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
bnei.55459:
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
	bgt	$r3, $r2, bgt.55467
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55469
	addi	$r3, $r0, 0
	j	cont.55468
bgt.55469:
	addi	$r3, $r0, 1
cont.55468:
	j	cont.55466
bgt.55467:
	addi	$r3, $r0, 1
cont.55466:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55471
	jr	$r31
bnei.55471:
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
bnei.55453:
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
	bgt	$r3, $r2, bgt.55473
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55475
	addi	$r3, $r0, 0
	j	cont.55474
bgt.55475:
	addi	$r3, $r0, 1
cont.55474:
	j	cont.55472
bgt.55473:
	addi	$r3, $r0, 1
cont.55472:
	bnei	$r3, 1, bnei.55477
	jr	$r31
bnei.55477:
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
	bgt	$r3, $r2, bgt.55479
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55481
	addi	$r3, $r0, 0
	j	cont.55480
bgt.55481:
	addi	$r3, $r0, 1
cont.55480:
	j	cont.55478
bgt.55479:
	addi	$r3, $r0, 1
cont.55478:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55483
	jr	$r31
bnei.55483:
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
bnei.55445:
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
	bgt	$r3, $r2, bgt.55485
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55487
	addi	$r3, $r0, 0
	j	cont.55486
bgt.55487:
	addi	$r3, $r0, 1
cont.55486:
	j	cont.55484
bgt.55485:
	addi	$r3, $r0, 1
cont.55484:
	bnei	$r3, 1, bnei.55489
	jr	$r31
bnei.55489:
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
	bgt	$r3, $r2, bgt.55491
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55493
	addi	$r3, $r0, 0
	j	cont.55492
bgt.55493:
	addi	$r3, $r0, 1
cont.55492:
	j	cont.55490
bgt.55491:
	addi	$r3, $r0, 1
cont.55490:
	bnei	$r3, 1, bnei.55495
	jr	$r31
bnei.55495:
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
	bgt	$r3, $r2, bgt.55497
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.55499
	addi	$r3, $r0, 0
	j	cont.55498
bgt.55499:
	addi	$r3, $r0, 1
cont.55498:
	j	cont.55496
bgt.55497:
	addi	$r3, $r0, 1
cont.55496:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.55501
	jr	$r31
bnei.55501:
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
	bnei	$r3, 0, bnei.55503
	addi	$r2, $r0, 0
	jr	$r31
bnei.55503:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55505
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55507
	addi	$r2, $r0, 0
	jr	$r31
bnei.55507:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55509
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55511
	addi	$r2, $r0, 0
	jr	$r31
bnei.55511:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55513
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55515
	addi	$r2, $r0, 0
	jr	$r31
bnei.55515:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55517
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.55517:
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
bnei.55513:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	bnei	$r3, 0, bnei.55519
	addi	$r2, $r0, 0
	j	cont.55518
bnei.55519:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55521
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.55520
bnei.55521:
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
cont.55520:
cont.55518:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.55509:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	bnei	$r3, 0, bnei.55523
	addi	$r2, $r0, 0
	j	cont.55522
bnei.55523:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55525
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55527
	addi	$r2, $r0, 0
	j	cont.55526
bnei.55527:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55529
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.55528
bnei.55529:
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
cont.55528:
cont.55526:
	j	cont.55524
bnei.55525:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -24($r29)
	bnei	$r3, 0, bnei.55531
	addi	$r2, $r0, 0
	j	cont.55530
bnei.55531:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55533
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55532
bnei.55533:
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
cont.55532:
cont.55530:
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
cont.55524:
cont.55522:
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.55505:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -32($r29)
	bnei	$r3, 0, bnei.55535
	addi	$r2, $r0, 0
	j	cont.55534
bnei.55535:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55537
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55539
	addi	$r2, $r0, 0
	j	cont.55538
bnei.55539:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55541
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55543
	addi	$r2, $r0, 0
	j	cont.55542
bnei.55543:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55545
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.55544
bnei.55545:
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
cont.55544:
cont.55542:
	j	cont.55540
bnei.55541:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -40($r29)
	bnei	$r3, 0, bnei.55547
	addi	$r2, $r0, 0
	j	cont.55546
bnei.55547:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55549
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.55548
bnei.55549:
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
cont.55548:
cont.55546:
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
cont.55540:
cont.55538:
	j	cont.55536
bnei.55537:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -48($r29)
	bnei	$r3, 0, bnei.55551
	addi	$r2, $r0, 0
	j	cont.55550
bnei.55551:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55553
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55555
	addi	$r2, $r0, 0
	j	cont.55554
bnei.55555:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55557
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.55556
bnei.55557:
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
cont.55556:
cont.55554:
	j	cont.55552
bnei.55553:
	sll	$r6, $r5, 1
	sra	$r3, $r3, 1
	sw	$r5, -56($r29)
	bnei	$r3, 0, bnei.55559
	addi	$r2, $r0, 0
	j	cont.55558
bnei.55559:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.55561
	sll	$r6, $r6, 1
	sra	$r3, $r3, 1
	addi	$r2, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.55560
bnei.55561:
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
cont.55560:
cont.55558:
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
cont.55552:
cont.55550:
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
cont.55536:
cont.55534:
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
mul.2668:
	blti	$r3, 0, blti.55563
	bnei	$r3, 0, bnei.55565
	addi	$r2, $r0, 0
	jr	$r31
bnei.55565:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55567
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55569
	addi	$r2, $r0, 0
	jr	$r31
bnei.55569:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55571
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55573
	addi	$r2, $r0, 0
	jr	$r31
bnei.55573:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55575
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.55575:
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
bnei.55571:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -8($r29)
	bnei	$r3, 0, bnei.55577
	addi	$r2, $r0, 0
	j	cont.55576
bnei.55577:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55579
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.55578
bnei.55579:
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
cont.55578:
cont.55576:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.55567:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -16($r29)
	bnei	$r3, 0, bnei.55581
	addi	$r2, $r0, 0
	j	cont.55580
bnei.55581:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55583
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55585
	addi	$r2, $r0, 0
	j	cont.55584
bnei.55585:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55587
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.55586
bnei.55587:
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
cont.55586:
cont.55584:
	j	cont.55582
bnei.55583:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -24($r29)
	bnei	$r3, 0, bnei.55589
	addi	$r2, $r0, 0
	j	cont.55588
bnei.55589:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55591
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55590
bnei.55591:
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
cont.55590:
cont.55588:
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
cont.55582:
cont.55580:
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
blti.55563:
	subu	$r2, $r0, $r2
	subu	$r3, $r0, $r3
	bnei	$r3, 0, bnei.55593
	addi	$r2, $r0, 0
	jr	$r31
bnei.55593:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55595
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55597
	addi	$r2, $r0, 0
	jr	$r31
bnei.55597:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55599
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55601
	addi	$r2, $r0, 0
	jr	$r31
bnei.55601:
	sra	$r4, $r3, 1
	sll	$r4, $r4, 1
	subu	$r4, $r3, $r4
	bnei	$r4, 0, bnei.55603
	sll	$r2, $r2, 1
	sra	$r3, $r3, 1
	j	mul_sub.2655
bnei.55603:
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
bnei.55599:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -36($r29)
	bnei	$r3, 0, bnei.55605
	addi	$r2, $r0, 0
	j	cont.55604
bnei.55605:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55607
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.55606
bnei.55607:
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
cont.55606:
cont.55604:
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
	jr	$r31
bnei.55595:
	sll	$r4, $r2, 1
	sra	$r3, $r3, 1
	sw	$r2, -44($r29)
	bnei	$r3, 0, bnei.55609
	addi	$r2, $r0, 0
	j	cont.55608
bnei.55609:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55611
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	bnei	$r3, 0, bnei.55613
	addi	$r2, $r0, 0
	j	cont.55612
bnei.55613:
	sra	$r5, $r3, 1
	sll	$r5, $r5, 1
	subu	$r5, $r3, $r5
	bnei	$r5, 0, bnei.55615
	sll	$r4, $r4, 1
	sra	$r3, $r3, 1
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55614
bnei.55615:
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
cont.55614:
cont.55612:
	j	cont.55610
bnei.55611:
	sll	$r5, $r4, 1
	sra	$r3, $r3, 1
	sw	$r4, -52($r29)
	bnei	$r3, 0, bnei.55617
	addi	$r2, $r0, 0
	j	cont.55616
bnei.55617:
	sra	$r6, $r3, 1
	sll	$r6, $r6, 1
	subu	$r6, $r3, $r6
	bnei	$r6, 0, bnei.55619
	sll	$r5, $r5, 1
	sra	$r3, $r3, 1
	addi	$r2, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.55618
bnei.55619:
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
cont.55618:
cont.55616:
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
cont.55610:
cont.55608:
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
	blti	$r3, 0, blti.55621
	bnei	$r3, 0, bnei.55623
	addi	$r2, $r0, 0
	j	cont.55622
bnei.55623:
	sra	$r7, $r3, 1
	sll	$r7, $r7, 1
	subu	$r7, $r3, $r7
	bnei	$r7, 0, bnei.55625
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.55627
	addi	$r2, $r0, 0
	j	cont.55626
bnei.55627:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55629
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.55628
bnei.55629:
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
cont.55628:
cont.55626:
	j	cont.55624
bnei.55625:
	sll	$r7, $r6, 1
	sra	$r8, $r3, 1
	bnei	$r8, 0, bnei.55631
	addi	$r2, $r0, 0
	j	cont.55630
bnei.55631:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55633
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.55632
bnei.55633:
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
cont.55632:
cont.55630:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
cont.55624:
cont.55622:
	j	cont.55620
blti.55621:
	subu	$r7, $r0, $r6
	subu	$r8, $r0, $r3
	bnei	$r8, 0, bnei.55635
	addi	$r2, $r0, 0
	j	cont.55634
bnei.55635:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55637
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	bnei	$r8, 0, bnei.55639
	addi	$r2, $r0, 0
	j	cont.55638
bnei.55639:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55641
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.55640
bnei.55641:
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
cont.55640:
cont.55638:
	j	cont.55636
bnei.55637:
	sll	$r9, $r7, 1
	sra	$r8, $r8, 1
	sw	$r7, -36($r29)
	bnei	$r8, 0, bnei.55643
	addi	$r2, $r0, 0
	j	cont.55642
bnei.55643:
	sra	$r10, $r8, 1
	sll	$r10, $r10, 1
	subu	$r10, $r8, $r10
	bnei	$r10, 0, bnei.55645
	sll	$r9, $r9, 1
	sra	$r8, $r8, 1
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.55644
bnei.55645:
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
cont.55644:
cont.55642:
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
cont.55636:
cont.55634:
cont.55620:
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55647
	addi	$r2, $r4, 0
	jr	$r31
bgti.55647:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55649
	bne	$r2, $r5, bne.55651
	lw	$r2, -8($r29)
	jr	$r31
bne.55651:
	lw	$r2, -8($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -44($r29)
	blti	$r6, 0, blti.55653
	bnei	$r6, 0, bnei.55655
	addi	$r2, $r0, 0
	j	cont.55654
bnei.55655:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.55657
	sll	$r7, $r3, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55656
bnei.55657:
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
cont.55656:
cont.55654:
	j	cont.55652
blti.55653:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.55659
	addi	$r2, $r0, 0
	j	cont.55658
bnei.55659:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55661
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.55660
bnei.55661:
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
cont.55660:
cont.55658:
cont.55652:
	lw	$r3, -8($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55663
	addi	$r2, $r4, 0
	jr	$r31
bgti.55663:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55665
	bne	$r2, $r5, bne.55667
	lw	$r2, -44($r29)
	jr	$r31
bne.55667:
	lw	$r2, -44($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -52($r29)
	blti	$r6, 0, blti.55669
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.55668
blti.55669:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.55668:
	lw	$r3, -44($r29)
	lw	$r4, -16($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55671
	addi	$r2, $r4, 0
	jr	$r31
bgti.55671:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55673
	bne	$r2, $r5, bne.55675
	lw	$r2, -52($r29)
	jr	$r31
bne.55675:
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
	bgti	$r3, 1, bgti.55677
	addi	$r2, $r4, 0
	jr	$r31
bgti.55677:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55679
	bne	$r2, $r3, bne.55681
	lw	$r2, -56($r29)
	jr	$r31
bne.55681:
	lw	$r2, -4($r29)
	lw	$r5, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55679:
	lw	$r2, -4($r29)
	lw	$r4, -56($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55673:
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
	bgti	$r3, 1, bgti.55683
	addi	$r2, $r4, 0
	jr	$r31
bgti.55683:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55685
	bne	$r2, $r3, bne.55687
	lw	$r2, -60($r29)
	jr	$r31
bne.55687:
	lw	$r2, -4($r29)
	lw	$r5, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55685:
	lw	$r2, -4($r29)
	lw	$r4, -60($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55665:
	lw	$r2, -44($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -64($r29)
	blti	$r6, 0, blti.55689
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.55688
blti.55689:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.55688:
	lw	$r3, -8($r29)
	lw	$r4, -44($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55691
	addi	$r2, $r4, 0
	jr	$r31
bgti.55691:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55693
	bne	$r2, $r5, bne.55695
	lw	$r2, -64($r29)
	jr	$r31
bne.55695:
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
	bgti	$r3, 1, bgti.55697
	addi	$r2, $r4, 0
	jr	$r31
bgti.55697:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55699
	bne	$r2, $r3, bne.55701
	lw	$r2, -68($r29)
	jr	$r31
bne.55701:
	lw	$r2, -4($r29)
	lw	$r5, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55699:
	lw	$r2, -4($r29)
	lw	$r4, -68($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55693:
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
	bgti	$r3, 1, bgti.55703
	addi	$r2, $r4, 0
	jr	$r31
bgti.55703:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55705
	bne	$r2, $r3, bne.55707
	lw	$r2, -72($r29)
	jr	$r31
bne.55707:
	lw	$r2, -4($r29)
	lw	$r5, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55705:
	lw	$r2, -4($r29)
	lw	$r4, -72($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55649:
	lw	$r2, -8($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -76($r29)
	blti	$r6, 0, blti.55709
	bnei	$r6, 0, bnei.55711
	addi	$r2, $r0, 0
	j	cont.55710
bnei.55711:
	sra	$r7, $r6, 1
	sll	$r7, $r7, 1
	subu	$r7, $r6, $r7
	bnei	$r7, 0, bnei.55713
	sll	$r7, $r4, 1
	sra	$r8, $r6, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.55712
bnei.55713:
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
cont.55712:
cont.55710:
	j	cont.55708
blti.55709:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	bnei	$r8, 0, bnei.55715
	addi	$r2, $r0, 0
	j	cont.55714
bnei.55715:
	sra	$r9, $r8, 1
	sll	$r9, $r9, 1
	subu	$r9, $r8, $r9
	bnei	$r9, 0, bnei.55717
	sll	$r7, $r7, 1
	sra	$r8, $r8, 1
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.55716
bnei.55717:
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
cont.55716:
cont.55714:
cont.55708:
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55719
	addi	$r2, $r4, 0
	jr	$r31
bgti.55719:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55721
	bne	$r2, $r5, bne.55723
	lw	$r2, -76($r29)
	jr	$r31
bne.55723:
	lw	$r2, -76($r29)
	addu	$r3, $r4, $r2
	sra	$r3, $r3, 1
	lw	$r6, -4($r29)
	sw	$r3, -84($r29)
	blti	$r6, 0, blti.55725
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.55724
blti.55725:
	subu	$r7, $r0, $r3
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.55724:
	lw	$r3, -76($r29)
	lw	$r4, -8($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55727
	addi	$r2, $r4, 0
	jr	$r31
bgti.55727:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55729
	bne	$r2, $r5, bne.55731
	lw	$r2, -84($r29)
	jr	$r31
bne.55731:
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
	bgti	$r3, 1, bgti.55733
	addi	$r2, $r4, 0
	jr	$r31
bgti.55733:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55735
	bne	$r2, $r3, bne.55737
	lw	$r2, -88($r29)
	jr	$r31
bne.55737:
	lw	$r2, -4($r29)
	lw	$r5, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55735:
	lw	$r2, -4($r29)
	lw	$r4, -88($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55729:
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
	bgti	$r3, 1, bgti.55739
	addi	$r2, $r4, 0
	jr	$r31
bgti.55739:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55741
	bne	$r2, $r3, bne.55743
	lw	$r2, -92($r29)
	jr	$r31
bne.55743:
	lw	$r2, -4($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55741:
	lw	$r2, -4($r29)
	lw	$r4, -92($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55721:
	lw	$r2, -76($r29)
	addu	$r4, $r2, $r3
	sra	$r4, $r4, 1
	lw	$r6, -4($r29)
	sw	$r4, -96($r29)
	blti	$r6, 0, blti.55745
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.55744
blti.55745:
	subu	$r7, $r0, $r4
	subu	$r8, $r0, $r6
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.55744:
	lw	$r3, -20($r29)
	lw	$r4, -76($r29)
	subu	$r5, $r3, $r4
	bgti	$r5, 1, bgti.55747
	addi	$r2, $r4, 0
	jr	$r31
bgti.55747:
	lw	$r5, -12($r29)
	bgt	$r5, $r2, bgt.55749
	bne	$r2, $r5, bne.55751
	lw	$r2, -96($r29)
	jr	$r31
bne.55751:
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
	bgti	$r3, 1, bgti.55753
	addi	$r2, $r4, 0
	jr	$r31
bgti.55753:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55755
	bne	$r2, $r3, bne.55757
	lw	$r2, -100($r29)
	jr	$r31
bne.55757:
	lw	$r2, -4($r29)
	lw	$r5, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55755:
	lw	$r2, -4($r29)
	lw	$r4, -100($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55749:
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
	bgti	$r3, 1, bgti.55759
	addi	$r2, $r4, 0
	jr	$r31
bgti.55759:
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55761
	bne	$r2, $r3, bne.55763
	lw	$r2, -104($r29)
	jr	$r31
bne.55763:
	lw	$r2, -4($r29)
	lw	$r5, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
bgt.55761:
	lw	$r2, -4($r29)
	lw	$r4, -104($r29)
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	j	div_binary_search.2674
print_int.2704:
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.55765
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
	bgt	$r3, $r2, bgt.55767
	bne	$r2, $r3, bne.55769
	addi	$r2, $r0, 1
	j	cont.55768
bne.55769:
	addi	$r2, $r0, 0
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 0
cont.55768:
	j	cont.55766
bgt.55767:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul_sub.2655
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	lw	$r3, -12($r29)
	bgt	$r3, $r2, bgt.55771
	bne	$r2, $r3, bne.55773
	addi	$r2, $r0, 2
	j	cont.55772
bne.55773:
	addi	$r2, $r0, 1
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55772:
	j	cont.55770
bgt.55771:
	addi	$r2, $r0, 2
	lw	$r4, -8($r29)
	addi	$r3, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	mul.2668
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	addi	$r2, $r0, 2
cont.55770:
cont.55766:
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
	bgti	$r3, 0, bgti.55775
	addi	$r2, $r0, 0
	j	cont.55774
bgti.55775:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55774:
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
	bgt	$r3, $r2, bgt.55777
	bne	$r2, $r3, bne.55779
	addi	$r2, $r0, 5
	j	cont.55778
bne.55779:
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
	bgt	$r3, $r2, bgt.55781
	bne	$r2, $r3, bne.55783
	addi	$r2, $r0, 2
	j	cont.55782
bne.55783:
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
	bgt	$r3, $r2, bgt.55785
	bne	$r2, $r3, bne.55787
	addi	$r2, $r0, 1
	j	cont.55786
bne.55787:
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
cont.55786:
	j	cont.55784
bgt.55785:
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
cont.55784:
cont.55782:
	j	cont.55780
bgt.55781:
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
	bgt	$r3, $r2, bgt.55789
	bne	$r2, $r3, bne.55791
	addi	$r2, $r0, 3
	j	cont.55790
bne.55791:
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
cont.55790:
	j	cont.55788
bgt.55789:
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
cont.55788:
cont.55780:
cont.55778:
	j	cont.55776
bgt.55777:
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
	bgt	$r3, $r2, bgt.55793
	bne	$r2, $r3, bne.55795
	addi	$r2, $r0, 7
	j	cont.55794
bne.55795:
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
	bgt	$r3, $r2, bgt.55797
	bne	$r2, $r3, bne.55799
	addi	$r2, $r0, 6
	j	cont.55798
bne.55799:
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
cont.55798:
	j	cont.55796
bgt.55797:
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
cont.55796:
cont.55794:
	j	cont.55792
bgt.55793:
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
	bgt	$r3, $r2, bgt.55801
	bne	$r2, $r3, bne.55803
	addi	$r2, $r0, 8
	j	cont.55802
bne.55803:
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
cont.55802:
	j	cont.55800
bgt.55801:
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
cont.55800:
cont.55792:
cont.55776:
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
	bgti	$r3, 0, bgti.55805
	lw	$r4, -24($r29)
	bnei	$r4, 1, bnei.55807
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55806
bnei.55807:
	addi	$r2, $r0, 0
cont.55806:
	j	cont.55804
bgti.55805:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55804:
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
	bgt	$r3, $r2, bgt.55809
	bne	$r2, $r3, bne.55811
	addi	$r2, $r0, 5
	j	cont.55810
bne.55811:
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
	bgt	$r3, $r2, bgt.55813
	bne	$r2, $r3, bne.55815
	addi	$r2, $r0, 2
	j	cont.55814
bne.55815:
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
	bgt	$r3, $r2, bgt.55817
	bne	$r2, $r3, bne.55819
	addi	$r2, $r0, 1
	j	cont.55818
bne.55819:
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
cont.55818:
	j	cont.55816
bgt.55817:
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
cont.55816:
cont.55814:
	j	cont.55812
bgt.55813:
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
	bgt	$r3, $r2, bgt.55821
	bne	$r2, $r3, bne.55823
	addi	$r2, $r0, 3
	j	cont.55822
bne.55823:
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
cont.55822:
	j	cont.55820
bgt.55821:
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
cont.55820:
cont.55812:
cont.55810:
	j	cont.55808
bgt.55809:
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
	bgt	$r3, $r2, bgt.55825
	bne	$r2, $r3, bne.55827
	addi	$r2, $r0, 7
	j	cont.55826
bne.55827:
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
	bgt	$r3, $r2, bgt.55829
	bne	$r2, $r3, bne.55831
	addi	$r2, $r0, 6
	j	cont.55830
bne.55831:
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
cont.55830:
	j	cont.55828
bgt.55829:
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
cont.55828:
cont.55826:
	j	cont.55824
bgt.55825:
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
	bgt	$r3, $r2, bgt.55833
	bne	$r2, $r3, bne.55835
	addi	$r2, $r0, 8
	j	cont.55834
bne.55835:
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
cont.55834:
	j	cont.55832
bgt.55833:
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
cont.55832:
cont.55824:
cont.55808:
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
	bgti	$r3, 0, bgti.55837
	lw	$r4, -72($r29)
	bnei	$r4, 1, bnei.55839
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55838
bnei.55839:
	addi	$r2, $r0, 0
cont.55838:
	j	cont.55836
bgti.55837:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55836:
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
	bgt	$r3, $r2, bgt.55841
	bne	$r2, $r3, bne.55843
	addi	$r2, $r0, 5
	j	cont.55842
bne.55843:
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
	bgt	$r3, $r2, bgt.55845
	bne	$r2, $r3, bne.55847
	addi	$r2, $r0, 2
	j	cont.55846
bne.55847:
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
	bgt	$r3, $r2, bgt.55849
	bne	$r2, $r3, bne.55851
	addi	$r2, $r0, 1
	j	cont.55850
bne.55851:
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
cont.55850:
	j	cont.55848
bgt.55849:
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
cont.55848:
cont.55846:
	j	cont.55844
bgt.55845:
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
	bgt	$r3, $r2, bgt.55853
	bne	$r2, $r3, bne.55855
	addi	$r2, $r0, 3
	j	cont.55854
bne.55855:
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
cont.55854:
	j	cont.55852
bgt.55853:
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
cont.55852:
cont.55844:
cont.55842:
	j	cont.55840
bgt.55841:
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
	bgt	$r3, $r2, bgt.55857
	bne	$r2, $r3, bne.55859
	addi	$r2, $r0, 7
	j	cont.55858
bne.55859:
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
	bgt	$r3, $r2, bgt.55861
	bne	$r2, $r3, bne.55863
	addi	$r2, $r0, 6
	j	cont.55862
bne.55863:
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
cont.55862:
	j	cont.55860
bgt.55861:
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
cont.55860:
cont.55858:
	j	cont.55856
bgt.55857:
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
	bgt	$r3, $r2, bgt.55865
	bne	$r2, $r3, bne.55867
	addi	$r2, $r0, 8
	j	cont.55866
bne.55867:
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
cont.55866:
	j	cont.55864
bgt.55865:
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
cont.55864:
cont.55856:
cont.55840:
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
	bgti	$r3, 0, bgti.55869
	lw	$r4, -120($r29)
	bnei	$r4, 1, bnei.55871
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55870
bnei.55871:
	addi	$r2, $r0, 0
cont.55870:
	j	cont.55868
bgti.55869:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55868:
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
	bgt	$r3, $r2, bgt.55873
	bne	$r2, $r3, bne.55875
	addi	$r2, $r0, 5
	j	cont.55874
bne.55875:
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
	bgt	$r3, $r2, bgt.55877
	bne	$r2, $r3, bne.55879
	addi	$r2, $r0, 2
	j	cont.55878
bne.55879:
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
	bgt	$r3, $r2, bgt.55881
	bne	$r2, $r3, bne.55883
	addi	$r2, $r0, 1
	j	cont.55882
bne.55883:
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
cont.55882:
	j	cont.55880
bgt.55881:
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
cont.55880:
cont.55878:
	j	cont.55876
bgt.55877:
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
	bgt	$r3, $r2, bgt.55885
	bne	$r2, $r3, bne.55887
	addi	$r2, $r0, 3
	j	cont.55886
bne.55887:
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
cont.55886:
	j	cont.55884
bgt.55885:
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
cont.55884:
cont.55876:
cont.55874:
	j	cont.55872
bgt.55873:
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
	bgt	$r3, $r2, bgt.55889
	bne	$r2, $r3, bne.55891
	addi	$r2, $r0, 7
	j	cont.55890
bne.55891:
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
	bgt	$r3, $r2, bgt.55893
	bne	$r2, $r3, bne.55895
	addi	$r2, $r0, 6
	j	cont.55894
bne.55895:
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
cont.55894:
	j	cont.55892
bgt.55893:
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
cont.55892:
cont.55890:
	j	cont.55888
bgt.55889:
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
	bgt	$r3, $r2, bgt.55897
	bne	$r2, $r3, bne.55899
	addi	$r2, $r0, 8
	j	cont.55898
bne.55899:
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
cont.55898:
	j	cont.55896
bgt.55897:
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
cont.55896:
cont.55888:
cont.55872:
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
	bgti	$r3, 0, bgti.55901
	lw	$r4, -168($r29)
	bnei	$r4, 1, bnei.55903
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55902
bnei.55903:
	addi	$r2, $r0, 0
cont.55902:
	j	cont.55900
bgti.55901:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55900:
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
	bgt	$r3, $r2, bgt.55905
	bne	$r2, $r3, bne.55907
	addi	$r2, $r0, 5
	j	cont.55906
bne.55907:
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
	bgt	$r3, $r2, bgt.55909
	bne	$r2, $r3, bne.55911
	addi	$r2, $r0, 2
	j	cont.55910
bne.55911:
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
	bgt	$r3, $r2, bgt.55913
	bne	$r2, $r3, bne.55915
	addi	$r2, $r0, 1
	j	cont.55914
bne.55915:
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
cont.55914:
	j	cont.55912
bgt.55913:
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
cont.55912:
cont.55910:
	j	cont.55908
bgt.55909:
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
	bgt	$r3, $r2, bgt.55917
	bne	$r2, $r3, bne.55919
	addi	$r2, $r0, 3
	j	cont.55918
bne.55919:
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
cont.55918:
	j	cont.55916
bgt.55917:
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
cont.55916:
cont.55908:
cont.55906:
	j	cont.55904
bgt.55905:
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
	bgt	$r3, $r2, bgt.55921
	bne	$r2, $r3, bne.55923
	addi	$r2, $r0, 7
	j	cont.55922
bne.55923:
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
	bgt	$r3, $r2, bgt.55925
	bne	$r2, $r3, bne.55927
	addi	$r2, $r0, 6
	j	cont.55926
bne.55927:
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
cont.55926:
	j	cont.55924
bgt.55925:
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
cont.55924:
cont.55922:
	j	cont.55920
bgt.55921:
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
	bgt	$r3, $r2, bgt.55929
	bne	$r2, $r3, bne.55931
	addi	$r2, $r0, 8
	j	cont.55930
bne.55931:
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
cont.55930:
	j	cont.55928
bgt.55929:
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
cont.55928:
cont.55920:
cont.55904:
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
	bgti	$r3, 0, bgti.55933
	lw	$r4, -216($r29)
	bnei	$r4, 1, bnei.55935
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55934
bnei.55935:
	addi	$r2, $r0, 0
cont.55934:
	j	cont.55932
bgti.55933:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55932:
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
	bgt	$r3, $r2, bgt.55937
	bne	$r2, $r3, bne.55939
	addi	$r2, $r0, 5
	j	cont.55938
bne.55939:
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
	bgt	$r3, $r2, bgt.55941
	bne	$r2, $r3, bne.55943
	addi	$r2, $r0, 2
	j	cont.55942
bne.55943:
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
	bgt	$r3, $r2, bgt.55945
	bne	$r2, $r3, bne.55947
	addi	$r2, $r0, 1
	j	cont.55946
bne.55947:
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
cont.55946:
	j	cont.55944
bgt.55945:
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
cont.55944:
cont.55942:
	j	cont.55940
bgt.55941:
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
	bgt	$r3, $r2, bgt.55949
	bne	$r2, $r3, bne.55951
	addi	$r2, $r0, 3
	j	cont.55950
bne.55951:
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
cont.55950:
	j	cont.55948
bgt.55949:
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
cont.55948:
cont.55940:
cont.55938:
	j	cont.55936
bgt.55937:
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
	bgt	$r3, $r2, bgt.55953
	bne	$r2, $r3, bne.55955
	addi	$r2, $r0, 7
	j	cont.55954
bne.55955:
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
	bgt	$r3, $r2, bgt.55957
	bne	$r2, $r3, bne.55959
	addi	$r2, $r0, 6
	j	cont.55958
bne.55959:
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
cont.55958:
	j	cont.55956
bgt.55957:
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
cont.55956:
cont.55954:
	j	cont.55952
bgt.55953:
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
	bgt	$r3, $r2, bgt.55961
	bne	$r2, $r3, bne.55963
	addi	$r2, $r0, 8
	j	cont.55962
bne.55963:
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
cont.55962:
	j	cont.55960
bgt.55961:
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
cont.55960:
cont.55952:
cont.55936:
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
	bgti	$r3, 0, bgti.55965
	lw	$r4, -264($r29)
	bnei	$r4, 1, bnei.55967
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55966
bnei.55967:
	addi	$r2, $r0, 0
cont.55966:
	j	cont.55964
bgti.55965:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55964:
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
	bgt	$r3, $r2, bgt.55969
	bne	$r2, $r3, bne.55971
	addi	$r2, $r0, 5
	j	cont.55970
bne.55971:
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
	bgt	$r3, $r2, bgt.55973
	bne	$r2, $r3, bne.55975
	addi	$r2, $r0, 2
	j	cont.55974
bne.55975:
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
	bgt	$r3, $r2, bgt.55977
	bne	$r2, $r3, bne.55979
	addi	$r2, $r0, 1
	j	cont.55978
bne.55979:
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
cont.55978:
	j	cont.55976
bgt.55977:
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
cont.55976:
cont.55974:
	j	cont.55972
bgt.55973:
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
	bgt	$r3, $r2, bgt.55981
	bne	$r2, $r3, bne.55983
	addi	$r2, $r0, 3
	j	cont.55982
bne.55983:
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
cont.55982:
	j	cont.55980
bgt.55981:
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
cont.55980:
cont.55972:
cont.55970:
	j	cont.55968
bgt.55969:
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
	bgt	$r3, $r2, bgt.55985
	bne	$r2, $r3, bne.55987
	addi	$r2, $r0, 7
	j	cont.55986
bne.55987:
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
	bgt	$r3, $r2, bgt.55989
	bne	$r2, $r3, bne.55991
	addi	$r2, $r0, 6
	j	cont.55990
bne.55991:
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
cont.55990:
	j	cont.55988
bgt.55989:
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
cont.55988:
cont.55986:
	j	cont.55984
bgt.55985:
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
	bgt	$r3, $r2, bgt.55993
	bne	$r2, $r3, bne.55995
	addi	$r2, $r0, 8
	j	cont.55994
bne.55995:
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
cont.55994:
	j	cont.55992
bgt.55993:
	lw	$r5, -320($r29)
	lw	$r4, -344($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -348($r29)	!call-dir
	addi	$r29, $r29, -348	!call-dir
	jal	div_binary_search.2674
	addi	$r29, $r29, 348
	lw	$r31, -348($r29)	!call-dir
cont.55992:
cont.55984:
cont.55968:
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
	bgti	$r3, 0, bgti.55997
	lw	$r4, -312($r29)
	bnei	$r4, 1, bnei.55999
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	addi	$r2, $r0, 1
	j	cont.55998
bnei.55999:
	addi	$r2, $r0, 0
cont.55998:
	j	cont.55996
bgti.55997:
	addi	$r3, $r3, 48
	addi	$r2, $r3, 0
	sw	$r31, -360($r29)	!call-dir
	addi	$r29, $r29, -360	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 360
	lw	$r31, -360($r29)	!call-dir
	addi	$r2, $r0, 1
cont.55996:
	lw	$r2, -356($r29)
	addi	$r2, $r2, 48
	j	min_caml_print_char
blti.55765:
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
rotate_quadratic_matrix.3768:
	lwcl	$f0, 0($r3)
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.56001
	addi	$r4, $r0, 0
	j	cont.56000
bclf.56001:
	addi	$r4, $r0, 1
cont.56000:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f3, -12($r29)
	swcl	$f2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r4, -24($r29)
	swcl	$f1, -28($r29)
	c.le.s	$f4, $f5
	bclf	bclf.56003
	c.le.s	$f30, $f4
	bclf	bclf.56005
	fmove	$f0, $f4
	j	cont.56004
bclf.56005:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.56004:
	j	cont.56002
bclf.56003:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.56002:
	lwcl	$f1, -28($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56007
	lw	$r2, -24($r29)
	j	cont.56006
bclf.56007:
	lwcl	$f2, -20($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56009
	addi	$r2, $r0, 1
	j	cont.56008
bclf.56009:
	addi	$r2, $r0, 0
cont.56008:
cont.56006:
	c.le.s	$f0, $f1
	bclf	bclf.56011
	j	cont.56010
bclf.56011:
	lwcl	$f2, -16($r29)
	sub.s	$f0, $f2, $f0
cont.56010:
	lwcl	$f2, -12($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56013
	j	cont.56012
bclf.56013:
	sub.s	$f0, $f1, $f0
cont.56012:
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
	bnei	$r2, 1, bnei.56015
	j	cont.56014
bnei.56015:
	fneg	$f0, $f0
cont.56014:
	lw	$r2, -8($r29)
	lwcl	$f1, 0($r2)
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56017
	addi	$r3, $r0, 0
	j	cont.56016
bclf.56017:
	addi	$r3, $r0, 1
cont.56016:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -32($r29)
	swcl	$f4, -36($r29)
	swcl	$f3, -40($r29)
	swcl	$f1, -44($r29)
	sw	$r3, -48($r29)
	swcl	$f2, -52($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56019
	c.le.s	$f30, $f5
	bclf	bclf.56021
	fmove	$f0, $f5
	j	cont.56020
bclf.56021:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56023
	c.le.s	$f30, $f5
	bclf	bclf.56025
	fmove	$f0, $f5
	j	cont.56024
bclf.56025:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56024:
	j	cont.56022
bclf.56023:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56022:
cont.56020:
	j	cont.56018
bclf.56019:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56027
	c.le.s	$f30, $f5
	bclf	bclf.56029
	fmove	$f0, $f5
	j	cont.56028
bclf.56029:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56028:
	j	cont.56026
bclf.56027:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56026:
cont.56018:
	lwcl	$f1, -52($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56031
	lw	$r2, -48($r29)
	j	cont.56030
bclf.56031:
	lwcl	$f2, -44($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56033
	addi	$r2, $r0, 1
	j	cont.56032
bclf.56033:
	addi	$r2, $r0, 0
cont.56032:
cont.56030:
	c.le.s	$f0, $f1
	bclf	bclf.56035
	j	cont.56034
bclf.56035:
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
cont.56034:
	lwcl	$f2, -36($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56037
	j	cont.56036
bclf.56037:
	sub.s	$f0, $f1, $f0
cont.56036:
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
	bnei	$r2, 1, bnei.56039
	j	cont.56038
bnei.56039:
	fneg	$f0, $f0
cont.56038:
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56041
	addi	$r3, $r0, 0
	j	cont.56040
bclf.56041:
	addi	$r3, $r0, 1
cont.56040:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -56($r29)
	swcl	$f4, -60($r29)
	swcl	$f3, -64($r29)
	swcl	$f1, -68($r29)
	sw	$r3, -72($r29)
	swcl	$f2, -76($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56043
	c.le.s	$f30, $f5
	bclf	bclf.56045
	fmove	$f0, $f5
	j	cont.56044
bclf.56045:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56044:
	j	cont.56042
bclf.56043:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56042:
	lwcl	$f1, -76($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56047
	lw	$r2, -72($r29)
	j	cont.56046
bclf.56047:
	lwcl	$f2, -68($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56049
	addi	$r2, $r0, 1
	j	cont.56048
bclf.56049:
	addi	$r2, $r0, 0
cont.56048:
cont.56046:
	c.le.s	$f0, $f1
	bclf	bclf.56051
	j	cont.56050
bclf.56051:
	lwcl	$f2, -64($r29)
	sub.s	$f0, $f2, $f0
cont.56050:
	lwcl	$f2, -60($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56053
	j	cont.56052
bclf.56053:
	sub.s	$f0, $f1, $f0
cont.56052:
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
	bnei	$r2, 1, bnei.56055
	j	cont.56054
bnei.56055:
	fneg	$f0, $f0
cont.56054:
	lw	$r2, -8($r29)
	lwcl	$f1, 4($r2)
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56057
	addi	$r3, $r0, 0
	j	cont.56056
bclf.56057:
	addi	$r3, $r0, 1
cont.56056:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -80($r29)
	swcl	$f4, -84($r29)
	swcl	$f3, -88($r29)
	swcl	$f1, -92($r29)
	sw	$r3, -96($r29)
	swcl	$f2, -100($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56059
	c.le.s	$f30, $f5
	bclf	bclf.56061
	fmove	$f0, $f5
	j	cont.56060
bclf.56061:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56063
	c.le.s	$f30, $f5
	bclf	bclf.56065
	fmove	$f0, $f5
	j	cont.56064
bclf.56065:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
cont.56064:
	j	cont.56062
bclf.56063:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
cont.56062:
cont.56060:
	j	cont.56058
bclf.56059:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56067
	c.le.s	$f30, $f5
	bclf	bclf.56069
	fmove	$f0, $f5
	j	cont.56068
bclf.56069:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
cont.56068:
	j	cont.56066
bclf.56067:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
cont.56066:
cont.56058:
	lwcl	$f1, -100($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56071
	lw	$r2, -96($r29)
	j	cont.56070
bclf.56071:
	lwcl	$f2, -92($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56073
	addi	$r2, $r0, 1
	j	cont.56072
bclf.56073:
	addi	$r2, $r0, 0
cont.56072:
cont.56070:
	c.le.s	$f0, $f1
	bclf	bclf.56075
	j	cont.56074
bclf.56075:
	lwcl	$f2, -88($r29)
	sub.s	$f0, $f2, $f0
cont.56074:
	lwcl	$f2, -84($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56077
	j	cont.56076
bclf.56077:
	sub.s	$f0, $f1, $f0
cont.56076:
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
	bnei	$r2, 1, bnei.56079
	j	cont.56078
bnei.56079:
	fneg	$f0, $f0
cont.56078:
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f1, $f2, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56081
	addi	$r3, $r0, 0
	j	cont.56080
bclf.56081:
	addi	$r3, $r0, 1
cont.56080:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -104($r29)
	swcl	$f4, -108($r29)
	swcl	$f3, -112($r29)
	swcl	$f1, -116($r29)
	sw	$r3, -120($r29)
	swcl	$f2, -124($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56083
	c.le.s	$f30, $f5
	bclf	bclf.56085
	fmove	$f0, $f5
	j	cont.56084
bclf.56085:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.56084:
	j	cont.56082
bclf.56083:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.56082:
	lwcl	$f1, -124($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56087
	lw	$r2, -120($r29)
	j	cont.56086
bclf.56087:
	lwcl	$f2, -116($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56089
	addi	$r2, $r0, 1
	j	cont.56088
bclf.56089:
	addi	$r2, $r0, 0
cont.56088:
cont.56086:
	c.le.s	$f0, $f1
	bclf	bclf.56091
	j	cont.56090
bclf.56091:
	lwcl	$f2, -112($r29)
	sub.s	$f0, $f2, $f0
cont.56090:
	lwcl	$f2, -108($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56093
	j	cont.56092
bclf.56093:
	sub.s	$f0, $f1, $f0
cont.56092:
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
	bnei	$r2, 1, bnei.56095
	j	cont.56094
bnei.56095:
	fneg	$f0, $f0
cont.56094:
	lw	$r2, -8($r29)
	lwcl	$f1, 8($r2)
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56097
	addi	$r3, $r0, 0
	j	cont.56096
bclf.56097:
	addi	$r3, $r0, 1
cont.56096:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -128($r29)
	swcl	$f4, -132($r29)
	swcl	$f3, -136($r29)
	swcl	$f1, -140($r29)
	sw	$r3, -144($r29)
	swcl	$f2, -148($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56099
	c.le.s	$f30, $f5
	bclf	bclf.56101
	fmove	$f0, $f5
	j	cont.56100
bclf.56101:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56103
	c.le.s	$f30, $f5
	bclf	bclf.56105
	fmove	$f0, $f5
	j	cont.56104
bclf.56105:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.56104:
	j	cont.56102
bclf.56103:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.56102:
cont.56100:
	j	cont.56098
bclf.56099:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.56107
	c.le.s	$f30, $f5
	bclf	bclf.56109
	fmove	$f0, $f5
	j	cont.56108
bclf.56109:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.56108:
	j	cont.56106
bclf.56107:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.56106:
cont.56098:
	lwcl	$f1, -148($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56111
	lw	$r2, -144($r29)
	j	cont.56110
bclf.56111:
	lwcl	$f2, -140($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56113
	addi	$r2, $r0, 1
	j	cont.56112
bclf.56113:
	addi	$r2, $r0, 0
cont.56112:
cont.56110:
	c.le.s	$f0, $f1
	bclf	bclf.56115
	j	cont.56114
bclf.56115:
	lwcl	$f2, -136($r29)
	sub.s	$f0, $f2, $f0
cont.56114:
	lwcl	$f2, -132($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56117
	j	cont.56116
bclf.56117:
	sub.s	$f0, $f1, $f0
cont.56116:
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
	bnei	$r2, 1, bnei.56119
	j	cont.56118
bnei.56119:
	fneg	$f0, $f0
cont.56118:
	lwcl	$f1, -80($r29)
	lwcl	$f2, -128($r29)
	mul.s	$f3, $f1, $f2
	lwcl	$f4, -56($r29)
	lwcl	$f5, -104($r29)
	mul.s	$f6, $f4, $f5
	mul.s	$f6, $f6, $f2
	lwcl	$f7, -32($r29)
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
	bnei	$r2, -1, bnei.56121
	addi	$r2, $r0, 0
	jr	$r31
bnei.56121:
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
	bne	$r2, $r3, bne.56123
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56125
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56127
	addi	$r3, $r0, 0
	j	cont.56126
bgt.56127:
	addi	$r3, $r0, 1
cont.56126:
	j	cont.56124
bgt.56125:
	addi	$r3, $r0, 1
cont.56124:
	bnei	$r3, 1, bnei.56129
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56131
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56133
	addi	$r3, $r0, 0
	j	cont.56132
bgt.56133:
	addi	$r3, $r0, 1
cont.56132:
	j	cont.56130
bgt.56131:
	addi	$r3, $r0, 1
cont.56130:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56135
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.56134
bnei.56135:
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
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.56134:
	j	cont.56128
bnei.56129:
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
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56137
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56139
	addi	$r3, $r0, 0
	j	cont.56138
bgt.56139:
	addi	$r3, $r0, 1
cont.56138:
	j	cont.56136
bgt.56137:
	addi	$r3, $r0, 1
cont.56136:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56141
	j	cont.56140
bnei.56141:
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
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.56140:
cont.56128:
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
	j	cont.56122
bne.56123:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.56122:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56143
	j	cont.56142
bnei.56143:
	fneg	$f0, $f0
cont.56142:
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
	bne	$r2, $r3, bne.56145
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56147
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56149
	addi	$r3, $r0, 0
	j	cont.56148
bgt.56149:
	addi	$r3, $r0, 1
cont.56148:
	j	cont.56146
bgt.56147:
	addi	$r3, $r0, 1
cont.56146:
	bnei	$r3, 1, bnei.56151
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56153
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56155
	addi	$r3, $r0, 0
	j	cont.56154
bgt.56155:
	addi	$r3, $r0, 1
cont.56154:
	j	cont.56152
bgt.56153:
	addi	$r3, $r0, 1
cont.56152:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56157
	addi	$r2, $r0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.56156
bnei.56157:
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
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.56156:
	j	cont.56150
bnei.56151:
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
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56159
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56161
	addi	$r3, $r0, 0
	j	cont.56160
bgt.56161:
	addi	$r3, $r0, 1
cont.56160:
	j	cont.56158
bgt.56159:
	addi	$r3, $r0, 1
cont.56158:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56163
	j	cont.56162
bnei.56163:
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
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.56162:
cont.56150:
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
	j	cont.56144
bne.56145:
	lw	$r2, 12($r0)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.56144:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56165
	j	cont.56164
bnei.56165:
	fneg	$f0, $f0
cont.56164:
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
	bne	$r2, $r3, bne.56167
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56169
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56171
	addi	$r3, $r0, 0
	j	cont.56170
bgt.56171:
	addi	$r3, $r0, 1
cont.56170:
	j	cont.56168
bgt.56169:
	addi	$r3, $r0, 1
cont.56168:
	bnei	$r3, 1, bnei.56173
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56175
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56177
	addi	$r3, $r0, 0
	j	cont.56176
bgt.56177:
	addi	$r3, $r0, 1
cont.56176:
	j	cont.56174
bgt.56175:
	addi	$r3, $r0, 1
cont.56174:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56179
	addi	$r2, $r0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.56178
bnei.56179:
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
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.56178:
	j	cont.56172
bnei.56173:
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
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56181
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56183
	addi	$r3, $r0, 0
	j	cont.56182
bgt.56183:
	addi	$r3, $r0, 1
cont.56182:
	j	cont.56180
bgt.56181:
	addi	$r3, $r0, 1
cont.56180:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56185
	j	cont.56184
bnei.56185:
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
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.56184:
cont.56172:
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
	j	cont.56166
bne.56167:
	lw	$r2, 12($r0)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.56166:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56187
	j	cont.56186
bnei.56187:
	fneg	$f0, $f0
cont.56186:
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
	bne	$r2, $r3, bne.56189
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56191
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56193
	addi	$r3, $r0, 0
	j	cont.56192
bgt.56193:
	addi	$r3, $r0, 1
cont.56192:
	j	cont.56190
bgt.56191:
	addi	$r3, $r0, 1
cont.56190:
	bnei	$r3, 1, bnei.56195
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56197
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56199
	addi	$r3, $r0, 0
	j	cont.56198
bgt.56199:
	addi	$r3, $r0, 1
cont.56198:
	j	cont.56196
bgt.56197:
	addi	$r3, $r0, 1
cont.56196:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56201
	addi	$r2, $r0, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.56200
bnei.56201:
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
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56200:
	j	cont.56194
bnei.56195:
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
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56203
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56205
	addi	$r3, $r0, 0
	j	cont.56204
bgt.56205:
	addi	$r3, $r0, 1
cont.56204:
	j	cont.56202
bgt.56203:
	addi	$r3, $r0, 1
cont.56202:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56207
	j	cont.56206
bnei.56207:
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
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.56206:
cont.56194:
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
	j	cont.56188
bne.56189:
	lw	$r2, 12($r0)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.56188:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56209
	j	cont.56208
bnei.56209:
	fneg	$f0, $f0
cont.56208:
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
	bne	$r2, $r3, bne.56211
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56213
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56215
	addi	$r3, $r0, 0
	j	cont.56214
bgt.56215:
	addi	$r3, $r0, 1
cont.56214:
	j	cont.56212
bgt.56213:
	addi	$r3, $r0, 1
cont.56212:
	bnei	$r3, 1, bnei.56217
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56219
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56221
	addi	$r3, $r0, 0
	j	cont.56220
bgt.56221:
	addi	$r3, $r0, 1
cont.56220:
	j	cont.56218
bgt.56219:
	addi	$r3, $r0, 1
cont.56218:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56223
	addi	$r2, $r0, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.56222
bnei.56223:
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
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.56222:
	j	cont.56216
bnei.56217:
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
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56225
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56227
	addi	$r3, $r0, 0
	j	cont.56226
bgt.56227:
	addi	$r3, $r0, 1
cont.56226:
	j	cont.56224
bgt.56225:
	addi	$r3, $r0, 1
cont.56224:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56229
	j	cont.56228
bnei.56229:
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
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.56228:
cont.56216:
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
	j	cont.56210
bne.56211:
	lw	$r2, 12($r0)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.56210:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56231
	j	cont.56230
bnei.56231:
	fneg	$f0, $f0
cont.56230:
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
	bne	$r2, $r3, bne.56233
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56235
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56237
	addi	$r3, $r0, 0
	j	cont.56236
bgt.56237:
	addi	$r3, $r0, 1
cont.56236:
	j	cont.56234
bgt.56235:
	addi	$r3, $r0, 1
cont.56234:
	bnei	$r3, 1, bnei.56239
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56241
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56243
	addi	$r3, $r0, 0
	j	cont.56242
bgt.56243:
	addi	$r3, $r0, 1
cont.56242:
	j	cont.56240
bgt.56241:
	addi	$r3, $r0, 1
cont.56240:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56245
	addi	$r2, $r0, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.56244
bnei.56245:
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
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.56244:
	j	cont.56238
bnei.56239:
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
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56247
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56249
	addi	$r3, $r0, 0
	j	cont.56248
bgt.56249:
	addi	$r3, $r0, 1
cont.56248:
	j	cont.56246
bgt.56247:
	addi	$r3, $r0, 1
cont.56246:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56251
	j	cont.56250
bnei.56251:
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
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.56250:
cont.56238:
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
	j	cont.56232
bne.56233:
	lw	$r2, 12($r0)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56232:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56253
	j	cont.56252
bnei.56253:
	fneg	$f0, $f0
cont.56252:
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
	bne	$r2, $r3, bne.56255
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56257
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56259
	addi	$r3, $r0, 0
	j	cont.56258
bgt.56259:
	addi	$r3, $r0, 1
cont.56258:
	j	cont.56256
bgt.56257:
	addi	$r3, $r0, 1
cont.56256:
	bnei	$r3, 1, bnei.56261
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56263
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56265
	addi	$r3, $r0, 0
	j	cont.56264
bgt.56265:
	addi	$r3, $r0, 1
cont.56264:
	j	cont.56262
bgt.56263:
	addi	$r3, $r0, 1
cont.56262:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56267
	addi	$r2, $r0, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.56266
bnei.56267:
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
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56266:
	j	cont.56260
bnei.56261:
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
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56269
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56271
	addi	$r3, $r0, 0
	j	cont.56270
bgt.56271:
	addi	$r3, $r0, 1
cont.56270:
	j	cont.56268
bgt.56269:
	addi	$r3, $r0, 1
cont.56268:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56273
	j	cont.56272
bnei.56273:
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
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56272:
cont.56260:
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
	j	cont.56254
bne.56255:
	lw	$r2, 12($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.56254:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56275
	j	cont.56274
bnei.56275:
	fneg	$f0, $f0
cont.56274:
	c.le.s	$f30, $f0
	bclf	bclf.56277
	addi	$r2, $r0, 0
	j	cont.56276
bclf.56277:
	addi	$r2, $r0, 1
cont.56276:
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
	bne	$r2, $r3, bne.56279
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56281
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56283
	addi	$r3, $r0, 0
	j	cont.56282
bgt.56283:
	addi	$r3, $r0, 1
cont.56282:
	j	cont.56280
bgt.56281:
	addi	$r3, $r0, 1
cont.56280:
	bnei	$r3, 1, bnei.56285
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56287
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56289
	addi	$r3, $r0, 0
	j	cont.56288
bgt.56289:
	addi	$r3, $r0, 1
cont.56288:
	j	cont.56286
bgt.56287:
	addi	$r3, $r0, 1
cont.56286:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56291
	addi	$r2, $r0, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.56290
bnei.56291:
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
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.56290:
	j	cont.56284
bnei.56285:
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
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56293
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56295
	addi	$r3, $r0, 0
	j	cont.56294
bgt.56295:
	addi	$r3, $r0, 1
cont.56294:
	j	cont.56292
bgt.56293:
	addi	$r3, $r0, 1
cont.56292:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56297
	j	cont.56296
bnei.56297:
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
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
cont.56296:
cont.56284:
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
	j	cont.56278
bne.56279:
	lw	$r2, 12($r0)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.56278:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56299
	j	cont.56298
bnei.56299:
	fneg	$f0, $f0
cont.56298:
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
	bne	$r2, $r3, bne.56301
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56303
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56305
	addi	$r3, $r0, 0
	j	cont.56304
bgt.56305:
	addi	$r3, $r0, 1
cont.56304:
	j	cont.56302
bgt.56303:
	addi	$r3, $r0, 1
cont.56302:
	bnei	$r3, 1, bnei.56307
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56309
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56311
	addi	$r3, $r0, 0
	j	cont.56310
bgt.56311:
	addi	$r3, $r0, 1
cont.56310:
	j	cont.56308
bgt.56309:
	addi	$r3, $r0, 1
cont.56308:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56313
	addi	$r2, $r0, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	j	cont.56312
bnei.56313:
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
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.56312:
	j	cont.56306
bnei.56307:
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
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56315
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56317
	addi	$r3, $r0, 0
	j	cont.56316
bgt.56317:
	addi	$r3, $r0, 1
cont.56316:
	j	cont.56314
bgt.56315:
	addi	$r3, $r0, 1
cont.56314:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56319
	j	cont.56318
bnei.56319:
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
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.56318:
cont.56306:
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
	j	cont.56300
bne.56301:
	lw	$r2, 12($r0)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
cont.56300:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56321
	j	cont.56320
bnei.56321:
	fneg	$f0, $f0
cont.56320:
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
	bne	$r2, $r3, bne.56323
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56325
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56327
	addi	$r3, $r0, 0
	j	cont.56326
bgt.56327:
	addi	$r3, $r0, 1
cont.56326:
	j	cont.56324
bgt.56325:
	addi	$r3, $r0, 1
cont.56324:
	bnei	$r3, 1, bnei.56329
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56331
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56333
	addi	$r3, $r0, 0
	j	cont.56332
bgt.56333:
	addi	$r3, $r0, 1
cont.56332:
	j	cont.56330
bgt.56331:
	addi	$r3, $r0, 1
cont.56330:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56335
	addi	$r2, $r0, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.56334
bnei.56335:
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
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
cont.56334:
	j	cont.56328
bnei.56329:
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
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56337
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56339
	addi	$r3, $r0, 0
	j	cont.56338
bgt.56339:
	addi	$r3, $r0, 1
cont.56338:
	j	cont.56336
bgt.56337:
	addi	$r3, $r0, 1
cont.56336:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56341
	j	cont.56340
bnei.56341:
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
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
cont.56340:
cont.56328:
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
	j	cont.56322
bne.56323:
	lw	$r2, 12($r0)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.56322:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56343
	j	cont.56342
bnei.56343:
	fneg	$f0, $f0
cont.56342:
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
	bne	$r2, $r3, bne.56345
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56347
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56349
	addi	$r3, $r0, 0
	j	cont.56348
bgt.56349:
	addi	$r3, $r0, 1
cont.56348:
	j	cont.56346
bgt.56347:
	addi	$r3, $r0, 1
cont.56346:
	bnei	$r3, 1, bnei.56351
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56353
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56355
	addi	$r3, $r0, 0
	j	cont.56354
bgt.56355:
	addi	$r3, $r0, 1
cont.56354:
	j	cont.56352
bgt.56353:
	addi	$r3, $r0, 1
cont.56352:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56357
	addi	$r2, $r0, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	j	cont.56356
bnei.56357:
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
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.56356:
	j	cont.56350
bnei.56351:
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
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56359
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56361
	addi	$r3, $r0, 0
	j	cont.56360
bgt.56361:
	addi	$r3, $r0, 1
cont.56360:
	j	cont.56358
bgt.56359:
	addi	$r3, $r0, 1
cont.56358:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56363
	j	cont.56362
bnei.56363:
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
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
cont.56362:
cont.56350:
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
	j	cont.56344
bne.56345:
	lw	$r2, 12($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56344:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56365
	j	cont.56364
bnei.56365:
	fneg	$f0, $f0
cont.56364:
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
	bne	$r2, $r3, bne.56367
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56369
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56371
	addi	$r3, $r0, 0
	j	cont.56370
bgt.56371:
	addi	$r3, $r0, 1
cont.56370:
	j	cont.56368
bgt.56369:
	addi	$r3, $r0, 1
cont.56368:
	bnei	$r3, 1, bnei.56373
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56375
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56377
	addi	$r3, $r0, 0
	j	cont.56376
bgt.56377:
	addi	$r3, $r0, 1
cont.56376:
	j	cont.56374
bgt.56375:
	addi	$r3, $r0, 1
cont.56374:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56379
	addi	$r2, $r0, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.56378
bnei.56379:
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
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56378:
	j	cont.56372
bnei.56373:
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
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56381
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56383
	addi	$r3, $r0, 0
	j	cont.56382
bgt.56383:
	addi	$r3, $r0, 1
cont.56382:
	j	cont.56380
bgt.56381:
	addi	$r3, $r0, 1
cont.56380:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56385
	j	cont.56384
bnei.56385:
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
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56384:
cont.56372:
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
	j	cont.56366
bne.56367:
	lw	$r2, 12($r0)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.56366:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56387
	j	cont.56386
bnei.56387:
	fneg	$f0, $f0
cont.56386:
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
	bnei	$r3, 0, bnei.56389
	j	cont.56388
bnei.56389:
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
	bne	$r2, $r3, bne.56391
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56393
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56395
	addi	$r3, $r0, 0
	j	cont.56394
bgt.56395:
	addi	$r3, $r0, 1
cont.56394:
	j	cont.56392
bgt.56393:
	addi	$r3, $r0, 1
cont.56392:
	bnei	$r3, 1, bnei.56397
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56399
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56401
	addi	$r3, $r0, 0
	j	cont.56400
bgt.56401:
	addi	$r3, $r0, 1
cont.56400:
	j	cont.56398
bgt.56399:
	addi	$r3, $r0, 1
cont.56398:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56403
	addi	$r2, $r0, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	j	cont.56402
bnei.56403:
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
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.56402:
	j	cont.56396
bnei.56397:
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
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56405
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56407
	addi	$r3, $r0, 0
	j	cont.56406
bgt.56407:
	addi	$r3, $r0, 1
cont.56406:
	j	cont.56404
bgt.56405:
	addi	$r3, $r0, 1
cont.56404:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56409
	j	cont.56408
bnei.56409:
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
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.56408:
cont.56396:
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
	j	cont.56390
bne.56391:
	lw	$r2, 12($r0)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.56390:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56411
	j	cont.56410
bnei.56411:
	fneg	$f0, $f0
cont.56410:
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
	bne	$r2, $r3, bne.56413
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56415
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56417
	addi	$r3, $r0, 0
	j	cont.56416
bgt.56417:
	addi	$r3, $r0, 1
cont.56416:
	j	cont.56414
bgt.56415:
	addi	$r3, $r0, 1
cont.56414:
	bnei	$r3, 1, bnei.56419
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56421
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56423
	addi	$r3, $r0, 0
	j	cont.56422
bgt.56423:
	addi	$r3, $r0, 1
cont.56422:
	j	cont.56420
bgt.56421:
	addi	$r3, $r0, 1
cont.56420:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56425
	addi	$r2, $r0, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	j	cont.56424
bnei.56425:
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
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.56424:
	j	cont.56418
bnei.56419:
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
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56427
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56429
	addi	$r3, $r0, 0
	j	cont.56428
bgt.56429:
	addi	$r3, $r0, 1
cont.56428:
	j	cont.56426
bgt.56427:
	addi	$r3, $r0, 1
cont.56426:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56431
	j	cont.56430
bnei.56431:
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
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.56430:
cont.56418:
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
	j	cont.56412
bne.56413:
	lw	$r2, 12($r0)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56412:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56433
	j	cont.56432
bnei.56433:
	fneg	$f0, $f0
cont.56432:
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
	bne	$r2, $r3, bne.56435
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56437
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56439
	addi	$r3, $r0, 0
	j	cont.56438
bgt.56439:
	addi	$r3, $r0, 1
cont.56438:
	j	cont.56436
bgt.56437:
	addi	$r3, $r0, 1
cont.56436:
	bnei	$r3, 1, bnei.56441
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56443
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56445
	addi	$r3, $r0, 0
	j	cont.56444
bgt.56445:
	addi	$r3, $r0, 1
cont.56444:
	j	cont.56442
bgt.56443:
	addi	$r3, $r0, 1
cont.56442:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56447
	addi	$r2, $r0, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	j	cont.56446
bnei.56447:
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
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56446:
	j	cont.56440
bnei.56441:
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
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56449
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56451
	addi	$r3, $r0, 0
	j	cont.56450
bgt.56451:
	addi	$r3, $r0, 1
cont.56450:
	j	cont.56448
bgt.56449:
	addi	$r3, $r0, 1
cont.56448:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56453
	j	cont.56452
bnei.56453:
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
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56452:
cont.56440:
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
	j	cont.56434
bne.56435:
	lw	$r2, 12($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
cont.56434:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56455
	j	cont.56454
bnei.56455:
	fneg	$f0, $f0
cont.56454:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lw	$r2, -144($r29)
	swcl	$f0, 8($r2)
cont.56388:
	lw	$r3, -12($r29)
	bnei	$r3, 2, bnei.56457
	addi	$r4, $r0, 1
	j	cont.56456
bnei.56457:
	lw	$r4, -92($r29)
cont.56456:
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
	bnei	$r6, 3, bnei.56459
	lwcl	$f0, 0($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.56461
	fmove	$f0, $f30
	j	cont.56460
bclf.56461:
	c.eq.s	$f0, $f30
	bclf	bclf.56463
	fmove	$f1, $f30
	j	cont.56462
bclf.56463:
	c.le.s	$f0, $f30
	bclf	bclf.56465
	fmove	$f1, $f29
	j	cont.56464
bclf.56465:
	fmove	$f1, $f31
cont.56464:
cont.56462:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.56460:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.56467
	fmove	$f0, $f30
	j	cont.56466
bclf.56467:
	c.eq.s	$f0, $f30
	bclf	bclf.56469
	fmove	$f1, $f30
	j	cont.56468
bclf.56469:
	c.le.s	$f0, $f30
	bclf	bclf.56471
	fmove	$f1, $f29
	j	cont.56470
bclf.56471:
	fmove	$f1, $f31
cont.56470:
cont.56468:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.56466:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.56473
	fmove	$f0, $f30
	j	cont.56472
bclf.56473:
	c.eq.s	$f0, $f30
	bclf	bclf.56475
	fmove	$f1, $f30
	j	cont.56474
bclf.56475:
	c.le.s	$f0, $f30
	bclf	bclf.56477
	fmove	$f1, $f29
	j	cont.56476
bclf.56477:
	fmove	$f1, $f31
cont.56476:
cont.56474:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f1, $f0
cont.56472:
	swcl	$f0, 8($r4)
	j	cont.56458
bnei.56459:
	bnei	$r6, 2, bnei.56479
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
	bclf	bclf.56481
	fmove	$f0, $f31
	j	cont.56480
bclf.56481:
	lwcl	$f1, -88($r29)
	c.le.s	$f30, $f1
	bclf	bclf.56483
	div.s	$f0, $f29, $f0
	j	cont.56482
bclf.56483:
	div.s	$f0, $f31, $f0
cont.56482:
cont.56480:
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 0($r4)
	lwcl	$f1, 4($r4)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 4($r4)
	lwcl	$f1, 8($r4)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 8($r4)
	j	cont.56478
bnei.56479:
cont.56478:
cont.56458:
	bnei	$r5, 0, bnei.56485
	j	cont.56484
bnei.56485:
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	rotate_quadratic_matrix.3768
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
cont.56484:
	addi	$r2, $r0, 1
	jr	$r31
read_object.4009:
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56487
	jr	$r31
bgt.56487:
	sw	$r2, -4($r29)
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	bnei	$r2, 1, bnei.56489
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56491
	jr	$r31
bgt.56491:
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	bnei	$r2, 1, bnei.56493
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56495
	jr	$r31
bgt.56495:
	sw	$r2, -12($r29)
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.56497
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56499
	jr	$r31
bgt.56499:
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	bnei	$r2, 1, bnei.56501
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56503
	jr	$r31
bgt.56503:
	sw	$r2, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.56505
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56507
	jr	$r31
bgt.56507:
	sw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.56509
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56511
	jr	$r31
bgt.56511:
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.56513
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56515
	jr	$r31
bgt.56515:
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 1, bnei.56517
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56519
	jr	$r31
bgt.56519:
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 1, bnei.56521
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56523
	jr	$r31
bgt.56523:
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, 1, bnei.56525
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56527
	jr	$r31
bgt.56527:
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.56529
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56531
	jr	$r31
bgt.56531:
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	bnei	$r2, 1, bnei.56533
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56535
	jr	$r31
bgt.56535:
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.56537
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56539
	jr	$r31
bgt.56539:
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	bnei	$r2, 1, bnei.56541
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56543
	jr	$r31
bgt.56543:
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	bnei	$r2, 1, bnei.56545
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, 60
	bgt	$r3, $r2, bgt.56547
	jr	$r31
bgt.56547:
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	bnei	$r2, 1, bnei.56549
	lw	$r2, -64($r29)
	addi	$r2, $r2, 1
	j	read_object.4009
bnei.56549:
	lw	$r2, -64($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56545:
	lw	$r2, -60($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56541:
	lw	$r2, -56($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56537:
	lw	$r2, -52($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56533:
	lw	$r2, -48($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56529:
	lw	$r2, -44($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56525:
	lw	$r2, -40($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56521:
	lw	$r2, -36($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56517:
	lw	$r2, -32($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56513:
	lw	$r2, -28($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56509:
	lw	$r2, -24($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56505:
	lw	$r2, -20($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56501:
	lw	$r2, -16($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56497:
	lw	$r2, -12($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56493:
	lw	$r2, -8($r29)
	sw	$r2, 28($r0)
	jr	$r31
bnei.56489:
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
	bnei	$r2, -1, bnei.56551
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	j	min_caml_create_array
bnei.56551:
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
	bgt	$r2, $r3, bgt.56553
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56555
	addi	$r2, $r0, 0
	j	cont.56554
bgt.56555:
	addi	$r2, $r0, 1
cont.56554:
	j	cont.56552
bgt.56553:
	addi	$r2, $r0, 1
cont.56552:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56557
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56556
bnei.56557:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56559
	sw	$r4, 8($r0)
	j	cont.56558
bnei.56559:
cont.56558:
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
cont.56556:
	bnei	$r2, -1, bnei.56561
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56560
bnei.56561:
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
	bnei	$r2, -1, bnei.56563
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.56562
bnei.56563:
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
	bgt	$r2, $r3, bgt.56565
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56567
	addi	$r2, $r0, 0
	j	cont.56566
bgt.56567:
	addi	$r2, $r0, 1
cont.56566:
	j	cont.56564
bgt.56565:
	addi	$r2, $r0, 1
cont.56564:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56569
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.56568
bnei.56569:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56571
	sw	$r4, 8($r0)
	j	cont.56570
bnei.56571:
cont.56570:
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
cont.56568:
	bnei	$r2, -1, bnei.56573
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.56572
bnei.56573:
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
cont.56572:
	lw	$r3, -20($r29)
	sll	$r3, $r3, 2
	lw	$r4, -24($r29)
	swr	$r4, $r3($r2)	!st var
cont.56562:
	lw	$r3, -12($r29)
	sll	$r3, $r3, 2
	lw	$r4, -16($r29)
	swr	$r4, $r3($r2)	!st var
cont.56560:
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
	bgt	$r2, $r3, bgt.56575
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56577
	addi	$r2, $r0, 0
	j	cont.56576
bgt.56577:
	addi	$r2, $r0, 1
cont.56576:
	j	cont.56574
bgt.56575:
	addi	$r2, $r0, 1
cont.56574:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56579
	addi	$r2, $r0, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.56578
bnei.56579:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56581
	sw	$r4, 8($r0)
	j	cont.56580
bnei.56581:
cont.56580:
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
cont.56578:
	bnei	$r2, -1, bnei.56583
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.56582
bnei.56583:
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
	bnei	$r2, -1, bnei.56585
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.56584
bnei.56585:
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
	bgt	$r2, $r3, bgt.56587
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56589
	addi	$r2, $r0, 0
	j	cont.56588
bgt.56589:
	addi	$r2, $r0, 1
cont.56588:
	j	cont.56586
bgt.56587:
	addi	$r2, $r0, 1
cont.56586:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56591
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56590
bnei.56591:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56593
	sw	$r4, 8($r0)
	j	cont.56592
bnei.56593:
cont.56592:
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
cont.56590:
	bnei	$r2, -1, bnei.56595
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56594
bnei.56595:
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
cont.56594:
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
cont.56584:
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.56582:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.56597
	lw	$r2, -4($r29)
	addi	$r2, $r2, 1
	j	min_caml_create_array
bnei.56597:
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
	bnei	$r2, -1, bnei.56599
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.56598
bnei.56599:
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
	bgt	$r2, $r3, bgt.56601
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56603
	addi	$r2, $r0, 0
	j	cont.56602
bgt.56603:
	addi	$r2, $r0, 1
cont.56602:
	j	cont.56600
bgt.56601:
	addi	$r2, $r0, 1
cont.56600:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56605
	addi	$r2, $r0, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.56604
bnei.56605:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56607
	sw	$r4, 8($r0)
	j	cont.56606
bnei.56607:
cont.56606:
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
cont.56604:
	bnei	$r2, -1, bnei.56609
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.56608
bnei.56609:
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
cont.56608:
	lw	$r3, -28($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.56598:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.56611
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.56610
bnei.56611:
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
	bgt	$r2, $r3, bgt.56613
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56615
	addi	$r2, $r0, 0
	j	cont.56614
bgt.56615:
	addi	$r2, $r0, 1
cont.56614:
	j	cont.56612
bgt.56613:
	addi	$r2, $r0, 1
cont.56612:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56617
	addi	$r2, $r0, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.56616
bnei.56617:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56619
	sw	$r4, 8($r0)
	j	cont.56618
bnei.56619:
cont.56618:
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
cont.56616:
	bnei	$r2, -1, bnei.56621
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.56620
bnei.56621:
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
cont.56620:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.56623
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.56622
bnei.56623:
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
	bnei	$r2, -1, bnei.56625
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.56624
bnei.56625:
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
cont.56624:
	lw	$r3, -40($r29)
	sll	$r3, $r3, 2
	lw	$r4, -48($r29)
	swr	$r4, $r3($r2)	!st var
cont.56622:
	lw	$r3, -24($r29)
	sll	$r3, $r3, 2
	lw	$r4, -36($r29)
	swr	$r4, $r3($r2)	!st var
cont.56610:
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
	bgt	$r2, $r3, bgt.56627
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56629
	addi	$r2, $r0, 0
	j	cont.56628
bgt.56629:
	addi	$r2, $r0, 1
cont.56628:
	j	cont.56626
bgt.56627:
	addi	$r2, $r0, 1
cont.56626:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56631
	addi	$r2, $r0, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.56630
bnei.56631:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56633
	sw	$r4, 8($r0)
	j	cont.56632
bnei.56633:
cont.56632:
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
cont.56630:
	bnei	$r2, -1, bnei.56635
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	j	cont.56634
bnei.56635:
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
	bnei	$r2, -1, bnei.56637
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.56636
bnei.56637:
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
	bgt	$r2, $r3, bgt.56639
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56641
	addi	$r2, $r0, 0
	j	cont.56640
bgt.56641:
	addi	$r2, $r0, 1
cont.56640:
	j	cont.56638
bgt.56639:
	addi	$r2, $r0, 1
cont.56638:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56643
	addi	$r2, $r0, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56642
bnei.56643:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56645
	sw	$r4, 8($r0)
	j	cont.56644
bnei.56645:
cont.56644:
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
cont.56642:
	bnei	$r2, -1, bnei.56647
	addi	$r2, $r0, 3
	addi	$r3, $r0, -1
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.56646
bnei.56647:
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
cont.56646:
	lw	$r3, -12($r29)
	sw	$r3, 4($r2)
cont.56636:
	lw	$r3, -8($r29)
	sw	$r3, 0($r2)
cont.56634:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56649
	jr	$r31
bnei.56649:
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
	bnei	$r2, -1, bnei.56651
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.56650
bnei.56651:
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
	bgt	$r2, $r3, bgt.56653
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56655
	addi	$r2, $r0, 0
	j	cont.56654
bgt.56655:
	addi	$r2, $r0, 1
cont.56654:
	j	cont.56652
bgt.56653:
	addi	$r2, $r0, 1
cont.56652:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56657
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.56656
bnei.56657:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56659
	sw	$r4, 8($r0)
	j	cont.56658
bnei.56659:
cont.56658:
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
cont.56656:
	bnei	$r2, -1, bnei.56661
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.56660
bnei.56661:
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
cont.56660:
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
cont.56650:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56663
	jr	$r31
bnei.56663:
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
	bgt	$r2, $r3, bgt.56665
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56667
	addi	$r2, $r0, 0
	j	cont.56666
bgt.56667:
	addi	$r2, $r0, 1
cont.56666:
	j	cont.56664
bgt.56665:
	addi	$r2, $r0, 1
cont.56664:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56669
	addi	$r2, $r0, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.56668
bnei.56669:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56671
	sw	$r4, 8($r0)
	j	cont.56670
bnei.56671:
cont.56670:
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
cont.56668:
	bnei	$r2, -1, bnei.56673
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.56672
bnei.56673:
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
cont.56672:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56675
	jr	$r31
bnei.56675:
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
	bnei	$r3, -1, bnei.56677
	jr	$r31
bnei.56677:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	sw	$r2, 364($r4)
	addi	$r2, $r3, 1
	j	read_and_network.4048
read_parameter.4059:
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
	bgt	$r2, $r3, bgt.56679
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56681
	addi	$r2, $r0, 0
	j	cont.56680
bgt.56681:
	addi	$r2, $r0, 1
cont.56680:
	j	cont.56678
bgt.56679:
	addi	$r2, $r0, 1
cont.56678:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56683
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	j	cont.56682
bnei.56683:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56685
	sw	$r4, 24($r0)
	j	cont.56684
bnei.56685:
cont.56684:
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
cont.56682:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56687
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56689
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56691
	addi	$r3, $r0, 0
	j	cont.56690
bgt.56691:
	addi	$r3, $r0, 1
cont.56690:
	j	cont.56688
bgt.56689:
	addi	$r3, $r0, 1
cont.56688:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56693
	addi	$r2, $r0, 0
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	j	cont.56692
bnei.56693:
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
cont.56692:
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
	j	cont.56686
bne.56687:
	lw	$r2, 12($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.56686:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56695
	j	cont.56694
bnei.56695:
	fneg	$f0, $f0
cont.56694:
	swcl	$f0, 320($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56697
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56699
	addi	$r2, $r0, 0
	j	cont.56698
bgt.56699:
	addi	$r2, $r0, 1
cont.56698:
	j	cont.56696
bgt.56697:
	addi	$r2, $r0, 1
cont.56696:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56701
	addi	$r2, $r0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.56700
bnei.56701:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56703
	sw	$r4, 24($r0)
	j	cont.56702
bnei.56703:
cont.56702:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.56700:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56705
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56707
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56709
	addi	$r3, $r0, 0
	j	cont.56708
bgt.56709:
	addi	$r3, $r0, 1
cont.56708:
	j	cont.56706
bgt.56707:
	addi	$r3, $r0, 1
cont.56706:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56711
	addi	$r2, $r0, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	j	cont.56710
bnei.56711:
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
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
cont.56710:
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
	j	cont.56704
bne.56705:
	lw	$r2, 12($r0)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.56704:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56713
	j	cont.56712
bnei.56713:
	fneg	$f0, $f0
cont.56712:
	swcl	$f0, 324($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56715
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56717
	addi	$r2, $r0, 0
	j	cont.56716
bgt.56717:
	addi	$r2, $r0, 1
cont.56716:
	j	cont.56714
bgt.56715:
	addi	$r2, $r0, 1
cont.56714:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56719
	addi	$r2, $r0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.56718
bnei.56719:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56721
	sw	$r4, 24($r0)
	j	cont.56720
bnei.56721:
cont.56720:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.56718:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56723
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56725
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56727
	addi	$r3, $r0, 0
	j	cont.56726
bgt.56727:
	addi	$r3, $r0, 1
cont.56726:
	j	cont.56724
bgt.56725:
	addi	$r3, $r0, 1
cont.56724:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56729
	addi	$r2, $r0, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.56728
bnei.56729:
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
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.56728:
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
	j	cont.56722
bne.56723:
	lw	$r2, 12($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.56722:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56731
	j	cont.56730
bnei.56731:
	fneg	$f0, $f0
cont.56730:
	swcl	$f0, 328($r0)
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56733
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56735
	addi	$r2, $r0, 0
	j	cont.56734
bgt.56735:
	addi	$r2, $r0, 1
cont.56734:
	j	cont.56732
bgt.56733:
	addi	$r2, $r0, 1
cont.56732:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56737
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.56736
bnei.56737:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56739
	sw	$r4, 24($r0)
	j	cont.56738
bnei.56739:
cont.56738:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.56736:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56741
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56743
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56745
	addi	$r3, $r0, 0
	j	cont.56744
bgt.56745:
	addi	$r3, $r0, 1
cont.56744:
	j	cont.56742
bgt.56743:
	addi	$r3, $r0, 1
cont.56742:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56747
	addi	$r2, $r0, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.56746
bnei.56747:
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
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.56746:
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
	j	cont.56740
bne.56741:
	lw	$r2, 12($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.56740:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56749
	j	cont.56748
bnei.56749:
	fneg	$f0, $f0
cont.56748:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56751
	addi	$r2, $r0, 0
	j	cont.56750
bclf.56751:
	addi	$r2, $r0, 1
cont.56750:
	fabs	$f5, $f1
	swcl	$f0, -36($r29)
	swcl	$f4, -40($r29)
	swcl	$f3, -44($r29)
	swcl	$f1, -48($r29)
	sw	$r2, -52($r29)
	swcl	$f2, -56($r29)
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lwcl	$f1, -56($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56753
	lw	$r2, -52($r29)
	j	cont.56752
bclf.56753:
	lwcl	$f2, -48($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56755
	addi	$r2, $r0, 1
	j	cont.56754
bclf.56755:
	addi	$r2, $r0, 0
cont.56754:
cont.56752:
	c.le.s	$f0, $f1
	bclf	bclf.56757
	j	cont.56756
bclf.56757:
	lwcl	$f2, -44($r29)
	sub.s	$f0, $f2, $f0
cont.56756:
	lwcl	$f2, -40($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56759
	j	cont.56758
bclf.56759:
	sub.s	$f0, $f1, $f0
cont.56758:
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
	bnei	$r2, 1, bnei.56761
	j	cont.56760
bnei.56761:
	fneg	$f0, $f0
cont.56760:
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -36($r29)
	c.le.s	$f4, $f30
	bclf	bclf.56763
	addi	$r2, $r0, 0
	j	cont.56762
bclf.56763:
	addi	$r2, $r0, 1
cont.56762:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -60($r29)
	swcl	$f3, -64($r29)
	swcl	$f2, -68($r29)
	sw	$r2, -72($r29)
	swcl	$f1, -76($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56765
	c.le.s	$f30, $f5
	bclf	bclf.56767
	fmove	$f0, $f5
	j	cont.56766
bclf.56767:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56766:
	j	cont.56764
bclf.56765:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.56764:
	lwcl	$f1, -76($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56769
	lw	$r2, -72($r29)
	j	cont.56768
bclf.56769:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56771
	addi	$r2, $r0, 1
	j	cont.56770
bclf.56771:
	addi	$r2, $r0, 0
cont.56770:
cont.56768:
	c.le.s	$f0, $f1
	bclf	bclf.56773
	j	cont.56772
bclf.56773:
	lwcl	$f2, -68($r29)
	sub.s	$f0, $f2, $f0
cont.56772:
	lwcl	$f2, -64($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56775
	j	cont.56774
bclf.56775:
	sub.s	$f0, $f1, $f0
cont.56774:
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
	bnei	$r2, 1, bnei.56777
	j	cont.56776
bnei.56777:
	fneg	$f0, $f0
cont.56776:
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56779
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56781
	addi	$r2, $r0, 0
	j	cont.56780
bgt.56781:
	addi	$r2, $r0, 1
cont.56780:
	j	cont.56778
bgt.56779:
	addi	$r2, $r0, 1
cont.56778:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56783
	addi	$r2, $r0, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.56782
bnei.56783:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56785
	sw	$r4, 24($r0)
	j	cont.56784
bnei.56785:
cont.56784:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.56782:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56787
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56789
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56791
	addi	$r3, $r0, 0
	j	cont.56790
bgt.56791:
	addi	$r3, $r0, 1
cont.56790:
	j	cont.56788
bgt.56789:
	addi	$r3, $r0, 1
cont.56788:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56793
	addi	$r2, $r0, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.56792
bnei.56793:
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
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.56792:
	lw	$r2, 12($r0)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -88($r29)
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lwcl	$f1, -88($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -84($r29)
	add.s	$f0, $f1, $f0
	j	cont.56786
bne.56787:
	lw	$r2, 12($r0)
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
cont.56786:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56795
	j	cont.56794
bnei.56795:
	fneg	$f0, $f0
cont.56794:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f1, $f1, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56797
	addi	$r2, $r0, 0
	j	cont.56796
bclf.56797:
	addi	$r2, $r0, 1
cont.56796:
	fabs	$f5, $f1
	swcl	$f0, -92($r29)
	swcl	$f4, -96($r29)
	swcl	$f3, -100($r29)
	swcl	$f1, -104($r29)
	sw	$r2, -108($r29)
	swcl	$f2, -112($r29)
	fmove	$f0, $f5
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lwcl	$f1, -112($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56799
	lw	$r2, -108($r29)
	j	cont.56798
bclf.56799:
	lwcl	$f2, -104($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56801
	addi	$r2, $r0, 1
	j	cont.56800
bclf.56801:
	addi	$r2, $r0, 0
cont.56800:
cont.56798:
	c.le.s	$f0, $f1
	bclf	bclf.56803
	j	cont.56802
bclf.56803:
	lwcl	$f2, -100($r29)
	sub.s	$f0, $f2, $f0
cont.56802:
	lwcl	$f2, -96($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56805
	j	cont.56804
bclf.56805:
	sub.s	$f0, $f1, $f0
cont.56804:
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
	bnei	$r2, 1, bnei.56807
	j	cont.56806
bnei.56807:
	fneg	$f0, $f0
cont.56806:
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -92($r29)
	c.le.s	$f4, $f30
	bclf	bclf.56809
	addi	$r2, $r0, 0
	j	cont.56808
bclf.56809:
	addi	$r2, $r0, 1
cont.56808:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -116($r29)
	swcl	$f3, -120($r29)
	swcl	$f2, -124($r29)
	sw	$r2, -128($r29)
	swcl	$f1, -132($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56811
	c.le.s	$f30, $f5
	bclf	bclf.56813
	fmove	$f0, $f5
	j	cont.56812
bclf.56813:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56812:
	j	cont.56810
bclf.56811:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56810:
	lwcl	$f1, -132($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56815
	lw	$r2, -128($r29)
	j	cont.56814
bclf.56815:
	lwcl	$f2, -92($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56817
	addi	$r2, $r0, 1
	j	cont.56816
bclf.56817:
	addi	$r2, $r0, 0
cont.56816:
cont.56814:
	c.le.s	$f0, $f1
	bclf	bclf.56819
	j	cont.56818
bclf.56819:
	lwcl	$f2, -124($r29)
	sub.s	$f0, $f2, $f0
cont.56818:
	lwcl	$f2, -120($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56821
	j	cont.56820
bclf.56821:
	sub.s	$f0, $f1, $f0
cont.56820:
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
	bnei	$r2, 1, bnei.56823
	j	cont.56822
bnei.56823:
	fneg	$f0, $f0
cont.56822:
	lwcl	$f1, -60($r29)
	mul.s	$f2, $f1, $f0
	lfh	$f3, 17224
	mul.s	$f2, $f2, $f3
	swcl	$f2, 720($r0)
	lfh	$f2, 49992
	lwcl	$f3, -80($r29)
	mul.s	$f2, $f3, $f2
	swcl	$f2, 724($r0)
	lwcl	$f2, -116($r29)
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
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56825
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56827
	addi	$r2, $r0, 0
	j	cont.56826
bgt.56827:
	addi	$r2, $r0, 1
cont.56826:
	j	cont.56824
bgt.56825:
	addi	$r2, $r0, 1
cont.56824:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56829
	addi	$r2, $r0, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.56828
bnei.56829:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56831
	sw	$r4, 8($r0)
	j	cont.56830
bnei.56831:
cont.56830:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56828:
	addi	$r2, $r0, 0
	sw	$r2, 12($r0)
	addi	$r2, $r0, 0
	sw	$r2, 16($r0)
	addi	$r2, $r0, 1
	sw	$r2, 20($r0)
	addi	$r2, $r0, 0
	sw	$r2, 24($r0)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56833
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56835
	addi	$r2, $r0, 0
	j	cont.56834
bgt.56835:
	addi	$r2, $r0, 1
cont.56834:
	j	cont.56832
bgt.56833:
	addi	$r2, $r0, 1
cont.56832:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56837
	addi	$r2, $r0, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.56836
bnei.56837:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56839
	sw	$r4, 24($r0)
	j	cont.56838
bnei.56839:
cont.56838:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56836:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56841
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56843
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56845
	addi	$r3, $r0, 0
	j	cont.56844
bgt.56845:
	addi	$r3, $r0, 1
cont.56844:
	j	cont.56842
bgt.56843:
	addi	$r3, $r0, 1
cont.56842:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56847
	addi	$r2, $r0, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.56846
bnei.56847:
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
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
cont.56846:
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
	j	cont.56840
bne.56841:
	lw	$r2, 12($r0)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.56840:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56849
	j	cont.56848
bnei.56849:
	fneg	$f0, $f0
cont.56848:
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
	bclf	bclf.56851
	addi	$r2, $r0, 0
	j	cont.56850
bclf.56851:
	addi	$r2, $r0, 1
cont.56850:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -144($r29)
	swcl	$f2, -148($r29)
	swcl	$f0, -152($r29)
	sw	$r2, -156($r29)
	swcl	$f1, -160($r29)
	c.le.s	$f4, $f5
	bclf	bclf.56853
	c.le.s	$f30, $f4
	bclf	bclf.56855
	fmove	$f0, $f4
	j	cont.56854
bclf.56855:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56854:
	j	cont.56852
bclf.56853:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56852:
	lwcl	$f1, -160($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56857
	lw	$r2, -156($r29)
	j	cont.56856
bclf.56857:
	lwcl	$f2, -152($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56859
	addi	$r2, $r0, 1
	j	cont.56858
bclf.56859:
	addi	$r2, $r0, 0
cont.56858:
cont.56856:
	c.le.s	$f0, $f1
	bclf	bclf.56861
	j	cont.56860
bclf.56861:
	lwcl	$f2, -148($r29)
	sub.s	$f0, $f2, $f0
cont.56860:
	lwcl	$f2, -144($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56863
	j	cont.56862
bclf.56863:
	sub.s	$f0, $f1, $f0
cont.56862:
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
	bnei	$r2, 1, bnei.56865
	j	cont.56864
bnei.56865:
	fneg	$f0, $f0
cont.56864:
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
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56867
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56869
	addi	$r2, $r0, 0
	j	cont.56868
bgt.56869:
	addi	$r2, $r0, 1
cont.56868:
	j	cont.56866
bgt.56867:
	addi	$r2, $r0, 1
cont.56866:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56871
	addi	$r2, $r0, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	j	cont.56870
bnei.56871:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56873
	sw	$r4, 24($r0)
	j	cont.56872
bnei.56873:
cont.56872:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56870:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56875
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56877
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56879
	addi	$r3, $r0, 0
	j	cont.56878
bgt.56879:
	addi	$r3, $r0, 1
cont.56878:
	j	cont.56876
bgt.56877:
	addi	$r3, $r0, 1
cont.56876:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56881
	addi	$r2, $r0, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	j	cont.56880
bnei.56881:
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
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.56880:
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
	j	cont.56874
bne.56875:
	lw	$r2, 12($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
cont.56874:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56883
	j	cont.56882
bnei.56883:
	fneg	$f0, $f0
cont.56882:
	lfh	$f1, 15502
	lfl	$f1, 64053
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -152($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.56885
	addi	$r2, $r0, 0
	j	cont.56884
bclf.56885:
	addi	$r2, $r0, 1
cont.56884:
	fabs	$f5, $f1
	swcl	$f0, -172($r29)
	swcl	$f4, -176($r29)
	swcl	$f3, -180($r29)
	swcl	$f1, -184($r29)
	sw	$r2, -188($r29)
	swcl	$f2, -192($r29)
	fmove	$f0, $f5
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lwcl	$f1, -192($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56887
	lw	$r2, -188($r29)
	j	cont.56886
bclf.56887:
	lwcl	$f2, -184($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56889
	addi	$r2, $r0, 1
	j	cont.56888
bclf.56889:
	addi	$r2, $r0, 0
cont.56888:
cont.56886:
	c.le.s	$f0, $f1
	bclf	bclf.56891
	j	cont.56890
bclf.56891:
	lwcl	$f2, -180($r29)
	sub.s	$f0, $f2, $f0
cont.56890:
	lwcl	$f2, -176($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56893
	j	cont.56892
bclf.56893:
	sub.s	$f0, $f1, $f0
cont.56892:
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
	bnei	$r2, 1, bnei.56895
	j	cont.56894
bnei.56895:
	fneg	$f0, $f0
cont.56894:
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	lwcl	$f4, -172($r29)
	c.le.s	$f4, $f30
	bclf	bclf.56897
	addi	$r2, $r0, 0
	j	cont.56896
bclf.56897:
	addi	$r2, $r0, 1
cont.56896:
	fabs	$f5, $f4
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -196($r29)
	swcl	$f3, -200($r29)
	swcl	$f2, -204($r29)
	sw	$r2, -208($r29)
	swcl	$f1, -212($r29)
	c.le.s	$f5, $f6
	bclf	bclf.56899
	c.le.s	$f30, $f5
	bclf	bclf.56901
	fmove	$f0, $f5
	j	cont.56900
bclf.56901:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
cont.56900:
	j	cont.56898
bclf.56899:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -216($r29)	!call-dir
	addi	$r29, $r29, -216	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 216
	lw	$r31, -216($r29)	!call-dir
cont.56898:
	lwcl	$f1, -212($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56903
	lw	$r2, -208($r29)
	j	cont.56902
bclf.56903:
	lwcl	$f2, -172($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56905
	addi	$r2, $r0, 1
	j	cont.56904
bclf.56905:
	addi	$r2, $r0, 0
cont.56904:
cont.56902:
	c.le.s	$f0, $f1
	bclf	bclf.56907
	j	cont.56906
bclf.56907:
	lwcl	$f2, -204($r29)
	sub.s	$f0, $f2, $f0
cont.56906:
	lwcl	$f2, -200($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56909
	j	cont.56908
bclf.56909:
	sub.s	$f0, $f1, $f0
cont.56908:
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
	bnei	$r2, 1, bnei.56911
	j	cont.56910
bnei.56911:
	fneg	$f0, $f0
cont.56910:
	lwcl	$f1, -196($r29)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 344($r0)
	lfh	$f0, 16329
	lfl	$f0, 4059
	lwcl	$f2, -172($r29)
	sub.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.56913
	addi	$r2, $r0, 0
	j	cont.56912
bclf.56913:
	addi	$r2, $r0, 1
cont.56912:
	fabs	$f5, $f0
	swcl	$f4, -216($r29)
	swcl	$f3, -220($r29)
	swcl	$f0, -224($r29)
	sw	$r2, -228($r29)
	swcl	$f2, -232($r29)
	fmove	$f0, $f5
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lwcl	$f1, -232($r29)
	c.le.s	$f0, $f1
	bclf	bclf.56915
	lw	$r2, -228($r29)
	j	cont.56914
bclf.56915:
	lwcl	$f2, -224($r29)
	c.le.s	$f2, $f30
	bclf	bclf.56917
	addi	$r2, $r0, 1
	j	cont.56916
bclf.56917:
	addi	$r2, $r0, 0
cont.56916:
cont.56914:
	c.le.s	$f0, $f1
	bclf	bclf.56919
	j	cont.56918
bclf.56919:
	lwcl	$f2, -220($r29)
	sub.s	$f0, $f2, $f0
cont.56918:
	lwcl	$f2, -216($r29)
	c.le.s	$f0, $f2
	bclf	bclf.56921
	j	cont.56920
bclf.56921:
	sub.s	$f0, $f1, $f0
cont.56920:
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
	bnei	$r2, 1, bnei.56923
	j	cont.56922
bnei.56923:
	fneg	$f0, $f0
cont.56922:
	lwcl	$f1, -196($r29)
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
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56925
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56927
	addi	$r2, $r0, 0
	j	cont.56926
bgt.56927:
	addi	$r2, $r0, 1
cont.56926:
	j	cont.56924
bgt.56925:
	addi	$r2, $r0, 1
cont.56924:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56929
	addi	$r2, $r0, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	j	cont.56928
bnei.56929:
	lw	$r2, 24($r0)
	bnei	$r2, 0, bnei.56931
	sw	$r4, 24($r0)
	j	cont.56930
bnei.56931:
cont.56930:
	lw	$r2, 12($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 12($r0)
	addi	$r2, $r4, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	read_float_token1.2565
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
cont.56928:
	addi	$r3, $r0, 46
	bne	$r2, $r3, bne.56933
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	addi	$r3, $r0, 48
	bgt	$r3, $r2, bgt.56935
	addi	$r3, $r0, 57
	bgt	$r2, $r3, bgt.56937
	addi	$r3, $r0, 0
	j	cont.56936
bgt.56937:
	addi	$r3, $r0, 1
cont.56936:
	j	cont.56934
bgt.56935:
	addi	$r3, $r0, 1
cont.56934:
	addi	$r4, $r0, 1
	bnei	$r3, 1, bnei.56939
	addi	$r2, $r0, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	j	cont.56938
bnei.56939:
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
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	read_float_token2.2595
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
cont.56938:
	lw	$r2, 12($r0)
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r2, 16($r0)
	swcl	$f0, -236($r29)
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	lw	$r2, 20($r0)
	swcl	$f0, -240($r29)
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
	lwcl	$f1, -240($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -236($r29)
	add.s	$f0, $f1, $f0
	j	cont.56932
bne.56933:
	lw	$r2, 12($r0)
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
cont.56932:
	lw	$r2, 24($r0)
	bnei	$r2, 1, bnei.56941
	j	cont.56940
bnei.56941:
	fneg	$f0, $f0
cont.56940:
	swcl	$f0, 356($r0)
	addi	$r2, $r0, 0
	sw	$r2, -244($r29)
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	bnei	$r2, 1, bnei.56943
	addi	$r2, $r0, 1
	sw	$r2, -248($r29)
	sw	$r31, -252($r29)	!call-dir
	addi	$r29, $r29, -252	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 252
	lw	$r31, -252($r29)	!call-dir
	bnei	$r2, 1, bnei.56945
	addi	$r2, $r0, 2
	sw	$r2, -252($r29)
	sw	$r31, -256($r29)	!call-dir
	addi	$r29, $r29, -256	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 256
	lw	$r31, -256($r29)	!call-dir
	bnei	$r2, 1, bnei.56947
	addi	$r2, $r0, 3
	sw	$r2, -256($r29)
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	bnei	$r2, 1, bnei.56949
	addi	$r2, $r0, 4
	sw	$r2, -260($r29)
	sw	$r31, -264($r29)	!call-dir
	addi	$r29, $r29, -264	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 264
	lw	$r31, -264($r29)	!call-dir
	bnei	$r2, 1, bnei.56951
	addi	$r2, $r0, 5
	sw	$r2, -264($r29)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	bnei	$r2, 1, bnei.56953
	addi	$r2, $r0, 6
	sw	$r2, -268($r29)
	sw	$r31, -272($r29)	!call-dir
	addi	$r29, $r29, -272	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 272
	lw	$r31, -272($r29)	!call-dir
	bnei	$r2, 1, bnei.56955
	addi	$r2, $r0, 7
	sw	$r2, -272($r29)
	sw	$r31, -276($r29)	!call-dir
	addi	$r29, $r29, -276	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 276
	lw	$r31, -276($r29)	!call-dir
	bnei	$r2, 1, bnei.56957
	addi	$r2, $r0, 8
	sw	$r2, -276($r29)
	sw	$r31, -280($r29)	!call-dir
	addi	$r29, $r29, -280	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 280
	lw	$r31, -280($r29)	!call-dir
	bnei	$r2, 1, bnei.56959
	addi	$r2, $r0, 9
	sw	$r2, -280($r29)
	sw	$r31, -284($r29)	!call-dir
	addi	$r29, $r29, -284	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 284
	lw	$r31, -284($r29)	!call-dir
	bnei	$r2, 1, bnei.56961
	addi	$r2, $r0, 10
	sw	$r2, -284($r29)
	sw	$r31, -288($r29)	!call-dir
	addi	$r29, $r29, -288	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 288
	lw	$r31, -288($r29)	!call-dir
	bnei	$r2, 1, bnei.56963
	addi	$r2, $r0, 11
	sw	$r2, -288($r29)
	sw	$r31, -292($r29)	!call-dir
	addi	$r29, $r29, -292	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 292
	lw	$r31, -292($r29)	!call-dir
	bnei	$r2, 1, bnei.56965
	addi	$r2, $r0, 12
	sw	$r2, -292($r29)
	sw	$r31, -296($r29)	!call-dir
	addi	$r29, $r29, -296	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 296
	lw	$r31, -296($r29)	!call-dir
	bnei	$r2, 1, bnei.56967
	addi	$r2, $r0, 13
	sw	$r2, -296($r29)
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	read_nth_object.3881
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	bnei	$r2, 1, bnei.56969
	addi	$r2, $r0, 14
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	read_object.4009
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	j	cont.56968
bnei.56969:
	lw	$r2, -296($r29)
	sw	$r2, 28($r0)
cont.56968:
	j	cont.56966
bnei.56967:
	lw	$r2, -292($r29)
	sw	$r2, 28($r0)
cont.56966:
	j	cont.56964
bnei.56965:
	lw	$r2, -288($r29)
	sw	$r2, 28($r0)
cont.56964:
	j	cont.56962
bnei.56963:
	lw	$r2, -284($r29)
	sw	$r2, 28($r0)
cont.56962:
	j	cont.56960
bnei.56961:
	lw	$r2, -280($r29)
	sw	$r2, 28($r0)
cont.56960:
	j	cont.56958
bnei.56959:
	lw	$r2, -276($r29)
	sw	$r2, 28($r0)
cont.56958:
	j	cont.56956
bnei.56957:
	lw	$r2, -272($r29)
	sw	$r2, 28($r0)
cont.56956:
	j	cont.56954
bnei.56955:
	lw	$r2, -268($r29)
	sw	$r2, 28($r0)
cont.56954:
	j	cont.56952
bnei.56953:
	lw	$r2, -264($r29)
	sw	$r2, 28($r0)
cont.56952:
	j	cont.56950
bnei.56951:
	lw	$r2, -260($r29)
	sw	$r2, 28($r0)
cont.56950:
	j	cont.56948
bnei.56949:
	lw	$r2, -256($r29)
	sw	$r2, 28($r0)
cont.56948:
	j	cont.56946
bnei.56947:
	lw	$r2, -252($r29)
	sw	$r2, 28($r0)
cont.56946:
	j	cont.56944
bnei.56945:
	lw	$r2, -248($r29)
	sw	$r2, 28($r0)
cont.56944:
	j	cont.56942
bnei.56943:
	lw	$r2, -244($r29)
	sw	$r2, 28($r0)
cont.56942:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	bnei	$r2, -1, bnei.56971
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -300($r29)	!call-dir
	addi	$r29, $r29, -300	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 300
	lw	$r31, -300($r29)	!call-dir
	j	cont.56970
bnei.56971:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -300($r29)
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56973
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56975
	addi	$r2, $r0, 0
	j	cont.56974
bgt.56975:
	addi	$r2, $r0, 1
cont.56974:
	j	cont.56972
bgt.56973:
	addi	$r2, $r0, 1
cont.56972:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56977
	addi	$r2, $r0, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	j	cont.56976
bnei.56977:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56979
	sw	$r4, 8($r0)
	j	cont.56978
bnei.56979:
cont.56978:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
cont.56976:
	bnei	$r2, -1, bnei.56981
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -304($r29)	!call-dir
	addi	$r29, $r29, -304	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 304
	lw	$r31, -304($r29)	!call-dir
	j	cont.56980
bnei.56981:
	addi	$r3, $r0, 2
	sw	$r2, -304($r29)
	addi	$r2, $r3, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	lw	$r3, -304($r29)
	sw	$r3, 4($r2)
cont.56980:
	lw	$r3, -300($r29)
	sw	$r3, 0($r2)
cont.56970:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56983
	j	cont.56982
bnei.56983:
	sw	$r2, 364($r0)
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.56985
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.56987
	addi	$r2, $r0, 0
	j	cont.56986
bgt.56987:
	addi	$r2, $r0, 1
cont.56986:
	j	cont.56984
bgt.56985:
	addi	$r2, $r0, 1
cont.56984:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.56989
	addi	$r2, $r0, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	j	cont.56988
bnei.56989:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.56991
	sw	$r4, 8($r0)
	j	cont.56990
bnei.56991:
cont.56990:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
cont.56988:
	bnei	$r2, -1, bnei.56993
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -308($r29)	!call-dir
	addi	$r29, $r29, -308	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 308
	lw	$r31, -308($r29)	!call-dir
	j	cont.56992
bnei.56993:
	addi	$r3, $r0, 1
	sw	$r2, -308($r29)
	addi	$r2, $r3, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	lw	$r3, -308($r29)
	sw	$r3, 0($r2)
cont.56992:
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56995
	j	cont.56994
bnei.56995:
	sw	$r2, 368($r0)
	addi	$r2, $r0, 0
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.56997
	j	cont.56996
bnei.56997:
	sw	$r2, 372($r0)
	addi	$r2, $r0, 3
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	read_and_network.4048
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
cont.56996:
cont.56994:
cont.56982:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	addi	$r2, $r0, 0
	addi	$r3, $r0, 32
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	bnei	$r2, -1, bnei.56999
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -312($r29)	!call-dir
	addi	$r29, $r29, -312	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 312
	lw	$r31, -312($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.56998
bnei.56999:
	addi	$r3, $r0, 0
	sw	$r3, 4($r0)
	addi	$r3, $r0, 0
	sw	$r3, 8($r0)
	sw	$r2, -312($r29)
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.57001
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.57003
	addi	$r2, $r0, 0
	j	cont.57002
bgt.57003:
	addi	$r2, $r0, 1
cont.57002:
	j	cont.57000
bgt.57001:
	addi	$r2, $r0, 1
cont.57000:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.57005
	addi	$r2, $r0, 0
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	j	cont.57004
bnei.57005:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.57007
	sw	$r4, 8($r0)
	j	cont.57006
bnei.57007:
cont.57006:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
cont.57004:
	bnei	$r2, -1, bnei.57009
	addi	$r2, $r0, 2
	addi	$r3, $r0, -1
	sw	$r31, -316($r29)	!call-dir
	addi	$r29, $r29, -316	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 316
	lw	$r31, -316($r29)	!call-dir
	j	cont.57008
bnei.57009:
	addi	$r3, $r0, 2
	sw	$r2, -316($r29)
	addi	$r2, $r3, 0
	sw	$r31, -320($r29)	!call-dir
	addi	$r29, $r29, -320	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 320
	lw	$r31, -320($r29)	!call-dir
	lw	$r3, -316($r29)
	sw	$r3, 4($r2)
cont.57008:
	lw	$r3, -312($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.56998:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57011
	addi	$r2, $r0, 1
	sw	$r31, -320($r29)	!call-dir
	addi	$r29, $r29, -320	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 320
	lw	$r31, -320($r29)	!call-dir
	j	cont.57010
bnei.57011:
	addi	$r2, $r0, 0
	sw	$r2, 4($r0)
	addi	$r2, $r0, 0
	sw	$r2, 8($r0)
	sw	$r3, -320($r29)
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	min_caml_input_char
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 48
	bgt	$r2, $r3, bgt.57013
	addi	$r2, $r0, 57
	bgt	$r3, $r2, bgt.57015
	addi	$r2, $r0, 0
	j	cont.57014
bgt.57015:
	addi	$r2, $r0, 1
cont.57014:
	j	cont.57012
bgt.57013:
	addi	$r2, $r0, 1
cont.57012:
	addi	$r4, $r0, 1
	bnei	$r2, 1, bnei.57017
	addi	$r2, $r0, 0
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	j	cont.57016
bnei.57017:
	lw	$r2, 8($r0)
	bnei	$r2, 0, bnei.57019
	sw	$r4, 8($r0)
	j	cont.57018
bnei.57019:
cont.57018:
	lw	$r2, 4($r0)
	sll	$r5, $r2, 3
	sll	$r2, $r2, 1
	addu	$r2, $r5, $r2
	addi	$r5, $r3, -48
	addu	$r2, $r2, $r5
	sw	$r2, 4($r0)
	addi	$r2, $r4, 0
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	read_int_token.2507
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
cont.57016:
	bnei	$r2, -1, bnei.57021
	addi	$r2, $r0, 1
	addi	$r3, $r0, -1
	sw	$r31, -324($r29)	!call-dir
	addi	$r29, $r29, -324	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 324
	lw	$r31, -324($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	j	cont.57020
bnei.57021:
	addi	$r3, $r0, 1
	sw	$r2, -324($r29)
	addi	$r2, $r3, 0
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	lw	$r3, -324($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
cont.57020:
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57023
	addi	$r2, $r0, 2
	sw	$r31, -328($r29)	!call-dir
	addi	$r29, $r29, -328	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 328
	lw	$r31, -328($r29)	!call-dir
	j	cont.57022
bnei.57023:
	addi	$r2, $r0, 0
	sw	$r3, -328($r29)
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	read_net_item.4020
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57025
	addi	$r2, $r0, 3
	sw	$r31, -332($r29)	!call-dir
	addi	$r29, $r29, -332	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 332
	lw	$r31, -332($r29)	!call-dir
	j	cont.57024
bnei.57025:
	addi	$r2, $r0, 3
	sw	$r3, -332($r29)
	sw	$r31, -336($r29)	!call-dir
	addi	$r29, $r29, -336	!call-dir
	jal	read_or_network.4034
	addi	$r29, $r29, 336
	lw	$r31, -336($r29)	!call-dir
	lw	$r3, -332($r29)
	sw	$r3, 8($r2)
cont.57024:
	lw	$r3, -328($r29)
	sw	$r3, 4($r2)
cont.57022:
	lw	$r3, -320($r29)
	sw	$r3, 0($r2)
cont.57010:
	sw	$r2, 572($r0)
	jr	$r31
solver_rect.4106:
	lwcl	$f3, 0($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57027
	addi	$r4, $r0, 0
	j	cont.57026
bclf.57027:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57029
	addi	$r6, $r0, 0
	j	cont.57028
bclf.57029:
	addi	$r6, $r0, 1
cont.57028:
	lwcl	$f3, 0($r4)
	bne	$r5, $r6, bne.57031
	fneg	$f3, $f3
	j	cont.57030
bne.57031:
cont.57030:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57033
	addi	$r4, $r0, 0
	j	cont.57032
bclf.57033:
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57035
	addi	$r4, $r0, 0
	j	cont.57034
bclf.57035:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.57034:
cont.57032:
cont.57026:
	bnei	$r4, 1, bnei.57037
	addi	$r2, $r0, 1
	jr	$r31
bnei.57037:
	lwcl	$f3, 4($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57039
	addi	$r4, $r0, 0
	j	cont.57038
bclf.57039:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 4($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57041
	addi	$r6, $r0, 0
	j	cont.57040
bclf.57041:
	addi	$r6, $r0, 1
cont.57040:
	lwcl	$f3, 4($r4)
	bne	$r5, $r6, bne.57043
	fneg	$f3, $f3
	j	cont.57042
bne.57043:
cont.57042:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57045
	addi	$r4, $r0, 0
	j	cont.57044
bclf.57045:
	lwcl	$f4, 0($r4)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57047
	addi	$r4, $r0, 0
	j	cont.57046
bclf.57047:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.57046:
cont.57044:
cont.57038:
	bnei	$r4, 1, bnei.57049
	addi	$r2, $r0, 2
	jr	$r31
bnei.57049:
	lwcl	$f3, 8($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57051
	addi	$r2, $r0, 0
	j	cont.57050
bclf.57051:
	lw	$r4, 16($r2)
	lw	$r2, 24($r2)
	lwcl	$f3, 8($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57053
	addi	$r5, $r0, 0
	j	cont.57052
bclf.57053:
	addi	$r5, $r0, 1
cont.57052:
	lwcl	$f3, 8($r4)
	bne	$r2, $r5, bne.57055
	fneg	$f3, $f3
	j	cont.57054
bne.57055:
cont.57054:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r3)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r4)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.57057
	addi	$r2, $r0, 0
	j	cont.57056
bclf.57057:
	lwcl	$f0, 4($r4)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.57059
	addi	$r2, $r0, 0
	j	cont.57058
bclf.57059:
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 1
cont.57058:
cont.57056:
cont.57050:
	bnei	$r2, 1, bnei.57061
	addi	$r2, $r0, 3
	jr	$r31
bnei.57061:
	addi	$r2, $r0, 0
	jr	$r31
solver_second.4209:
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
	bnei	$r4, 0, bnei.57063
	fmove	$f3, $f6
	j	cont.57062
bnei.57063:
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
cont.57062:
	c.eq.s	$f3, $f30
	bclf	bclf.57065
	addi	$r2, $r0, 0
	jr	$r31
bclf.57065:
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
	bnei	$r3, 0, bnei.57067
	fmove	$f4, $f7
	j	cont.57066
bnei.57067:
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
cont.57066:
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
	bnei	$r3, 0, bnei.57069
	fmove	$f0, $f5
	j	cont.57068
bnei.57069:
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
cont.57068:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.57071
	sub.s	$f0, $f0, $f31
	j	cont.57070
bnei.57071:
cont.57070:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.57073
	addi	$r2, $r0, 0
	jr	$r31
bclf.57073:
	sqrt	$f0, $f0
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57075
	j	cont.57074
bnei.57075:
	fneg	$f0, $f0
cont.57074:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
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
	bnei	$r4, 1, bnei.57077
	lwcl	$f3, 0($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57079
	addi	$r4, $r0, 0
	j	cont.57078
bclf.57079:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 0($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57081
	addi	$r6, $r0, 0
	j	cont.57080
bclf.57081:
	addi	$r6, $r0, 1
cont.57080:
	lwcl	$f3, 0($r4)
	bne	$r5, $r6, bne.57083
	fneg	$f3, $f3
	j	cont.57082
bne.57083:
cont.57082:
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 0($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 4($r4)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57085
	addi	$r4, $r0, 0
	j	cont.57084
bclf.57085:
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57087
	addi	$r4, $r0, 0
	j	cont.57086
bclf.57087:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.57086:
cont.57084:
cont.57078:
	bnei	$r4, 1, bnei.57089
	addi	$r2, $r0, 1
	jr	$r31
bnei.57089:
	lwcl	$f3, 4($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57091
	addi	$r4, $r0, 0
	j	cont.57090
bclf.57091:
	lw	$r4, 16($r2)
	lw	$r5, 24($r2)
	lwcl	$f3, 4($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57093
	addi	$r6, $r0, 0
	j	cont.57092
bclf.57093:
	addi	$r6, $r0, 1
cont.57092:
	lwcl	$f3, 4($r4)
	bne	$r5, $r6, bne.57095
	fneg	$f3, $f3
	j	cont.57094
bne.57095:
cont.57094:
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 4($r3)
	div.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57097
	addi	$r4, $r0, 0
	j	cont.57096
bclf.57097:
	lwcl	$f4, 0($r4)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57099
	addi	$r4, $r0, 0
	j	cont.57098
bclf.57099:
	swcl	$f3, 576($r0)
	addi	$r4, $r0, 1
cont.57098:
cont.57096:
cont.57090:
	bnei	$r4, 1, bnei.57101
	addi	$r2, $r0, 2
	jr	$r31
bnei.57101:
	lwcl	$f3, 8($r3)
	c.eq.s	$f3, $f30
	bclf	bclf.57103
	addi	$r2, $r0, 0
	j	cont.57102
bclf.57103:
	lw	$r4, 16($r2)
	lw	$r2, 24($r2)
	lwcl	$f3, 8($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57105
	addi	$r5, $r0, 0
	j	cont.57104
bclf.57105:
	addi	$r5, $r0, 1
cont.57104:
	lwcl	$f3, 8($r4)
	bne	$r2, $r5, bne.57107
	fneg	$f3, $f3
	j	cont.57106
bne.57107:
cont.57106:
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 8($r3)
	div.s	$f2, $f2, $f3
	lwcl	$f3, 0($r4)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.57109
	addi	$r2, $r0, 0
	j	cont.57108
bclf.57109:
	lwcl	$f0, 4($r4)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.57111
	addi	$r2, $r0, 0
	j	cont.57110
bclf.57111:
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 1
cont.57110:
cont.57108:
cont.57102:
	bnei	$r2, 1, bnei.57113
	addi	$r2, $r0, 3
	jr	$r31
bnei.57113:
	addi	$r2, $r0, 0
	jr	$r31
bnei.57077:
	bnei	$r4, 2, bnei.57115
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
	bclf	bclf.57117
	addi	$r2, $r0, 0
	jr	$r31
bclf.57117:
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
bnei.57115:
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
	bnei	$r4, 0, bnei.57119
	fmove	$f3, $f6
	j	cont.57118
bnei.57119:
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
cont.57118:
	c.eq.s	$f3, $f30
	bclf	bclf.57121
	addi	$r2, $r0, 0
	jr	$r31
bclf.57121:
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
	bnei	$r3, 0, bnei.57123
	fmove	$f4, $f7
	j	cont.57122
bnei.57123:
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
cont.57122:
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
	bnei	$r3, 0, bnei.57125
	fmove	$f0, $f5
	j	cont.57124
bnei.57125:
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
cont.57124:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.57127
	sub.s	$f0, $f0, $f31
	j	cont.57126
bnei.57127:
cont.57126:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.57129
	addi	$r2, $r0, 0
	jr	$r31
bclf.57129:
	sqrt	$f0, $f0
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57131
	j	cont.57130
bnei.57131:
	fneg	$f0, $f0
cont.57130:
	sub.s	$f0, $f0, $f4
	div.s	$f0, $f0, $f3
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
solver_rect_fast.4267:
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f3, $f0
	lwcl	$f4, 4($r4)
	mul.s	$f3, $f3, $f4
	lw	$r5, 16($r2)
	lwcl	$f4, 4($r5)
	lwcl	$f5, 4($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f1
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57133
	addi	$r5, $r0, 0
	j	cont.57132
bclf.57133:
	lw	$r5, 16($r2)
	lwcl	$f4, 8($r5)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57135
	addi	$r5, $r0, 0
	j	cont.57134
bclf.57135:
	lwcl	$f4, 4($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.57137
	addi	$r5, $r0, 0
	j	cont.57136
bclf.57137:
	addi	$r5, $r0, 1
cont.57136:
cont.57134:
cont.57132:
	bnei	$r5, 1, bnei.57139
	swcl	$f3, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
bnei.57139:
	lwcl	$f3, 8($r4)
	sub.s	$f3, $f3, $f1
	lwcl	$f4, 12($r4)
	mul.s	$f3, $f3, $f4
	lw	$r5, 16($r2)
	lwcl	$f4, 0($r5)
	lwcl	$f5, 0($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f0
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57141
	addi	$r5, $r0, 0
	j	cont.57140
bclf.57141:
	lw	$r5, 16($r2)
	lwcl	$f4, 8($r5)
	lwcl	$f5, 8($r3)
	mul.s	$f5, $f3, $f5
	add.s	$f5, $f5, $f2
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57143
	addi	$r5, $r0, 0
	j	cont.57142
bclf.57143:
	lwcl	$f4, 12($r4)
	c.eq.s	$f4, $f30
	bclf	bclf.57145
	addi	$r5, $r0, 0
	j	cont.57144
bclf.57145:
	addi	$r5, $r0, 1
cont.57144:
cont.57142:
cont.57140:
	bnei	$r5, 1, bnei.57147
	swcl	$f3, 576($r0)
	addi	$r2, $r0, 2
	jr	$r31
bnei.57147:
	lwcl	$f3, 16($r4)
	sub.s	$f2, $f3, $f2
	lwcl	$f3, 20($r4)
	mul.s	$f2, $f2, $f3
	lw	$r5, 16($r2)
	lwcl	$f3, 0($r5)
	lwcl	$f4, 0($r3)
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f4, $f0
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.57149
	addi	$r2, $r0, 0
	j	cont.57148
bclf.57149:
	lw	$r2, 16($r2)
	lwcl	$f0, 4($r2)
	lwcl	$f3, 4($r3)
	mul.s	$f3, $f2, $f3
	add.s	$f1, $f3, $f1
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.57151
	addi	$r2, $r0, 0
	j	cont.57150
bclf.57151:
	lwcl	$f0, 20($r4)
	c.eq.s	$f0, $f30
	bclf	bclf.57153
	addi	$r2, $r0, 0
	j	cont.57152
bclf.57153:
	addi	$r2, $r0, 1
cont.57152:
cont.57150:
cont.57148:
	bnei	$r2, 1, bnei.57155
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 3
	jr	$r31
bnei.57155:
	addi	$r2, $r0, 0
	jr	$r31
solver_fast.4415:
	sll	$r5, $r2, 2
	lw	$r5, 80($r5)
	lwcl	$f0, 0($r4)
	lw	$r6, 20($r5)
	lwcl	$f1, 0($r6)
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 4($r4)
	lw	$r6, 20($r5)
	lwcl	$f2, 4($r6)
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 8($r4)
	lw	$r4, 20($r5)
	lwcl	$f3, 8($r4)
	sub.s	$f2, $f2, $f3
	lw	$r4, 4($r3)
	sll	$r2, $r2, 2
	lwr	$r4, $r2($r4)	!ld var
	lw	$r2, 4($r5)
	bnei	$r2, 1, bnei.57157
	lw	$r3, 0($r3)
	addi	$r2, $r5, 0
	j	solver_rect_fast.4267
bnei.57157:
	bnei	$r2, 2, bnei.57159
	lwcl	$f3, 0($r4)
	c.le.s	$f30, $f3
	bclf	bclf.57161
	addi	$r2, $r0, 0
	jr	$r31
bclf.57161:
	lwcl	$f3, 4($r4)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r4)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
	jr	$r31
bnei.57159:
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.57163
	addi	$r2, $r0, 0
	jr	$r31
bclf.57163:
	lwcl	$f4, 4($r4)
	mul.s	$f4, $f4, $f0
	lwcl	$f5, 8($r4)
	mul.s	$f5, $f5, $f1
	add.s	$f4, $f4, $f5
	lwcl	$f5, 12($r4)
	mul.s	$f5, $f5, $f2
	add.s	$f4, $f4, $f5
	mul.s	$f5, $f0, $f0
	lw	$r2, 16($r5)
	lwcl	$f6, 0($r2)
	mul.s	$f5, $f5, $f6
	mul.s	$f6, $f1, $f1
	lw	$r2, 16($r5)
	lwcl	$f7, 4($r2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f6, $f2, $f2
	lw	$r2, 16($r5)
	lwcl	$f7, 8($r2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lw	$r2, 12($r5)
	bnei	$r2, 0, bnei.57165
	fmove	$f0, $f5
	j	cont.57164
bnei.57165:
	mul.s	$f6, $f1, $f2
	lw	$r2, 36($r5)
	lwcl	$f7, 0($r2)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	mul.s	$f2, $f2, $f0
	lw	$r2, 36($r5)
	lwcl	$f6, 4($r2)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f5, $f2
	mul.s	$f0, $f0, $f1
	lw	$r2, 36($r5)
	lwcl	$f1, 8($r2)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.57164:
	lw	$r2, 4($r5)
	bnei	$r2, 3, bnei.57167
	sub.s	$f0, $f0, $f31
	j	cont.57166
bnei.57167:
cont.57166:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.57169
	addi	$r2, $r0, 0
	jr	$r31
bclf.57169:
	lw	$r2, 24($r5)
	bnei	$r2, 1, bnei.57171
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.57170
bnei.57171:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.57170:
	addi	$r2, $r0, 1
	jr	$r31
setup_second_table.4626:
	addi	$r4, $r0, 5
	fmove	$f0, $f30
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	addi	$r2, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
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
	bnei	$r5, 0, bnei.57173
	fmove	$f0, $f3
	j	cont.57172
bnei.57173:
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
cont.57172:
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
	bnei	$r5, 0, bnei.57175
	swcl	$f1, 4($r2)
	swcl	$f2, 8($r2)
	swcl	$f3, 12($r2)
	j	cont.57174
bnei.57175:
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
cont.57174:
	c.eq.s	$f0, $f30
	bclf	bclf.57177
	j	cont.57176
bclf.57177:
	div.s	$f0, $f31, $f0
	swcl	$f0, 16($r2)
cont.57176:
	jr	$r31
iter_setup_dirvec_constants.4707:
	blti	$r3, 0, blti.57179
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.57181
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
	bclf	bclf.57183
	swcl	$f1, 4($r2)
	j	cont.57182
bclf.57183:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57185
	addi	$r6, $r0, 0
	j	cont.57184
bclf.57185:
	addi	$r6, $r0, 1
cont.57184:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.57187
	fneg	$f0, $f0
	j	cont.57186
bne.57187:
cont.57186:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.57182:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57189
	swcl	$f1, 12($r2)
	j	cont.57188
bclf.57189:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57191
	addi	$r6, $r0, 0
	j	cont.57190
bclf.57191:
	addi	$r6, $r0, 1
cont.57190:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.57193
	fneg	$f0, $f0
	j	cont.57192
bne.57193:
cont.57192:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.57188:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57195
	swcl	$f1, 20($r2)
	j	cont.57194
bclf.57195:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57197
	addi	$r6, $r0, 0
	j	cont.57196
bclf.57197:
	addi	$r6, $r0, 1
cont.57196:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.57199
	fneg	$f0, $f0
	j	cont.57198
bne.57199:
cont.57198:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.57194:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57180
bnei.57181:
	bnei	$r7, 2, bnei.57201
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
	bclf	bclf.57203
	swcl	$f1, 0($r2)
	j	cont.57202
bclf.57203:
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
cont.57202:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57200
bnei.57201:
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.57200:
cont.57180:
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.57205
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, -4($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	bnei	$r7, 1, bnei.57207
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
	bclf	bclf.57209
	swcl	$f1, 4($r2)
	j	cont.57208
bclf.57209:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57211
	addi	$r6, $r0, 0
	j	cont.57210
bclf.57211:
	addi	$r6, $r0, 1
cont.57210:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.57213
	fneg	$f0, $f0
	j	cont.57212
bne.57213:
cont.57212:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.57208:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57215
	swcl	$f1, 12($r2)
	j	cont.57214
bclf.57215:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57217
	addi	$r6, $r0, 0
	j	cont.57216
bclf.57217:
	addi	$r6, $r0, 1
cont.57216:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.57219
	fneg	$f0, $f0
	j	cont.57218
bne.57219:
cont.57218:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.57214:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57221
	swcl	$f1, 20($r2)
	j	cont.57220
bclf.57221:
	lw	$r4, -32($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57223
	addi	$r6, $r0, 0
	j	cont.57222
bclf.57223:
	addi	$r6, $r0, 1
cont.57222:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.57225
	fneg	$f0, $f0
	j	cont.57224
bne.57225:
cont.57224:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.57220:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57206
bnei.57207:
	bnei	$r7, 2, bnei.57227
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
	bclf	bclf.57229
	swcl	$f1, 0($r2)
	j	cont.57228
bclf.57229:
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
cont.57228:
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57226
bnei.57227:
	sw	$r5, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	swr	$r2, $r4($r5)	!st var
cont.57226:
cont.57206:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.57205:
	jr	$r31
blti.57179:
	jr	$r31
setup_dirvec_constants.4723:
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.57231
	sll	$r4, $r3, 2
	lw	$r4, 80($r4)
	lw	$r5, 4($r2)
	lw	$r6, 0($r2)
	lw	$r7, 4($r4)
	sw	$r2, -4($r29)
	bnei	$r7, 1, bnei.57233
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
	bclf	bclf.57235
	swcl	$f1, 4($r2)
	j	cont.57234
bclf.57235:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57237
	addi	$r6, $r0, 0
	j	cont.57236
bclf.57237:
	addi	$r6, $r0, 1
cont.57236:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.57239
	fneg	$f0, $f0
	j	cont.57238
bne.57239:
cont.57238:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.57234:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57241
	swcl	$f1, 12($r2)
	j	cont.57240
bclf.57241:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57243
	addi	$r6, $r0, 0
	j	cont.57242
bclf.57243:
	addi	$r6, $r0, 1
cont.57242:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.57245
	fneg	$f0, $f0
	j	cont.57244
bne.57245:
cont.57244:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.57240:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.57247
	swcl	$f1, 20($r2)
	j	cont.57246
bclf.57247:
	lw	$r4, -16($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.57249
	addi	$r6, $r0, 0
	j	cont.57248
bclf.57249:
	addi	$r6, $r0, 1
cont.57248:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.57251
	fneg	$f0, $f0
	j	cont.57250
bne.57251:
cont.57250:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.57246:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57232
bnei.57233:
	bnei	$r7, 2, bnei.57253
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
	bclf	bclf.57255
	swcl	$f1, 0($r2)
	j	cont.57254
bclf.57255:
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
cont.57254:
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.57252
bnei.57253:
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -12($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	swr	$r2, $r4($r5)	!st var
cont.57252:
cont.57232:
	addi	$r3, $r3, -1
	lw	$r2, -4($r29)
	j	iter_setup_dirvec_constants.4707
blti.57231:
	jr	$r31
setup_startp_constants.4729:
	blti	$r3, 0, blti.57257
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
	bnei	$r6, 2, bnei.57259
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
	j	cont.57258
bnei.57259:
	bgti	$r6, 2, bgti.57261
	j	cont.57260
bgti.57261:
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
	bnei	$r7, 0, bnei.57263
	fmove	$f0, $f3
	j	cont.57262
bnei.57263:
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
cont.57262:
	bnei	$r6, 3, bnei.57265
	sub.s	$f0, $f0, $f31
	j	cont.57264
bnei.57265:
cont.57264:
	swcl	$f0, 12($r5)
cont.57260:
cont.57258:
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.57267
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
	bnei	$r6, 2, bnei.57269
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
	j	cont.57268
bnei.57269:
	bgti	$r6, 2, bgti.57271
	j	cont.57270
bgti.57271:
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
	bnei	$r7, 0, bnei.57273
	fmove	$f0, $f3
	j	cont.57272
bnei.57273:
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
cont.57272:
	bnei	$r6, 3, bnei.57275
	sub.s	$f0, $f0, $f31
	j	cont.57274
bnei.57275:
cont.57274:
	swcl	$f0, 12($r5)
cont.57270:
cont.57268:
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
blti.57267:
	jr	$r31
blti.57257:
	jr	$r31
setup_startp.4779:
	lwcl	$f0, 0($r2)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r2)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r2)
	swcl	$f0, 692($r0)
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	blti	$r3, 0, blti.57277
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
	bnei	$r6, 2, bnei.57279
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
	j	cont.57278
bnei.57279:
	bgti	$r6, 2, bgti.57281
	j	cont.57280
bgti.57281:
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
	bnei	$r7, 0, bnei.57283
	fmove	$f0, $f3
	j	cont.57282
bnei.57283:
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
cont.57282:
	bnei	$r6, 3, bnei.57285
	sub.s	$f0, $f0, $f31
	j	cont.57284
bnei.57285:
cont.57284:
	swcl	$f0, 12($r5)
cont.57280:
cont.57278:
	addi	$r3, $r3, -1
	j	setup_startp_constants.4729
blti.57277:
	jr	$r31
is_outside.4824:
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
	bnei	$r3, 1, bnei.57287
	lw	$r3, 16($r2)
	lwcl	$f3, 0($r3)
	fabs	$f0, $f0
	c.le.s	$f3, $f0
	bclf	bclf.57289
	addi	$r3, $r0, 0
	j	cont.57288
bclf.57289:
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fabs	$f1, $f1
	c.le.s	$f0, $f1
	bclf	bclf.57291
	addi	$r3, $r0, 0
	j	cont.57290
bclf.57291:
	lw	$r3, 16($r2)
	lwcl	$f0, 8($r3)
	fabs	$f1, $f2
	c.le.s	$f0, $f1
	bclf	bclf.57293
	addi	$r3, $r0, 0
	j	cont.57292
bclf.57293:
	addi	$r3, $r0, 1
cont.57292:
cont.57290:
cont.57288:
	bnei	$r3, 1, bnei.57295
	lw	$r2, 24($r2)
	jr	$r31
bnei.57295:
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57297
	addi	$r2, $r0, 0
	jr	$r31
bnei.57297:
	addi	$r2, $r0, 1
	jr	$r31
bnei.57287:
	bnei	$r3, 2, bnei.57299
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
	c.le.s	$f30, $f0
	bclf	bclf.57301
	addi	$r3, $r0, 0
	j	cont.57300
bclf.57301:
	addi	$r3, $r0, 1
cont.57300:
	bne	$r2, $r3, bne.57303
	addi	$r2, $r0, 1
	jr	$r31
bne.57303:
	addi	$r2, $r0, 0
	jr	$r31
bnei.57299:
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
	bnei	$r3, 0, bnei.57305
	fmove	$f0, $f3
	j	cont.57304
bnei.57305:
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
cont.57304:
	lw	$r3, 4($r2)
	bnei	$r3, 3, bnei.57307
	sub.s	$f0, $f0, $f31
	j	cont.57306
bnei.57307:
cont.57306:
	lw	$r2, 24($r2)
	c.le.s	$f30, $f0
	bclf	bclf.57309
	addi	$r3, $r0, 0
	j	cont.57308
bclf.57309:
	addi	$r3, $r0, 1
cont.57308:
	bne	$r2, $r3, bne.57311
	addi	$r2, $r0, 1
	jr	$r31
bne.57311:
	addi	$r2, $r0, 0
	jr	$r31
check_all_inside.4838:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57313
	addi	$r2, $r0, 1
	jr	$r31
bnei.57313:
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
	bnei	$r5, 1, bnei.57315
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57317
	addi	$r5, $r0, 0
	j	cont.57316
bclf.57317:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57319
	addi	$r5, $r0, 0
	j	cont.57318
bclf.57319:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57321
	addi	$r5, $r0, 0
	j	cont.57320
bclf.57321:
	addi	$r5, $r0, 1
cont.57320:
cont.57318:
cont.57316:
	bnei	$r5, 1, bnei.57323
	lw	$r4, 24($r4)
	j	cont.57322
bnei.57323:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.57325
	addi	$r4, $r0, 0
	j	cont.57324
bnei.57325:
	addi	$r4, $r0, 1
cont.57324:
cont.57322:
	j	cont.57314
bnei.57315:
	bnei	$r5, 2, bnei.57327
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
	bclf	bclf.57329
	addi	$r5, $r0, 0
	j	cont.57328
bclf.57329:
	addi	$r5, $r0, 1
cont.57328:
	bne	$r4, $r5, bne.57331
	addi	$r4, $r0, 1
	j	cont.57330
bne.57331:
	addi	$r4, $r0, 0
cont.57330:
	j	cont.57326
bnei.57327:
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
	bnei	$r5, 0, bnei.57333
	fmove	$f3, $f6
	j	cont.57332
bnei.57333:
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
cont.57332:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.57335
	sub.s	$f3, $f3, $f31
	j	cont.57334
bnei.57335:
cont.57334:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.57337
	addi	$r5, $r0, 0
	j	cont.57336
bclf.57337:
	addi	$r5, $r0, 1
cont.57336:
	bne	$r4, $r5, bne.57339
	addi	$r4, $r0, 1
	j	cont.57338
bne.57339:
	addi	$r4, $r0, 0
cont.57338:
cont.57326:
cont.57314:
	bnei	$r4, 1, bnei.57341
	addi	$r2, $r0, 0
	jr	$r31
bnei.57341:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57343
	addi	$r2, $r0, 1
	jr	$r31
bnei.57343:
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
	bnei	$r5, 1, bnei.57345
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57347
	addi	$r5, $r0, 0
	j	cont.57346
bclf.57347:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57349
	addi	$r5, $r0, 0
	j	cont.57348
bclf.57349:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57351
	addi	$r5, $r0, 0
	j	cont.57350
bclf.57351:
	addi	$r5, $r0, 1
cont.57350:
cont.57348:
cont.57346:
	bnei	$r5, 1, bnei.57353
	lw	$r4, 24($r4)
	j	cont.57352
bnei.57353:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.57355
	addi	$r4, $r0, 0
	j	cont.57354
bnei.57355:
	addi	$r4, $r0, 1
cont.57354:
cont.57352:
	j	cont.57344
bnei.57345:
	bnei	$r5, 2, bnei.57357
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
	bclf	bclf.57359
	addi	$r5, $r0, 0
	j	cont.57358
bclf.57359:
	addi	$r5, $r0, 1
cont.57358:
	bne	$r4, $r5, bne.57361
	addi	$r4, $r0, 1
	j	cont.57360
bne.57361:
	addi	$r4, $r0, 0
cont.57360:
	j	cont.57356
bnei.57357:
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
	bnei	$r5, 0, bnei.57363
	fmove	$f3, $f6
	j	cont.57362
bnei.57363:
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
cont.57362:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.57365
	sub.s	$f3, $f3, $f31
	j	cont.57364
bnei.57365:
cont.57364:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.57367
	addi	$r5, $r0, 0
	j	cont.57366
bclf.57367:
	addi	$r5, $r0, 1
cont.57366:
	bne	$r4, $r5, bne.57369
	addi	$r4, $r0, 1
	j	cont.57368
bne.57369:
	addi	$r4, $r0, 0
cont.57368:
cont.57356:
cont.57344:
	bnei	$r4, 1, bnei.57371
	addi	$r2, $r0, 0
	jr	$r31
bnei.57371:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57373
	addi	$r2, $r0, 1
	jr	$r31
bnei.57373:
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
	bnei	$r5, 1, bnei.57375
	lw	$r5, 16($r4)
	lwcl	$f6, 0($r5)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57377
	addi	$r5, $r0, 0
	j	cont.57376
bclf.57377:
	lw	$r5, 16($r4)
	lwcl	$f3, 4($r5)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57379
	addi	$r5, $r0, 0
	j	cont.57378
bclf.57379:
	lw	$r5, 16($r4)
	lwcl	$f3, 8($r5)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57381
	addi	$r5, $r0, 0
	j	cont.57380
bclf.57381:
	addi	$r5, $r0, 1
cont.57380:
cont.57378:
cont.57376:
	bnei	$r5, 1, bnei.57383
	lw	$r4, 24($r4)
	j	cont.57382
bnei.57383:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.57385
	addi	$r4, $r0, 0
	j	cont.57384
bnei.57385:
	addi	$r4, $r0, 1
cont.57384:
cont.57382:
	j	cont.57374
bnei.57375:
	bnei	$r5, 2, bnei.57387
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
	bclf	bclf.57389
	addi	$r5, $r0, 0
	j	cont.57388
bclf.57389:
	addi	$r5, $r0, 1
cont.57388:
	bne	$r4, $r5, bne.57391
	addi	$r4, $r0, 1
	j	cont.57390
bne.57391:
	addi	$r4, $r0, 0
cont.57390:
	j	cont.57386
bnei.57387:
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
	bnei	$r5, 0, bnei.57393
	fmove	$f3, $f6
	j	cont.57392
bnei.57393:
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
cont.57392:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.57395
	sub.s	$f3, $f3, $f31
	j	cont.57394
bnei.57395:
cont.57394:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f3
	bclf	bclf.57397
	addi	$r5, $r0, 0
	j	cont.57396
bclf.57397:
	addi	$r5, $r0, 1
cont.57396:
	bne	$r4, $r5, bne.57399
	addi	$r4, $r0, 1
	j	cont.57398
bne.57399:
	addi	$r4, $r0, 0
cont.57398:
cont.57386:
cont.57374:
	bnei	$r4, 1, bnei.57401
	addi	$r2, $r0, 0
	jr	$r31
bnei.57401:
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57403
	addi	$r2, $r0, 1
	jr	$r31
bnei.57403:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	swcl	$f2, -4($r29)
	swcl	$f1, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.57405
	addi	$r2, $r0, 0
	jr	$r31
bnei.57405:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -16($r29)
	lwcl	$f0, -12($r29)
	lwcl	$f1, -8($r29)
	lwcl	$f2, -4($r29)
	j	check_all_inside.4838
shadow_check_and_group.4852:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57407
	addi	$r2, $r0, 0
	jr	$r31
bnei.57407:
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
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	bnei	$r7, 1, bnei.57409
	addi	$r7, $r0, 788
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.57408
bnei.57409:
	bnei	$r7, 2, bnei.57411
	lwcl	$f3, 0($r6)
	c.le.s	$f30, $f3
	bclf	bclf.57413
	addi	$r2, $r0, 0
	j	cont.57412
bclf.57413:
	lwcl	$f3, 4($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.57412:
	j	cont.57410
bnei.57411:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.57415
	addi	$r2, $r0, 0
	j	cont.57414
bclf.57415:
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
	bnei	$r7, 0, bnei.57417
	fmove	$f0, $f5
	j	cont.57416
bnei.57417:
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
cont.57416:
	lw	$r7, 4($r5)
	bnei	$r7, 3, bnei.57419
	sub.s	$f0, $f0, $f31
	j	cont.57418
bnei.57419:
cont.57418:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.57421
	addi	$r2, $r0, 0
	j	cont.57420
bclf.57421:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.57423
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.57422
bnei.57423:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.57422:
	addi	$r2, $r0, 1
cont.57420:
cont.57414:
cont.57410:
cont.57408:
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57425
	addi	$r2, $r0, 0
	j	cont.57424
bnei.57425:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57427
	addi	$r2, $r0, 0
	j	cont.57426
bclf.57427:
	addi	$r2, $r0, 1
cont.57426:
cont.57424:
	bnei	$r2, 1, bnei.57429
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
	lw	$r2, -12($r29)
	lw	$r3, 0($r2)
	bnei	$r3, -1, bnei.57431
	addi	$r2, $r0, 1
	j	cont.57430
bnei.57431:
	sll	$r3, $r3, 2
	lw	$r3, 80($r3)
	lw	$r4, 20($r3)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f1, $f3
	lw	$r4, 20($r3)
	lwcl	$f4, 4($r4)
	sub.s	$f4, $f2, $f4
	lw	$r4, 20($r3)
	lwcl	$f5, 8($r4)
	sub.s	$f5, $f0, $f5
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.57433
	lw	$r4, 16($r3)
	lwcl	$f6, 0($r4)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57435
	addi	$r4, $r0, 0
	j	cont.57434
bclf.57435:
	lw	$r4, 16($r3)
	lwcl	$f3, 4($r4)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57437
	addi	$r4, $r0, 0
	j	cont.57436
bclf.57437:
	lw	$r4, 16($r3)
	lwcl	$f3, 8($r4)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57439
	addi	$r4, $r0, 0
	j	cont.57438
bclf.57439:
	addi	$r4, $r0, 1
cont.57438:
cont.57436:
cont.57434:
	bnei	$r4, 1, bnei.57441
	lw	$r3, 24($r3)
	j	cont.57440
bnei.57441:
	lw	$r3, 24($r3)
	bnei	$r3, 1, bnei.57443
	addi	$r3, $r0, 0
	j	cont.57442
bnei.57443:
	addi	$r3, $r0, 1
cont.57442:
cont.57440:
	j	cont.57432
bnei.57433:
	bnei	$r4, 2, bnei.57445
	lw	$r4, 16($r3)
	lwcl	$f6, 0($r4)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r3, 24($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57447
	addi	$r4, $r0, 0
	j	cont.57446
bclf.57447:
	addi	$r4, $r0, 1
cont.57446:
	bne	$r3, $r4, bne.57449
	addi	$r3, $r0, 1
	j	cont.57448
bne.57449:
	addi	$r3, $r0, 0
cont.57448:
	j	cont.57444
bnei.57445:
	mul.s	$f6, $f3, $f3
	lw	$r4, 16($r3)
	lwcl	$f7, 0($r4)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r4, 16($r3)
	lwcl	$f8, 4($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r4, 16($r3)
	lwcl	$f8, 8($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r4, 12($r3)
	bnei	$r4, 0, bnei.57451
	fmove	$f3, $f6
	j	cont.57450
bnei.57451:
	mul.s	$f7, $f4, $f5
	lw	$r4, 36($r3)
	lwcl	$f8, 0($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r4, 36($r3)
	lwcl	$f7, 4($r4)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r4, 36($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.57450:
	lw	$r4, 4($r3)
	bnei	$r4, 3, bnei.57453
	sub.s	$f3, $f3, $f31
	j	cont.57452
bnei.57453:
cont.57452:
	lw	$r3, 24($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57455
	addi	$r4, $r0, 0
	j	cont.57454
bclf.57455:
	addi	$r4, $r0, 1
cont.57454:
	bne	$r3, $r4, bne.57457
	addi	$r3, $r0, 1
	j	cont.57456
bne.57457:
	addi	$r3, $r0, 0
cont.57456:
cont.57444:
cont.57432:
	bnei	$r3, 1, bnei.57459
	addi	$r2, $r0, 0
	j	cont.57458
bnei.57459:
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57461
	addi	$r2, $r0, 1
	j	cont.57460
bnei.57461:
	sll	$r3, $r3, 2
	lw	$r3, 80($r3)
	lw	$r4, 20($r3)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f1, $f3
	lw	$r4, 20($r3)
	lwcl	$f4, 4($r4)
	sub.s	$f4, $f2, $f4
	lw	$r4, 20($r3)
	lwcl	$f5, 8($r4)
	sub.s	$f5, $f0, $f5
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.57463
	lw	$r4, 16($r3)
	lwcl	$f6, 0($r4)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57465
	addi	$r4, $r0, 0
	j	cont.57464
bclf.57465:
	lw	$r4, 16($r3)
	lwcl	$f3, 4($r4)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57467
	addi	$r4, $r0, 0
	j	cont.57466
bclf.57467:
	lw	$r4, 16($r3)
	lwcl	$f3, 8($r4)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57469
	addi	$r4, $r0, 0
	j	cont.57468
bclf.57469:
	addi	$r4, $r0, 1
cont.57468:
cont.57466:
cont.57464:
	bnei	$r4, 1, bnei.57471
	lw	$r3, 24($r3)
	j	cont.57470
bnei.57471:
	lw	$r3, 24($r3)
	bnei	$r3, 1, bnei.57473
	addi	$r3, $r0, 0
	j	cont.57472
bnei.57473:
	addi	$r3, $r0, 1
cont.57472:
cont.57470:
	j	cont.57462
bnei.57463:
	bnei	$r4, 2, bnei.57475
	lw	$r4, 16($r3)
	lwcl	$f6, 0($r4)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r3, 24($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57477
	addi	$r4, $r0, 0
	j	cont.57476
bclf.57477:
	addi	$r4, $r0, 1
cont.57476:
	bne	$r3, $r4, bne.57479
	addi	$r3, $r0, 1
	j	cont.57478
bne.57479:
	addi	$r3, $r0, 0
cont.57478:
	j	cont.57474
bnei.57475:
	mul.s	$f6, $f3, $f3
	lw	$r4, 16($r3)
	lwcl	$f7, 0($r4)
	mul.s	$f6, $f6, $f7
	mul.s	$f7, $f4, $f4
	lw	$r4, 16($r3)
	lwcl	$f8, 4($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f7, $f5, $f5
	lw	$r4, 16($r3)
	lwcl	$f8, 8($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	lw	$r4, 12($r3)
	bnei	$r4, 0, bnei.57481
	fmove	$f3, $f6
	j	cont.57480
bnei.57481:
	mul.s	$f7, $f4, $f5
	lw	$r4, 36($r3)
	lwcl	$f8, 0($r4)
	mul.s	$f7, $f7, $f8
	add.s	$f6, $f6, $f7
	mul.s	$f5, $f5, $f3
	lw	$r4, 36($r3)
	lwcl	$f7, 4($r4)
	mul.s	$f5, $f5, $f7
	add.s	$f5, $f6, $f5
	mul.s	$f3, $f3, $f4
	lw	$r4, 36($r3)
	lwcl	$f4, 8($r4)
	mul.s	$f3, $f3, $f4
	add.s	$f3, $f5, $f3
cont.57480:
	lw	$r4, 4($r3)
	bnei	$r4, 3, bnei.57483
	sub.s	$f3, $f3, $f31
	j	cont.57482
bnei.57483:
cont.57482:
	lw	$r3, 24($r3)
	c.le.s	$f30, $f3
	bclf	bclf.57485
	addi	$r4, $r0, 0
	j	cont.57484
bclf.57485:
	addi	$r4, $r0, 1
cont.57484:
	bne	$r3, $r4, bne.57487
	addi	$r3, $r0, 1
	j	cont.57486
bne.57487:
	addi	$r3, $r0, 0
cont.57486:
cont.57474:
cont.57462:
	bnei	$r3, 1, bnei.57489
	addi	$r2, $r0, 0
	j	cont.57488
bnei.57489:
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57491
	addi	$r2, $r0, 1
	j	cont.57490
bnei.57491:
	sll	$r3, $r3, 2
	lw	$r3, 80($r3)
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f1, -24($r29)
	addi	$r2, $r3, 0
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 1, bnei.57493
	addi	$r2, $r0, 0
	j	cont.57492
bnei.57493:
	addi	$r2, $r0, 3
	lw	$r3, -12($r29)
	lwcl	$f0, -24($r29)
	lwcl	$f1, -20($r29)
	lwcl	$f2, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.57492:
cont.57490:
cont.57488:
cont.57460:
cont.57458:
cont.57430:
	bnei	$r2, 1, bnei.57495
	addi	$r2, $r0, 1
	jr	$r31
bnei.57495:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57497
	addi	$r2, $r0, 0
	jr	$r31
bnei.57497:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0
	addi	$r4, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57499
	addi	$r2, $r0, 0
	j	cont.57498
bnei.57499:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57501
	addi	$r2, $r0, 0
	j	cont.57500
bclf.57501:
	addi	$r2, $r0, 1
cont.57500:
cont.57498:
	bnei	$r2, 1, bnei.57503
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
	lw	$r3, -12($r29)
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57505
	addi	$r2, $r0, 1
	j	cont.57504
bnei.57505:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r4, 20($r2)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f1, $f3
	lw	$r4, 20($r2)
	lwcl	$f4, 4($r4)
	sub.s	$f4, $f2, $f4
	lw	$r4, 20($r2)
	lwcl	$f5, 8($r4)
	sub.s	$f5, $f0, $f5
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.57507
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57509
	addi	$r4, $r0, 0
	j	cont.57508
bclf.57509:
	lw	$r4, 16($r2)
	lwcl	$f3, 4($r4)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57511
	addi	$r4, $r0, 0
	j	cont.57510
bclf.57511:
	lw	$r4, 16($r2)
	lwcl	$f3, 8($r4)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57513
	addi	$r4, $r0, 0
	j	cont.57512
bclf.57513:
	addi	$r4, $r0, 1
cont.57512:
cont.57510:
cont.57508:
	bnei	$r4, 1, bnei.57515
	lw	$r2, 24($r2)
	j	cont.57514
bnei.57515:
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57517
	addi	$r2, $r0, 0
	j	cont.57516
bnei.57517:
	addi	$r2, $r0, 1
cont.57516:
cont.57514:
	j	cont.57506
bnei.57507:
	bnei	$r4, 2, bnei.57519
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57521
	addi	$r4, $r0, 0
	j	cont.57520
bclf.57521:
	addi	$r4, $r0, 1
cont.57520:
	bne	$r2, $r4, bne.57523
	addi	$r2, $r0, 1
	j	cont.57522
bne.57523:
	addi	$r2, $r0, 0
cont.57522:
	j	cont.57518
bnei.57519:
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
	bnei	$r4, 0, bnei.57525
	fmove	$f3, $f6
	j	cont.57524
bnei.57525:
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
cont.57524:
	lw	$r4, 4($r2)
	bnei	$r4, 3, bnei.57527
	sub.s	$f3, $f3, $f31
	j	cont.57526
bnei.57527:
cont.57526:
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57529
	addi	$r4, $r0, 0
	j	cont.57528
bclf.57529:
	addi	$r4, $r0, 1
cont.57528:
	bne	$r2, $r4, bne.57531
	addi	$r2, $r0, 1
	j	cont.57530
bne.57531:
	addi	$r2, $r0, 0
cont.57530:
cont.57518:
cont.57506:
	bnei	$r2, 1, bnei.57533
	addi	$r2, $r0, 0
	j	cont.57532
bnei.57533:
	lw	$r2, 4($r3)
	bnei	$r2, -1, bnei.57535
	addi	$r2, $r0, 1
	j	cont.57534
bnei.57535:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	swcl	$f1, -44($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.57537
	addi	$r2, $r0, 0
	j	cont.57536
bnei.57537:
	addi	$r2, $r0, 2
	lw	$r3, -12($r29)
	lwcl	$f0, -44($r29)
	lwcl	$f1, -40($r29)
	lwcl	$f2, -36($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.57536:
cont.57534:
cont.57532:
cont.57504:
	bnei	$r2, 1, bnei.57539
	addi	$r2, $r0, 1
	jr	$r31
bnei.57539:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.4852
bnei.57503:
	lw	$r2, -28($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57541
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.4852
bnei.57541:
	addi	$r2, $r0, 0
	jr	$r31
bnei.57429:
	lw	$r2, -4($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57543
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57545
	addi	$r2, $r0, 0
	jr	$r31
bnei.57545:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r3, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0
	addi	$r4, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57547
	addi	$r2, $r0, 0
	j	cont.57546
bnei.57547:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57549
	addi	$r2, $r0, 0
	j	cont.57548
bclf.57549:
	addi	$r2, $r0, 1
cont.57548:
cont.57546:
	bnei	$r2, 1, bnei.57551
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
	lw	$r3, -12($r29)
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57553
	addi	$r2, $r0, 1
	j	cont.57552
bnei.57553:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r4, 20($r2)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f1, $f3
	lw	$r4, 20($r2)
	lwcl	$f4, 4($r4)
	sub.s	$f4, $f2, $f4
	lw	$r4, 20($r2)
	lwcl	$f5, 8($r4)
	sub.s	$f5, $f0, $f5
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.57555
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57557
	addi	$r4, $r0, 0
	j	cont.57556
bclf.57557:
	lw	$r4, 16($r2)
	lwcl	$f3, 4($r4)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57559
	addi	$r4, $r0, 0
	j	cont.57558
bclf.57559:
	lw	$r4, 16($r2)
	lwcl	$f3, 8($r4)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57561
	addi	$r4, $r0, 0
	j	cont.57560
bclf.57561:
	addi	$r4, $r0, 1
cont.57560:
cont.57558:
cont.57556:
	bnei	$r4, 1, bnei.57563
	lw	$r2, 24($r2)
	j	cont.57562
bnei.57563:
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57565
	addi	$r2, $r0, 0
	j	cont.57564
bnei.57565:
	addi	$r2, $r0, 1
cont.57564:
cont.57562:
	j	cont.57554
bnei.57555:
	bnei	$r4, 2, bnei.57567
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57569
	addi	$r4, $r0, 0
	j	cont.57568
bclf.57569:
	addi	$r4, $r0, 1
cont.57568:
	bne	$r2, $r4, bne.57571
	addi	$r2, $r0, 1
	j	cont.57570
bne.57571:
	addi	$r2, $r0, 0
cont.57570:
	j	cont.57566
bnei.57567:
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
	bnei	$r4, 0, bnei.57573
	fmove	$f3, $f6
	j	cont.57572
bnei.57573:
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
cont.57572:
	lw	$r4, 4($r2)
	bnei	$r4, 3, bnei.57575
	sub.s	$f3, $f3, $f31
	j	cont.57574
bnei.57575:
cont.57574:
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57577
	addi	$r4, $r0, 0
	j	cont.57576
bclf.57577:
	addi	$r4, $r0, 1
cont.57576:
	bne	$r2, $r4, bne.57579
	addi	$r2, $r0, 1
	j	cont.57578
bne.57579:
	addi	$r2, $r0, 0
cont.57578:
cont.57566:
cont.57554:
	bnei	$r2, 1, bnei.57581
	addi	$r2, $r0, 0
	j	cont.57580
bnei.57581:
	lw	$r2, 4($r3)
	bnei	$r2, -1, bnei.57583
	addi	$r2, $r0, 1
	j	cont.57582
bnei.57583:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	swcl	$f0, -56($r29)
	swcl	$f2, -60($r29)
	swcl	$f1, -64($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	bnei	$r2, 1, bnei.57585
	addi	$r2, $r0, 0
	j	cont.57584
bnei.57585:
	addi	$r2, $r0, 2
	lw	$r3, -12($r29)
	lwcl	$f0, -64($r29)
	lwcl	$f1, -60($r29)
	lwcl	$f2, -56($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.57584:
cont.57582:
cont.57580:
cont.57552:
	bnei	$r2, 1, bnei.57587
	addi	$r2, $r0, 1
	jr	$r31
bnei.57587:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.4852
bnei.57551:
	lw	$r2, -48($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57589
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	j	shadow_check_and_group.4852
bnei.57589:
	addi	$r2, $r0, 0
	jr	$r31
bnei.57543:
	addi	$r2, $r0, 0
	jr	$r31
shadow_check_one_or_group.4897:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	bnei	$r4, -1, bnei.57591
	addi	$r2, $r0, 0
	jr	$r31
bnei.57591:
	sll	$r4, $r4, 2
	lw	$r4, 364($r4)
	lw	$r5, 0($r4)
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	bnei	$r5, -1, bnei.57593
	addi	$r2, $r0, 0
	j	cont.57592
bnei.57593:
	lw	$r5, 0($r4)
	addi	$r6, $r0, 588
	addi	$r7, $r0, 1040
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57595
	addi	$r2, $r0, 0
	j	cont.57594
bnei.57595:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57597
	addi	$r2, $r0, 0
	j	cont.57596
bclf.57597:
	addi	$r2, $r0, 1
cont.57596:
cont.57594:
	bnei	$r2, 1, bnei.57599
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
	lw	$r3, -16($r29)
	lw	$r2, 0($r3)
	bnei	$r2, -1, bnei.57601
	addi	$r2, $r0, 1
	j	cont.57600
bnei.57601:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r4, 20($r2)
	lwcl	$f3, 0($r4)
	sub.s	$f3, $f1, $f3
	lw	$r4, 20($r2)
	lwcl	$f4, 4($r4)
	sub.s	$f4, $f2, $f4
	lw	$r4, 20($r2)
	lwcl	$f5, 8($r4)
	sub.s	$f5, $f0, $f5
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.57603
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	fabs	$f3, $f3
	c.le.s	$f6, $f3
	bclf	bclf.57605
	addi	$r4, $r0, 0
	j	cont.57604
bclf.57605:
	lw	$r4, 16($r2)
	lwcl	$f3, 4($r4)
	fabs	$f4, $f4
	c.le.s	$f3, $f4
	bclf	bclf.57607
	addi	$r4, $r0, 0
	j	cont.57606
bclf.57607:
	lw	$r4, 16($r2)
	lwcl	$f3, 8($r4)
	fabs	$f4, $f5
	c.le.s	$f3, $f4
	bclf	bclf.57609
	addi	$r4, $r0, 0
	j	cont.57608
bclf.57609:
	addi	$r4, $r0, 1
cont.57608:
cont.57606:
cont.57604:
	bnei	$r4, 1, bnei.57611
	lw	$r2, 24($r2)
	j	cont.57610
bnei.57611:
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57613
	addi	$r2, $r0, 0
	j	cont.57612
bnei.57613:
	addi	$r2, $r0, 1
cont.57612:
cont.57610:
	j	cont.57602
bnei.57603:
	bnei	$r4, 2, bnei.57615
	lw	$r4, 16($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f3, $f6, $f3
	lwcl	$f6, 4($r4)
	mul.s	$f4, $f6, $f4
	add.s	$f3, $f3, $f4
	lwcl	$f4, 8($r4)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57617
	addi	$r4, $r0, 0
	j	cont.57616
bclf.57617:
	addi	$r4, $r0, 1
cont.57616:
	bne	$r2, $r4, bne.57619
	addi	$r2, $r0, 1
	j	cont.57618
bne.57619:
	addi	$r2, $r0, 0
cont.57618:
	j	cont.57614
bnei.57615:
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
	bnei	$r4, 0, bnei.57621
	fmove	$f3, $f6
	j	cont.57620
bnei.57621:
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
cont.57620:
	lw	$r4, 4($r2)
	bnei	$r4, 3, bnei.57623
	sub.s	$f3, $f3, $f31
	j	cont.57622
bnei.57623:
cont.57622:
	lw	$r2, 24($r2)
	c.le.s	$f30, $f3
	bclf	bclf.57625
	addi	$r4, $r0, 0
	j	cont.57624
bclf.57625:
	addi	$r4, $r0, 1
cont.57624:
	bne	$r2, $r4, bne.57627
	addi	$r2, $r0, 1
	j	cont.57626
bne.57627:
	addi	$r2, $r0, 0
cont.57626:
cont.57614:
cont.57602:
	bnei	$r2, 1, bnei.57629
	addi	$r2, $r0, 0
	j	cont.57628
bnei.57629:
	lw	$r2, 4($r3)
	bnei	$r2, -1, bnei.57631
	addi	$r2, $r0, 1
	j	cont.57630
bnei.57631:
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	swcl	$f1, -28($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.57633
	addi	$r2, $r0, 0
	j	cont.57632
bnei.57633:
	addi	$r2, $r0, 2
	lw	$r3, -16($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.57632:
cont.57630:
cont.57628:
cont.57600:
	bnei	$r2, 1, bnei.57635
	addi	$r2, $r0, 1
	j	cont.57634
bnei.57635:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.57634:
	j	cont.57598
bnei.57599:
	lw	$r2, -12($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57637
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.57636
bnei.57637:
	addi	$r2, $r0, 0
cont.57636:
cont.57598:
cont.57592:
	bnei	$r2, 1, bnei.57639
	addi	$r2, $r0, 1
	jr	$r31
bnei.57639:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57641
	addi	$r2, $r0, 0
	jr	$r31
bnei.57641:
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
	bnei	$r2, 1, bnei.57643
	addi	$r2, $r0, 1
	jr	$r31
bnei.57643:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57645
	addi	$r2, $r0, 0
	jr	$r31
bnei.57645:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r5, 0($r3)
	sw	$r2, -36($r29)
	bnei	$r5, -1, bnei.57647
	addi	$r2, $r0, 0
	j	cont.57646
bnei.57647:
	lw	$r5, 0($r3)
	addi	$r6, $r0, 588
	addi	$r7, $r0, 1040
	sw	$r5, -40($r29)
	sw	$r3, -44($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57649
	addi	$r2, $r0, 0
	j	cont.57648
bnei.57649:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57651
	addi	$r2, $r0, 0
	j	cont.57650
bclf.57651:
	addi	$r2, $r0, 1
cont.57650:
cont.57648:
	bnei	$r2, 1, bnei.57653
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
	addi	$r2, $r0, 0
	lw	$r3, -44($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.57655
	addi	$r2, $r0, 1
	j	cont.57654
bnei.57655:
	addi	$r2, $r0, 1
	lw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.57654:
	j	cont.57652
bnei.57653:
	lw	$r2, -40($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57657
	addi	$r2, $r0, 1
	lw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.57656
bnei.57657:
	addi	$r2, $r0, 0
cont.57656:
cont.57652:
cont.57646:
	bnei	$r2, 1, bnei.57659
	addi	$r2, $r0, 1
	jr	$r31
bnei.57659:
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57661
	addi	$r2, $r0, 0
	jr	$r31
bnei.57661:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	sw	$r2, -48($r29)
	addi	$r2, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	bnei	$r2, 1, bnei.57663
	addi	$r2, $r0, 1
	jr	$r31
bnei.57663:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_group.4897
shadow_check_one_or_matrix.4909:
	sll	$r4, $r2, 2
	lwr	$r4, $r4($r3)	!ld var
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.57665
	addi	$r2, $r0, 0
	jr	$r31
bnei.57665:
	addi	$r6, $r0, 99
	sw	$r3, -4($r29)
	sw	$r2, -8($r29)
	sw	$r4, -12($r29)
	bne	$r5, $r6, bne.57667
	addi	$r2, $r0, 1
	j	cont.57666
bne.57667:
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
	bnei	$r7, 1, bnei.57669
	addi	$r7, $r0, 788
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	j	cont.57668
bnei.57669:
	bnei	$r7, 2, bnei.57671
	lwcl	$f3, 0($r5)
	c.le.s	$f30, $f3
	bclf	bclf.57673
	addi	$r2, $r0, 0
	j	cont.57672
bclf.57673:
	lwcl	$f3, 4($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 8($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.57672:
	j	cont.57670
bnei.57671:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.57675
	addi	$r2, $r0, 0
	j	cont.57674
bclf.57675:
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
	bnei	$r7, 0, bnei.57677
	fmove	$f0, $f5
	j	cont.57676
bnei.57677:
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
cont.57676:
	lw	$r7, 4($r6)
	bnei	$r7, 3, bnei.57679
	sub.s	$f0, $f0, $f31
	j	cont.57678
bnei.57679:
cont.57678:
	mul.s	$f1, $f4, $f4
	mul.s	$f0, $f3, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f0, $f30
	bclf	bclf.57681
	addi	$r2, $r0, 0
	j	cont.57680
bclf.57681:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.57683
	sqrt	$f0, $f0
	add.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.57682
bnei.57683:
	sqrt	$f0, $f0
	sub.s	$f0, $f4, $f0
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.57682:
	addi	$r2, $r0, 1
cont.57680:
cont.57674:
cont.57670:
cont.57668:
	bnei	$r2, 0, bnei.57685
	addi	$r2, $r0, 0
	j	cont.57684
bnei.57685:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.57687
	addi	$r2, $r0, 0
	j	cont.57686
bclf.57687:
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57689
	addi	$r2, $r0, 0
	j	cont.57688
bnei.57689:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -16($r29)	!call-dir
	addi	$r29, $r29, -16	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 16
	lw	$r31, -16($r29)	!call-dir
	bnei	$r2, 1, bnei.57691
	addi	$r2, $r0, 1
	j	cont.57690
bnei.57691:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57693
	addi	$r2, $r0, 0
	j	cont.57692
bnei.57693:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57695
	addi	$r2, $r0, 0
	j	cont.57694
bnei.57695:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57697
	addi	$r2, $r0, 0
	j	cont.57696
bnei.57697:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57699
	addi	$r2, $r0, 0
	j	cont.57698
bclf.57699:
	addi	$r2, $r0, 1
cont.57698:
cont.57696:
	bnei	$r2, 1, bnei.57701
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
	addi	$r2, $r0, 0
	lw	$r3, -20($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.57703
	addi	$r2, $r0, 1
	j	cont.57702
bnei.57703:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.57702:
	j	cont.57700
bnei.57701:
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57705
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.57704
bnei.57705:
	addi	$r2, $r0, 0
cont.57704:
cont.57700:
cont.57694:
	bnei	$r2, 1, bnei.57707
	addi	$r2, $r0, 1
	j	cont.57706
bnei.57707:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.57709
	addi	$r2, $r0, 0
	j	cont.57708
bnei.57709:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.57711
	addi	$r2, $r0, 1
	j	cont.57710
bnei.57711:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.57710:
cont.57708:
cont.57706:
cont.57692:
cont.57690:
cont.57688:
	bnei	$r2, 1, bnei.57713
	addi	$r2, $r0, 1
	j	cont.57712
bnei.57713:
	addi	$r2, $r0, 0
cont.57712:
cont.57686:
cont.57684:
cont.57666:
	bnei	$r2, 1, bnei.57715
	lw	$r2, -12($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57717
	addi	$r2, $r0, 0
	j	cont.57716
bnei.57717:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 1, bnei.57719
	addi	$r2, $r0, 1
	j	cont.57718
bnei.57719:
	lw	$r2, -12($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57721
	addi	$r2, $r0, 0
	j	cont.57720
bnei.57721:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57723
	addi	$r2, $r0, 0
	j	cont.57722
bnei.57723:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -24($r29)
	sw	$r3, -28($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57725
	addi	$r2, $r0, 0
	j	cont.57724
bnei.57725:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57727
	addi	$r2, $r0, 0
	j	cont.57726
bclf.57727:
	addi	$r2, $r0, 1
cont.57726:
cont.57724:
	bnei	$r2, 1, bnei.57729
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
	addi	$r2, $r0, 0
	lw	$r3, -28($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.57731
	addi	$r2, $r0, 1
	j	cont.57730
bnei.57731:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.57730:
	j	cont.57728
bnei.57729:
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57733
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.57732
bnei.57733:
	addi	$r2, $r0, 0
cont.57732:
cont.57728:
cont.57722:
	bnei	$r2, 1, bnei.57735
	addi	$r2, $r0, 1
	j	cont.57734
bnei.57735:
	lw	$r2, -12($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.57737
	addi	$r2, $r0, 0
	j	cont.57736
bnei.57737:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	bnei	$r2, 1, bnei.57739
	addi	$r2, $r0, 1
	j	cont.57738
bnei.57739:
	addi	$r2, $r0, 4
	lw	$r3, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.57738:
cont.57736:
cont.57734:
cont.57720:
cont.57718:
cont.57716:
	bnei	$r2, 1, bnei.57741
	addi	$r2, $r0, 1
	jr	$r31
bnei.57741:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.57743
	addi	$r2, $r0, 0
	jr	$r31
bnei.57743:
	addi	$r6, $r0, 99
	sw	$r2, -32($r29)
	sw	$r3, -36($r29)
	bne	$r5, $r6, bne.57745
	addi	$r2, $r0, 1
	j	cont.57744
bne.57745:
	addi	$r6, $r0, 588
	addi	$r7, $r0, 1040
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 0, bnei.57747
	addi	$r2, $r0, 0
	j	cont.57746
bnei.57747:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.57749
	addi	$r2, $r0, 0
	j	cont.57748
bclf.57749:
	lw	$r2, -36($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57751
	addi	$r2, $r0, 0
	j	cont.57750
bnei.57751:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57753
	addi	$r2, $r0, 0
	j	cont.57752
bnei.57753:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -40($r29)
	sw	$r3, -44($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57755
	addi	$r2, $r0, 0
	j	cont.57754
bnei.57755:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57757
	addi	$r2, $r0, 0
	j	cont.57756
bclf.57757:
	addi	$r2, $r0, 1
cont.57756:
cont.57754:
	bnei	$r2, 1, bnei.57759
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
	addi	$r2, $r0, 0
	lw	$r3, -44($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.57761
	addi	$r2, $r0, 1
	j	cont.57760
bnei.57761:
	addi	$r2, $r0, 1
	lw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.57760:
	j	cont.57758
bnei.57759:
	lw	$r2, -40($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57763
	addi	$r2, $r0, 1
	lw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.57762
bnei.57763:
	addi	$r2, $r0, 0
cont.57762:
cont.57758:
cont.57752:
	bnei	$r2, 1, bnei.57765
	addi	$r2, $r0, 1
	j	cont.57764
bnei.57765:
	lw	$r2, -36($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57767
	addi	$r2, $r0, 0
	j	cont.57766
bnei.57767:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.57769
	addi	$r2, $r0, 1
	j	cont.57768
bnei.57769:
	addi	$r2, $r0, 3
	lw	$r3, -36($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.57768:
cont.57766:
cont.57764:
cont.57750:
	bnei	$r2, 1, bnei.57771
	addi	$r2, $r0, 1
	j	cont.57770
bnei.57771:
	addi	$r2, $r0, 0
cont.57770:
cont.57748:
cont.57746:
cont.57744:
	bnei	$r2, 1, bnei.57773
	lw	$r2, -36($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57775
	addi	$r2, $r0, 0
	j	cont.57774
bnei.57775:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57777
	addi	$r2, $r0, 0
	j	cont.57776
bnei.57777:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -48($r29)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57779
	addi	$r2, $r0, 0
	j	cont.57778
bnei.57779:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57781
	addi	$r2, $r0, 0
	j	cont.57780
bclf.57781:
	addi	$r2, $r0, 1
cont.57780:
cont.57778:
	bnei	$r2, 1, bnei.57783
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
	addi	$r2, $r0, 0
	lw	$r3, -52($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.57785
	addi	$r2, $r0, 1
	j	cont.57784
bnei.57785:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.57784:
	j	cont.57782
bnei.57783:
	lw	$r2, -48($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57787
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.57786
bnei.57787:
	addi	$r2, $r0, 0
cont.57786:
cont.57782:
cont.57776:
	bnei	$r2, 1, bnei.57789
	addi	$r2, $r0, 1
	j	cont.57788
bnei.57789:
	lw	$r2, -36($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57791
	addi	$r2, $r0, 0
	j	cont.57790
bnei.57791:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.57793
	addi	$r2, $r0, 1
	j	cont.57792
bnei.57793:
	addi	$r2, $r0, 3
	lw	$r3, -36($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.57792:
cont.57790:
cont.57788:
cont.57774:
	bnei	$r2, 1, bnei.57795
	addi	$r2, $r0, 1
	jr	$r31
bnei.57795:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.57773:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.57715:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.57797
	addi	$r2, $r0, 0
	jr	$r31
bnei.57797:
	addi	$r6, $r0, 99
	sw	$r2, -56($r29)
	sw	$r3, -60($r29)
	bne	$r5, $r6, bne.57799
	addi	$r2, $r0, 1
	j	cont.57798
bne.57799:
	addi	$r6, $r0, 588
	addi	$r7, $r0, 1040
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	bnei	$r2, 0, bnei.57801
	addi	$r2, $r0, 0
	j	cont.57800
bnei.57801:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.57803
	addi	$r2, $r0, 0
	j	cont.57802
bclf.57803:
	lw	$r2, -60($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57805
	addi	$r2, $r0, 0
	j	cont.57804
bnei.57805:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57807
	addi	$r2, $r0, 0
	j	cont.57806
bnei.57807:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -64($r29)
	sw	$r3, -68($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57809
	addi	$r2, $r0, 0
	j	cont.57808
bnei.57809:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57811
	addi	$r2, $r0, 0
	j	cont.57810
bclf.57811:
	addi	$r2, $r0, 1
cont.57810:
cont.57808:
	bnei	$r2, 1, bnei.57813
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
	addi	$r2, $r0, 0
	lw	$r3, -68($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	bnei	$r2, 1, bnei.57815
	addi	$r2, $r0, 1
	j	cont.57814
bnei.57815:
	addi	$r2, $r0, 1
	lw	$r3, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.57814:
	j	cont.57812
bnei.57813:
	lw	$r2, -64($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57817
	addi	$r2, $r0, 1
	lw	$r3, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.57816
bnei.57817:
	addi	$r2, $r0, 0
cont.57816:
cont.57812:
cont.57806:
	bnei	$r2, 1, bnei.57819
	addi	$r2, $r0, 1
	j	cont.57818
bnei.57819:
	lw	$r2, -60($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57821
	addi	$r2, $r0, 0
	j	cont.57820
bnei.57821:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	bnei	$r2, 1, bnei.57823
	addi	$r2, $r0, 1
	j	cont.57822
bnei.57823:
	addi	$r2, $r0, 3
	lw	$r3, -60($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.57822:
cont.57820:
cont.57818:
cont.57804:
	bnei	$r2, 1, bnei.57825
	addi	$r2, $r0, 1
	j	cont.57824
bnei.57825:
	addi	$r2, $r0, 0
cont.57824:
cont.57802:
cont.57800:
cont.57798:
	bnei	$r2, 1, bnei.57827
	lw	$r2, -60($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.57829
	addi	$r2, $r0, 0
	j	cont.57828
bnei.57829:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.57831
	addi	$r2, $r0, 0
	j	cont.57830
bnei.57831:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -72($r29)
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.57833
	addi	$r2, $r0, 0
	j	cont.57832
bnei.57833:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.57835
	addi	$r2, $r0, 0
	j	cont.57834
bclf.57835:
	addi	$r2, $r0, 1
cont.57834:
cont.57832:
	bnei	$r2, 1, bnei.57837
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
	addi	$r2, $r0, 0
	lw	$r3, -76($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.57839
	addi	$r2, $r0, 1
	j	cont.57838
bnei.57839:
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.57838:
	j	cont.57836
bnei.57837:
	lw	$r2, -72($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57841
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.57840
bnei.57841:
	addi	$r2, $r0, 0
cont.57840:
cont.57836:
cont.57830:
	bnei	$r2, 1, bnei.57843
	addi	$r2, $r0, 1
	j	cont.57842
bnei.57843:
	lw	$r2, -60($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.57845
	addi	$r2, $r0, 0
	j	cont.57844
bnei.57845:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.57847
	addi	$r2, $r0, 1
	j	cont.57846
bnei.57847:
	addi	$r2, $r0, 3
	lw	$r3, -60($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.57846:
cont.57844:
cont.57842:
cont.57828:
	bnei	$r2, 1, bnei.57849
	addi	$r2, $r0, 1
	jr	$r31
bnei.57849:
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
bnei.57827:
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	lw	$r3, -4($r29)
	j	shadow_check_one_or_matrix.4909
solve_each_element.4936:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.57851
	jr	$r31
bnei.57851:
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
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	sw	$r5, -16($r29)
	bnei	$r7, 1, bnei.57853
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solver_rect.4106
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.57852
bnei.57853:
	bnei	$r7, 2, bnei.57855
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
	bclf	bclf.57857
	addi	$r2, $r0, 0
	j	cont.57856
bclf.57857:
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
	addi	$r2, $r0, 1
cont.57856:
	j	cont.57854
bnei.57855:
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solver_second.4209
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.57854:
cont.57852:
	bnei	$r2, 0, bnei.57859
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57861
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57863
	jr	$r31
bnei.57863:
	addi	$r5, $r0, 672
	lw	$r6, -4($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	addi	$r2, $r3, 0
	addi	$r4, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	bnei	$r2, 0, bnei.57865
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57867
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
bnei.57867:
	jr	$r31
bnei.57865:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.57869
	j	cont.57868
bclf.57869:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.57871
	j	cont.57870
bclf.57871:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r3, -8($r29)
	lw	$r5, 0($r3)
	sw	$r2, -28($r29)
	swcl	$f3, -32($r29)
	swcl	$f2, -36($r29)
	swcl	$f1, -40($r29)
	swcl	$f0, -44($r29)
	bnei	$r5, -1, bnei.57873
	addi	$r2, $r0, 1
	j	cont.57872
bnei.57873:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r6, 20($r5)
	lwcl	$f4, 0($r6)
	sub.s	$f4, $f1, $f4
	lw	$r6, 20($r5)
	lwcl	$f5, 4($r6)
	sub.s	$f5, $f2, $f5
	lw	$r6, 20($r5)
	lwcl	$f6, 8($r6)
	sub.s	$f6, $f3, $f6
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.57875
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.57877
	addi	$r6, $r0, 0
	j	cont.57876
bclf.57877:
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57879
	addi	$r6, $r0, 0
	j	cont.57878
bclf.57879:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.57881
	addi	$r6, $r0, 0
	j	cont.57880
bclf.57881:
	addi	$r6, $r0, 1
cont.57880:
cont.57878:
cont.57876:
	bnei	$r6, 1, bnei.57883
	lw	$r5, 24($r5)
	j	cont.57882
bnei.57883:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.57885
	addi	$r5, $r0, 0
	j	cont.57884
bnei.57885:
	addi	$r5, $r0, 1
cont.57884:
cont.57882:
	j	cont.57874
bnei.57875:
	bnei	$r6, 2, bnei.57887
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r6)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57889
	addi	$r6, $r0, 0
	j	cont.57888
bclf.57889:
	addi	$r6, $r0, 1
cont.57888:
	bne	$r5, $r6, bne.57891
	addi	$r5, $r0, 1
	j	cont.57890
bne.57891:
	addi	$r5, $r0, 0
cont.57890:
	j	cont.57886
bnei.57887:
	mul.s	$f7, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r6, 16($r5)
	lwcl	$f9, 4($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r6, 16($r5)
	lwcl	$f9, 8($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.57893
	fmove	$f4, $f7
	j	cont.57892
bnei.57893:
	mul.s	$f8, $f5, $f6
	lw	$r6, 36($r5)
	lwcl	$f9, 0($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r6, 36($r5)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.57892:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.57895
	sub.s	$f4, $f4, $f31
	j	cont.57894
bnei.57895:
cont.57894:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57897
	addi	$r6, $r0, 0
	j	cont.57896
bclf.57897:
	addi	$r6, $r0, 1
cont.57896:
	bne	$r5, $r6, bne.57899
	addi	$r5, $r0, 1
	j	cont.57898
bne.57899:
	addi	$r5, $r0, 0
cont.57898:
cont.57886:
cont.57874:
	bnei	$r5, 1, bnei.57901
	addi	$r2, $r0, 0
	j	cont.57900
bnei.57901:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.57903
	addi	$r2, $r0, 1
	j	cont.57902
bnei.57903:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.57905
	addi	$r2, $r0, 0
	j	cont.57904
bnei.57905:
	addi	$r2, $r0, 2
	lw	$r3, -8($r29)
	lwcl	$f0, -40($r29)
	lwcl	$f1, -36($r29)
	lwcl	$f2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.57904:
cont.57902:
cont.57900:
cont.57872:
	bnei	$r2, 1, bnei.57907
	lwcl	$f0, -44($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -40($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -36($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -24($r29)
	sw	$r2, 600($r0)
	lw	$r2, -28($r29)
	sw	$r2, 580($r0)
	j	cont.57906
bnei.57907:
cont.57906:
cont.57870:
cont.57868:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
bnei.57861:
	jr	$r31
bnei.57859:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.57909
	j	cont.57908
bclf.57909:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.57911
	j	cont.57910
bclf.57911:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -4($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 672($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 676($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 680($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -8($r29)
	lw	$r5, 0($r4)
	sw	$r2, -48($r29)
	swcl	$f3, -52($r29)
	swcl	$f2, -56($r29)
	swcl	$f1, -60($r29)
	swcl	$f0, -64($r29)
	bnei	$r5, -1, bnei.57913
	addi	$r2, $r0, 1
	j	cont.57912
bnei.57913:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r6, 20($r5)
	lwcl	$f4, 0($r6)
	sub.s	$f4, $f1, $f4
	lw	$r6, 20($r5)
	lwcl	$f5, 4($r6)
	sub.s	$f5, $f2, $f5
	lw	$r6, 20($r5)
	lwcl	$f6, 8($r6)
	sub.s	$f6, $f3, $f6
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.57915
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.57917
	addi	$r6, $r0, 0
	j	cont.57916
bclf.57917:
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57919
	addi	$r6, $r0, 0
	j	cont.57918
bclf.57919:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.57921
	addi	$r6, $r0, 0
	j	cont.57920
bclf.57921:
	addi	$r6, $r0, 1
cont.57920:
cont.57918:
cont.57916:
	bnei	$r6, 1, bnei.57923
	lw	$r5, 24($r5)
	j	cont.57922
bnei.57923:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.57925
	addi	$r5, $r0, 0
	j	cont.57924
bnei.57925:
	addi	$r5, $r0, 1
cont.57924:
cont.57922:
	j	cont.57914
bnei.57915:
	bnei	$r6, 2, bnei.57927
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r6)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57929
	addi	$r6, $r0, 0
	j	cont.57928
bclf.57929:
	addi	$r6, $r0, 1
cont.57928:
	bne	$r5, $r6, bne.57931
	addi	$r5, $r0, 1
	j	cont.57930
bne.57931:
	addi	$r5, $r0, 0
cont.57930:
	j	cont.57926
bnei.57927:
	mul.s	$f7, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r6, 16($r5)
	lwcl	$f9, 4($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r6, 16($r5)
	lwcl	$f9, 8($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.57933
	fmove	$f4, $f7
	j	cont.57932
bnei.57933:
	mul.s	$f8, $f5, $f6
	lw	$r6, 36($r5)
	lwcl	$f9, 0($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r6, 36($r5)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.57932:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.57935
	sub.s	$f4, $f4, $f31
	j	cont.57934
bnei.57935:
cont.57934:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57937
	addi	$r6, $r0, 0
	j	cont.57936
bclf.57937:
	addi	$r6, $r0, 1
cont.57936:
	bne	$r5, $r6, bne.57939
	addi	$r5, $r0, 1
	j	cont.57938
bne.57939:
	addi	$r5, $r0, 0
cont.57938:
cont.57926:
cont.57914:
	bnei	$r5, 1, bnei.57941
	addi	$r2, $r0, 0
	j	cont.57940
bnei.57941:
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.57943
	addi	$r2, $r0, 1
	j	cont.57942
bnei.57943:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r6, 20($r5)
	lwcl	$f4, 0($r6)
	sub.s	$f4, $f1, $f4
	lw	$r6, 20($r5)
	lwcl	$f5, 4($r6)
	sub.s	$f5, $f2, $f5
	lw	$r6, 20($r5)
	lwcl	$f6, 8($r6)
	sub.s	$f6, $f3, $f6
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.57945
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.57947
	addi	$r6, $r0, 0
	j	cont.57946
bclf.57947:
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57949
	addi	$r6, $r0, 0
	j	cont.57948
bclf.57949:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.57951
	addi	$r6, $r0, 0
	j	cont.57950
bclf.57951:
	addi	$r6, $r0, 1
cont.57950:
cont.57948:
cont.57946:
	bnei	$r6, 1, bnei.57953
	lw	$r5, 24($r5)
	j	cont.57952
bnei.57953:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.57955
	addi	$r5, $r0, 0
	j	cont.57954
bnei.57955:
	addi	$r5, $r0, 1
cont.57954:
cont.57952:
	j	cont.57944
bnei.57945:
	bnei	$r6, 2, bnei.57957
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r6)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57959
	addi	$r6, $r0, 0
	j	cont.57958
bclf.57959:
	addi	$r6, $r0, 1
cont.57958:
	bne	$r5, $r6, bne.57961
	addi	$r5, $r0, 1
	j	cont.57960
bne.57961:
	addi	$r5, $r0, 0
cont.57960:
	j	cont.57956
bnei.57957:
	mul.s	$f7, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r6, 16($r5)
	lwcl	$f9, 4($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r6, 16($r5)
	lwcl	$f9, 8($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.57963
	fmove	$f4, $f7
	j	cont.57962
bnei.57963:
	mul.s	$f8, $f5, $f6
	lw	$r6, 36($r5)
	lwcl	$f9, 0($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r6, 36($r5)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.57962:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.57965
	sub.s	$f4, $f4, $f31
	j	cont.57964
bnei.57965:
cont.57964:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.57967
	addi	$r6, $r0, 0
	j	cont.57966
bclf.57967:
	addi	$r6, $r0, 1
cont.57966:
	bne	$r5, $r6, bne.57969
	addi	$r5, $r0, 1
	j	cont.57968
bne.57969:
	addi	$r5, $r0, 0
cont.57968:
cont.57956:
cont.57944:
	bnei	$r5, 1, bnei.57971
	addi	$r2, $r0, 0
	j	cont.57970
bnei.57971:
	lw	$r5, 8($r4)
	bnei	$r5, -1, bnei.57973
	addi	$r2, $r0, 1
	j	cont.57972
bnei.57973:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	bnei	$r2, 1, bnei.57975
	addi	$r2, $r0, 0
	j	cont.57974
bnei.57975:
	addi	$r2, $r0, 3
	lw	$r3, -8($r29)
	lwcl	$f0, -60($r29)
	lwcl	$f1, -56($r29)
	lwcl	$f2, -52($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.57974:
cont.57972:
cont.57970:
cont.57942:
cont.57940:
cont.57912:
	bnei	$r2, 1, bnei.57977
	lwcl	$f0, -64($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -60($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -56($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -52($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -16($r29)
	sw	$r2, 600($r0)
	lw	$r2, -48($r29)
	sw	$r2, 580($r0)
	j	cont.57976
bnei.57977:
cont.57976:
cont.57910:
cont.57908:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.57979
	jr	$r31
bnei.57979:
	addi	$r5, $r0, 672
	lw	$r6, -4($r29)
	sw	$r2, -68($r29)
	sw	$r3, -72($r29)
	addi	$r2, $r3, 0
	addi	$r4, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	bnei	$r2, 0, bnei.57981
	lw	$r2, -72($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.57983
	lw	$r2, -68($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
bnei.57983:
	jr	$r31
bnei.57981:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.57985
	j	cont.57984
bclf.57985:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.57987
	j	cont.57986
bclf.57987:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r3, -8($r29)
	lw	$r5, 0($r3)
	sw	$r2, -76($r29)
	swcl	$f3, -80($r29)
	swcl	$f2, -84($r29)
	swcl	$f1, -88($r29)
	swcl	$f0, -92($r29)
	bnei	$r5, -1, bnei.57989
	addi	$r2, $r0, 1
	j	cont.57988
bnei.57989:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r6, 20($r5)
	lwcl	$f4, 0($r6)
	sub.s	$f4, $f1, $f4
	lw	$r6, 20($r5)
	lwcl	$f5, 4($r6)
	sub.s	$f5, $f2, $f5
	lw	$r6, 20($r5)
	lwcl	$f6, 8($r6)
	sub.s	$f6, $f3, $f6
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.57991
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.57993
	addi	$r6, $r0, 0
	j	cont.57992
bclf.57993:
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.57995
	addi	$r6, $r0, 0
	j	cont.57994
bclf.57995:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.57997
	addi	$r6, $r0, 0
	j	cont.57996
bclf.57997:
	addi	$r6, $r0, 1
cont.57996:
cont.57994:
cont.57992:
	bnei	$r6, 1, bnei.57999
	lw	$r5, 24($r5)
	j	cont.57998
bnei.57999:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.58001
	addi	$r5, $r0, 0
	j	cont.58000
bnei.58001:
	addi	$r5, $r0, 1
cont.58000:
cont.57998:
	j	cont.57990
bnei.57991:
	bnei	$r6, 2, bnei.58003
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r6)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.58005
	addi	$r6, $r0, 0
	j	cont.58004
bclf.58005:
	addi	$r6, $r0, 1
cont.58004:
	bne	$r5, $r6, bne.58007
	addi	$r5, $r0, 1
	j	cont.58006
bne.58007:
	addi	$r5, $r0, 0
cont.58006:
	j	cont.58002
bnei.58003:
	mul.s	$f7, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r6, 16($r5)
	lwcl	$f9, 4($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r6, 16($r5)
	lwcl	$f9, 8($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.58009
	fmove	$f4, $f7
	j	cont.58008
bnei.58009:
	mul.s	$f8, $f5, $f6
	lw	$r6, 36($r5)
	lwcl	$f9, 0($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r6, 36($r5)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58008:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.58011
	sub.s	$f4, $f4, $f31
	j	cont.58010
bnei.58011:
cont.58010:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.58013
	addi	$r6, $r0, 0
	j	cont.58012
bclf.58013:
	addi	$r6, $r0, 1
cont.58012:
	bne	$r5, $r6, bne.58015
	addi	$r5, $r0, 1
	j	cont.58014
bne.58015:
	addi	$r5, $r0, 0
cont.58014:
cont.58002:
cont.57990:
	bnei	$r5, 1, bnei.58017
	addi	$r2, $r0, 0
	j	cont.58016
bnei.58017:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58019
	addi	$r2, $r0, 1
	j	cont.58018
bnei.58019:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	bnei	$r2, 1, bnei.58021
	addi	$r2, $r0, 0
	j	cont.58020
bnei.58021:
	addi	$r2, $r0, 2
	lw	$r3, -8($r29)
	lwcl	$f0, -88($r29)
	lwcl	$f1, -84($r29)
	lwcl	$f2, -80($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
cont.58020:
cont.58018:
cont.58016:
cont.57988:
	bnei	$r2, 1, bnei.58023
	lwcl	$f0, -92($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -88($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -84($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -80($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -72($r29)
	sw	$r2, 600($r0)
	lw	$r2, -76($r29)
	sw	$r2, 580($r0)
	j	cont.58022
bnei.58023:
cont.58022:
cont.57986:
cont.57984:
	lw	$r2, -68($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_each_element.4936
solve_one_or_network.4987:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.58025
	jr	$r31
bnei.58025:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	lw	$r6, 0($r5)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r6, -1, bnei.58027
	j	cont.58026
bnei.58027:
	addi	$r7, $r0, 672
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	addi	$r4, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	bnei	$r2, 0, bnei.58029
	lw	$r2, -20($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58031
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.58030
bnei.58031:
cont.58030:
	j	cont.58028
bnei.58029:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58033
	j	cont.58032
bclf.58033:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58035
	j	cont.58034
bclf.58035:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r3, -16($r29)
	lw	$r5, 0($r3)
	sw	$r2, -24($r29)
	swcl	$f3, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f1, -36($r29)
	swcl	$f0, -40($r29)
	bnei	$r5, -1, bnei.58037
	addi	$r2, $r0, 1
	j	cont.58036
bnei.58037:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	lw	$r6, 20($r5)
	lwcl	$f4, 0($r6)
	sub.s	$f4, $f1, $f4
	lw	$r6, 20($r5)
	lwcl	$f5, 4($r6)
	sub.s	$f5, $f2, $f5
	lw	$r6, 20($r5)
	lwcl	$f6, 8($r6)
	sub.s	$f6, $f3, $f6
	lw	$r6, 4($r5)
	bnei	$r6, 1, bnei.58039
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58041
	addi	$r6, $r0, 0
	j	cont.58040
bclf.58041:
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58043
	addi	$r6, $r0, 0
	j	cont.58042
bclf.58043:
	lw	$r6, 16($r5)
	lwcl	$f4, 8($r6)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58045
	addi	$r6, $r0, 0
	j	cont.58044
bclf.58045:
	addi	$r6, $r0, 1
cont.58044:
cont.58042:
cont.58040:
	bnei	$r6, 1, bnei.58047
	lw	$r5, 24($r5)
	j	cont.58046
bnei.58047:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.58049
	addi	$r5, $r0, 0
	j	cont.58048
bnei.58049:
	addi	$r5, $r0, 1
cont.58048:
cont.58046:
	j	cont.58038
bnei.58039:
	bnei	$r6, 2, bnei.58051
	lw	$r6, 16($r5)
	lwcl	$f7, 0($r6)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r6)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r6)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.58053
	addi	$r6, $r0, 0
	j	cont.58052
bclf.58053:
	addi	$r6, $r0, 1
cont.58052:
	bne	$r5, $r6, bne.58055
	addi	$r5, $r0, 1
	j	cont.58054
bne.58055:
	addi	$r5, $r0, 0
cont.58054:
	j	cont.58050
bnei.58051:
	mul.s	$f7, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r6, 16($r5)
	lwcl	$f9, 4($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r6, 16($r5)
	lwcl	$f9, 8($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r6, 12($r5)
	bnei	$r6, 0, bnei.58057
	fmove	$f4, $f7
	j	cont.58056
bnei.58057:
	mul.s	$f8, $f5, $f6
	lw	$r6, 36($r5)
	lwcl	$f9, 0($r6)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r6, 36($r5)
	lwcl	$f5, 8($r6)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58056:
	lw	$r6, 4($r5)
	bnei	$r6, 3, bnei.58059
	sub.s	$f4, $f4, $f31
	j	cont.58058
bnei.58059:
cont.58058:
	lw	$r5, 24($r5)
	c.le.s	$f30, $f4
	bclf	bclf.58061
	addi	$r6, $r0, 0
	j	cont.58060
bclf.58061:
	addi	$r6, $r0, 1
cont.58060:
	bne	$r5, $r6, bne.58063
	addi	$r5, $r0, 1
	j	cont.58062
bne.58063:
	addi	$r5, $r0, 0
cont.58062:
cont.58050:
cont.58038:
	bnei	$r5, 1, bnei.58065
	addi	$r2, $r0, 0
	j	cont.58064
bnei.58065:
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58067
	addi	$r2, $r0, 1
	j	cont.58066
bnei.58067:
	sll	$r5, $r5, 2
	lw	$r5, 80($r5)
	addi	$r2, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, 1, bnei.58069
	addi	$r2, $r0, 0
	j	cont.58068
bnei.58069:
	addi	$r2, $r0, 2
	lw	$r3, -16($r29)
	lwcl	$f0, -36($r29)
	lwcl	$f1, -32($r29)
	lwcl	$f2, -28($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.58068:
cont.58066:
cont.58064:
cont.58036:
	bnei	$r2, 1, bnei.58071
	lwcl	$f0, -40($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -36($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -28($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -20($r29)
	sw	$r2, 600($r0)
	lw	$r2, -24($r29)
	sw	$r2, 580($r0)
	j	cont.58070
bnei.58071:
cont.58070:
cont.58034:
cont.58032:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.58028:
cont.58026:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58073
	jr	$r31
bnei.58073:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58075
	jr	$r31
bnei.58075:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r5, 0($r3)
	sw	$r2, -48($r29)
	bnei	$r5, -1, bnei.58077
	j	cont.58076
bnei.58077:
	addi	$r6, $r0, 672
	lw	$r7, -4($r29)
	sw	$r3, -52($r29)
	sw	$r5, -56($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58079
	lw	$r2, -56($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58081
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -4($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.58080
bnei.58081:
cont.58080:
	j	cont.58078
bnei.58079:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58083
	j	cont.58082
bclf.58083:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58085
	j	cont.58084
bclf.58085:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r5, -52($r29)
	sw	$r2, -60($r29)
	swcl	$f3, -64($r29)
	swcl	$f2, -68($r29)
	swcl	$f1, -72($r29)
	swcl	$f0, -76($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.58087
	lwcl	$f0, -76($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -72($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -68($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -64($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -56($r29)
	sw	$r2, 600($r0)
	lw	$r2, -60($r29)
	sw	$r2, 580($r0)
	j	cont.58086
bnei.58087:
cont.58086:
cont.58084:
cont.58082:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -4($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.58078:
cont.58076:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58089
	jr	$r31
bnei.58089:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network.4987
trace_or_matrix.4999:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.58091
	jr	$r31
bnei.58091:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.58093
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.58095
	j	cont.58094
bnei.58095:
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
	bnei	$r3, -1, bnei.58097
	j	cont.58096
bnei.58097:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58099
	j	cont.58098
bnei.58099:
	addi	$r5, $r0, 672
	lw	$r6, -4($r29)
	sw	$r3, -20($r29)
	sw	$r4, -24($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58101
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58103
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.58102
bnei.58103:
cont.58102:
	j	cont.58100
bnei.58101:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58105
	j	cont.58104
bclf.58105:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58107
	j	cont.58106
bclf.58107:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r5, -20($r29)
	sw	$r2, -28($r29)
	swcl	$f3, -32($r29)
	swcl	$f2, -36($r29)
	swcl	$f1, -40($r29)
	swcl	$f0, -44($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.58109
	lwcl	$f0, -44($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -40($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -36($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -24($r29)
	sw	$r2, 600($r0)
	lw	$r2, -28($r29)
	sw	$r2, 580($r0)
	j	cont.58108
bnei.58109:
cont.58108:
cont.58106:
cont.58104:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58100:
cont.58098:
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.58111
	j	cont.58110
bnei.58111:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58110:
cont.58096:
cont.58094:
	j	cont.58092
bne.58093:
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
	sw	$r5, -16($r29)
	bnei	$r7, 1, bnei.58113
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solver_rect.4106
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	j	cont.58112
bnei.58113:
	bnei	$r7, 2, bnei.58115
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
	bclf	bclf.58117
	addi	$r2, $r0, 0
	j	cont.58116
bclf.58117:
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
	addi	$r2, $r0, 1
cont.58116:
	j	cont.58114
bnei.58115:
	addi	$r2, $r6, 0
	addi	$r3, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solver_second.4209
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58114:
cont.58112:
	bnei	$r2, 0, bnei.58119
	j	cont.58118
bnei.58119:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58121
	j	cont.58120
bclf.58121:
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58123
	j	cont.58122
bnei.58123:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58125
	j	cont.58124
bnei.58125:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58127
	j	cont.58126
bnei.58127:
	addi	$r5, $r0, 672
	lw	$r6, -4($r29)
	sw	$r3, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58129
	lw	$r2, -52($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58131
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -4($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.58130
bnei.58131:
cont.58130:
	j	cont.58128
bnei.58129:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58133
	j	cont.58132
bclf.58133:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58135
	j	cont.58134
bclf.58135:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r5, -48($r29)
	sw	$r2, -56($r29)
	swcl	$f3, -60($r29)
	swcl	$f2, -64($r29)
	swcl	$f1, -68($r29)
	swcl	$f0, -72($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	bnei	$r2, 1, bnei.58137
	lwcl	$f0, -72($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -68($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -64($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -60($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -52($r29)
	sw	$r2, 600($r0)
	lw	$r2, -56($r29)
	sw	$r2, 580($r0)
	j	cont.58136
bnei.58137:
cont.58136:
cont.58134:
cont.58132:
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -4($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.58128:
cont.58126:
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.58139
	j	cont.58138
bnei.58139:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.58138:
cont.58124:
cont.58122:
cont.58120:
cont.58118:
cont.58092:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58141
	jr	$r31
bnei.58141:
	addi	$r6, $r0, 99
	sw	$r2, -76($r29)
	bne	$r5, $r6, bne.58143
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58145
	j	cont.58144
bnei.58145:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	lw	$r6, 0($r5)
	sw	$r3, -80($r29)
	bnei	$r6, -1, bnei.58147
	j	cont.58146
bnei.58147:
	addi	$r7, $r0, 672
	lw	$r8, -4($r29)
	sw	$r5, -84($r29)
	sw	$r6, -88($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r8, 0
	addi	$r4, $r7, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58149
	lw	$r2, -88($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58151
	addi	$r2, $r0, 1
	lw	$r3, -84($r29)
	lw	$r4, -4($r29)
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	j	cont.58150
bnei.58151:
cont.58150:
	j	cont.58148
bnei.58149:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58153
	j	cont.58152
bclf.58153:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58155
	j	cont.58154
bclf.58155:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r5, -84($r29)
	sw	$r2, -92($r29)
	swcl	$f3, -96($r29)
	swcl	$f2, -100($r29)
	swcl	$f1, -104($r29)
	swcl	$f0, -108($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	bnei	$r2, 1, bnei.58157
	lwcl	$f0, -108($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -104($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -100($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -96($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -88($r29)
	sw	$r2, 600($r0)
	lw	$r2, -92($r29)
	sw	$r2, 580($r0)
	j	cont.58156
bnei.58157:
cont.58156:
cont.58154:
cont.58152:
	addi	$r2, $r0, 1
	lw	$r3, -84($r29)
	lw	$r4, -4($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.58148:
cont.58146:
	lw	$r2, -80($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58159
	j	cont.58158
bnei.58159:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -80($r29)
	lw	$r4, -4($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.58158:
cont.58144:
	j	cont.58142
bne.58143:
	addi	$r6, $r0, 672
	lw	$r7, -4($r29)
	sw	$r3, -80($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	bnei	$r2, 0, bnei.58161
	j	cont.58160
bnei.58161:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58163
	j	cont.58162
bclf.58163:
	lw	$r2, -80($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58165
	j	cont.58164
bnei.58165:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58167
	j	cont.58166
bnei.58167:
	addi	$r5, $r0, 672
	lw	$r6, -4($r29)
	sw	$r3, -112($r29)
	sw	$r4, -116($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58169
	lw	$r2, -116($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58171
	addi	$r2, $r0, 1
	lw	$r3, -112($r29)
	lw	$r4, -4($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.58170
bnei.58171:
cont.58170:
	j	cont.58168
bnei.58169:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58173
	j	cont.58172
bclf.58173:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58175
	j	cont.58174
bclf.58175:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -4($r29)
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
	lw	$r5, -112($r29)
	sw	$r2, -120($r29)
	swcl	$f3, -124($r29)
	swcl	$f2, -128($r29)
	swcl	$f1, -132($r29)
	swcl	$f0, -136($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	bnei	$r2, 1, bnei.58177
	lwcl	$f0, -136($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -132($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -128($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -124($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -116($r29)
	sw	$r2, 600($r0)
	lw	$r2, -120($r29)
	sw	$r2, 580($r0)
	j	cont.58176
bnei.58177:
cont.58176:
cont.58174:
cont.58172:
	addi	$r2, $r0, 1
	lw	$r3, -112($r29)
	lw	$r4, -4($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
cont.58168:
cont.58166:
	lw	$r2, -80($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58179
	j	cont.58178
bnei.58179:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -80($r29)
	lw	$r4, -4($r29)
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
cont.58178:
cont.58164:
cont.58162:
cont.58160:
cont.58142:
	lw	$r2, -76($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58181
	jr	$r31
bnei.58181:
	addi	$r6, $r0, 99
	sw	$r2, -140($r29)
	bne	$r5, $r6, bne.58183
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58185
	j	cont.58184
bnei.58185:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -144($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -144($r29)
	lw	$r4, -4($r29)
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.58184:
	j	cont.58182
bne.58183:
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
	sw	$r3, -144($r29)
	bnei	$r6, 1, bnei.58187
	lw	$r6, -4($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solver_rect.4106
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	j	cont.58186
bnei.58187:
	bnei	$r6, 2, bnei.58189
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
	bclf	bclf.58191
	addi	$r2, $r0, 0
	j	cont.58190
bclf.58191:
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
	addi	$r2, $r0, 1
cont.58190:
	j	cont.58188
bnei.58189:
	lw	$r6, -4($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solver_second.4209
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.58188:
cont.58186:
	bnei	$r2, 0, bnei.58193
	j	cont.58192
bnei.58193:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58195
	j	cont.58194
bclf.58195:
	lw	$r2, -144($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58197
	j	cont.58196
bnei.58197:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -144($r29)
	lw	$r4, -4($r29)
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
cont.58196:
cont.58194:
cont.58192:
cont.58182:
	lw	$r2, -140($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58199
	jr	$r31
bnei.58199:
	addi	$r6, $r0, 99
	sw	$r2, -148($r29)
	bne	$r5, $r6, bne.58201
	addi	$r5, $r0, 1
	lw	$r6, -4($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	j	cont.58200
bne.58201:
	addi	$r6, $r0, 672
	lw	$r7, -4($r29)
	sw	$r3, -152($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	bnei	$r2, 0, bnei.58203
	j	cont.58202
bnei.58203:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58205
	j	cont.58204
bclf.58205:
	addi	$r2, $r0, 1
	lw	$r3, -152($r29)
	lw	$r4, -4($r29)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.58204:
cont.58202:
cont.58200:
	lw	$r2, -148($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix.4999
solve_each_element_fast.5034:
	lw	$r5, 0($r4)
	sll	$r6, $r2, 2
	lwr	$r6, $r6($r3)	!ld var
	bnei	$r6, -1, bnei.58207
	jr	$r31
bnei.58207:
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
	sw	$r5, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	sw	$r2, -16($r29)
	sw	$r6, -20($r29)
	bnei	$r10, 1, bnei.58209
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.58208
bnei.58209:
	bnei	$r10, 2, bnei.58211
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58213
	addi	$r2, $r0, 0
	j	cont.58212
bclf.58213:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58212:
	j	cont.58210
bnei.58211:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58215
	addi	$r2, $r0, 0
	j	cont.58214
bclf.58215:
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
	bclf	bclf.58217
	addi	$r2, $r0, 0
	j	cont.58216
bclf.58217:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58219
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58218
bnei.58219:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58218:
	addi	$r2, $r0, 1
cont.58216:
cont.58214:
cont.58210:
cont.58208:
	bnei	$r2, 0, bnei.58221
	lw	$r2, -20($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58223
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	lw	$r3, 0($r4)
	sll	$r5, $r2, 2
	lw	$r6, -8($r29)
	lwr	$r5, $r5($r6)	!ld var
	bnei	$r5, -1, bnei.58225
	jr	$r31
bnei.58225:
	sll	$r7, $r5, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r10, $r5, 2
	lwr	$r9, $r10($r9)	!ld var
	lw	$r10, 4($r7)
	sw	$r3, -24($r29)
	sw	$r2, -28($r29)
	sw	$r5, -32($r29)
	bnei	$r10, 1, bnei.58227
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.58226
bnei.58227:
	bnei	$r10, 2, bnei.58229
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58231
	addi	$r2, $r0, 0
	j	cont.58230
bclf.58231:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58230:
	j	cont.58228
bnei.58229:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58233
	addi	$r2, $r0, 0
	j	cont.58232
bclf.58233:
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
	bclf	bclf.58235
	addi	$r2, $r0, 0
	j	cont.58234
bclf.58235:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58237
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58236
bnei.58237:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58236:
	addi	$r2, $r0, 1
cont.58234:
cont.58232:
cont.58228:
cont.58226:
	bnei	$r2, 0, bnei.58239
	lw	$r2, -32($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58241
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	j	solve_each_element_fast.5034
bnei.58241:
	jr	$r31
bnei.58239:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58243
	j	cont.58242
bclf.58243:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58245
	j	cont.58244
bclf.58245:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -24($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r3, -8($r29)
	lw	$r4, 0($r3)
	sw	$r2, -36($r29)
	swcl	$f3, -40($r29)
	swcl	$f2, -44($r29)
	swcl	$f1, -48($r29)
	swcl	$f0, -52($r29)
	bnei	$r4, -1, bnei.58247
	addi	$r2, $r0, 1
	j	cont.58246
bnei.58247:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f4, 0($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 4($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 20($r4)
	lwcl	$f6, 8($r5)
	sub.s	$f6, $f3, $f6
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.58249
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58251
	addi	$r5, $r0, 0
	j	cont.58250
bclf.58251:
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58253
	addi	$r5, $r0, 0
	j	cont.58252
bclf.58253:
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58255
	addi	$r5, $r0, 0
	j	cont.58254
bclf.58255:
	addi	$r5, $r0, 1
cont.58254:
cont.58252:
cont.58250:
	bnei	$r5, 1, bnei.58257
	lw	$r4, 24($r4)
	j	cont.58256
bnei.58257:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.58259
	addi	$r4, $r0, 0
	j	cont.58258
bnei.58259:
	addi	$r4, $r0, 1
cont.58258:
cont.58256:
	j	cont.58248
bnei.58249:
	bnei	$r5, 2, bnei.58261
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58263
	addi	$r5, $r0, 0
	j	cont.58262
bclf.58263:
	addi	$r5, $r0, 1
cont.58262:
	bne	$r4, $r5, bne.58265
	addi	$r4, $r0, 1
	j	cont.58264
bne.58265:
	addi	$r4, $r0, 0
cont.58264:
	j	cont.58260
bnei.58261:
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f9, 4($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r5, 16($r4)
	lwcl	$f9, 8($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.58267
	fmove	$f4, $f7
	j	cont.58266
bnei.58267:
	mul.s	$f8, $f5, $f6
	lw	$r5, 36($r4)
	lwcl	$f9, 0($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58266:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.58269
	sub.s	$f4, $f4, $f31
	j	cont.58268
bnei.58269:
cont.58268:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58271
	addi	$r5, $r0, 0
	j	cont.58270
bclf.58271:
	addi	$r5, $r0, 1
cont.58270:
	bne	$r4, $r5, bne.58273
	addi	$r4, $r0, 1
	j	cont.58272
bne.58273:
	addi	$r4, $r0, 0
cont.58272:
cont.58260:
cont.58248:
	bnei	$r4, 1, bnei.58275
	addi	$r2, $r0, 0
	j	cont.58274
bnei.58275:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.58277
	addi	$r2, $r0, 1
	j	cont.58276
bnei.58277:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	addi	$r2, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.58279
	addi	$r2, $r0, 0
	j	cont.58278
bnei.58279:
	addi	$r2, $r0, 2
	lw	$r3, -8($r29)
	lwcl	$f0, -48($r29)
	lwcl	$f1, -44($r29)
	lwcl	$f2, -40($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.58278:
cont.58276:
cont.58274:
cont.58246:
	bnei	$r2, 1, bnei.58281
	lwcl	$f0, -52($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -48($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -44($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -40($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -32($r29)
	sw	$r2, 600($r0)
	lw	$r2, -36($r29)
	sw	$r2, 580($r0)
	j	cont.58280
bnei.58281:
cont.58280:
cont.58244:
cont.58242:
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	j	solve_each_element_fast.5034
bnei.58223:
	jr	$r31
bnei.58221:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58283
	j	cont.58282
bclf.58283:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58285
	j	cont.58284
bclf.58285:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -4($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r3, -8($r29)
	lw	$r4, 0($r3)
	sw	$r2, -56($r29)
	swcl	$f3, -60($r29)
	swcl	$f2, -64($r29)
	swcl	$f1, -68($r29)
	swcl	$f0, -72($r29)
	bnei	$r4, -1, bnei.58287
	addi	$r2, $r0, 1
	j	cont.58286
bnei.58287:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f4, 0($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 4($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 20($r4)
	lwcl	$f6, 8($r5)
	sub.s	$f6, $f3, $f6
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.58289
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58291
	addi	$r5, $r0, 0
	j	cont.58290
bclf.58291:
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58293
	addi	$r5, $r0, 0
	j	cont.58292
bclf.58293:
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58295
	addi	$r5, $r0, 0
	j	cont.58294
bclf.58295:
	addi	$r5, $r0, 1
cont.58294:
cont.58292:
cont.58290:
	bnei	$r5, 1, bnei.58297
	lw	$r4, 24($r4)
	j	cont.58296
bnei.58297:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.58299
	addi	$r4, $r0, 0
	j	cont.58298
bnei.58299:
	addi	$r4, $r0, 1
cont.58298:
cont.58296:
	j	cont.58288
bnei.58289:
	bnei	$r5, 2, bnei.58301
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58303
	addi	$r5, $r0, 0
	j	cont.58302
bclf.58303:
	addi	$r5, $r0, 1
cont.58302:
	bne	$r4, $r5, bne.58305
	addi	$r4, $r0, 1
	j	cont.58304
bne.58305:
	addi	$r4, $r0, 0
cont.58304:
	j	cont.58300
bnei.58301:
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f9, 4($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r5, 16($r4)
	lwcl	$f9, 8($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.58307
	fmove	$f4, $f7
	j	cont.58306
bnei.58307:
	mul.s	$f8, $f5, $f6
	lw	$r5, 36($r4)
	lwcl	$f9, 0($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58306:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.58309
	sub.s	$f4, $f4, $f31
	j	cont.58308
bnei.58309:
cont.58308:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58311
	addi	$r5, $r0, 0
	j	cont.58310
bclf.58311:
	addi	$r5, $r0, 1
cont.58310:
	bne	$r4, $r5, bne.58313
	addi	$r4, $r0, 1
	j	cont.58312
bne.58313:
	addi	$r4, $r0, 0
cont.58312:
cont.58300:
cont.58288:
	bnei	$r4, 1, bnei.58315
	addi	$r2, $r0, 0
	j	cont.58314
bnei.58315:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.58317
	addi	$r2, $r0, 1
	j	cont.58316
bnei.58317:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f4, 0($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 4($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 20($r4)
	lwcl	$f6, 8($r5)
	sub.s	$f6, $f3, $f6
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.58319
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58321
	addi	$r5, $r0, 0
	j	cont.58320
bclf.58321:
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58323
	addi	$r5, $r0, 0
	j	cont.58322
bclf.58323:
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58325
	addi	$r5, $r0, 0
	j	cont.58324
bclf.58325:
	addi	$r5, $r0, 1
cont.58324:
cont.58322:
cont.58320:
	bnei	$r5, 1, bnei.58327
	lw	$r4, 24($r4)
	j	cont.58326
bnei.58327:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.58329
	addi	$r4, $r0, 0
	j	cont.58328
bnei.58329:
	addi	$r4, $r0, 1
cont.58328:
cont.58326:
	j	cont.58318
bnei.58319:
	bnei	$r5, 2, bnei.58331
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58333
	addi	$r5, $r0, 0
	j	cont.58332
bclf.58333:
	addi	$r5, $r0, 1
cont.58332:
	bne	$r4, $r5, bne.58335
	addi	$r4, $r0, 1
	j	cont.58334
bne.58335:
	addi	$r4, $r0, 0
cont.58334:
	j	cont.58330
bnei.58331:
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f9, 4($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r5, 16($r4)
	lwcl	$f9, 8($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.58337
	fmove	$f4, $f7
	j	cont.58336
bnei.58337:
	mul.s	$f8, $f5, $f6
	lw	$r5, 36($r4)
	lwcl	$f9, 0($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58336:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.58339
	sub.s	$f4, $f4, $f31
	j	cont.58338
bnei.58339:
cont.58338:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58341
	addi	$r5, $r0, 0
	j	cont.58340
bclf.58341:
	addi	$r5, $r0, 1
cont.58340:
	bne	$r4, $r5, bne.58343
	addi	$r4, $r0, 1
	j	cont.58342
bne.58343:
	addi	$r4, $r0, 0
cont.58342:
cont.58330:
cont.58318:
	bnei	$r4, 1, bnei.58345
	addi	$r2, $r0, 0
	j	cont.58344
bnei.58345:
	lw	$r4, 8($r3)
	bnei	$r4, -1, bnei.58347
	addi	$r2, $r0, 1
	j	cont.58346
bnei.58347:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	addi	$r2, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	bnei	$r2, 1, bnei.58349
	addi	$r2, $r0, 0
	j	cont.58348
bnei.58349:
	addi	$r2, $r0, 3
	lw	$r3, -8($r29)
	lwcl	$f0, -68($r29)
	lwcl	$f1, -64($r29)
	lwcl	$f2, -60($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.58348:
cont.58346:
cont.58344:
cont.58316:
cont.58314:
cont.58286:
	bnei	$r2, 1, bnei.58351
	lwcl	$f0, -72($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -68($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -64($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -60($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -20($r29)
	sw	$r2, 600($r0)
	lw	$r2, -56($r29)
	sw	$r2, 580($r0)
	j	cont.58350
bnei.58351:
cont.58350:
cont.58284:
cont.58282:
	lw	$r2, -16($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	lw	$r3, 0($r4)
	sll	$r5, $r2, 2
	lw	$r6, -8($r29)
	lwr	$r5, $r5($r6)	!ld var
	bnei	$r5, -1, bnei.58353
	jr	$r31
bnei.58353:
	sll	$r7, $r5, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lw	$r9, 4($r4)
	sll	$r10, $r5, 2
	lwr	$r9, $r10($r9)	!ld var
	lw	$r10, 4($r7)
	sw	$r3, -76($r29)
	sw	$r2, -80($r29)
	sw	$r5, -84($r29)
	bnei	$r10, 1, bnei.58355
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.58354
bnei.58355:
	bnei	$r10, 2, bnei.58357
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58359
	addi	$r2, $r0, 0
	j	cont.58358
bclf.58359:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58358:
	j	cont.58356
bnei.58357:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58361
	addi	$r2, $r0, 0
	j	cont.58360
bclf.58361:
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
	bclf	bclf.58363
	addi	$r2, $r0, 0
	j	cont.58362
bclf.58363:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58365
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58364
bnei.58365:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58364:
	addi	$r2, $r0, 1
cont.58362:
cont.58360:
cont.58356:
cont.58354:
	bnei	$r2, 0, bnei.58367
	lw	$r2, -84($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58369
	lw	$r2, -80($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	j	solve_each_element_fast.5034
bnei.58369:
	jr	$r31
bnei.58367:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58371
	j	cont.58370
bclf.58371:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58373
	j	cont.58372
bclf.58373:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -76($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r3, -8($r29)
	lw	$r4, 0($r3)
	sw	$r2, -88($r29)
	swcl	$f3, -92($r29)
	swcl	$f2, -96($r29)
	swcl	$f1, -100($r29)
	swcl	$f0, -104($r29)
	bnei	$r4, -1, bnei.58375
	addi	$r2, $r0, 1
	j	cont.58374
bnei.58375:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f4, 0($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 4($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 20($r4)
	lwcl	$f6, 8($r5)
	sub.s	$f6, $f3, $f6
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.58377
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58379
	addi	$r5, $r0, 0
	j	cont.58378
bclf.58379:
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58381
	addi	$r5, $r0, 0
	j	cont.58380
bclf.58381:
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58383
	addi	$r5, $r0, 0
	j	cont.58382
bclf.58383:
	addi	$r5, $r0, 1
cont.58382:
cont.58380:
cont.58378:
	bnei	$r5, 1, bnei.58385
	lw	$r4, 24($r4)
	j	cont.58384
bnei.58385:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.58387
	addi	$r4, $r0, 0
	j	cont.58386
bnei.58387:
	addi	$r4, $r0, 1
cont.58386:
cont.58384:
	j	cont.58376
bnei.58377:
	bnei	$r5, 2, bnei.58389
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58391
	addi	$r5, $r0, 0
	j	cont.58390
bclf.58391:
	addi	$r5, $r0, 1
cont.58390:
	bne	$r4, $r5, bne.58393
	addi	$r4, $r0, 1
	j	cont.58392
bne.58393:
	addi	$r4, $r0, 0
cont.58392:
	j	cont.58388
bnei.58389:
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f9, 4($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r5, 16($r4)
	lwcl	$f9, 8($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.58395
	fmove	$f4, $f7
	j	cont.58394
bnei.58395:
	mul.s	$f8, $f5, $f6
	lw	$r5, 36($r4)
	lwcl	$f9, 0($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58394:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.58397
	sub.s	$f4, $f4, $f31
	j	cont.58396
bnei.58397:
cont.58396:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58399
	addi	$r5, $r0, 0
	j	cont.58398
bclf.58399:
	addi	$r5, $r0, 1
cont.58398:
	bne	$r4, $r5, bne.58401
	addi	$r4, $r0, 1
	j	cont.58400
bne.58401:
	addi	$r4, $r0, 0
cont.58400:
cont.58388:
cont.58376:
	bnei	$r4, 1, bnei.58403
	addi	$r2, $r0, 0
	j	cont.58402
bnei.58403:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.58405
	addi	$r2, $r0, 1
	j	cont.58404
bnei.58405:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	addi	$r2, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	bnei	$r2, 1, bnei.58407
	addi	$r2, $r0, 0
	j	cont.58406
bnei.58407:
	addi	$r2, $r0, 2
	lw	$r3, -8($r29)
	lwcl	$f0, -100($r29)
	lwcl	$f1, -96($r29)
	lwcl	$f2, -92($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.58406:
cont.58404:
cont.58402:
cont.58374:
	bnei	$r2, 1, bnei.58409
	lwcl	$f0, -104($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -100($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -96($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -92($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -84($r29)
	sw	$r2, 600($r0)
	lw	$r2, -88($r29)
	sw	$r2, 580($r0)
	j	cont.58408
bnei.58409:
cont.58408:
cont.58372:
cont.58370:
	lw	$r2, -80($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	j	solve_each_element_fast.5034
solve_one_or_network_fast.5086:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	bnei	$r5, -1, bnei.58411
	jr	$r31
bnei.58411:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	lw	$r6, 0($r4)
	lw	$r7, 0($r5)
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r7, -1, bnei.58413
	j	cont.58412
bnei.58413:
	sll	$r8, $r7, 2
	lw	$r8, 80($r8)
	lw	$r9, 40($r8)
	lwcl	$f0, 0($r9)
	lwcl	$f1, 4($r9)
	lwcl	$f2, 8($r9)
	lw	$r10, 4($r4)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	lw	$r11, 4($r8)
	sw	$r6, -16($r29)
	sw	$r5, -20($r29)
	sw	$r7, -24($r29)
	bnei	$r11, 1, bnei.58415
	lw	$r9, 0($r4)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	addi	$r4, $r10, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.58414
bnei.58415:
	bnei	$r11, 2, bnei.58417
	lwcl	$f0, 0($r10)
	c.le.s	$f30, $f0
	bclf	bclf.58419
	addi	$r2, $r0, 0
	j	cont.58418
bclf.58419:
	lwcl	$f0, 0($r10)
	lwcl	$f1, 12($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58418:
	j	cont.58416
bnei.58417:
	lwcl	$f3, 0($r10)
	c.eq.s	$f3, $f30
	bclf	bclf.58421
	addi	$r2, $r0, 0
	j	cont.58420
bclf.58421:
	lwcl	$f4, 4($r10)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r10)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r10)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r9)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.58423
	addi	$r2, $r0, 0
	j	cont.58422
bclf.58423:
	lw	$r8, 24($r8)
	bnei	$r8, 1, bnei.58425
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58424
bnei.58425:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58424:
	addi	$r2, $r0, 1
cont.58422:
cont.58420:
cont.58416:
cont.58414:
	bnei	$r2, 0, bnei.58427
	lw	$r2, -24($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58429
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.58428
bnei.58429:
cont.58428:
	j	cont.58426
bnei.58427:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58431
	j	cont.58430
bclf.58431:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58433
	j	cont.58432
bclf.58433:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r3, -16($r29)
	lwcl	$f1, 0($r3)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r3)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r3)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r3, -20($r29)
	lw	$r4, 0($r3)
	sw	$r2, -28($r29)
	swcl	$f3, -32($r29)
	swcl	$f2, -36($r29)
	swcl	$f1, -40($r29)
	swcl	$f0, -44($r29)
	bnei	$r4, -1, bnei.58435
	addi	$r2, $r0, 1
	j	cont.58434
bnei.58435:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	lw	$r5, 20($r4)
	lwcl	$f4, 0($r5)
	sub.s	$f4, $f1, $f4
	lw	$r5, 20($r4)
	lwcl	$f5, 4($r5)
	sub.s	$f5, $f2, $f5
	lw	$r5, 20($r4)
	lwcl	$f6, 8($r5)
	sub.s	$f6, $f3, $f6
	lw	$r5, 4($r4)
	bnei	$r5, 1, bnei.58437
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	fabs	$f4, $f4
	c.le.s	$f7, $f4
	bclf	bclf.58439
	addi	$r5, $r0, 0
	j	cont.58438
bclf.58439:
	lw	$r5, 16($r4)
	lwcl	$f4, 4($r5)
	fabs	$f5, $f5
	c.le.s	$f4, $f5
	bclf	bclf.58441
	addi	$r5, $r0, 0
	j	cont.58440
bclf.58441:
	lw	$r5, 16($r4)
	lwcl	$f4, 8($r5)
	fabs	$f5, $f6
	c.le.s	$f4, $f5
	bclf	bclf.58443
	addi	$r5, $r0, 0
	j	cont.58442
bclf.58443:
	addi	$r5, $r0, 1
cont.58442:
cont.58440:
cont.58438:
	bnei	$r5, 1, bnei.58445
	lw	$r4, 24($r4)
	j	cont.58444
bnei.58445:
	lw	$r4, 24($r4)
	bnei	$r4, 1, bnei.58447
	addi	$r4, $r0, 0
	j	cont.58446
bnei.58447:
	addi	$r4, $r0, 1
cont.58446:
cont.58444:
	j	cont.58436
bnei.58437:
	bnei	$r5, 2, bnei.58449
	lw	$r5, 16($r4)
	lwcl	$f7, 0($r5)
	mul.s	$f4, $f7, $f4
	lwcl	$f7, 4($r5)
	mul.s	$f5, $f7, $f5
	add.s	$f4, $f4, $f5
	lwcl	$f5, 8($r5)
	mul.s	$f5, $f5, $f6
	add.s	$f4, $f4, $f5
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58451
	addi	$r5, $r0, 0
	j	cont.58450
bclf.58451:
	addi	$r5, $r0, 1
cont.58450:
	bne	$r4, $r5, bne.58453
	addi	$r4, $r0, 1
	j	cont.58452
bne.58453:
	addi	$r4, $r0, 0
cont.58452:
	j	cont.58448
bnei.58449:
	mul.s	$f7, $f4, $f4
	lw	$r5, 16($r4)
	lwcl	$f8, 0($r5)
	mul.s	$f7, $f7, $f8
	mul.s	$f8, $f5, $f5
	lw	$r5, 16($r4)
	lwcl	$f9, 4($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f8, $f6, $f6
	lw	$r5, 16($r4)
	lwcl	$f9, 8($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	lw	$r5, 12($r4)
	bnei	$r5, 0, bnei.58455
	fmove	$f4, $f7
	j	cont.58454
bnei.58455:
	mul.s	$f8, $f5, $f6
	lw	$r5, 36($r4)
	lwcl	$f9, 0($r5)
	mul.s	$f8, $f8, $f9
	add.s	$f7, $f7, $f8
	mul.s	$f6, $f6, $f4
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f7, $f6
	mul.s	$f4, $f4, $f5
	lw	$r5, 36($r4)
	lwcl	$f5, 8($r5)
	mul.s	$f4, $f4, $f5
	add.s	$f4, $f6, $f4
cont.58454:
	lw	$r5, 4($r4)
	bnei	$r5, 3, bnei.58457
	sub.s	$f4, $f4, $f31
	j	cont.58456
bnei.58457:
cont.58456:
	lw	$r4, 24($r4)
	c.le.s	$f30, $f4
	bclf	bclf.58459
	addi	$r5, $r0, 0
	j	cont.58458
bclf.58459:
	addi	$r5, $r0, 1
cont.58458:
	bne	$r4, $r5, bne.58461
	addi	$r4, $r0, 1
	j	cont.58460
bne.58461:
	addi	$r4, $r0, 0
cont.58460:
cont.58448:
cont.58436:
	bnei	$r4, 1, bnei.58463
	addi	$r2, $r0, 0
	j	cont.58462
bnei.58463:
	lw	$r4, 4($r3)
	bnei	$r4, -1, bnei.58465
	addi	$r2, $r0, 1
	j	cont.58464
bnei.58465:
	sll	$r4, $r4, 2
	lw	$r4, 80($r4)
	addi	$r2, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	is_outside.4824
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 1, bnei.58467
	addi	$r2, $r0, 0
	j	cont.58466
bnei.58467:
	addi	$r2, $r0, 2
	lw	$r3, -20($r29)
	lwcl	$f0, -40($r29)
	lwcl	$f1, -36($r29)
	lwcl	$f2, -32($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58466:
cont.58464:
cont.58462:
cont.58434:
	bnei	$r2, 1, bnei.58469
	lwcl	$f0, -44($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -40($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -36($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -32($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -24($r29)
	sw	$r2, 600($r0)
	lw	$r2, -28($r29)
	sw	$r2, 580($r0)
	j	cont.58468
bnei.58469:
cont.58468:
cont.58432:
cont.58430:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58426:
cont.58412:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58471
	jr	$r31
bnei.58471:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58473
	jr	$r31
bnei.58473:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r5, -4($r29)
	lw	$r6, 0($r5)
	lw	$r7, 0($r3)
	sw	$r2, -52($r29)
	bnei	$r7, -1, bnei.58475
	j	cont.58474
bnei.58475:
	sll	$r8, $r7, 2
	lw	$r8, 80($r8)
	lw	$r9, 40($r8)
	lwcl	$f0, 0($r9)
	lwcl	$f1, 4($r9)
	lwcl	$f2, 8($r9)
	lw	$r10, 4($r5)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	lw	$r11, 4($r8)
	sw	$r6, -56($r29)
	sw	$r3, -60($r29)
	sw	$r7, -64($r29)
	bnei	$r11, 1, bnei.58477
	lw	$r9, 0($r5)
	addi	$r2, $r8, 0
	addi	$r3, $r9, 0
	addi	$r4, $r10, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.58476
bnei.58477:
	bnei	$r11, 2, bnei.58479
	lwcl	$f0, 0($r10)
	c.le.s	$f30, $f0
	bclf	bclf.58481
	addi	$r2, $r0, 0
	j	cont.58480
bclf.58481:
	lwcl	$f0, 0($r10)
	lwcl	$f1, 12($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58480:
	j	cont.58478
bnei.58479:
	lwcl	$f3, 0($r10)
	c.eq.s	$f3, $f30
	bclf	bclf.58483
	addi	$r2, $r0, 0
	j	cont.58482
bclf.58483:
	lwcl	$f4, 4($r10)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r10)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r10)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r9)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.58485
	addi	$r2, $r0, 0
	j	cont.58484
bclf.58485:
	lw	$r8, 24($r8)
	bnei	$r8, 1, bnei.58487
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58486
bnei.58487:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58486:
	addi	$r2, $r0, 1
cont.58484:
cont.58482:
cont.58478:
cont.58476:
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58489
	lw	$r2, -64($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58491
	addi	$r2, $r0, 1
	lw	$r3, -60($r29)
	lw	$r4, -4($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.58490
bnei.58491:
cont.58490:
	j	cont.58488
bnei.58489:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58493
	j	cont.58492
bclf.58493:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58495
	j	cont.58494
bclf.58495:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -56($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -60($r29)
	sw	$r2, -68($r29)
	swcl	$f3, -72($r29)
	swcl	$f2, -76($r29)
	swcl	$f1, -80($r29)
	swcl	$f0, -84($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	bnei	$r2, 1, bnei.58497
	lwcl	$f0, -84($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -80($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -76($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -72($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -64($r29)
	sw	$r2, 600($r0)
	lw	$r2, -68($r29)
	sw	$r2, 580($r0)
	j	cont.58496
bnei.58497:
cont.58496:
cont.58494:
cont.58492:
	addi	$r2, $r0, 1
	lw	$r3, -60($r29)
	lw	$r4, -4($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.58488:
cont.58474:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	bnei	$r3, -1, bnei.58499
	jr	$r31
bnei.58499:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r5, $r0, 0
	lw	$r6, -4($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r2, -88($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	solve_one_or_network_fast.5086
trace_or_matrix_fast.5098:
	sll	$r5, $r2, 2
	lwr	$r5, $r5($r3)	!ld var
	lw	$r6, 0($r5)
	bnei	$r6, -1, bnei.58501
	jr	$r31
bnei.58501:
	addi	$r7, $r0, 99
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	bne	$r6, $r7, bne.58503
	lw	$r6, 4($r5)
	bnei	$r6, -1, bnei.58505
	j	cont.58504
bnei.58505:
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
	bnei	$r3, -1, bnei.58507
	j	cont.58506
bnei.58507:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, -4($r29)
	lw	$r5, 0($r4)
	lw	$r6, 0($r3)
	bnei	$r6, -1, bnei.58509
	j	cont.58508
bnei.58509:
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
	sw	$r5, -20($r29)
	sw	$r3, -24($r29)
	sw	$r6, -28($r29)
	bnei	$r10, 1, bnei.58511
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.58510
bnei.58511:
	bnei	$r10, 2, bnei.58513
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58515
	addi	$r2, $r0, 0
	j	cont.58514
bclf.58515:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58514:
	j	cont.58512
bnei.58513:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58517
	addi	$r2, $r0, 0
	j	cont.58516
bclf.58517:
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
	bclf	bclf.58519
	addi	$r2, $r0, 0
	j	cont.58518
bclf.58519:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58521
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58520
bnei.58521:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58520:
	addi	$r2, $r0, 1
cont.58518:
cont.58516:
cont.58512:
cont.58510:
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58523
	lw	$r2, -28($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58525
	addi	$r2, $r0, 1
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.58524
bnei.58525:
cont.58524:
	j	cont.58522
bnei.58523:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58527
	j	cont.58526
bclf.58527:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58529
	j	cont.58528
bclf.58529:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -20($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -24($r29)
	sw	$r2, -32($r29)
	swcl	$f3, -36($r29)
	swcl	$f2, -40($r29)
	swcl	$f1, -44($r29)
	swcl	$f0, -48($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	bnei	$r2, 1, bnei.58531
	lwcl	$f0, -48($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -44($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -40($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -36($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -28($r29)
	sw	$r2, 600($r0)
	lw	$r2, -32($r29)
	sw	$r2, 580($r0)
	j	cont.58530
bnei.58531:
cont.58530:
cont.58528:
cont.58526:
	addi	$r2, $r0, 1
	lw	$r3, -24($r29)
	lw	$r4, -4($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.58522:
cont.58508:
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.58533
	j	cont.58532
bnei.58533:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.58532:
cont.58506:
cont.58504:
	j	cont.58502
bne.58503:
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
	sw	$r5, -16($r29)
	bnei	$r9, 1, bnei.58535
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.58534
bnei.58535:
	bnei	$r9, 2, bnei.58537
	lwcl	$f0, 0($r6)
	c.le.s	$f30, $f0
	bclf	bclf.58539
	addi	$r2, $r0, 0
	j	cont.58538
bclf.58539:
	lwcl	$f0, 0($r6)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58538:
	j	cont.58536
bnei.58537:
	lwcl	$f3, 0($r6)
	c.eq.s	$f3, $f30
	bclf	bclf.58541
	addi	$r2, $r0, 0
	j	cont.58540
bclf.58541:
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
	bclf	bclf.58543
	addi	$r2, $r0, 0
	j	cont.58542
bclf.58543:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58545
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58544
bnei.58545:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58544:
	addi	$r2, $r0, 1
cont.58542:
cont.58540:
cont.58536:
cont.58534:
	bnei	$r2, 0, bnei.58547
	j	cont.58546
bnei.58547:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58549
	j	cont.58548
bclf.58549:
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58551
	j	cont.58550
bnei.58551:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -16($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58553
	j	cont.58552
bnei.58553:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, -4($r29)
	lw	$r5, 0($r4)
	lw	$r6, 0($r3)
	bnei	$r6, -1, bnei.58555
	j	cont.58554
bnei.58555:
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
	sw	$r5, -52($r29)
	sw	$r3, -56($r29)
	sw	$r6, -60($r29)
	bnei	$r10, 1, bnei.58557
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.58556
bnei.58557:
	bnei	$r10, 2, bnei.58559
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58561
	addi	$r2, $r0, 0
	j	cont.58560
bclf.58561:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58560:
	j	cont.58558
bnei.58559:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58563
	addi	$r2, $r0, 0
	j	cont.58562
bclf.58563:
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
	bclf	bclf.58565
	addi	$r2, $r0, 0
	j	cont.58564
bclf.58565:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58567
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58566
bnei.58567:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58566:
	addi	$r2, $r0, 1
cont.58564:
cont.58562:
cont.58558:
cont.58556:
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58569
	lw	$r2, -60($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58571
	addi	$r2, $r0, 1
	lw	$r3, -56($r29)
	lw	$r4, -4($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.58570
bnei.58571:
cont.58570:
	j	cont.58568
bnei.58569:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58573
	j	cont.58572
bclf.58573:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58575
	j	cont.58574
bclf.58575:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -52($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -56($r29)
	sw	$r2, -64($r29)
	swcl	$f3, -68($r29)
	swcl	$f2, -72($r29)
	swcl	$f1, -76($r29)
	swcl	$f0, -80($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	bnei	$r2, 1, bnei.58577
	lwcl	$f0, -80($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -76($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -72($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -68($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -60($r29)
	sw	$r2, 600($r0)
	lw	$r2, -64($r29)
	sw	$r2, 580($r0)
	j	cont.58576
bnei.58577:
cont.58576:
cont.58574:
cont.58572:
	addi	$r2, $r0, 1
	lw	$r3, -56($r29)
	lw	$r4, -4($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.58568:
cont.58554:
	lw	$r2, -16($r29)
	lw	$r3, 12($r2)
	bnei	$r3, -1, bnei.58579
	j	cont.58578
bnei.58579:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r2, $r0, 4
	lw	$r3, -16($r29)
	lw	$r4, -4($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.58578:
cont.58552:
cont.58550:
cont.58548:
cont.58546:
cont.58502:
	lw	$r2, -12($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58581
	jr	$r31
bnei.58581:
	addi	$r6, $r0, 99
	sw	$r2, -84($r29)
	bne	$r5, $r6, bne.58583
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58585
	j	cont.58584
bnei.58585:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	lw	$r6, -4($r29)
	lw	$r7, 0($r6)
	lw	$r8, 0($r5)
	sw	$r3, -88($r29)
	bnei	$r8, -1, bnei.58587
	j	cont.58586
bnei.58587:
	sll	$r9, $r8, 2
	lw	$r9, 80($r9)
	lw	$r10, 40($r9)
	lwcl	$f0, 0($r10)
	lwcl	$f1, 4($r10)
	lwcl	$f2, 8($r10)
	lw	$r11, 4($r6)
	sll	$r12, $r8, 2
	lwr	$r11, $r12($r11)	!ld var
	lw	$r12, 4($r9)
	sw	$r7, -92($r29)
	sw	$r5, -96($r29)
	sw	$r8, -100($r29)
	bnei	$r12, 1, bnei.58589
	lw	$r10, 0($r6)
	addi	$r2, $r9, 0
	addi	$r3, $r10, 0
	addi	$r4, $r11, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	j	cont.58588
bnei.58589:
	bnei	$r12, 2, bnei.58591
	lwcl	$f0, 0($r11)
	c.le.s	$f30, $f0
	bclf	bclf.58593
	addi	$r2, $r0, 0
	j	cont.58592
bclf.58593:
	lwcl	$f0, 0($r11)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58592:
	j	cont.58590
bnei.58591:
	lwcl	$f3, 0($r11)
	c.eq.s	$f3, $f30
	bclf	bclf.58595
	addi	$r2, $r0, 0
	j	cont.58594
bclf.58595:
	lwcl	$f4, 4($r11)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r11)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r11)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r10)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.58597
	addi	$r2, $r0, 0
	j	cont.58596
bclf.58597:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.58599
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r11)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58598
bnei.58599:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r11)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58598:
	addi	$r2, $r0, 1
cont.58596:
cont.58594:
cont.58590:
cont.58588:
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58601
	lw	$r2, -100($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58603
	addi	$r2, $r0, 1
	lw	$r3, -96($r29)
	lw	$r4, -4($r29)
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	j	cont.58602
bnei.58603:
cont.58602:
	j	cont.58600
bnei.58601:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58605
	j	cont.58604
bclf.58605:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58607
	j	cont.58606
bclf.58607:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -92($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -96($r29)
	sw	$r2, -104($r29)
	swcl	$f3, -108($r29)
	swcl	$f2, -112($r29)
	swcl	$f1, -116($r29)
	swcl	$f0, -120($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	bnei	$r2, 1, bnei.58609
	lwcl	$f0, -120($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -116($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -112($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -108($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -100($r29)
	sw	$r2, 600($r0)
	lw	$r2, -104($r29)
	sw	$r2, 580($r0)
	j	cont.58608
bnei.58609:
cont.58608:
cont.58606:
cont.58604:
	addi	$r2, $r0, 1
	lw	$r3, -96($r29)
	lw	$r4, -4($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
cont.58600:
cont.58586:
	lw	$r2, -88($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58611
	j	cont.58610
bnei.58611:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -88($r29)
	lw	$r4, -4($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
cont.58610:
cont.58584:
	j	cont.58582
bne.58583:
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
	sw	$r3, -88($r29)
	bnei	$r9, 1, bnei.58613
	lw	$r7, 0($r8)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	j	cont.58612
bnei.58613:
	bnei	$r9, 2, bnei.58615
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.58617
	addi	$r2, $r0, 0
	j	cont.58616
bclf.58617:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58616:
	j	cont.58614
bnei.58615:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.58619
	addi	$r2, $r0, 0
	j	cont.58618
bclf.58619:
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
	bclf	bclf.58621
	addi	$r2, $r0, 0
	j	cont.58620
bclf.58621:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.58623
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58622
bnei.58623:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58622:
	addi	$r2, $r0, 1
cont.58620:
cont.58618:
cont.58614:
cont.58612:
	bnei	$r2, 0, bnei.58625
	j	cont.58624
bnei.58625:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58627
	j	cont.58626
bclf.58627:
	lw	$r2, -88($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58629
	j	cont.58628
bnei.58629:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, -4($r29)
	lw	$r5, 0($r4)
	lw	$r6, 0($r3)
	bnei	$r6, -1, bnei.58631
	j	cont.58630
bnei.58631:
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
	sw	$r5, -124($r29)
	sw	$r3, -128($r29)
	sw	$r6, -132($r29)
	bnei	$r10, 1, bnei.58633
	lw	$r8, 0($r4)
	addi	$r2, $r7, 0
	addi	$r3, $r8, 0
	addi	$r4, $r9, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.58632
bnei.58633:
	bnei	$r10, 2, bnei.58635
	lwcl	$f0, 0($r9)
	c.le.s	$f30, $f0
	bclf	bclf.58637
	addi	$r2, $r0, 0
	j	cont.58636
bclf.58637:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 12($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58636:
	j	cont.58634
bnei.58635:
	lwcl	$f3, 0($r9)
	c.eq.s	$f3, $f30
	bclf	bclf.58639
	addi	$r2, $r0, 0
	j	cont.58638
bclf.58639:
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
	bclf	bclf.58641
	addi	$r2, $r0, 0
	j	cont.58640
bclf.58641:
	lw	$r7, 24($r7)
	bnei	$r7, 1, bnei.58643
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58642
bnei.58643:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r9)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58642:
	addi	$r2, $r0, 1
cont.58640:
cont.58638:
cont.58634:
cont.58632:
	addi	$r3, $r0, 0
	bnei	$r2, 0, bnei.58645
	lw	$r2, -132($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58647
	addi	$r2, $r0, 1
	lw	$r3, -128($r29)
	lw	$r4, -4($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.58646
bnei.58647:
cont.58646:
	j	cont.58644
bnei.58645:
	lwcl	$f0, 576($r0)
	c.le.s	$f0, $f30
	bclf	bclf.58649
	j	cont.58648
bclf.58649:
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58651
	j	cont.58650
bclf.58651:
	lfh	$f1, 15395
	lfl	$f1, 55050
	add.s	$f0, $f0, $f1
	lw	$r4, -124($r29)
	lwcl	$f1, 0($r4)
	mul.s	$f1, $f1, $f0
	lwcl	$f2, 684($r0)
	add.s	$f1, $f1, $f2
	lwcl	$f2, 4($r4)
	mul.s	$f2, $f2, $f0
	lwcl	$f3, 688($r0)
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r4)
	mul.s	$f3, $f3, $f0
	lwcl	$f4, 692($r0)
	add.s	$f3, $f3, $f4
	lw	$r4, -128($r29)
	sw	$r2, -136($r29)
	swcl	$f3, -140($r29)
	swcl	$f2, -144($r29)
	swcl	$f1, -148($r29)
	swcl	$f0, -152($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	bnei	$r2, 1, bnei.58653
	lwcl	$f0, -152($r29)
	swcl	$f0, 584($r0)
	lwcl	$f0, -148($r29)
	swcl	$f0, 588($r0)
	lwcl	$f0, -144($r29)
	swcl	$f0, 592($r0)
	lwcl	$f0, -140($r29)
	swcl	$f0, 596($r0)
	lw	$r2, -132($r29)
	sw	$r2, 600($r0)
	lw	$r2, -136($r29)
	sw	$r2, 580($r0)
	j	cont.58652
bnei.58653:
cont.58652:
cont.58650:
cont.58648:
	addi	$r2, $r0, 1
	lw	$r3, -128($r29)
	lw	$r4, -4($r29)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.58644:
cont.58630:
	lw	$r2, -88($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58655
	j	cont.58654
bnei.58655:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -88($r29)
	lw	$r4, -4($r29)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
cont.58654:
cont.58628:
cont.58626:
cont.58624:
cont.58582:
	lw	$r2, -84($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58657
	jr	$r31
bnei.58657:
	addi	$r6, $r0, 99
	sw	$r2, -156($r29)
	bne	$r5, $r6, bne.58659
	lw	$r5, 4($r3)
	bnei	$r5, -1, bnei.58661
	j	cont.58660
bnei.58661:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	lw	$r7, -4($r29)
	sw	$r3, -160($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r5, 0
	addi	$r4, $r7, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -160($r29)
	lw	$r4, -4($r29)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.58660:
	j	cont.58658
bne.58659:
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
	sw	$r3, -160($r29)
	bnei	$r9, 1, bnei.58663
	lw	$r7, 0($r8)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	j	cont.58662
bnei.58663:
	bnei	$r9, 2, bnei.58665
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.58667
	addi	$r2, $r0, 0
	j	cont.58666
bclf.58667:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58666:
	j	cont.58664
bnei.58665:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.58669
	addi	$r2, $r0, 0
	j	cont.58668
bclf.58669:
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
	bclf	bclf.58671
	addi	$r2, $r0, 0
	j	cont.58670
bclf.58671:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.58673
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58672
bnei.58673:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58672:
	addi	$r2, $r0, 1
cont.58670:
cont.58668:
cont.58664:
cont.58662:
	bnei	$r2, 0, bnei.58675
	j	cont.58674
bnei.58675:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58677
	j	cont.58676
bclf.58677:
	lw	$r2, -160($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58679
	j	cont.58678
bnei.58679:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -4($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -160($r29)
	lw	$r4, -4($r29)
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
cont.58678:
cont.58676:
cont.58674:
cont.58658:
	lw	$r2, -156($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -8($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 0($r3)
	bnei	$r5, -1, bnei.58681
	jr	$r31
bnei.58681:
	addi	$r6, $r0, 99
	sw	$r2, -164($r29)
	bne	$r5, $r6, bne.58683
	addi	$r5, $r0, 1
	lw	$r6, -4($r29)
	addi	$r2, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	j	cont.58682
bne.58683:
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
	sw	$r3, -168($r29)
	bnei	$r9, 1, bnei.58685
	lw	$r7, 0($r8)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	j	cont.58684
bnei.58685:
	bnei	$r9, 2, bnei.58687
	lwcl	$f0, 0($r5)
	c.le.s	$f30, $f0
	bclf	bclf.58689
	addi	$r2, $r0, 0
	j	cont.58688
bclf.58689:
	lwcl	$f0, 0($r5)
	lwcl	$f1, 12($r7)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58688:
	j	cont.58686
bnei.58687:
	lwcl	$f3, 0($r5)
	c.eq.s	$f3, $f30
	bclf	bclf.58691
	addi	$r2, $r0, 0
	j	cont.58690
bclf.58691:
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
	bclf	bclf.58693
	addi	$r2, $r0, 0
	j	cont.58692
bclf.58693:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.58695
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58694
bnei.58695:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r5)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58694:
	addi	$r2, $r0, 1
cont.58692:
cont.58690:
cont.58686:
cont.58684:
	bnei	$r2, 0, bnei.58697
	j	cont.58696
bnei.58697:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58699
	j	cont.58698
bclf.58699:
	addi	$r2, $r0, 1
	lw	$r3, -168($r29)
	lw	$r4, -4($r29)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
cont.58698:
cont.58696:
cont.58682:
	lw	$r2, -164($r29)
	addi	$r2, $r2, 1
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	trace_or_matrix_fast.5098
get_nvector_second.5158:
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
	bnei	$r3, 0, bnei.58701
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.58700
bnei.58701:
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
cont.58700:
	lw	$r2, 24($r2)
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
	bclf	bclf.58703
	fmove	$f0, $f31
	j	cont.58702
bclf.58703:
	bnei	$r2, 1, bnei.58705
	div.s	$f0, $f29, $f0
	j	cont.58704
bnei.58705:
	div.s	$f0, $f31, $f0
cont.58704:
cont.58702:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
	jr	$r31
get_nvector.5213:
	lw	$r4, 4($r2)
	bnei	$r4, 1, bnei.58707
	lw	$r2, 580($r0)
	fmove	$f0, $f30
	swcl	$f0, 604($r0)
	swcl	$f0, 608($r0)
	swcl	$f0, 612($r0)
	addi	$r4, $r2, -1
	addi	$r2, $r2, -1
	sll	$r2, $r2, 2
	lwclr	$f0, $r2($r3)	!ldf var
	c.eq.s	$f0, $f30
	bclf	bclf.58709
	fmove	$f0, $f30
	j	cont.58708
bclf.58709:
	c.le.s	$f0, $f30
	bclf	bclf.58711
	fmove	$f0, $f29
	j	cont.58710
bclf.58711:
	fmove	$f0, $f31
cont.58710:
cont.58708:
	fneg	$f0, $f0
	sll	$r2, $r4, 2
	swcl	$f0, 604($r2)
	jr	$r31
bnei.58707:
	bnei	$r4, 2, bnei.58713
	lw	$r3, 16($r2)
	lwcl	$f0, 0($r3)
	fneg	$f0, $f0
	swcl	$f0, 604($r0)
	lw	$r3, 16($r2)
	lwcl	$f0, 4($r3)
	fneg	$f0, $f0
	swcl	$f0, 608($r0)
	lw	$r2, 16($r2)
	lwcl	$f0, 8($r2)
	fneg	$f0, $f0
	swcl	$f0, 612($r0)
	jr	$r31
bnei.58713:
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
	bnei	$r3, 0, bnei.58715
	swcl	$f3, 604($r0)
	swcl	$f4, 608($r0)
	swcl	$f5, 612($r0)
	j	cont.58714
bnei.58715:
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
cont.58714:
	lw	$r2, 24($r2)
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
	bclf	bclf.58717
	fmove	$f0, $f31
	j	cont.58716
bclf.58717:
	bnei	$r2, 1, bnei.58719
	div.s	$f0, $f29, $f0
	j	cont.58718
bnei.58719:
	div.s	$f0, $f31, $f0
cont.58718:
cont.58716:
	lwcl	$f1, 604($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 604($r0)
	lwcl	$f1, 608($r0)
	mul.s	$f1, $f1, $f0
	swcl	$f1, 608($r0)
	lwcl	$f1, 612($r0)
	mul.s	$f0, $f1, $f0
	swcl	$f0, 612($r0)
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
	bnei	$r4, 1, bnei.58721
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
	bclf	bclf.58723
	c.le.s	$f1, $f0
	bclf	bclf.58725
	lfh	$f0, 17279
	j	cont.58724
bclf.58725:
	fmove	$f0, $f30
cont.58724:
	j	cont.58722
bclf.58723:
	c.le.s	$f1, $f0
	bclf	bclf.58727
	fmove	$f0, $f30
	j	cont.58726
bclf.58727:
	lfh	$f0, 17279
cont.58726:
cont.58722:
	swcl	$f0, 620($r0)
	jr	$r31
bnei.58721:
	bnei	$r4, 2, bnei.58729
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
	bclf	bclf.58731
	addi	$r2, $r0, 0
	j	cont.58730
bclf.58731:
	addi	$r2, $r0, 1
cont.58730:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f0, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f1, -44($r29)
	c.le.s	$f4, $f5
	bclf	bclf.58733
	c.le.s	$f30, $f4
	bclf	bclf.58735
	fmove	$f0, $f4
	j	cont.58734
bclf.58735:
	add.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.58737
	c.le.s	$f30, $f4
	bclf	bclf.58739
	fmove	$f0, $f4
	j	cont.58738
bclf.58739:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58738:
	j	cont.58736
bclf.58737:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58736:
cont.58734:
	j	cont.58732
bclf.58733:
	sub.s	$f4, $f4, $f5
	lfh	$f5, 16585
	lfl	$f5, 4059
	c.le.s	$f4, $f5
	bclf	bclf.58741
	c.le.s	$f30, $f4
	bclf	bclf.58743
	fmove	$f0, $f4
	j	cont.58742
bclf.58743:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58742:
	j	cont.58740
bclf.58741:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
cont.58740:
cont.58732:
	lwcl	$f1, -44($r29)
	c.le.s	$f0, $f1
	bclf	bclf.58745
	lw	$r2, -40($r29)
	j	cont.58744
bclf.58745:
	lwcl	$f2, -36($r29)
	c.le.s	$f2, $f30
	bclf	bclf.58747
	addi	$r2, $r0, 1
	j	cont.58746
bclf.58747:
	addi	$r2, $r0, 0
cont.58746:
cont.58744:
	c.le.s	$f0, $f1
	bclf	bclf.58749
	j	cont.58748
bclf.58749:
	lwcl	$f2, -32($r29)
	sub.s	$f0, $f2, $f0
cont.58748:
	lwcl	$f2, -28($r29)
	c.le.s	$f0, $f2
	bclf	bclf.58751
	j	cont.58750
bclf.58751:
	sub.s	$f0, $f1, $f0
cont.58750:
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
	bnei	$r2, 1, bnei.58753
	j	cont.58752
bnei.58753:
	fneg	$f0, $f0
cont.58752:
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f1, $f0
	swcl	$f1, 616($r0)
	lfh	$f1, 17279
	sub.s	$f0, $f31, $f0
	mul.s	$f0, $f1, $f0
	swcl	$f0, 620($r0)
	jr	$r31
bnei.58729:
	bnei	$r4, 3, bnei.58755
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
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.58757
	addi	$r2, $r0, 0
	j	cont.58756
bclf.58757:
	addi	$r2, $r0, 1
cont.58756:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -52($r29)
	swcl	$f2, -56($r29)
	swcl	$f0, -60($r29)
	sw	$r2, -64($r29)
	swcl	$f1, -68($r29)
	c.le.s	$f4, $f5
	bclf	bclf.58759
	c.le.s	$f30, $f4
	bclf	bclf.58761
	fmove	$f0, $f4
	j	cont.58760
bclf.58761:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.58760:
	j	cont.58758
bclf.58759:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.58758:
	lwcl	$f1, -68($r29)
	c.le.s	$f0, $f1
	bclf	bclf.58763
	lw	$r2, -64($r29)
	j	cont.58762
bclf.58763:
	lwcl	$f2, -60($r29)
	c.le.s	$f2, $f30
	bclf	bclf.58765
	addi	$r2, $r0, 1
	j	cont.58764
bclf.58765:
	addi	$r2, $r0, 0
cont.58764:
cont.58762:
	c.le.s	$f0, $f1
	bclf	bclf.58767
	j	cont.58766
bclf.58767:
	lwcl	$f2, -56($r29)
	sub.s	$f0, $f2, $f0
cont.58766:
	lwcl	$f2, -52($r29)
	c.le.s	$f0, $f2
	bclf	bclf.58769
	j	cont.58768
bclf.58769:
	sub.s	$f0, $f1, $f0
cont.58768:
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
	bnei	$r2, 1, bnei.58771
	j	cont.58770
bnei.58771:
	fneg	$f0, $f0
cont.58770:
	mul.s	$f0, $f0, $f0
	lfh	$f1, 17279
	mul.s	$f1, $f0, $f1
	swcl	$f1, 620($r0)
	sub.s	$f0, $f31, $f0
	lfh	$f1, 17279
	mul.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.58755:
	bnei	$r4, 4, bnei.58773
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
	swcl	$f2, -72($r29)
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	c.le.s	$f3, $f4
	bclf	bclf.58775
	div.s	$f0, $f1, $f0
	fabs	$f0, $f0
	c.le.s	$f0, $f31
	bclf	bclf.58777
	c.le.s	$f29, $f0
	bclf	bclf.58779
	addi	$r4, $r0, 0
	j	cont.58778
bclf.58779:
	addi	$r4, $r0, -1
cont.58778:
	j	cont.58776
bclf.58777:
	addi	$r4, $r0, 1
cont.58776:
	bnei	$r4, 0, bnei.58781
	j	cont.58780
bnei.58781:
	div.s	$f0, $f31, $f0
cont.58780:
	mul.s	$f1, $f0, $f0
	lfh	$f3, 17138
	mul.s	$f3, $f3, $f1
	lfh	$f4, 16824
	div.s	$f3, $f3, $f4
	lfh	$f4, 17096
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16808
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 17058
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16792
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 17024
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16776
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 16964
	mul.s	$f4, $f4, $f1
	lfh	$f5, 16752
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 16544
	lfh	$f5, 16912
	mul.s	$f5, $f5, $f1
	lfh	$f6, 16720
	add.s	$f3, $f6, $f3
	div.s	$f3, $f5, $f3
	sw	$r4, -76($r29)
	swcl	$f0, -80($r29)
	fmove	$f0, $f4
	fmove	$f2, $f3
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -80($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -76($r29)
	bgti	$r2, 0, bgti.58783
	blti	$r2, 0, blti.58785
	j	cont.58784
blti.58785:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.58784:
	j	cont.58782
bgti.58783:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.58782:
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.58774
bclf.58775:
	lfh	$f0, 16752
cont.58774:
	swcl	$f0, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lwcl	$f1, -84($r29)
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
	lwcl	$f3, -72($r29)
	fabs	$f4, $f3
	swcl	$f0, -88($r29)
	c.le.s	$f2, $f4
	bclf	bclf.58787
	div.s	$f1, $f1, $f3
	fabs	$f1, $f1
	c.le.s	$f1, $f31
	bclf	bclf.58789
	c.le.s	$f29, $f1
	bclf	bclf.58791
	addi	$r2, $r0, 0
	j	cont.58790
bclf.58791:
	addi	$r2, $r0, -1
cont.58790:
	j	cont.58788
bclf.58789:
	addi	$r2, $r0, 1
cont.58788:
	bnei	$r2, 0, bnei.58793
	j	cont.58792
bnei.58793:
	div.s	$f1, $f31, $f1
cont.58792:
	mul.s	$f2, $f1, $f1
	lfh	$f3, 17138
	mul.s	$f3, $f3, $f2
	lfh	$f4, 16824
	div.s	$f3, $f3, $f4
	lfh	$f4, 17096
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16808
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 17058
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16792
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 17024
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16776
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 16964
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16752
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 16544
	lfh	$f5, 16912
	mul.s	$f5, $f5, $f2
	lfh	$f6, 16720
	add.s	$f3, $f6, $f3
	div.s	$f3, $f5, $f3
	sw	$r2, -92($r29)
	swcl	$f1, -96($r29)
	fmove	$f0, $f4
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -96($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -92($r29)
	bgti	$r2, 0, bgti.58795
	blti	$r2, 0, blti.58797
	j	cont.58796
blti.58797:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.58796:
	j	cont.58794
bgti.58795:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.58794:
	lfh	$f1, 16880
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	div.s	$f0, $f0, $f1
	j	cont.58786
bclf.58787:
	lfh	$f0, 16752
cont.58786:
	swcl	$f0, -100($r29)
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_floor
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lwcl	$f1, -100($r29)
	sub.s	$f0, $f1, $f0
	lfh	$f1, 15897
	lfl	$f1, 39322
	lfh	$f2, 16128
	lwcl	$f3, -88($r29)
	sub.s	$f2, $f2, $f3
	mul.s	$f2, $f2, $f2
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16128
	sub.s	$f0, $f2, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f1, $f0
	c.le.s	$f30, $f0
	bclf	bclf.58799
	j	cont.58798
bclf.58799:
	fmove	$f0, $f30
cont.58798:
	lfh	$f1, 17279
	mul.s	$f0, $f1, $f0
	lfh	$f1, 16025
	lfl	$f1, 39322
	div.s	$f0, $f0, $f1
	swcl	$f0, 624($r0)
	jr	$r31
bnei.58773:
	jr	$r31
trace_reflections.5395:
	blti	$r2, 0, blti.58801
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r2, -4($r29)
	swcl	$f1, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r5, -20($r29)
	sw	$r4, -24($r29)
	bnei	$r8, -1, bnei.58803
	j	cont.58802
bnei.58803:
	addi	$r9, $r0, 99
	sw	$r6, -28($r29)
	bne	$r8, $r9, bne.58805
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.58807
	j	cont.58806
bnei.58807:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -32($r29)
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.58806:
	j	cont.58804
bne.58805:
	sll	$r9, $r8, 2
	lw	$r9, 80($r9)
	lw	$r10, 40($r9)
	lwcl	$f2, 0($r10)
	lwcl	$f3, 4($r10)
	lwcl	$f4, 8($r10)
	lw	$r11, 4($r5)
	sll	$r8, $r8, 2
	lwr	$r8, $r8($r11)	!ld var
	lw	$r11, 4($r9)
	sw	$r7, -32($r29)
	bnei	$r11, 1, bnei.58809
	lw	$r10, 0($r5)
	addi	$r2, $r9, 0
	addi	$r3, $r10, 0
	addi	$r4, $r8, 0
	fmove	$f0, $f2
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.58808
bnei.58809:
	bnei	$r11, 2, bnei.58811
	lwcl	$f2, 0($r8)
	c.le.s	$f30, $f2
	bclf	bclf.58813
	addi	$r2, $r0, 0
	j	cont.58812
bclf.58813:
	lwcl	$f2, 0($r8)
	lwcl	$f3, 12($r10)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 1
cont.58812:
	j	cont.58810
bnei.58811:
	lwcl	$f5, 0($r8)
	c.eq.s	$f5, $f30
	bclf	bclf.58815
	addi	$r2, $r0, 0
	j	cont.58814
bclf.58815:
	lwcl	$f6, 4($r8)
	mul.s	$f2, $f6, $f2
	lwcl	$f6, 8($r8)
	mul.s	$f3, $f6, $f3
	add.s	$f2, $f2, $f3
	lwcl	$f3, 12($r8)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	lwcl	$f3, 12($r10)
	mul.s	$f4, $f2, $f2
	mul.s	$f3, $f5, $f3
	sub.s	$f3, $f4, $f3
	c.le.s	$f3, $f30
	bclf	bclf.58817
	addi	$r2, $r0, 0
	j	cont.58816
bclf.58817:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.58819
	sqrt	$f3, $f3
	add.s	$f2, $f2, $f3
	lwcl	$f3, 16($r8)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
	j	cont.58818
bnei.58819:
	sqrt	$f3, $f3
	sub.s	$f2, $f2, $f3
	lwcl	$f3, 16($r8)
	mul.s	$f2, $f2, $f3
	swcl	$f2, 576($r0)
cont.58818:
	addi	$r2, $r0, 1
cont.58816:
cont.58814:
cont.58810:
cont.58808:
	bnei	$r2, 0, bnei.58821
	j	cont.58820
bnei.58821:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58823
	j	cont.58822
bclf.58823:
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58825
	j	cont.58824
bnei.58825:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -20($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.58824:
cont.58822:
cont.58820:
cont.58804:
	lw	$r3, -28($r29)
	lw	$r2, 4($r3)
	lw	$r4, 0($r2)
	bnei	$r4, -1, bnei.58827
	j	cont.58826
bnei.58827:
	addi	$r5, $r0, 99
	bne	$r4, $r5, bne.58829
	addi	$r4, $r0, 1
	lw	$r5, -20($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.58828
bne.58829:
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 40($r5)
	lwcl	$f0, 0($r6)
	lwcl	$f1, 4($r6)
	lwcl	$f2, 8($r6)
	lw	$r7, -20($r29)
	lw	$r8, 4($r7)
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r8)	!ld var
	lw	$r8, 4($r5)
	sw	$r2, -36($r29)
	bnei	$r8, 1, bnei.58831
	lw	$r6, 0($r7)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.58830
bnei.58831:
	bnei	$r8, 2, bnei.58833
	lwcl	$f0, 0($r4)
	c.le.s	$f30, $f0
	bclf	bclf.58835
	addi	$r2, $r0, 0
	j	cont.58834
bclf.58835:
	lwcl	$f0, 0($r4)
	lwcl	$f1, 12($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58834:
	j	cont.58832
bnei.58833:
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.58837
	addi	$r2, $r0, 0
	j	cont.58836
bclf.58837:
	lwcl	$f4, 4($r4)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r4)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.58839
	addi	$r2, $r0, 0
	j	cont.58838
bclf.58839:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.58841
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58840
bnei.58841:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58840:
	addi	$r2, $r0, 1
cont.58838:
cont.58836:
cont.58832:
cont.58830:
	bnei	$r2, 0, bnei.58843
	j	cont.58842
bnei.58843:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58845
	j	cont.58844
bclf.58845:
	addi	$r2, $r0, 1
	lw	$r3, -36($r29)
	lw	$r4, -20($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.58844:
cont.58842:
cont.58828:
	addi	$r2, $r0, 2
	lw	$r3, -28($r29)
	lw	$r4, -20($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.58826:
cont.58802:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.58847
	addi	$r2, $r0, 0
	j	cont.58846
bclf.58847:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.58849
	addi	$r2, $r0, 0
	j	cont.58848
bclf.58849:
	addi	$r2, $r0, 1
cont.58848:
cont.58846:
	bnei	$r2, 1, bnei.58851
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -24($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.58853
	lw	$r2, 572($r0)
	lw	$r4, 0($r2)
	lw	$r5, 0($r4)
	bnei	$r5, -1, bnei.58855
	addi	$r2, $r0, 0
	j	cont.58854
bnei.58855:
	addi	$r6, $r0, 99
	sw	$r2, -40($r29)
	sw	$r4, -44($r29)
	bne	$r5, $r6, bne.58857
	addi	$r2, $r0, 1
	j	cont.58856
bne.58857:
	addi	$r6, $r0, 588
	addi	$r7, $r0, 1040
	addi	$r2, $r5, 0
	addi	$r3, $r7, 0
	addi	$r4, $r6, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	bnei	$r2, 0, bnei.58859
	addi	$r2, $r0, 0
	j	cont.58858
bnei.58859:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.58861
	addi	$r2, $r0, 0
	j	cont.58860
bclf.58861:
	lw	$r2, -44($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58863
	addi	$r2, $r0, 0
	j	cont.58862
bnei.58863:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58865
	addi	$r2, $r0, 0
	j	cont.58864
bnei.58865:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -48($r29)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.58867
	addi	$r2, $r0, 0
	j	cont.58866
bnei.58867:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.58869
	addi	$r2, $r0, 0
	j	cont.58868
bclf.58869:
	addi	$r2, $r0, 1
cont.58868:
cont.58866:
	bnei	$r2, 1, bnei.58871
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
	addi	$r2, $r0, 0
	lw	$r3, -52($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.58873
	addi	$r2, $r0, 1
	j	cont.58872
bnei.58873:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.58872:
	j	cont.58870
bnei.58871:
	lw	$r2, -48($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58875
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.58874
bnei.58875:
	addi	$r2, $r0, 0
cont.58874:
cont.58870:
cont.58864:
	bnei	$r2, 1, bnei.58877
	addi	$r2, $r0, 1
	j	cont.58876
bnei.58877:
	lw	$r2, -44($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58879
	addi	$r2, $r0, 0
	j	cont.58878
bnei.58879:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	bnei	$r2, 1, bnei.58881
	addi	$r2, $r0, 1
	j	cont.58880
bnei.58881:
	addi	$r2, $r0, 3
	lw	$r3, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.58880:
cont.58878:
cont.58876:
cont.58862:
	bnei	$r2, 1, bnei.58883
	addi	$r2, $r0, 1
	j	cont.58882
bnei.58883:
	addi	$r2, $r0, 0
cont.58882:
cont.58860:
cont.58858:
cont.58856:
	bnei	$r2, 1, bnei.58885
	lw	$r2, -44($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58887
	addi	$r2, $r0, 0
	j	cont.58886
bnei.58887:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58889
	addi	$r2, $r0, 0
	j	cont.58888
bnei.58889:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -56($r29)
	sw	$r3, -60($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.58891
	addi	$r2, $r0, 0
	j	cont.58890
bnei.58891:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.58893
	addi	$r2, $r0, 0
	j	cont.58892
bclf.58893:
	addi	$r2, $r0, 1
cont.58892:
cont.58890:
	bnei	$r2, 1, bnei.58895
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
	addi	$r2, $r0, 0
	lw	$r3, -60($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	bnei	$r2, 1, bnei.58897
	addi	$r2, $r0, 1
	j	cont.58896
bnei.58897:
	addi	$r2, $r0, 1
	lw	$r3, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.58896:
	j	cont.58894
bnei.58895:
	lw	$r2, -56($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.58899
	addi	$r2, $r0, 1
	lw	$r3, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.58898
bnei.58899:
	addi	$r2, $r0, 0
cont.58898:
cont.58894:
cont.58888:
	bnei	$r2, 1, bnei.58901
	addi	$r2, $r0, 1
	j	cont.58900
bnei.58901:
	lw	$r2, -44($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.58903
	addi	$r2, $r0, 0
	j	cont.58902
bnei.58903:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	bnei	$r2, 1, bnei.58905
	addi	$r2, $r0, 1
	j	cont.58904
bnei.58905:
	addi	$r2, $r0, 3
	lw	$r3, -44($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.58904:
cont.58902:
cont.58900:
cont.58886:
	bnei	$r2, 1, bnei.58907
	addi	$r2, $r0, 1
	j	cont.58906
bnei.58907:
	addi	$r2, $r0, 1
	lw	$r3, -40($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.58906:
	j	cont.58884
bnei.58885:
	addi	$r2, $r0, 1
	lw	$r3, -40($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.58884:
cont.58854:
	bnei	$r2, 1, bnei.58909
	j	cont.58908
bnei.58909:
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
	bclf	bclf.58911
	j	cont.58910
bclf.58911:
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
cont.58910:
	c.le.s	$f1, $f30
	bclf	bclf.58913
	j	cont.58912
bclf.58913:
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
cont.58912:
cont.58908:
	j	cont.58852
bne.58853:
cont.58852:
	j	cont.58850
bnei.58851:
cont.58850:
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.58915
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r2, -64($r29)
	sw	$r5, -68($r29)
	sw	$r3, -72($r29)
	sw	$r4, -76($r29)
	bnei	$r8, -1, bnei.58917
	j	cont.58916
bnei.58917:
	addi	$r9, $r0, 99
	sw	$r6, -80($r29)
	bne	$r8, $r9, bne.58919
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.58918
bne.58919:
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
	sw	$r7, -84($r29)
	bnei	$r11, 1, bnei.58921
	lw	$r10, 0($r5)
	addi	$r2, $r9, 0
	addi	$r3, $r10, 0
	addi	$r4, $r8, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.58920
bnei.58921:
	bnei	$r11, 2, bnei.58923
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.58925
	addi	$r2, $r0, 0
	j	cont.58924
bclf.58925:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.58924:
	j	cont.58922
bnei.58923:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.58927
	addi	$r2, $r0, 0
	j	cont.58926
bclf.58927:
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
	bclf	bclf.58929
	addi	$r2, $r0, 0
	j	cont.58928
bclf.58929:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.58931
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.58930
bnei.58931:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.58930:
	addi	$r2, $r0, 1
cont.58928:
cont.58926:
cont.58922:
cont.58920:
	bnei	$r2, 0, bnei.58933
	j	cont.58932
bnei.58933:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58935
	j	cont.58934
bclf.58935:
	addi	$r2, $r0, 1
	lw	$r3, -84($r29)
	lw	$r4, -68($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.58934:
cont.58932:
cont.58918:
	addi	$r2, $r0, 1
	lw	$r3, -80($r29)
	lw	$r4, -68($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.58916:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.58937
	addi	$r2, $r0, 0
	j	cont.58936
bclf.58937:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.58939
	addi	$r2, $r0, 0
	j	cont.58938
bclf.58939:
	addi	$r2, $r0, 1
cont.58938:
cont.58936:
	bnei	$r2, 1, bnei.58941
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -76($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.58943
	lw	$r2, 572($r0)
	lw	$r4, -72($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	bnei	$r2, 1, bnei.58945
	j	cont.58944
bnei.58945:
	lw	$r2, -68($r29)
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
	lw	$r3, -76($r29)
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
	bclf	bclf.58947
	j	cont.58946
bclf.58947:
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
cont.58946:
	c.le.s	$f1, $f30
	bclf	bclf.58949
	j	cont.58948
bclf.58949:
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
cont.58948:
cont.58944:
	j	cont.58942
bne.58943:
cont.58942:
	j	cont.58940
bnei.58941:
cont.58940:
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	lwcl	$f0, -16($r29)
	lwcl	$f1, -8($r29)
	j	trace_reflections.5395
blti.58915:
	jr	$r31
blti.58801:
	jr	$r31
trace_ray.5428:
	bgti	$r2, 4, bgti.58951
	lw	$r5, 8($r4)
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	swcl	$f1, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	swcl	$f0, -24($r29)
	bnei	$r8, -1, bnei.58953
	j	cont.58952
bnei.58953:
	addi	$r9, $r0, 99
	sw	$r6, -28($r29)
	bne	$r8, $r9, bne.58955
	lw	$r8, 4($r7)
	bnei	$r8, -1, bnei.58957
	j	cont.58956
bnei.58957:
	sll	$r8, $r8, 2
	lw	$r8, 364($r8)
	addi	$r9, $r0, 0
	sw	$r7, -32($r29)
	addi	$r2, $r9, 0
	addi	$r4, $r3, 0
	addi	$r3, $r8, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.58956:
	j	cont.58954
bne.58955:
	sll	$r8, $r8, 2
	lw	$r8, 80($r8)
	lwcl	$f2, 672($r0)
	lw	$r9, 20($r8)
	lwcl	$f3, 0($r9)
	sub.s	$f2, $f2, $f3
	lwcl	$f3, 676($r0)
	lw	$r9, 20($r8)
	lwcl	$f4, 4($r9)
	sub.s	$f3, $f3, $f4
	lwcl	$f4, 680($r0)
	lw	$r9, 20($r8)
	lwcl	$f5, 8($r9)
	sub.s	$f4, $f4, $f5
	lw	$r9, 4($r8)
	sw	$r7, -32($r29)
	bnei	$r9, 1, bnei.58959
	addi	$r2, $r8, 0
	fmove	$f0, $f2
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_rect.4106
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.58958
bnei.58959:
	bnei	$r9, 2, bnei.58961
	lw	$r8, 16($r8)
	lwcl	$f5, 0($r3)
	lwcl	$f6, 0($r8)
	mul.s	$f5, $f5, $f6
	lwcl	$f6, 4($r3)
	lwcl	$f7, 4($r8)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	lwcl	$f6, 8($r3)
	lwcl	$f7, 8($r8)
	mul.s	$f6, $f6, $f7
	add.s	$f5, $f5, $f6
	c.le.s	$f5, $f30
	bclf	bclf.58963
	addi	$r2, $r0, 0
	j	cont.58962
bclf.58963:
	lwcl	$f6, 0($r8)
	mul.s	$f2, $f6, $f2
	lwcl	$f6, 4($r8)
	mul.s	$f3, $f6, $f3
	add.s	$f2, $f2, $f3
	lwcl	$f3, 8($r8)
	mul.s	$f3, $f3, $f4
	add.s	$f2, $f2, $f3
	fneg	$f2, $f2
	div.s	$f2, $f2, $f5
	swcl	$f2, 576($r0)
	addi	$r2, $r0, 1
cont.58962:
	j	cont.58960
bnei.58961:
	addi	$r2, $r8, 0
	fmove	$f0, $f2
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_second.4209
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.58960:
cont.58958:
	bnei	$r2, 0, bnei.58965
	j	cont.58964
bnei.58965:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58967
	j	cont.58966
bclf.58967:
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.58969
	j	cont.58968
bnei.58969:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -20($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_each_element.4936
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	lw	$r4, -20($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.58968:
cont.58966:
cont.58964:
cont.58954:
	lw	$r2, -28($r29)
	lw	$r3, 4($r2)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.58971
	j	cont.58970
bnei.58971:
	addi	$r5, $r0, 99
	bne	$r4, $r5, bne.58973
	addi	$r4, $r0, 1
	lw	$r5, -20($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.58972
bne.58973:
	addi	$r5, $r0, 672
	lw	$r6, -20($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solver.4247
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	bnei	$r2, 0, bnei.58975
	j	cont.58974
bnei.58975:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.58977
	j	cont.58976
bclf.58977:
	addi	$r2, $r0, 1
	lw	$r3, -36($r29)
	lw	$r4, -20($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	solve_one_or_network.4987
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.58976:
cont.58974:
cont.58972:
	addi	$r2, $r0, 2
	lw	$r3, -28($r29)
	lw	$r4, -20($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_or_matrix.4999
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.58970:
cont.58952:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.58979
	addi	$r2, $r0, 0
	j	cont.58978
bclf.58979:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.58981
	addi	$r2, $r0, 0
	j	cont.58980
bclf.58981:
	addi	$r2, $r0, 1
cont.58980:
cont.58978:
	addi	$r3, $r0, 1
	bnei	$r2, 1, bnei.58983
	lw	$r2, 600($r0)
	sll	$r4, $r2, 2
	lw	$r4, 80($r4)
	lw	$r5, 8($r4)
	lw	$r6, 28($r4)
	lwcl	$f0, 0($r6)
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lw	$r6, 4($r4)
	sw	$r5, -40($r29)
	swcl	$f0, -44($r29)
	sw	$r3, -48($r29)
	sw	$r2, -52($r29)
	sw	$r4, -56($r29)
	bnei	$r6, 1, bnei.58985
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
	bclf	bclf.58987
	fmove	$f2, $f30
	j	cont.58986
bclf.58987:
	c.le.s	$f2, $f30
	bclf	bclf.58989
	fmove	$f2, $f29
	j	cont.58988
bclf.58989:
	fmove	$f2, $f31
cont.58988:
cont.58986:
	fneg	$f2, $f2
	sll	$r6, $r7, 2
	swcl	$f2, 604($r6)
	j	cont.58984
bnei.58985:
	bnei	$r6, 2, bnei.58991
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
	j	cont.58990
bnei.58991:
	addi	$r2, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	get_nvector_second.5158
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.58990:
cont.58984:
	lwcl	$f0, 588($r0)
	swcl	$f0, 672($r0)
	lwcl	$f0, 592($r0)
	swcl	$f0, 676($r0)
	lwcl	$f0, 596($r0)
	swcl	$f0, 680($r0)
	addi	$r3, $r0, 588
	lw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -52($r29)
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
	lw	$r6, -56($r29)
	lw	$r7, 28($r6)
	lwcl	$f1, 0($r7)
	c.le.s	$f0, $f1
	bclf	bclf.58993
	sll	$r7, $r3, 2
	lw	$r8, -48($r29)
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
	lwcl	$f1, -44($r29)
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
	j	cont.58992
bclf.58993:
	addi	$r7, $r0, 0
	sll	$r8, $r3, 2
	swr	$r7, $r8($r4)	!st var
cont.58992:
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
	swcl	$f0, -60($r29)
	bnei	$r9, -1, bnei.58995
	addi	$r2, $r0, 0
	j	cont.58994
bnei.58995:
	addi	$r10, $r0, 99
	sw	$r7, -64($r29)
	sw	$r8, -68($r29)
	bne	$r9, $r10, bne.58997
	addi	$r2, $r0, 1
	j	cont.58996
bne.58997:
	addi	$r10, $r0, 588
	addi	$r11, $r0, 1040
	addi	$r2, $r9, 0
	addi	$r3, $r11, 0
	addi	$r4, $r10, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	bnei	$r2, 0, bnei.58999
	addi	$r2, $r0, 0
	j	cont.58998
bnei.58999:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.59001
	addi	$r2, $r0, 0
	j	cont.59000
bclf.59001:
	lw	$r2, -68($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.59003
	addi	$r2, $r0, 0
	j	cont.59002
bnei.59003:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.59005
	addi	$r2, $r0, 0
	j	cont.59004
bnei.59005:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -72($r29)
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.59007
	addi	$r2, $r0, 0
	j	cont.59006
bnei.59007:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.59009
	addi	$r2, $r0, 0
	j	cont.59008
bclf.59009:
	addi	$r2, $r0, 1
cont.59008:
cont.59006:
	bnei	$r2, 1, bnei.59011
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
	addi	$r2, $r0, 0
	lw	$r3, -76($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.59013
	addi	$r2, $r0, 1
	j	cont.59012
bnei.59013:
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59012:
	j	cont.59010
bnei.59011:
	lw	$r2, -72($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.59015
	addi	$r2, $r0, 1
	lw	$r3, -76($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.59014
bnei.59015:
	addi	$r2, $r0, 0
cont.59014:
cont.59010:
cont.59004:
	bnei	$r2, 1, bnei.59017
	addi	$r2, $r0, 1
	j	cont.59016
bnei.59017:
	lw	$r2, -68($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.59019
	addi	$r2, $r0, 0
	j	cont.59018
bnei.59019:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	bnei	$r2, 1, bnei.59021
	addi	$r2, $r0, 1
	j	cont.59020
bnei.59021:
	addi	$r2, $r0, 3
	lw	$r3, -68($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59020:
cont.59018:
cont.59016:
cont.59002:
	bnei	$r2, 1, bnei.59023
	addi	$r2, $r0, 1
	j	cont.59022
bnei.59023:
	addi	$r2, $r0, 0
cont.59022:
cont.59000:
cont.58998:
cont.58996:
	bnei	$r2, 1, bnei.59025
	lw	$r2, -68($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.59027
	addi	$r2, $r0, 0
	j	cont.59026
bnei.59027:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.59029
	addi	$r2, $r0, 0
	j	cont.59028
bnei.59029:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -80($r29)
	sw	$r3, -84($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.59031
	addi	$r2, $r0, 0
	j	cont.59030
bnei.59031:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.59033
	addi	$r2, $r0, 0
	j	cont.59032
bclf.59033:
	addi	$r2, $r0, 1
cont.59032:
cont.59030:
	bnei	$r2, 1, bnei.59035
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
	addi	$r2, $r0, 0
	lw	$r3, -84($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	bnei	$r2, 1, bnei.59037
	addi	$r2, $r0, 1
	j	cont.59036
bnei.59037:
	addi	$r2, $r0, 1
	lw	$r3, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59036:
	j	cont.59034
bnei.59035:
	lw	$r2, -80($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.59039
	addi	$r2, $r0, 1
	lw	$r3, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.59038
bnei.59039:
	addi	$r2, $r0, 0
cont.59038:
cont.59034:
cont.59028:
	bnei	$r2, 1, bnei.59041
	addi	$r2, $r0, 1
	j	cont.59040
bnei.59041:
	lw	$r2, -68($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.59043
	addi	$r2, $r0, 0
	j	cont.59042
bnei.59043:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	bnei	$r2, 1, bnei.59045
	addi	$r2, $r0, 1
	j	cont.59044
bnei.59045:
	addi	$r2, $r0, 3
	lw	$r3, -68($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59044:
cont.59042:
cont.59040:
cont.59026:
	bnei	$r2, 1, bnei.59047
	addi	$r2, $r0, 1
	j	cont.59046
bnei.59047:
	addi	$r2, $r0, 1
	lw	$r3, -64($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59046:
	j	cont.59024
bnei.59025:
	addi	$r2, $r0, 1
	lw	$r3, -64($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59024:
cont.58994:
	bnei	$r2, 1, bnei.59049
	j	cont.59048
bnei.59049:
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
	lwcl	$f1, -44($r29)
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
	bclf	bclf.59051
	j	cont.59050
bclf.59051:
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
cont.59050:
	c.le.s	$f2, $f30
	bclf	bclf.59053
	j	cont.59052
bclf.59053:
	mul.s	$f0, $f2, $f2
	mul.s	$f0, $f0, $f0
	lwcl	$f2, -60($r29)
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
cont.59052:
cont.59048:
	lwcl	$f0, 588($r0)
	swcl	$f0, 684($r0)
	lwcl	$f0, 592($r0)
	swcl	$f0, 688($r0)
	lwcl	$f0, 596($r0)
	swcl	$f0, 692($r0)
	lw	$r2, 28($r0)
	addi	$r3, $r2, -1
	addi	$r2, $r0, 588
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, 1796($r0)
	addi	$r2, $r2, -1
	addi	$r3, $r0, 0
	blti	$r2, 0, blti.59055
	sll	$r4, $r2, 2
	lw	$r4, 1076($r4)
	lw	$r5, 4($r4)
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 584($r0)
	lw	$r6, 572($r0)
	lw	$r7, 0($r6)
	lw	$r8, 0($r7)
	sw	$r2, -88($r29)
	sw	$r5, -92($r29)
	sw	$r3, -96($r29)
	sw	$r4, -100($r29)
	bnei	$r8, -1, bnei.59057
	j	cont.59056
bnei.59057:
	addi	$r9, $r0, 99
	sw	$r6, -104($r29)
	bne	$r8, $r9, bne.59059
	addi	$r8, $r0, 1
	addi	$r2, $r8, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	j	cont.59058
bne.59059:
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
	sw	$r7, -108($r29)
	bnei	$r11, 1, bnei.59061
	lw	$r10, 0($r5)
	addi	$r2, $r9, 0
	addi	$r3, $r10, 0
	addi	$r4, $r8, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	j	cont.59060
bnei.59061:
	bnei	$r11, 2, bnei.59063
	lwcl	$f0, 0($r8)
	c.le.s	$f30, $f0
	bclf	bclf.59065
	addi	$r2, $r0, 0
	j	cont.59064
bclf.59065:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 12($r10)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.59064:
	j	cont.59062
bnei.59063:
	lwcl	$f3, 0($r8)
	c.eq.s	$f3, $f30
	bclf	bclf.59067
	addi	$r2, $r0, 0
	j	cont.59066
bclf.59067:
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
	bclf	bclf.59069
	addi	$r2, $r0, 0
	j	cont.59068
bclf.59069:
	lw	$r9, 24($r9)
	bnei	$r9, 1, bnei.59071
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.59070
bnei.59071:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r8)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.59070:
	addi	$r2, $r0, 1
cont.59068:
cont.59066:
cont.59062:
cont.59060:
	bnei	$r2, 0, bnei.59073
	j	cont.59072
bnei.59073:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.59075
	j	cont.59074
bclf.59075:
	addi	$r2, $r0, 1
	lw	$r3, -108($r29)
	lw	$r4, -92($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.59074:
cont.59072:
cont.59058:
	addi	$r2, $r0, 1
	lw	$r3, -104($r29)
	lw	$r4, -92($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
cont.59056:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.59077
	addi	$r2, $r0, 0
	j	cont.59076
bclf.59077:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.59079
	addi	$r2, $r0, 0
	j	cont.59078
bclf.59079:
	addi	$r2, $r0, 1
cont.59078:
cont.59076:
	bnei	$r2, 1, bnei.59081
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r3, 580($r0)
	addu	$r2, $r2, $r3
	lw	$r3, -100($r29)
	lw	$r4, 0($r3)
	bne	$r2, $r4, bne.59083
	lw	$r2, 572($r0)
	lw	$r4, -96($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	bnei	$r2, 1, bnei.59085
	j	cont.59084
bnei.59085:
	lw	$r2, -92($r29)
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
	lw	$r3, -100($r29)
	lwcl	$f1, 8($r3)
	lwcl	$f2, -44($r29)
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
	bclf	bclf.59087
	j	cont.59086
bclf.59087:
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
cont.59086:
	c.le.s	$f1, $f30
	bclf	bclf.59089
	j	cont.59088
bclf.59089:
	mul.s	$f0, $f1, $f1
	mul.s	$f0, $f0, $f0
	lwcl	$f1, -60($r29)
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
cont.59088:
cont.59084:
	j	cont.59082
bne.59083:
cont.59082:
	j	cont.59080
bnei.59081:
cont.59080:
	lw	$r2, -88($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	lwcl	$f0, -44($r29)
	lwcl	$f1, -60($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	trace_reflections.5395
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	j	cont.59054
blti.59055:
cont.59054:
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f1, -24($r29)
	c.le.s	$f1, $f0
	bclf	bclf.59091
	jr	$r31
bclf.59091:
	lw	$r2, -16($r29)
	blti	$r2, 4, blti.59093
	j	cont.59092
blti.59093:
	addi	$r3, $r2, 1
	addi	$r4, $r0, -1
	sll	$r3, $r3, 2
	lw	$r5, -12($r29)
	swr	$r4, $r3($r5)	!st var
cont.59092:
	lw	$r3, -40($r29)
	bnei	$r3, 2, bnei.59095
	lw	$r3, -56($r29)
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
bnei.59095:
	jr	$r31
bnei.58983:
	addi	$r2, $r0, -1
	lw	$r3, -16($r29)
	sll	$r4, $r3, 2
	lw	$r5, -12($r29)
	swr	$r2, $r4($r5)	!st var
	bnei	$r3, 0, bnei.59097
	jr	$r31
bnei.59097:
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
	bclf	bclf.59099
	jr	$r31
bclf.59099:
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
bgti.58951:
	jr	$r31
trace_diffuse_ray.5541:
	lfh	$f1, 20078
	lfl	$f1, 27432
	swcl	$f1, 584($r0)
	lw	$r3, 572($r0)
	lw	$r4, 0($r3)
	lw	$r5, 0($r4)
	swcl	$f0, -4($r29)
	sw	$r2, -8($r29)
	bnei	$r5, -1, bnei.59101
	j	cont.59100
bnei.59101:
	addi	$r6, $r0, 99
	sw	$r3, -12($r29)
	bne	$r5, $r6, bne.59103
	lw	$r5, 4($r4)
	bnei	$r5, -1, bnei.59105
	j	cont.59104
bnei.59105:
	sll	$r5, $r5, 2
	lw	$r5, 364($r5)
	addi	$r6, $r0, 0
	sw	$r4, -16($r29)
	addi	$r3, $r5, 0
	addi	$r4, $r2, 0
	addi	$r2, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -16($r29)
	lw	$r4, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.59104:
	j	cont.59102
bne.59103:
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lwcl	$f1, 0($r7)
	lwcl	$f2, 4($r7)
	lwcl	$f3, 8($r7)
	lw	$r8, 4($r2)
	sll	$r5, $r5, 2
	lwr	$r5, $r5($r8)	!ld var
	lw	$r8, 4($r6)
	sw	$r4, -16($r29)
	bnei	$r8, 1, bnei.59107
	lw	$r7, 0($r2)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r5, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.59106
bnei.59107:
	bnei	$r8, 2, bnei.59109
	lwcl	$f1, 0($r5)
	c.le.s	$f30, $f1
	bclf	bclf.59111
	addi	$r2, $r0, 0
	j	cont.59110
bclf.59111:
	lwcl	$f1, 0($r5)
	lwcl	$f2, 12($r7)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r2, $r0, 1
cont.59110:
	j	cont.59108
bnei.59109:
	lwcl	$f4, 0($r5)
	c.eq.s	$f4, $f30
	bclf	bclf.59113
	addi	$r2, $r0, 0
	j	cont.59112
bclf.59113:
	lwcl	$f5, 4($r5)
	mul.s	$f1, $f5, $f1
	lwcl	$f5, 8($r5)
	mul.s	$f2, $f5, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r5)
	mul.s	$f2, $f2, $f3
	add.s	$f1, $f1, $f2
	lwcl	$f2, 12($r7)
	mul.s	$f3, $f1, $f1
	mul.s	$f2, $f4, $f2
	sub.s	$f2, $f3, $f2
	c.le.s	$f2, $f30
	bclf	bclf.59115
	addi	$r2, $r0, 0
	j	cont.59114
bclf.59115:
	lw	$r6, 24($r6)
	bnei	$r6, 1, bnei.59117
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r5)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	j	cont.59116
bnei.59117:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r5)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
cont.59116:
	addi	$r2, $r0, 1
cont.59114:
cont.59112:
cont.59108:
cont.59106:
	bnei	$r2, 0, bnei.59119
	j	cont.59118
bnei.59119:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.59121
	j	cont.59120
bclf.59121:
	lw	$r2, -16($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.59123
	j	cont.59122
bnei.59123:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	lw	$r5, -8($r29)
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_each_element_fast.5034
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -16($r29)
	lw	$r4, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.59122:
cont.59120:
cont.59118:
cont.59102:
	lw	$r3, -12($r29)
	lw	$r2, 4($r3)
	lw	$r4, 0($r2)
	bnei	$r4, -1, bnei.59125
	j	cont.59124
bnei.59125:
	addi	$r5, $r0, 99
	bne	$r4, $r5, bne.59127
	addi	$r4, $r0, 1
	lw	$r5, -8($r29)
	addi	$r3, $r2, 0
	addi	$r2, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.59126
bne.59127:
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 40($r5)
	lwcl	$f0, 0($r6)
	lwcl	$f1, 4($r6)
	lwcl	$f2, 8($r6)
	lw	$r7, -8($r29)
	lw	$r8, 4($r7)
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r8)	!ld var
	lw	$r8, 4($r5)
	sw	$r2, -20($r29)
	bnei	$r8, 1, bnei.59129
	lw	$r6, 0($r7)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.59128
bnei.59129:
	bnei	$r8, 2, bnei.59131
	lwcl	$f0, 0($r4)
	c.le.s	$f30, $f0
	bclf	bclf.59133
	addi	$r2, $r0, 0
	j	cont.59132
bclf.59133:
	lwcl	$f0, 0($r4)
	lwcl	$f1, 12($r6)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	addi	$r2, $r0, 1
cont.59132:
	j	cont.59130
bnei.59131:
	lwcl	$f3, 0($r4)
	c.eq.s	$f3, $f30
	bclf	bclf.59135
	addi	$r2, $r0, 0
	j	cont.59134
bclf.59135:
	lwcl	$f4, 4($r4)
	mul.s	$f0, $f4, $f0
	lwcl	$f4, 8($r4)
	mul.s	$f1, $f4, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r4)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	lwcl	$f1, 12($r6)
	mul.s	$f2, $f0, $f0
	mul.s	$f1, $f3, $f1
	sub.s	$f1, $f2, $f1
	c.le.s	$f1, $f30
	bclf	bclf.59137
	addi	$r2, $r0, 0
	j	cont.59136
bclf.59137:
	lw	$r5, 24($r5)
	bnei	$r5, 1, bnei.59139
	sqrt	$f1, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
	j	cont.59138
bnei.59139:
	sqrt	$f1, $f1
	sub.s	$f0, $f0, $f1
	lwcl	$f1, 16($r4)
	mul.s	$f0, $f0, $f1
	swcl	$f0, 576($r0)
cont.59138:
	addi	$r2, $r0, 1
cont.59136:
cont.59134:
cont.59130:
cont.59128:
	bnei	$r2, 0, bnei.59141
	j	cont.59140
bnei.59141:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.59143
	j	cont.59142
bclf.59143:
	addi	$r2, $r0, 1
	lw	$r3, -20($r29)
	lw	$r4, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.59142:
cont.59140:
cont.59126:
	addi	$r2, $r0, 2
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.59124:
cont.59100:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.59145
	addi	$r2, $r0, 0
	j	cont.59144
bclf.59145:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.59147
	addi	$r2, $r0, 0
	j	cont.59146
bclf.59147:
	addi	$r2, $r0, 1
cont.59146:
cont.59144:
	bnei	$r2, 1, bnei.59149
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -8($r29)
	lw	$r3, 0($r3)
	lw	$r4, 4($r2)
	sw	$r2, -24($r29)
	bnei	$r4, 1, bnei.59151
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
	bclf	bclf.59153
	fmove	$f0, $f30
	j	cont.59152
bclf.59153:
	c.le.s	$f0, $f30
	bclf	bclf.59155
	fmove	$f0, $f29
	j	cont.59154
bclf.59155:
	fmove	$f0, $f31
cont.59154:
cont.59152:
	fneg	$f0, $f0
	sll	$r3, $r5, 2
	swcl	$f0, 604($r3)
	j	cont.59150
bnei.59151:
	bnei	$r4, 2, bnei.59157
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
	j	cont.59156
bnei.59157:
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	get_nvector_second.5158
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.59156:
cont.59150:
	addi	$r3, $r0, 588
	lw	$r2, -24($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	utexture.5219
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, 572($r0)
	lw	$r2, 0($r3)
	lw	$r4, 0($r2)
	bnei	$r4, -1, bnei.59159
	addi	$r2, $r0, 0
	j	cont.59158
bnei.59159:
	addi	$r5, $r0, 99
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	bne	$r4, $r5, bne.59161
	addi	$r2, $r0, 1
	j	cont.59160
bne.59161:
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	bnei	$r2, 0, bnei.59163
	addi	$r2, $r0, 0
	j	cont.59162
bnei.59163:
	lfh	$f0, 48588
	lfl	$f0, 52429
	lwcl	$f1, 576($r0)
	c.le.s	$f0, $f1
	bclf	bclf.59165
	addi	$r2, $r0, 0
	j	cont.59164
bclf.59165:
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.59167
	addi	$r2, $r0, 0
	j	cont.59166
bnei.59167:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.59169
	addi	$r2, $r0, 0
	j	cont.59168
bnei.59169:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -36($r29)
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.59171
	addi	$r2, $r0, 0
	j	cont.59170
bnei.59171:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.59173
	addi	$r2, $r0, 0
	j	cont.59172
bclf.59173:
	addi	$r2, $r0, 1
cont.59172:
cont.59170:
	bnei	$r2, 1, bnei.59175
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
	addi	$r2, $r0, 0
	lw	$r3, -40($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, 1, bnei.59177
	addi	$r2, $r0, 1
	j	cont.59176
bnei.59177:
	addi	$r2, $r0, 1
	lw	$r3, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.59176:
	j	cont.59174
bnei.59175:
	lw	$r2, -36($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.59179
	addi	$r2, $r0, 1
	lw	$r3, -40($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.59178
bnei.59179:
	addi	$r2, $r0, 0
cont.59178:
cont.59174:
cont.59168:
	bnei	$r2, 1, bnei.59181
	addi	$r2, $r0, 1
	j	cont.59180
bnei.59181:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.59183
	addi	$r2, $r0, 0
	j	cont.59182
bnei.59183:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	bnei	$r2, 1, bnei.59185
	addi	$r2, $r0, 1
	j	cont.59184
bnei.59185:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.59184:
cont.59182:
cont.59180:
cont.59166:
	bnei	$r2, 1, bnei.59187
	addi	$r2, $r0, 1
	j	cont.59186
bnei.59187:
	addi	$r2, $r0, 0
cont.59186:
cont.59164:
cont.59162:
cont.59160:
	bnei	$r2, 1, bnei.59189
	lw	$r2, -32($r29)
	lw	$r3, 4($r2)
	bnei	$r3, -1, bnei.59191
	addi	$r2, $r0, 0
	j	cont.59190
bnei.59191:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	lw	$r4, 0($r3)
	bnei	$r4, -1, bnei.59193
	addi	$r2, $r0, 0
	j	cont.59192
bnei.59193:
	lw	$r4, 0($r3)
	addi	$r5, $r0, 588
	addi	$r6, $r0, 1040
	sw	$r4, -44($r29)
	sw	$r3, -48($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	addi	$r4, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solver_fast.4415
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lwcl	$f0, 576($r0)
	bnei	$r2, 0, bnei.59195
	addi	$r2, $r0, 0
	j	cont.59194
bnei.59195:
	lfh	$f1, 48716
	lfl	$f1, 52429
	c.le.s	$f1, $f0
	bclf	bclf.59197
	addi	$r2, $r0, 0
	j	cont.59196
bclf.59197:
	addi	$r2, $r0, 1
cont.59196:
cont.59194:
	bnei	$r2, 1, bnei.59199
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
	addi	$r2, $r0, 0
	lw	$r3, -48($r29)
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	check_all_inside.4838
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	bnei	$r2, 1, bnei.59201
	addi	$r2, $r0, 1
	j	cont.59200
bnei.59201:
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.59200:
	j	cont.59198
bnei.59199:
	lw	$r2, -44($r29)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r2, 24($r2)
	bnei	$r2, 1, bnei.59203
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.59202
bnei.59203:
	addi	$r2, $r0, 0
cont.59202:
cont.59198:
cont.59192:
	bnei	$r2, 1, bnei.59205
	addi	$r2, $r0, 1
	j	cont.59204
bnei.59205:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	bnei	$r3, -1, bnei.59207
	addi	$r2, $r0, 0
	j	cont.59206
bnei.59207:
	sll	$r3, $r3, 2
	lw	$r3, 364($r3)
	addi	$r4, $r0, 0
	addi	$r2, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_and_group.4852
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	bnei	$r2, 1, bnei.59209
	addi	$r2, $r0, 1
	j	cont.59208
bnei.59209:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_one_or_group.4897
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.59208:
cont.59206:
cont.59204:
cont.59190:
	bnei	$r2, 1, bnei.59211
	addi	$r2, $r0, 1
	j	cont.59210
bnei.59211:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.59210:
	j	cont.59188
bnei.59189:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	shadow_check_one_or_matrix.4909
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.59188:
cont.59158:
	bnei	$r2, 1, bnei.59213
	jr	$r31
bnei.59213:
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
	bclf	bclf.59215
	fmove	$f0, $f30
	j	cont.59214
bclf.59215:
cont.59214:
	lwcl	$f1, -4($r29)
	mul.s	$f0, $f1, $f0
	lw	$r2, -24($r29)
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
bnei.59149:
	jr	$r31
iter_trace_diffuse_rays.5564:
	blti	$r5, 0, blti.59217
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
	bclf	bclf.59219
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
	bnei	$r9, -1, bnei.59221
	j	cont.59220
bnei.59221:
	addi	$r10, $r0, 99
	sw	$r7, -28($r29)
	bne	$r9, $r10, bne.59223
	addi	$r9, $r0, 1
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.59222
bne.59223:
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
	sw	$r8, -32($r29)
	bnei	$r12, 1, bnei.59225
	lw	$r11, 0($r6)
	addi	$r2, $r10, 0
	addi	$r3, $r11, 0
	addi	$r4, $r9, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.59224
bnei.59225:
	bnei	$r12, 2, bnei.59227
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.59229
	addi	$r2, $r0, 0
	j	cont.59228
bclf.59229:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r2, $r0, 1
cont.59228:
	j	cont.59226
bnei.59227:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.59231
	addi	$r2, $r0, 0
	j	cont.59230
bclf.59231:
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
	bclf	bclf.59233
	addi	$r2, $r0, 0
	j	cont.59232
bclf.59233:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.59235
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	j	cont.59234
bnei.59235:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
cont.59234:
	addi	$r2, $r0, 1
cont.59232:
cont.59230:
cont.59226:
cont.59224:
	bnei	$r2, 0, bnei.59237
	j	cont.59236
bnei.59237:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.59239
	j	cont.59238
bclf.59239:
	addi	$r2, $r0, 1
	lw	$r3, -32($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.59238:
cont.59236:
cont.59222:
	addi	$r2, $r0, 1
	lw	$r3, -28($r29)
	lw	$r4, -24($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.59220:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.59241
	addi	$r2, $r0, 0
	j	cont.59240
bclf.59241:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.59243
	addi	$r2, $r0, 0
	j	cont.59242
bclf.59243:
	addi	$r2, $r0, 1
cont.59242:
cont.59240:
	bnei	$r2, 1, bnei.59245
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -24($r29)
	lw	$r3, 0($r3)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	get_nvector.5213
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r3, $r0, 588
	lw	$r2, -36($r29)
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
	bnei	$r2, 1, bnei.59247
	j	cont.59246
bnei.59247:
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
	bclf	bclf.59249
	fmove	$f0, $f30
	j	cont.59248
bclf.59249:
cont.59248:
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
cont.59246:
	j	cont.59244
bnei.59245:
cont.59244:
	j	cont.59218
bclf.59219:
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
	bnei	$r9, -1, bnei.59251
	j	cont.59250
bnei.59251:
	addi	$r10, $r0, 99
	sw	$r7, -48($r29)
	bne	$r9, $r10, bne.59253
	addi	$r9, $r0, 1
	addi	$r2, $r9, 0
	addi	$r3, $r8, 0
	addi	$r4, $r6, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.59252
bne.59253:
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
	sw	$r8, -52($r29)
	bnei	$r12, 1, bnei.59255
	lw	$r11, 0($r6)
	addi	$r2, $r10, 0
	addi	$r3, $r11, 0
	addi	$r4, $r9, 0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solver_rect_fast.4267
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.59254
bnei.59255:
	bnei	$r12, 2, bnei.59257
	lwcl	$f1, 0($r9)
	c.le.s	$f30, $f1
	bclf	bclf.59259
	addi	$r2, $r0, 0
	j	cont.59258
bclf.59259:
	lwcl	$f1, 0($r9)
	lwcl	$f2, 12($r11)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	addi	$r2, $r0, 1
cont.59258:
	j	cont.59256
bnei.59257:
	lwcl	$f4, 0($r9)
	c.eq.s	$f4, $f30
	bclf	bclf.59261
	addi	$r2, $r0, 0
	j	cont.59260
bclf.59261:
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
	bclf	bclf.59263
	addi	$r2, $r0, 0
	j	cont.59262
bclf.59263:
	lw	$r10, 24($r10)
	bnei	$r10, 1, bnei.59265
	sqrt	$f2, $f2
	add.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
	j	cont.59264
bnei.59265:
	sqrt	$f2, $f2
	sub.s	$f1, $f1, $f2
	lwcl	$f2, 16($r9)
	mul.s	$f1, $f1, $f2
	swcl	$f1, 576($r0)
cont.59264:
	addi	$r2, $r0, 1
cont.59262:
cont.59260:
cont.59256:
cont.59254:
	bnei	$r2, 0, bnei.59267
	j	cont.59266
bnei.59267:
	lwcl	$f0, 576($r0)
	lwcl	$f1, 584($r0)
	c.le.s	$f1, $f0
	bclf	bclf.59269
	j	cont.59268
bclf.59269:
	addi	$r2, $r0, 1
	lw	$r3, -52($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	solve_one_or_network_fast.5086
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.59268:
cont.59266:
cont.59252:
	addi	$r2, $r0, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_or_matrix_fast.5098
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.59250:
	lwcl	$f0, 584($r0)
	lfh	$f1, 48588
	lfl	$f1, 52429
	c.le.s	$f0, $f1
	bclf	bclf.59271
	addi	$r2, $r0, 0
	j	cont.59270
bclf.59271:
	lfh	$f1, 19646
	lfl	$f1, 48160
	c.le.s	$f1, $f0
	bclf	bclf.59273
	addi	$r2, $r0, 0
	j	cont.59272
bclf.59273:
	addi	$r2, $r0, 1
cont.59272:
cont.59270:
	bnei	$r2, 1, bnei.59275
	lw	$r2, 600($r0)
	sll	$r2, $r2, 2
	lw	$r2, 80($r2)
	lw	$r3, -44($r29)
	lw	$r3, 0($r3)
	sw	$r2, -56($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	get_nvector.5213
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r0, 588
	lw	$r2, -56($r29)
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
	bnei	$r2, 1, bnei.59277
	j	cont.59276
bnei.59277:
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
	bclf	bclf.59279
	fmove	$f0, $f30
	j	cont.59278
bclf.59279:
cont.59278:
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
cont.59276:
	j	cont.59274
bnei.59275:
cont.59274:
cont.59218:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -2
	blti	$r2, 0, blti.59281
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
	bclf	bclf.59283
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
	j	cont.59282
bclf.59283:
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
cont.59282:
	lw	$r2, -60($r29)
	addi	$r5, $r2, -2
	lw	$r2, -12($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	j	iter_trace_diffuse_rays.5564
blti.59281:
	jr	$r31
blti.59217:
	jr	$r31
trace_diffuse_ray_80percent.5592:
	sw	$r3, -4($r29)
	sw	$r4, -8($r29)
	sw	$r2, -12($r29)
	bnei	$r2, 0, bnei.59285
	j	cont.59284
bnei.59285:
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
	blti	$r6, 0, blti.59287
	sll	$r7, $r6, 2
	lw	$r7, 80($r7)
	lw	$r8, 40($r7)
	lw	$r9, 4($r7)
	lwcl	$f0, 0($r4)
	lw	$r10, 20($r7)
	lwcl	$f1, 0($r10)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r4)
	lw	$r10, 20($r7)
	lwcl	$f1, 4($r10)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r4)
	lw	$r10, 20($r7)
	lwcl	$f1, 8($r10)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r8)
	bnei	$r9, 2, bnei.59289
	lw	$r7, 16($r7)
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	lwcl	$f3, 0($r7)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r7)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r7)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r8)
	j	cont.59288
bnei.59289:
	bgti	$r9, 2, bgti.59291
	j	cont.59290
bgti.59291:
	lwcl	$f0, 0($r8)
	lwcl	$f1, 4($r8)
	lwcl	$f2, 8($r8)
	mul.s	$f3, $f0, $f0
	lw	$r10, 16($r7)
	lwcl	$f4, 0($r10)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r10, 16($r7)
	lwcl	$f5, 4($r10)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r10, 16($r7)
	lwcl	$f5, 8($r10)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r10, 12($r7)
	bnei	$r10, 0, bnei.59293
	fmove	$f0, $f3
	j	cont.59292
bnei.59293:
	mul.s	$f4, $f1, $f2
	lw	$r10, 36($r7)
	lwcl	$f5, 0($r10)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r10, 36($r7)
	lwcl	$f4, 4($r10)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r7, 36($r7)
	lwcl	$f1, 8($r7)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59292:
	bnei	$r9, 3, bnei.59295
	sub.s	$f0, $f0, $f31
	j	cont.59294
bnei.59295:
cont.59294:
	swcl	$f0, 12($r8)
cont.59290:
cont.59288:
	addi	$r6, $r6, -1
	addi	$r2, $r4, 0
	addi	$r3, $r6, 0
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	j	cont.59286
blti.59287:
cont.59286:
	addi	$r5, $r0, 118
	lw	$r2, -16($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
cont.59284:
	lw	$r2, -12($r29)
	bnei	$r2, 1, bnei.59297
	j	cont.59296
bnei.59297:
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
	blti	$r5, 0, blti.59299
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lw	$r8, 4($r6)
	lwcl	$f0, 0($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 0($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r7)
	lwcl	$f0, 4($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 4($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r7)
	lwcl	$f0, 8($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 8($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r7)
	bnei	$r8, 2, bnei.59301
	lw	$r6, 16($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lwcl	$f3, 0($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r7)
	j	cont.59300
bnei.59301:
	bgti	$r8, 2, bgti.59303
	j	cont.59302
bgti.59303:
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	mul.s	$f3, $f0, $f0
	lw	$r9, 16($r6)
	lwcl	$f4, 0($r9)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r9, 16($r6)
	lwcl	$f5, 4($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r9, 16($r6)
	lwcl	$f5, 8($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r9, 12($r6)
	bnei	$r9, 0, bnei.59305
	fmove	$f0, $f3
	j	cont.59304
bnei.59305:
	mul.s	$f4, $f1, $f2
	lw	$r9, 36($r6)
	lwcl	$f5, 0($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r9, 36($r6)
	lwcl	$f4, 4($r9)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r6, 36($r6)
	lwcl	$f1, 8($r6)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59304:
	bnei	$r8, 3, bnei.59307
	sub.s	$f0, $f0, $f31
	j	cont.59306
bnei.59307:
cont.59306:
	swcl	$f0, 12($r7)
cont.59302:
cont.59300:
	addi	$r5, $r5, -1
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.59298
blti.59299:
cont.59298:
	addi	$r5, $r0, 118
	lw	$r2, -20($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
cont.59296:
	lw	$r2, -12($r29)
	bnei	$r2, 2, bnei.59309
	j	cont.59308
bnei.59309:
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
	blti	$r5, 0, blti.59311
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lw	$r8, 4($r6)
	lwcl	$f0, 0($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 0($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r7)
	lwcl	$f0, 4($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 4($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r7)
	lwcl	$f0, 8($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 8($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r7)
	bnei	$r8, 2, bnei.59313
	lw	$r6, 16($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lwcl	$f3, 0($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r7)
	j	cont.59312
bnei.59313:
	bgti	$r8, 2, bgti.59315
	j	cont.59314
bgti.59315:
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	mul.s	$f3, $f0, $f0
	lw	$r9, 16($r6)
	lwcl	$f4, 0($r9)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r9, 16($r6)
	lwcl	$f5, 4($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r9, 16($r6)
	lwcl	$f5, 8($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r9, 12($r6)
	bnei	$r9, 0, bnei.59317
	fmove	$f0, $f3
	j	cont.59316
bnei.59317:
	mul.s	$f4, $f1, $f2
	lw	$r9, 36($r6)
	lwcl	$f5, 0($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r9, 36($r6)
	lwcl	$f4, 4($r9)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r6, 36($r6)
	lwcl	$f1, 8($r6)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59316:
	bnei	$r8, 3, bnei.59319
	sub.s	$f0, $f0, $f31
	j	cont.59318
bnei.59319:
cont.59318:
	swcl	$f0, 12($r7)
cont.59314:
cont.59312:
	addi	$r5, $r5, -1
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.59310
blti.59311:
cont.59310:
	addi	$r5, $r0, 118
	lw	$r2, -24($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.59308:
	lw	$r2, -12($r29)
	bnei	$r2, 3, bnei.59321
	j	cont.59320
bnei.59321:
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
	blti	$r5, 0, blti.59323
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 40($r6)
	lw	$r8, 4($r6)
	lwcl	$f0, 0($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 0($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r7)
	lwcl	$f0, 4($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 4($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r7)
	lwcl	$f0, 8($r4)
	lw	$r9, 20($r6)
	lwcl	$f1, 8($r9)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r7)
	bnei	$r8, 2, bnei.59325
	lw	$r6, 16($r6)
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	lwcl	$f3, 0($r6)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r6)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r6)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r7)
	j	cont.59324
bnei.59325:
	bgti	$r8, 2, bgti.59327
	j	cont.59326
bgti.59327:
	lwcl	$f0, 0($r7)
	lwcl	$f1, 4($r7)
	lwcl	$f2, 8($r7)
	mul.s	$f3, $f0, $f0
	lw	$r9, 16($r6)
	lwcl	$f4, 0($r9)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r9, 16($r6)
	lwcl	$f5, 4($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r9, 16($r6)
	lwcl	$f5, 8($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r9, 12($r6)
	bnei	$r9, 0, bnei.59329
	fmove	$f0, $f3
	j	cont.59328
bnei.59329:
	mul.s	$f4, $f1, $f2
	lw	$r9, 36($r6)
	lwcl	$f5, 0($r9)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r9, 36($r6)
	lwcl	$f4, 4($r9)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r6, 36($r6)
	lwcl	$f1, 8($r6)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59328:
	bnei	$r8, 3, bnei.59331
	sub.s	$f0, $f0, $f31
	j	cont.59330
bnei.59331:
cont.59330:
	swcl	$f0, 12($r7)
cont.59326:
cont.59324:
	addi	$r5, $r5, -1
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.59322
blti.59323:
cont.59322:
	addi	$r5, $r0, 118
	lw	$r2, -28($r29)
	lw	$r3, -4($r29)
	lw	$r4, -8($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.59320:
	lw	$r2, -12($r29)
	bnei	$r2, 4, bnei.59333
	jr	$r31
bnei.59333:
	lw	$r2, 780($r0)
	lw	$r4, -8($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r3, 28($r0)
	addi	$r3, $r3, -1
	sw	$r2, -32($r29)
	blti	$r3, 0, blti.59335
	sll	$r5, $r3, 2
	lw	$r5, 80($r5)
	lw	$r6, 40($r5)
	lw	$r7, 4($r5)
	lwcl	$f0, 0($r4)
	lw	$r8, 20($r5)
	lwcl	$f1, 0($r8)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r4)
	lw	$r8, 20($r5)
	lwcl	$f1, 4($r8)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r4)
	lw	$r8, 20($r5)
	lwcl	$f1, 8($r8)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r6)
	bnei	$r7, 2, bnei.59337
	lw	$r5, 16($r5)
	lwcl	$f0, 0($r6)
	lwcl	$f1, 4($r6)
	lwcl	$f2, 8($r6)
	lwcl	$f3, 0($r5)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r5)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r5)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r6)
	j	cont.59336
bnei.59337:
	bgti	$r7, 2, bgti.59339
	j	cont.59338
bgti.59339:
	lwcl	$f0, 0($r6)
	lwcl	$f1, 4($r6)
	lwcl	$f2, 8($r6)
	mul.s	$f3, $f0, $f0
	lw	$r8, 16($r5)
	lwcl	$f4, 0($r8)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r8, 16($r5)
	lwcl	$f5, 4($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r8, 16($r5)
	lwcl	$f5, 8($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r8, 12($r5)
	bnei	$r8, 0, bnei.59341
	fmove	$f0, $f3
	j	cont.59340
bnei.59341:
	mul.s	$f4, $f1, $f2
	lw	$r8, 36($r5)
	lwcl	$f5, 0($r8)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r8, 36($r5)
	lwcl	$f4, 4($r8)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r5, 36($r5)
	lwcl	$f1, 8($r5)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59340:
	bnei	$r7, 3, bnei.59343
	sub.s	$f0, $f0, $f31
	j	cont.59342
bnei.59343:
cont.59342:
	swcl	$f0, 12($r6)
cont.59338:
cont.59336:
	addi	$r3, $r3, -1
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.59334
blti.59335:
cont.59334:
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
	bnei	$r2, 0, bnei.59345
	j	cont.59344
bnei.59345:
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
	bclf	bclf.59347
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.59346
bclf.59347:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.59346:
	addi	$r5, $r0, 116
	lw	$r2, -24($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.59344:
	lw	$r2, -20($r29)
	bnei	$r2, 1, bnei.59349
	j	cont.59348
bnei.59349:
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
	bclf	bclf.59351
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.59350
bclf.59351:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.59350:
	addi	$r5, $r0, 116
	lw	$r2, -28($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
cont.59348:
	lw	$r2, -20($r29)
	bnei	$r2, 2, bnei.59353
	j	cont.59352
bnei.59353:
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
	bclf	bclf.59355
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.59354
bclf.59355:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.59354:
	addi	$r5, $r0, 116
	lw	$r2, -32($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
cont.59352:
	lw	$r2, -20($r29)
	bnei	$r2, 3, bnei.59357
	j	cont.59356
bnei.59357:
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
	bclf	bclf.59359
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.59358
bclf.59359:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.59358:
	addi	$r5, $r0, 116
	lw	$r2, -36($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.59356:
	lw	$r2, -20($r29)
	bnei	$r2, 4, bnei.59361
	j	cont.59360
bnei.59361:
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
	bclf	bclf.59363
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	j	cont.59362
bclf.59363:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.59362:
	addi	$r5, $r0, 116
	lw	$r2, -40($r29)
	lw	$r3, -12($r29)
	lw	$r4, -16($r29)
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
cont.59360:
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
calc_diffuse_using_5points.5629:
	sll	$r7, $r2, 2
	lwr	$r3, $r7($r3)	!ld var
	lw	$r3, 20($r3)
	addi	$r7, $r2, -1
	sll	$r7, $r7, 2
	lwr	$r7, $r7($r4)	!ld var
	lw	$r7, 20($r7)
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r4)	!ld var
	lw	$r8, 20($r8)
	addi	$r9, $r2, 1
	sll	$r9, $r9, 2
	lwr	$r9, $r9($r4)	!ld var
	lw	$r9, 20($r9)
	sll	$r10, $r2, 2
	lwr	$r5, $r10($r5)	!ld var
	lw	$r5, 20($r5)
	sll	$r10, $r6, 2
	lwr	$r3, $r10($r3)	!ld var
	lwcl	$f0, 0($r3)
	swcl	$f0, 628($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 632($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 636($r0)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r7)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r8)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r9)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r3, $r6, 2
	lwr	$r3, $r3($r5)	!ld var
	lwcl	$f0, 628($r0)
	lwcl	$f1, 0($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 628($r0)
	lwcl	$f0, 632($r0)
	lwcl	$f1, 4($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 632($r0)
	lwcl	$f0, 636($r0)
	lwcl	$f1, 8($r3)
	add.s	$f0, $f0, $f1
	swcl	$f0, 636($r0)
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r4)	!ld var
	lw	$r2, 16($r2)
	sll	$r3, $r6, 2
	lwr	$r2, $r3($r2)	!ld var
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
	bgti	$r3, 4, bgti.59365
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59367
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	bnei	$r4, 1, bnei.59369
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
	bnei	$r4, 0, bnei.59371
	j	cont.59370
bnei.59371:
	lw	$r8, 764($r0)
	sw	$r8, -28($r29)
	addi	$r2, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_startp.4779
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
cont.59370:
	lw	$r2, -24($r29)
	bnei	$r2, 1, bnei.59373
	j	cont.59372
bnei.59373:
	lw	$r3, 768($r0)
	lw	$r4, -20($r29)
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_startp.4779
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
cont.59372:
	lw	$r2, -24($r29)
	bnei	$r2, 2, bnei.59375
	j	cont.59374
bnei.59375:
	lw	$r3, 772($r0)
	lw	$r4, -20($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r4, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	setup_startp.4779
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
cont.59374:
	lw	$r2, -24($r29)
	bnei	$r2, 3, bnei.59377
	j	cont.59376
bnei.59377:
	lw	$r3, 776($r0)
	lw	$r4, -20($r29)
	sw	$r3, -40($r29)
	addi	$r2, $r4, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	setup_startp.4779
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
cont.59376:
	lw	$r2, -24($r29)
	bnei	$r2, 4, bnei.59379
	j	cont.59378
bnei.59379:
	lw	$r2, 780($r0)
	lw	$r3, -20($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	setup_startp.4779
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
cont.59378:
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
	j	cont.59368
bnei.59369:
cont.59368:
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	bgti	$r2, 4, bgti.59381
	lw	$r3, -4($r29)
	lw	$r4, 8($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59383
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.59385
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
	sw	$r7, -48($r29)
	sw	$r2, -52($r29)
	sw	$r5, -56($r29)
	sw	$r6, -60($r29)
	sw	$r4, -64($r29)
	bnei	$r4, 0, bnei.59387
	j	cont.59386
bnei.59387:
	lw	$r8, 764($r0)
	lwcl	$f0, 0($r6)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r6)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r6)
	swcl	$f0, 692($r0)
	lw	$r9, 28($r0)
	addi	$r9, $r9, -1
	sw	$r8, -68($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r9, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
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
	bclf	bclf.59389
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.59388
bclf.59389:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59388:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59386:
	lw	$r2, -64($r29)
	bnei	$r2, 1, bnei.59391
	j	cont.59390
bnei.59391:
	lw	$r3, 768($r0)
	lw	$r4, -60($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -72($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -72($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
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
	bclf	bclf.59393
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59392
bclf.59393:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.59392:
	addi	$r5, $r0, 116
	lw	$r2, -72($r29)
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.59390:
	lw	$r2, -64($r29)
	bnei	$r2, 2, bnei.59395
	j	cont.59394
bnei.59395:
	lw	$r3, 772($r0)
	lw	$r4, -60($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, -76($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
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
	bclf	bclf.59397
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.59396
bclf.59397:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59396:
	addi	$r5, $r0, 116
	lw	$r2, -76($r29)
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59394:
	lw	$r2, -64($r29)
	bnei	$r2, 3, bnei.59399
	j	cont.59398
bnei.59399:
	lw	$r3, 776($r0)
	lw	$r4, -60($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -80($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
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
	bclf	bclf.59401
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.59400
bclf.59401:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.59400:
	addi	$r5, $r0, 116
	lw	$r2, -80($r29)
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.59398:
	lw	$r2, -64($r29)
	bnei	$r2, 4, bnei.59403
	j	cont.59402
bnei.59403:
	lw	$r2, 780($r0)
	lw	$r3, -60($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -84($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
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
	bclf	bclf.59405
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.59404
bclf.59405:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59404:
	addi	$r5, $r0, 116
	lw	$r2, -84($r29)
	lw	$r3, -56($r29)
	lw	$r4, -60($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
cont.59402:
	lw	$r2, -52($r29)
	sll	$r3, $r2, 2
	lw	$r4, -48($r29)
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
	j	cont.59384
bnei.59385:
cont.59384:
	addi	$r2, $r2, 1
	bgti	$r2, 4, bgti.59407
	lw	$r3, -4($r29)
	lw	$r4, 8($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59409
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.59411
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
	sw	$r7, -88($r29)
	sw	$r2, -92($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r2, -92($r29)
	sll	$r3, $r2, 2
	lw	$r4, -88($r29)
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
	j	cont.59410
bnei.59411:
cont.59410:
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.59413
	lw	$r2, -4($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59415
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -96($r29)
	bnei	$r4, 1, bnei.59417
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	j	cont.59416
bnei.59417:
cont.59416:
	lw	$r2, -96($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	j	do_without_neighbors.5662
blti.59415:
	jr	$r31
bgti.59413:
	jr	$r31
blti.59409:
	jr	$r31
bgti.59407:
	jr	$r31
blti.59383:
	jr	$r31
bgti.59381:
	jr	$r31
blti.59367:
	jr	$r31
bgti.59365:
	jr	$r31
try_exploit_neighbors.5713:
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.59419
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.59421
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
	bne	$r10, $r9, bne.59423
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59425
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59427
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59429
	addi	$r9, $r0, 1
	j	cont.59428
bne.59429:
	addi	$r9, $r0, 0
cont.59428:
	j	cont.59426
bne.59427:
	addi	$r9, $r0, 0
cont.59426:
	j	cont.59424
bne.59425:
	addi	$r9, $r0, 0
cont.59424:
	j	cont.59422
bne.59423:
	addi	$r9, $r0, 0
cont.59422:
	bnei	$r9, 1, bnei.59431
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	bnei	$r8, 1, bnei.59433
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
	j	cont.59432
bnei.59433:
cont.59432:
	addi	$r7, $r7, 1
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	bgti	$r7, 4, bgti.59435
	lw	$r9, 8($r8)
	sll	$r10, $r7, 2
	lwr	$r9, $r10($r9)	!ld var
	blti	$r9, 0, blti.59437
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
	bne	$r10, $r9, bne.59439
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59441
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59443
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	sll	$r11, $r7, 2
	lwr	$r10, $r11($r10)	!ld var
	bne	$r10, $r9, bne.59445
	addi	$r9, $r0, 1
	j	cont.59444
bne.59445:
	addi	$r9, $r0, 0
cont.59444:
	j	cont.59442
bne.59443:
	addi	$r9, $r0, 0
cont.59442:
	j	cont.59440
bne.59441:
	addi	$r9, $r0, 0
cont.59440:
	j	cont.59438
bne.59439:
	addi	$r9, $r0, 0
cont.59438:
	bnei	$r9, 1, bnei.59447
	lw	$r8, 12($r8)
	sll	$r9, $r7, 2
	lwr	$r8, $r9($r8)	!ld var
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r4, -12($r29)
	sw	$r3, -16($r29)
	sw	$r2, -20($r29)
	sw	$r7, -24($r29)
	bnei	$r8, 1, bnei.59449
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	addi	$r5, $r6, 0
	addi	$r6, $r7, 0
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	calc_diffuse_using_5points.5629
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	j	cont.59448
bnei.59449:
cont.59448:
	lw	$r2, -24($r29)
	addi	$r7, $r2, 1
	lw	$r2, -20($r29)
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	j	try_exploit_neighbors.5713
bnei.59447:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.59451
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.59453
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	sw	$r2, -28($r29)
	sw	$r7, -24($r29)
	bnei	$r3, 1, bnei.59455
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
	sw	$r6, -32($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -32($r29)
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
	j	cont.59454
bnei.59455:
cont.59454:
	lw	$r2, -24($r29)
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.59457
	lw	$r2, -28($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59459
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -36($r29)
	bnei	$r4, 1, bnei.59461
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.59460
bnei.59461:
cont.59460:
	lw	$r2, -36($r29)
	addi	$r3, $r2, 1
	lw	$r2, -28($r29)
	j	do_without_neighbors.5662
blti.59459:
	jr	$r31
bgti.59457:
	jr	$r31
blti.59453:
	jr	$r31
bgti.59451:
	jr	$r31
blti.59437:
	jr	$r31
bgti.59435:
	jr	$r31
bnei.59431:
	sll	$r2, $r2, 2
	lwr	$r2, $r2($r5)	!ld var
	bgti	$r7, 4, bgti.59463
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	blti	$r3, 0, blti.59465
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	lwr	$r3, $r4($r3)	!ld var
	sw	$r2, -40($r29)
	sw	$r7, -44($r29)
	bnei	$r3, 1, bnei.59467
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
	sw	$r6, -48($r29)
	sw	$r4, -52($r29)
	sw	$r5, -56($r29)
	sw	$r3, -60($r29)
	bnei	$r3, 0, bnei.59469
	j	cont.59468
bnei.59469:
	lw	$r8, 764($r0)
	lwcl	$f0, 0($r5)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r5)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r5)
	swcl	$f0, 692($r0)
	lw	$r9, 28($r0)
	addi	$r9, $r9, -1
	sw	$r8, -64($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r9, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, -64($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.59471
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.59470
bclf.59471:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.59470:
	addi	$r5, $r0, 116
	lw	$r2, -64($r29)
	lw	$r3, -52($r29)
	lw	$r4, -56($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.59468:
	lw	$r2, -60($r29)
	bnei	$r2, 1, bnei.59473
	j	cont.59472
bnei.59473:
	lw	$r3, 768($r0)
	lw	$r4, -56($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -68($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.59475
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.59474
bclf.59475:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59474:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -52($r29)
	lw	$r4, -56($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59472:
	lw	$r2, -60($r29)
	bnei	$r2, 2, bnei.59477
	j	cont.59476
bnei.59477:
	lw	$r3, 772($r0)
	lw	$r4, -56($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -72($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -72($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.59479
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59478
bclf.59479:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.59478:
	addi	$r5, $r0, 116
	lw	$r2, -72($r29)
	lw	$r3, -52($r29)
	lw	$r4, -56($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.59476:
	lw	$r2, -60($r29)
	bnei	$r2, 3, bnei.59481
	j	cont.59480
bnei.59481:
	lw	$r3, 776($r0)
	lw	$r4, -56($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, -76($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.59483
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.59482
bclf.59483:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59482:
	addi	$r5, $r0, 116
	lw	$r2, -76($r29)
	lw	$r3, -52($r29)
	lw	$r4, -56($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
cont.59480:
	lw	$r2, -60($r29)
	bnei	$r2, 4, bnei.59485
	j	cont.59484
bnei.59485:
	lw	$r2, 780($r0)
	lw	$r3, -56($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r2, -80($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -52($r29)
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
	bclf	bclf.59487
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	j	cont.59486
bclf.59487:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.59486:
	addi	$r5, $r0, 116
	lw	$r2, -80($r29)
	lw	$r3, -52($r29)
	lw	$r4, -56($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
cont.59484:
	lw	$r2, -44($r29)
	sll	$r3, $r2, 2
	lw	$r4, -48($r29)
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
	j	cont.59466
bnei.59467:
cont.59466:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	bgti	$r2, 4, bgti.59489
	lw	$r3, -40($r29)
	lw	$r4, 8($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59491
	lw	$r4, 12($r3)
	sll	$r5, $r2, 2
	lwr	$r4, $r5($r4)	!ld var
	bnei	$r4, 1, bnei.59493
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
	sw	$r7, -84($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	addi	$r4, $r6, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r2, -88($r29)
	sll	$r3, $r2, 2
	lw	$r4, -84($r29)
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
	j	cont.59492
bnei.59493:
cont.59492:
	addi	$r3, $r2, 1
	bgti	$r3, 4, bgti.59495
	lw	$r2, -40($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59497
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -92($r29)
	bnei	$r4, 1, bnei.59499
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	j	cont.59498
bnei.59499:
cont.59498:
	lw	$r2, -92($r29)
	addi	$r3, $r2, 1
	lw	$r2, -40($r29)
	j	do_without_neighbors.5662
blti.59497:
	jr	$r31
bgti.59495:
	jr	$r31
blti.59491:
	jr	$r31
bgti.59489:
	jr	$r31
blti.59465:
	jr	$r31
bgti.59463:
	jr	$r31
blti.59421:
	jr	$r31
bgti.59419:
	jr	$r31
pretrace_diffuse_rays.5772:
	bgti	$r3, 4, bgti.59501
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59503
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -4($r29)
	bnei	$r4, 1, bnei.59505
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
	blti	$r7, 0, blti.59507
	sll	$r8, $r7, 2
	lw	$r8, 80($r8)
	lw	$r9, 40($r8)
	lw	$r10, 4($r8)
	lwcl	$f0, 0($r6)
	lw	$r11, 20($r8)
	lwcl	$f1, 0($r11)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 0($r9)
	lwcl	$f0, 4($r6)
	lw	$r11, 20($r8)
	lwcl	$f1, 4($r11)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 4($r9)
	lwcl	$f0, 8($r6)
	lw	$r11, 20($r8)
	lwcl	$f1, 8($r11)
	sub.s	$f0, $f0, $f1
	swcl	$f0, 8($r9)
	bnei	$r10, 2, bnei.59509
	lw	$r8, 16($r8)
	lwcl	$f0, 0($r9)
	lwcl	$f1, 4($r9)
	lwcl	$f2, 8($r9)
	lwcl	$f3, 0($r8)
	mul.s	$f0, $f3, $f0
	lwcl	$f3, 4($r8)
	mul.s	$f1, $f3, $f1
	add.s	$f0, $f0, $f1
	lwcl	$f1, 8($r8)
	mul.s	$f1, $f1, $f2
	add.s	$f0, $f0, $f1
	swcl	$f0, 12($r9)
	j	cont.59508
bnei.59509:
	bgti	$r10, 2, bgti.59511
	j	cont.59510
bgti.59511:
	lwcl	$f0, 0($r9)
	lwcl	$f1, 4($r9)
	lwcl	$f2, 8($r9)
	mul.s	$f3, $f0, $f0
	lw	$r11, 16($r8)
	lwcl	$f4, 0($r11)
	mul.s	$f3, $f3, $f4
	mul.s	$f4, $f1, $f1
	lw	$r11, 16($r8)
	lwcl	$f5, 4($r11)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f4, $f2, $f2
	lw	$r11, 16($r8)
	lwcl	$f5, 8($r11)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	lw	$r11, 12($r8)
	bnei	$r11, 0, bnei.59513
	fmove	$f0, $f3
	j	cont.59512
bnei.59513:
	mul.s	$f4, $f1, $f2
	lw	$r11, 36($r8)
	lwcl	$f5, 0($r11)
	mul.s	$f4, $f4, $f5
	add.s	$f3, $f3, $f4
	mul.s	$f2, $f2, $f0
	lw	$r11, 36($r8)
	lwcl	$f4, 4($r11)
	mul.s	$f2, $f2, $f4
	add.s	$f2, $f3, $f2
	mul.s	$f0, $f0, $f1
	lw	$r8, 36($r8)
	lwcl	$f1, 8($r8)
	mul.s	$f0, $f0, $f1
	add.s	$f0, $f2, $f0
cont.59512:
	bnei	$r10, 3, bnei.59515
	sub.s	$f0, $f0, $f31
	j	cont.59514
bnei.59515:
cont.59514:
	swcl	$f0, 12($r9)
cont.59510:
cont.59508:
	addi	$r7, $r7, -1
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.59506
blti.59507:
cont.59506:
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
	j	cont.59504
bnei.59505:
cont.59504:
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.59517
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59519
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -24($r29)
	bnei	$r4, 1, bnei.59521
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
	bclf	bclf.59523
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	j	cont.59522
bclf.59523:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.59522:
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
	j	cont.59520
bnei.59521:
cont.59520:
	lw	$r3, -24($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.59525
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59527
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -40($r29)
	bnei	$r4, 1, bnei.59529
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
	sw	$r2, -8($r29)
	sw	$r6, -44($r29)
	sw	$r5, -48($r29)
	sw	$r4, -52($r29)
	addi	$r2, $r6, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	setup_startp.4779
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -52($r29)
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -40($r29)
	sll	$r5, $r4, 2
	lwr	$r3, $r5($r3)	!ld var
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59528
bnei.59529:
cont.59528:
	lw	$r3, -40($r29)
	addi	$r3, $r3, 1
	bgti	$r3, 4, bgti.59531
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	blti	$r4, 0, blti.59533
	lw	$r4, 12($r2)
	sll	$r5, $r3, 2
	lwr	$r4, $r5($r4)	!ld var
	sw	$r3, -56($r29)
	bnei	$r4, 1, bnei.59535
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
	sw	$r6, -60($r29)
	sw	$r5, -64($r29)
	sw	$r4, -68($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -64($r29)
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
	bclf	bclf.59537
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.59536
bclf.59537:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59536:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -64($r29)
	lw	$r4, -60($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 20($r2)
	lw	$r4, -56($r29)
	sll	$r5, $r4, 2
	lwr	$r3, $r5($r3)	!ld var
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59534
bnei.59535:
cont.59534:
	lw	$r3, -56($r29)
	addi	$r3, $r3, 1
	j	pretrace_diffuse_rays.5772
blti.59533:
	jr	$r31
bgti.59531:
	jr	$r31
blti.59527:
	jr	$r31
bgti.59525:
	jr	$r31
blti.59519:
	jr	$r31
bgti.59517:
	jr	$r31
blti.59503:
	jr	$r31
bgti.59501:
	jr	$r31
pretrace_pixels.5794:
	addi	$r5, $r0, 0
	blti	$r3, 0, blti.59539
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
	bclf	bclf.59541
	fmove	$f0, $f31
	j	cont.59540
bclf.59541:
	div.s	$f0, $f31, $f0
cont.59540:
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
	blti	$r6, 0, blti.59543
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -36($r29)
	bnei	$r6, 1, bnei.59545
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
	bclf	bclf.59547
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.59546
bclf.59547:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
cont.59546:
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
	j	cont.59544
bnei.59545:
cont.59544:
	lw	$r2, -36($r29)
	lw	$r3, 8($r2)
	lw	$r3, 4($r3)
	blti	$r3, 0, blti.59549
	lw	$r3, 12($r2)
	lw	$r3, 4($r3)
	bnei	$r3, 1, bnei.59551
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	sll	$r3, $r3, 2
	lw	$r3, 764($r3)
	lw	$r4, 4($r4)
	lw	$r5, 4($r5)
	sw	$r5, -52($r29)
	sw	$r4, -56($r29)
	sw	$r3, -60($r29)
	addi	$r2, $r5, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	setup_startp.4779
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -60($r29)
	lw	$r3, -56($r29)
	lw	$r4, -52($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 20($r2)
	lw	$r3, 4($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59550
bnei.59551:
cont.59550:
	lw	$r3, 8($r2)
	lw	$r3, 8($r3)
	blti	$r3, 0, blti.59553
	lw	$r3, 12($r2)
	lw	$r3, 8($r3)
	bnei	$r3, 1, bnei.59555
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	sll	$r3, $r3, 2
	lw	$r3, 764($r3)
	lw	$r4, 8($r4)
	lw	$r5, 8($r5)
	lwcl	$f0, 0($r5)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r5)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r5)
	swcl	$f0, 692($r0)
	lw	$r6, 28($r0)
	addi	$r6, $r6, -1
	sw	$r5, -64($r29)
	sw	$r4, -68($r29)
	sw	$r3, -72($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -72($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -68($r29)
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
	bclf	bclf.59557
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59556
bclf.59557:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
cont.59556:
	addi	$r5, $r0, 116
	lw	$r2, -72($r29)
	lw	$r3, -68($r29)
	lw	$r4, -64($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -36($r29)
	lw	$r3, 20($r2)
	lw	$r3, 8($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59554
bnei.59555:
cont.59554:
	addi	$r3, $r0, 3
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59552
blti.59553:
cont.59552:
	j	cont.59548
blti.59549:
cont.59548:
	j	cont.59542
blti.59543:
cont.59542:
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r3, -4($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.59559
	addi	$r3, $r3, -5
	j	cont.59558
blti.59559:
cont.59558:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.59561
	lwcl	$f0, 668($r0)
	lw	$r5, 660($r0)
	subu	$r5, $r2, $r5
	sw	$r3, -76($r29)
	sw	$r4, -80($r29)
	sw	$r2, -84($r29)
	swcl	$f0, -88($r29)
	addi	$r2, $r5, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lwcl	$f1, -88($r29)
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
	bclf	bclf.59563
	fmove	$f0, $f31
	j	cont.59562
bclf.59563:
	div.s	$f0, $f31, $f0
cont.59562:
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
	lw	$r2, -84($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -80($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r2, -84($r29)
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
	lw	$r5, -76($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	blti	$r6, 0, blti.59565
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -92($r29)
	bnei	$r6, 1, bnei.59567
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
	sw	$r8, -96($r29)
	sw	$r7, -100($r29)
	sw	$r6, -104($r29)
	addi	$r2, $r8, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	setup_startp.4779
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r5, $r0, 118
	lw	$r2, -104($r29)
	lw	$r3, -100($r29)
	lw	$r4, -96($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, -92($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59566
bnei.59567:
cont.59566:
	lw	$r2, -92($r29)
	lw	$r3, 8($r2)
	lw	$r3, 4($r3)
	blti	$r3, 0, blti.59569
	lw	$r3, 12($r2)
	lw	$r3, 4($r3)
	bnei	$r3, 1, bnei.59571
	lw	$r3, 24($r2)
	lw	$r3, 0($r3)
	fmove	$f0, $f30
	swcl	$f0, 628($r0)
	swcl	$f0, 632($r0)
	swcl	$f0, 636($r0)
	lw	$r4, 28($r2)
	lw	$r5, 4($r2)
	sll	$r3, $r3, 2
	lw	$r3, 764($r3)
	lw	$r4, 4($r4)
	lw	$r5, 4($r5)
	lwcl	$f0, 0($r5)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r5)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r5)
	swcl	$f0, 692($r0)
	lw	$r6, 28($r0)
	addi	$r6, $r6, -1
	sw	$r5, -108($r29)
	sw	$r4, -112($r29)
	sw	$r3, -116($r29)
	addi	$r2, $r5, 0
	addi	$r3, $r6, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r2, -116($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -112($r29)
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
	bclf	bclf.59573
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.59572
bclf.59573:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
cont.59572:
	addi	$r5, $r0, 116
	lw	$r2, -116($r29)
	lw	$r3, -112($r29)
	lw	$r4, -108($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r2, -92($r29)
	lw	$r3, 20($r2)
	lw	$r3, 4($r3)
	lwcl	$f0, 628($r0)
	swcl	$f0, 0($r3)
	lwcl	$f0, 632($r0)
	swcl	$f0, 4($r3)
	lwcl	$f0, 636($r0)
	swcl	$f0, 8($r3)
	j	cont.59570
bnei.59571:
cont.59570:
	addi	$r3, $r0, 2
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.59568
blti.59569:
cont.59568:
	j	cont.59564
blti.59565:
cont.59564:
	lw	$r2, -84($r29)
	addi	$r3, $r2, -1
	lw	$r2, -76($r29)
	addi	$r2, $r2, 1
	blti	$r2, 5, blti.59575
	addi	$r4, $r2, -5
	j	cont.59574
blti.59575:
	addi	$r4, $r2, 0
cont.59574:
	lw	$r2, -12($r29)
	lwcl	$f0, -28($r29)
	lwcl	$f1, -24($r29)
	lwcl	$f2, -20($r29)
	j	pretrace_pixels.5794
blti.59561:
	jr	$r31
blti.59539:
	jr	$r31
scan_pixel.5881:
	lw	$r7, 652($r0)
	bgt	$r7, $r2, bgt.59577
	jr	$r31
bgt.59577:
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
	bgt	$r7, $r8, bgt.59579
	addi	$r7, $r0, 0
	j	cont.59578
bgt.59579:
	bgti	$r3, 0, bgti.59581
	addi	$r7, $r0, 0
	j	cont.59580
bgti.59581:
	lw	$r7, 652($r0)
	addi	$r8, $r2, 1
	bgt	$r7, $r8, bgt.59583
	addi	$r7, $r0, 0
	j	cont.59582
bgt.59583:
	bgti	$r2, 0, bgti.59585
	addi	$r7, $r0, 0
	j	cont.59584
bgti.59585:
	addi	$r7, $r0, 1
cont.59584:
cont.59582:
cont.59580:
cont.59578:
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	bnei	$r7, 1, bnei.59587
	addi	$r7, $r0, 0
	sll	$r8, $r2, 2
	lwr	$r8, $r8($r5)	!ld var
	lw	$r9, 8($r8)
	lw	$r9, 0($r9)
	blti	$r9, 0, blti.59589
	sll	$r9, $r2, 2
	lwr	$r9, $r9($r5)	!ld var
	lw	$r9, 8($r9)
	lw	$r9, 0($r9)
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r4)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.59591
	sll	$r10, $r2, 2
	lwr	$r10, $r10($r6)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.59593
	addi	$r10, $r2, -1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.59595
	addi	$r10, $r2, 1
	sll	$r10, $r10, 2
	lwr	$r10, $r10($r5)	!ld var
	lw	$r10, 8($r10)
	lw	$r10, 0($r10)
	bne	$r10, $r9, bne.59597
	addi	$r9, $r0, 1
	j	cont.59596
bne.59597:
	addi	$r9, $r0, 0
cont.59596:
	j	cont.59594
bne.59595:
	addi	$r9, $r0, 0
cont.59594:
	j	cont.59592
bne.59593:
	addi	$r9, $r0, 0
cont.59592:
	j	cont.59590
bne.59591:
	addi	$r9, $r0, 0
cont.59590:
	bnei	$r9, 1, bnei.59599
	lw	$r8, 12($r8)
	lw	$r8, 0($r8)
	bnei	$r8, 1, bnei.59601
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	addi	$r5, $r6, 0
	addi	$r6, $r7, 0
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	calc_diffuse_using_5points.5629
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.59600
bnei.59601:
cont.59600:
	addi	$r7, $r0, 1
	lw	$r2, -20($r29)
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	j	cont.59598
bnei.59599:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r8, 8($r7)
	lw	$r8, 0($r8)
	blti	$r8, 0, blti.59603
	lw	$r8, 12($r7)
	lw	$r8, 0($r8)
	sw	$r7, -24($r29)
	bnei	$r8, 1, bnei.59605
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
	j	cont.59604
bnei.59605:
cont.59604:
	addi	$r3, $r0, 1
	lw	$r2, -24($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.59607
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.59609
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.59608
bnei.59609:
cont.59608:
	addi	$r3, $r0, 2
	lw	$r2, -24($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.59606
blti.59607:
cont.59606:
	j	cont.59602
blti.59603:
cont.59602:
cont.59598:
	j	cont.59588
blti.59589:
cont.59588:
	j	cont.59586
bnei.59587:
	sll	$r7, $r2, 2
	lwr	$r7, $r7($r5)	!ld var
	lw	$r8, 8($r7)
	lw	$r8, 0($r8)
	blti	$r8, 0, blti.59611
	lw	$r8, 12($r7)
	lw	$r8, 0($r8)
	sw	$r7, -32($r29)
	bnei	$r8, 1, bnei.59613
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
	sw	$r11, -36($r29)
	sw	$r9, -40($r29)
	sw	$r10, -44($r29)
	sw	$r8, -48($r29)
	bnei	$r8, 0, bnei.59615
	j	cont.59614
bnei.59615:
	lw	$r12, 764($r0)
	lwcl	$f0, 0($r10)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r10)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r10)
	swcl	$f0, 692($r0)
	lw	$r13, 28($r0)
	addi	$r13, $r13, -1
	sw	$r12, -52($r29)
	addi	$r2, $r10, 0
	addi	$r3, $r13, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	lw	$r2, -52($r29)
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
	bclf	bclf.59617
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	j	cont.59616
bclf.59617:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.59616:
	addi	$r5, $r0, 116
	lw	$r2, -52($r29)
	lw	$r3, -40($r29)
	lw	$r4, -44($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
cont.59614:
	lw	$r2, -48($r29)
	bnei	$r2, 1, bnei.59619
	j	cont.59618
bnei.59619:
	lw	$r3, 768($r0)
	lw	$r4, -44($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -56($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
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
	bclf	bclf.59621
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	j	cont.59620
bclf.59621:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59620:
	addi	$r5, $r0, 116
	lw	$r2, -56($r29)
	lw	$r3, -40($r29)
	lw	$r4, -44($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59618:
	lw	$r2, -48($r29)
	bnei	$r2, 2, bnei.59623
	j	cont.59622
bnei.59623:
	lw	$r3, 772($r0)
	lw	$r4, -44($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -60($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lw	$r2, -60($r29)
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
	bclf	bclf.59625
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	j	cont.59624
bclf.59625:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.59624:
	addi	$r5, $r0, 116
	lw	$r2, -60($r29)
	lw	$r3, -40($r29)
	lw	$r4, -44($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
cont.59622:
	lw	$r2, -48($r29)
	bnei	$r2, 3, bnei.59627
	j	cont.59626
bnei.59627:
	lw	$r3, 776($r0)
	lw	$r4, -44($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r4)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r4)
	swcl	$f0, 692($r0)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r3, -64($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	lw	$r2, -64($r29)
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
	bclf	bclf.59629
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
	j	cont.59628
bclf.59629:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.59628:
	addi	$r5, $r0, 116
	lw	$r2, -64($r29)
	lw	$r3, -40($r29)
	lw	$r4, -44($r29)
	sw	$r31, -68($r29)	!call-dir
	addi	$r29, $r29, -68	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 68
	lw	$r31, -68($r29)	!call-dir
cont.59626:
	lw	$r2, -48($r29)
	bnei	$r2, 4, bnei.59631
	j	cont.59630
bnei.59631:
	lw	$r2, 780($r0)
	lw	$r3, -44($r29)
	lwcl	$f0, 0($r3)
	swcl	$f0, 684($r0)
	lwcl	$f0, 4($r3)
	swcl	$f0, 688($r0)
	lwcl	$f0, 8($r3)
	swcl	$f0, 692($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	setup_startp_constants.4729
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -68($r29)
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
	bclf	bclf.59633
	lw	$r3, 472($r2)
	lfh	$f1, 17174
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.59632
bclf.59633:
	lw	$r3, 476($r2)
	lfh	$f1, 49942
	div.s	$f0, $f0, $f1
	addi	$r2, $r3, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_diffuse_ray.5541
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59632:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -40($r29)
	lw	$r4, -44($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_trace_diffuse_rays.5564
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
cont.59630:
	lw	$r2, -36($r29)
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
	j	cont.59612
bnei.59613:
cont.59612:
	lw	$r2, -32($r29)
	lw	$r3, 8($r2)
	lw	$r3, 4($r3)
	blti	$r3, 0, blti.59635
	lw	$r3, 12($r2)
	lw	$r3, 4($r3)
	bnei	$r3, 1, bnei.59637
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
	sw	$r6, -72($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -72($r29)
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
	j	cont.59636
bnei.59637:
cont.59636:
	addi	$r3, $r0, 2
	lw	$r2, -32($r29)
	lw	$r4, 8($r2)
	lw	$r4, 8($r4)
	blti	$r4, 0, blti.59639
	lw	$r4, 12($r2)
	lw	$r4, 8($r4)
	bnei	$r4, 1, bnei.59641
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59640
bnei.59641:
cont.59640:
	addi	$r3, $r0, 3
	lw	$r2, -32($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	j	cont.59638
blti.59639:
cont.59638:
	j	cont.59634
blti.59635:
cont.59634:
	j	cont.59610
blti.59611:
cont.59610:
cont.59586:
	lwcl	$f0, 640($r0)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59643
	blti	$r2, 0, blti.59645
	j	cont.59644
blti.59645:
	addi	$r2, $r0, 0
cont.59644:
	j	cont.59642
bgt.59643:
	addi	$r2, $r0, 255
cont.59642:
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59647
	blti	$r2, 0, blti.59649
	j	cont.59648
blti.59649:
	addi	$r2, $r0, 0
cont.59648:
	j	cont.59646
bgt.59647:
	addi	$r2, $r0, 255
cont.59646:
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59651
	blti	$r2, 0, blti.59653
	j	cont.59652
blti.59653:
	addi	$r2, $r0, 0
cont.59652:
	j	cont.59650
bgt.59651:
	addi	$r2, $r0, 255
cont.59650:
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r3, 652($r0)
	bgt	$r3, $r2, bgt.59655
	jr	$r31
bgt.59655:
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
	bgt	$r3, $r6, bgt.59657
	addi	$r3, $r0, 0
	j	cont.59656
bgt.59657:
	bgti	$r4, 0, bgti.59659
	addi	$r3, $r0, 0
	j	cont.59658
bgti.59659:
	lw	$r3, 652($r0)
	addi	$r6, $r2, 1
	bgt	$r3, $r6, bgt.59661
	addi	$r3, $r0, 0
	j	cont.59660
bgt.59661:
	bgti	$r2, 0, bgti.59663
	addi	$r3, $r0, 0
	j	cont.59662
bgti.59663:
	addi	$r3, $r0, 1
cont.59662:
cont.59660:
cont.59658:
cont.59656:
	sw	$r2, -76($r29)
	bnei	$r3, 1, bnei.59665
	addi	$r7, $r0, 0
	lw	$r3, -8($r29)
	lw	$r6, -4($r29)
	addi	$r27, $r3, 0
	addi	$r3, $r4, 0
	addi	$r4, $r27, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	try_exploit_neighbors.5713
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.59664
bnei.59665:
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r5)	!ld var
	lw	$r6, 8($r3)
	lw	$r6, 0($r6)
	blti	$r6, 0, blti.59667
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -80($r29)
	bnei	$r6, 1, bnei.59669
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
	sw	$r9, -84($r29)
	addi	$r2, $r6, 0
	addi	$r3, $r7, 0
	addi	$r4, $r8, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	trace_diffuse_ray_80percent.5592
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -84($r29)
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
	j	cont.59668
bnei.59669:
cont.59668:
	addi	$r3, $r0, 1
	lw	$r2, -80($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.59671
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.59673
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.59672
bnei.59673:
cont.59672:
	addi	$r3, $r0, 2
	lw	$r2, -80($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	j	cont.59670
blti.59671:
cont.59670:
	j	cont.59666
blti.59667:
cont.59666:
cont.59664:
	lwcl	$f0, 640($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59675
	blti	$r2, 0, blti.59677
	j	cont.59676
blti.59677:
	addi	$r2, $r0, 0
cont.59676:
	j	cont.59674
bgt.59675:
	addi	$r2, $r0, 255
cont.59674:
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lwcl	$f0, 644($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59679
	blti	$r2, 0, blti.59681
	j	cont.59680
blti.59681:
	addi	$r2, $r0, 0
cont.59680:
	j	cont.59678
bgt.59679:
	addi	$r2, $r0, 255
cont.59678:
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lwcl	$f0, 648($r0)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59683
	blti	$r2, 0, blti.59685
	j	cont.59684
blti.59685:
	addi	$r2, $r0, 0
cont.59684:
	j	cont.59682
bgt.59683:
	addi	$r2, $r0, 255
cont.59682:
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -76($r29)
	addi	$r2, $r2, 1
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lw	$r5, -16($r29)
	lw	$r6, -4($r29)
	j	scan_pixel.5881
scan_line.5902:
	lw	$r7, 656($r0)
	bgt	$r7, $r2, bgt.59687
	jr	$r31
bgt.59687:
	lw	$r7, 656($r0)
	addi	$r7, $r7, -1
	sw	$r6, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	sw	$r2, -16($r29)
	sw	$r4, -20($r29)
	bgt	$r7, $r2, bgt.59689
	j	cont.59688
bgt.59689:
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
	fmove	$f26, $f0
	fmove	$f0, $f1
	fmove	$f1, $f2
	fmove	$f2, $f26
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
cont.59688:
	addi	$r2, $r0, 0
	lw	$r3, 652($r0)
	bgti	$r3, 0, bgti.59691
	j	cont.59690
bgti.59691:
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
	bgt	$r3, $r6, bgt.59693
	addi	$r3, $r0, 0
	j	cont.59692
bgt.59693:
	bgti	$r4, 0, bgti.59695
	addi	$r3, $r0, 0
	j	cont.59694
bgti.59695:
	lw	$r3, 652($r0)
	bgti	$r3, 1, bgti.59697
	addi	$r3, $r0, 0
	j	cont.59696
bgti.59697:
	addi	$r3, $r0, 0
cont.59696:
cont.59694:
cont.59692:
	bnei	$r3, 1, bnei.59699
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
	j	cont.59698
bnei.59699:
	lw	$r2, 0($r5)
	lw	$r3, 8($r2)
	lw	$r3, 0($r3)
	blti	$r3, 0, blti.59701
	lw	$r3, 12($r2)
	lw	$r3, 0($r3)
	sw	$r2, -28($r29)
	bnei	$r3, 1, bnei.59703
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
	j	cont.59702
bnei.59703:
cont.59702:
	addi	$r3, $r0, 1
	lw	$r2, -28($r29)
	lw	$r4, 8($r2)
	lw	$r4, 4($r4)
	blti	$r4, 0, blti.59705
	lw	$r4, 12($r2)
	lw	$r4, 4($r4)
	bnei	$r4, 1, bnei.59707
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	calc_diffuse_using_1point.5615
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.59706
bnei.59707:
cont.59706:
	addi	$r3, $r0, 2
	lw	$r2, -28($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	do_without_neighbors.5662
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.59704
blti.59705:
cont.59704:
	j	cont.59700
blti.59701:
cont.59700:
cont.59698:
	lwcl	$f0, 640($r0)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_int_of_float
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, bgt.59709
	blti	$r2, 0, blti.59711
	j	cont.59710
blti.59711:
	addi	$r2, $r0, 0
cont.59710:
	j	cont.59708
bgt.59709:
	addi	$r2, $r0, 255
cont.59708:
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
	bgt	$r2, $r3, bgt.59713
	blti	$r2, 0, blti.59715
	j	cont.59714
blti.59715:
	addi	$r2, $r0, 0
cont.59714:
	j	cont.59712
bgt.59713:
	addi	$r2, $r0, 255
cont.59712:
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
	bgt	$r2, $r3, bgt.59717
	blti	$r2, 0, blti.59719
	j	cont.59718
blti.59719:
	addi	$r2, $r0, 0
cont.59718:
	j	cont.59716
bgt.59717:
	addi	$r2, $r0, 255
cont.59716:
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
cont.59690:
	lw	$r2, -16($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	addi	$r2, $r2, 2
	blti	$r2, 5, blti.59721
	addi	$r2, $r2, -5
	j	cont.59720
blti.59721:
cont.59720:
	lw	$r4, 656($r0)
	bgt	$r4, $r3, bgt.59723
	jr	$r31
bgt.59723:
	lw	$r4, 656($r0)
	addi	$r4, $r4, -1
	sw	$r2, -36($r29)
	sw	$r3, -40($r29)
	bgt	$r4, $r3, bgt.59725
	j	cont.59724
bgt.59725:
	addi	$r4, $r3, 1
	lwcl	$f0, 668($r0)
	lw	$r5, 664($r0)
	subu	$r4, $r4, $r5
	swcl	$f0, -44($r29)
	addi	$r2, $r4, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lwcl	$f1, -44($r29)
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
	blti	$r2, 0, blti.59727
	lwcl	$f3, 668($r0)
	lw	$r4, 660($r0)
	subu	$r4, $r2, $r4
	sw	$r3, -48($r29)
	sw	$r2, -52($r29)
	swcl	$f0, -56($r29)
	swcl	$f2, -60($r29)
	swcl	$f1, -64($r29)
	swcl	$f3, -68($r29)
	addi	$r2, $r4, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lwcl	$f1, -68($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -64($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -60($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -56($r29)
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
	bclf	bclf.59729
	fmove	$f0, $f31
	j	cont.59728
bclf.59729:
	div.s	$f0, $f31, $f0
cont.59728:
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
	lw	$r2, -52($r29)
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -48($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -52($r29)
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
	lw	$r5, -36($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r6, -48($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r6, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -52($r29)
	addi	$r3, $r2, -1
	lw	$r2, -36($r29)
	addi	$r4, $r2, 1
	blti	$r4, 5, blti.59731
	addi	$r4, $r4, -5
	j	cont.59730
blti.59731:
cont.59730:
	lw	$r5, -12($r29)
	lwcl	$f0, -64($r29)
	lwcl	$f1, -60($r29)
	lwcl	$f2, -56($r29)
	addi	$r2, $r5, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.59726
blti.59727:
cont.59726:
cont.59724:
	addi	$r2, $r0, 0
	lw	$r3, -40($r29)
	lw	$r4, -20($r29)
	lw	$r5, -8($r29)
	lw	$r6, -12($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	scan_pixel.5881
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.59733
	addi	$r6, $r3, -5
	j	cont.59732
blti.59733:
	addi	$r6, $r3, 0
cont.59732:
	lw	$r3, -8($r29)
	lw	$r4, -12($r29)
	lw	$r5, -20($r29)
	j	scan_line.5902
create_pixel.5950:
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -4($r29)	!call-dir
	addi	$r29, $r29, -4	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 4
	lw	$r31, -4($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -4($r29)
	addi	$r2, $r3, 0
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -8($r29)	!call-dir
	addi	$r29, $r29, -8	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 8
	lw	$r31, -8($r29)	!call-dir
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -8($r29)
	addi	$r2, $r3, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	lw	$r3, -8($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 5
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
	sw	$r31, -12($r29)	!call-dir
	addi	$r29, $r29, -12	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 12
	lw	$r31, -12($r29)	!call-dir
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
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
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	min_caml_create_array
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
	lw	$r3, -20($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	lw	$r3, -20($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -24($r29)	!call-dir
	addi	$r29, $r29, -24	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 24
	lw	$r31, -24($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	addi	$r2, $r0, 5
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
	lw	$r3, -24($r29)
	sw	$r2, 4($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 8($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 12($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -28($r29)	!call-dir
	addi	$r29, $r29, -28	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 28
	lw	$r31, -28($r29)	!call-dir
	lw	$r3, -24($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 1
	addi	$r4, $r0, 0
	addi	$r3, $r4, 0
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
init_line_elements.5972:
	blti	$r3, 0, blti.59735
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
	blti	$r2, 0, blti.59737
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.59739
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0
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
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.59741
	sw	$r2, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	init_line_elements.5972
blti.59741:
	addi	$r2, $r5, 0
	jr	$r31
blti.59739:
	addi	$r2, $r5, 0
	jr	$r31
blti.59737:
	addi	$r2, $r5, 0
	jr	$r31
blti.59735:
	jr	$r31
adjust_position.5996:
	mul.s	$f0, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f0, $f0, $f2
	sqrt	$f0, $f0
	div.s	$f2, $f31, $f0
	c.le.s	$f2, $f31
	bclf	bclf.59743
	c.le.s	$f29, $f2
	bclf	bclf.59745
	addi	$r2, $r0, 0
	j	cont.59744
bclf.59745:
	addi	$r2, $r0, -1
cont.59744:
	j	cont.59742
bclf.59743:
	addi	$r2, $r0, 1
cont.59742:
	bnei	$r2, 0, bnei.59747
	j	cont.59746
bnei.59747:
	div.s	$f2, $f31, $f2
cont.59746:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 17138
	mul.s	$f4, $f4, $f3
	lfh	$f5, 16824
	div.s	$f4, $f4, $f5
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16808
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17058
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16792
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17024
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16776
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16964
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16752
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16544
	lfh	$f6, 16912
	mul.s	$f6, $f6, $f3
	lfh	$f7, 16720
	add.s	$f4, $f7, $f4
	div.s	$f4, $f6, $f4
	swcl	$f0, -4($r29)
	swcl	$f1, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f2, -16($r29)
	fmove	$f0, $f5
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -20($r29)	!call-dir
	addi	$r29, $r29, -20	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 20
	lw	$r31, -20($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -16($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -12($r29)
	bgti	$r2, 0, bgti.59749
	blti	$r2, 0, blti.59751
	j	cont.59750
blti.59751:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59750:
	j	cont.59748
bgti.59749:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59748:
	lwcl	$f1, -8($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16457
	lfl	$f1, 4059
	lfh	$f2, 16585
	lfl	$f2, 4059
	lfh	$f3, 16329
	lfl	$f3, 4059
	c.le.s	$f0, $f30
	bclf	bclf.59753
	addi	$r2, $r0, 0
	j	cont.59752
bclf.59753:
	addi	$r2, $r0, 1
cont.59752:
	fabs	$f4, $f0
	lfh	$f5, 16585
	lfl	$f5, 4059
	swcl	$f3, -20($r29)
	swcl	$f2, -24($r29)
	swcl	$f0, -28($r29)
	sw	$r2, -32($r29)
	swcl	$f1, -36($r29)
	c.le.s	$f4, $f5
	bclf	bclf.59755
	c.le.s	$f30, $f4
	bclf	bclf.59757
	fmove	$f0, $f4
	j	cont.59756
bclf.59757:
	add.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.59756:
	j	cont.59754
bclf.59755:
	sub.s	$f4, $f4, $f5
	fmove	$f0, $f4
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
cont.59754:
	lwcl	$f1, -36($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59759
	lw	$r2, -32($r29)
	j	cont.59758
bclf.59759:
	lwcl	$f2, -28($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59761
	addi	$r2, $r0, 1
	j	cont.59760
bclf.59761:
	addi	$r2, $r0, 0
cont.59760:
cont.59758:
	c.le.s	$f0, $f1
	bclf	bclf.59763
	j	cont.59762
bclf.59763:
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
cont.59762:
	lwcl	$f2, -20($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59765
	j	cont.59764
bclf.59765:
	sub.s	$f0, $f1, $f0
cont.59764:
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
	bnei	$r2, 1, bnei.59767
	j	cont.59766
bnei.59767:
	fneg	$f0, $f0
cont.59766:
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -28($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59769
	addi	$r2, $r0, 0
	j	cont.59768
bclf.59769:
	addi	$r2, $r0, 1
cont.59768:
	fabs	$f5, $f1
	swcl	$f0, -40($r29)
	swcl	$f4, -44($r29)
	swcl	$f3, -48($r29)
	swcl	$f1, -52($r29)
	sw	$r2, -56($r29)
	swcl	$f2, -60($r29)
	fmove	$f0, $f5
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	lwcl	$f1, -60($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59771
	lw	$r2, -56($r29)
	j	cont.59770
bclf.59771:
	lwcl	$f2, -52($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59773
	addi	$r2, $r0, 1
	j	cont.59772
bclf.59773:
	addi	$r2, $r0, 0
cont.59772:
cont.59770:
	c.le.s	$f0, $f1
	bclf	bclf.59775
	j	cont.59774
bclf.59775:
	lwcl	$f2, -48($r29)
	sub.s	$f0, $f2, $f0
cont.59774:
	lwcl	$f2, -44($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59777
	j	cont.59776
bclf.59777:
	sub.s	$f0, $f1, $f0
cont.59776:
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
	bnei	$r2, 1, bnei.59779
	j	cont.59778
bnei.59779:
	fneg	$f0, $f0
cont.59778:
	lwcl	$f1, -40($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -4($r29)
	mul.s	$f0, $f0, $f1
	jr	$r31
calc_dirvec.6008:
	blti	$r2, 5, blti.59781
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
blti.59781:
	mul.s	$f0, $f1, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	div.s	$f1, $f31, $f0
	c.le.s	$f1, $f31
	bclf	bclf.59783
	c.le.s	$f29, $f1
	bclf	bclf.59785
	addi	$r5, $r0, 0
	j	cont.59784
bclf.59785:
	addi	$r5, $r0, -1
cont.59784:
	j	cont.59782
bclf.59783:
	addi	$r5, $r0, 1
cont.59782:
	bnei	$r5, 0, bnei.59787
	j	cont.59786
bnei.59787:
	div.s	$f1, $f31, $f1
cont.59786:
	mul.s	$f4, $f1, $f1
	lfh	$f5, 17138
	mul.s	$f5, $f5, $f4
	lfh	$f6, 16824
	div.s	$f5, $f5, $f6
	lfh	$f6, 17096
	mul.s	$f6, $f6, $f4
	lfh	$f7, 16808
	add.s	$f5, $f7, $f5
	div.s	$f5, $f6, $f5
	lfh	$f6, 17058
	mul.s	$f6, $f6, $f4
	lfh	$f7, 16792
	add.s	$f5, $f7, $f5
	div.s	$f5, $f6, $f5
	lfh	$f6, 17024
	mul.s	$f6, $f6, $f4
	lfh	$f7, 16776
	add.s	$f5, $f7, $f5
	div.s	$f5, $f6, $f5
	lfh	$f6, 16576
	lfh	$f7, 16964
	mul.s	$f7, $f7, $f4
	lfh	$f8, 16752
	add.s	$f5, $f8, $f5
	div.s	$f5, $f7, $f5
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f3, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	swcl	$f2, -24($r29)
	sw	$r5, -28($r29)
	swcl	$f1, -32($r29)
	fmove	$f0, $f6
	fmove	$f1, $f4
	fmove	$f2, $f5
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -32($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -28($r29)
	bgti	$r2, 0, bgti.59789
	blti	$r2, 0, blti.59791
	j	cont.59790
blti.59791:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59790:
	j	cont.59788
bgti.59789:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59788:
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.59793
	addi	$r2, $r0, 0
	j	cont.59792
bclf.59793:
	addi	$r2, $r0, 1
cont.59792:
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
	bclf	bclf.59795
	lw	$r2, -48($r29)
	j	cont.59794
bclf.59795:
	lwcl	$f2, -44($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59797
	addi	$r2, $r0, 1
	j	cont.59796
bclf.59797:
	addi	$r2, $r0, 0
cont.59796:
cont.59794:
	c.le.s	$f0, $f1
	bclf	bclf.59799
	j	cont.59798
bclf.59799:
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f2, $f0
cont.59798:
	lwcl	$f2, -36($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59801
	j	cont.59800
bclf.59801:
	sub.s	$f0, $f1, $f0
cont.59800:
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
	bnei	$r2, 1, bnei.59803
	j	cont.59802
bnei.59803:
	fneg	$f0, $f0
cont.59802:
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
	bclf	bclf.59805
	c.le.s	$f29, $f2
	bclf	bclf.59807
	addi	$r3, $r0, 0
	j	cont.59806
bclf.59807:
	addi	$r3, $r0, -1
cont.59806:
	j	cont.59804
bclf.59805:
	addi	$r3, $r0, 1
cont.59804:
	bnei	$r3, 0, bnei.59809
	j	cont.59808
bnei.59809:
	div.s	$f2, $f31, $f2
cont.59808:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 17138
	mul.s	$f4, $f4, $f3
	lfh	$f5, 16824
	div.s	$f4, $f4, $f5
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16808
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17058
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16792
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17024
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16776
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16576
	lfh	$f6, 16964
	mul.s	$f6, $f6, $f3
	lfh	$f7, 16752
	add.s	$f4, $f7, $f4
	div.s	$f4, $f6, $f4
	swcl	$f0, -60($r29)
	sw	$r2, -64($r29)
	swcl	$f1, -68($r29)
	sw	$r3, -72($r29)
	swcl	$f2, -76($r29)
	fmove	$f0, $f5
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -76($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -72($r29)
	bgti	$r2, 0, bgti.59811
	blti	$r2, 0, blti.59813
	j	cont.59812
blti.59813:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59812:
	j	cont.59810
bgti.59811:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59810:
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f0, $f30
	bclf	bclf.59815
	addi	$r2, $r0, 0
	j	cont.59814
bclf.59815:
	addi	$r2, $r0, 1
cont.59814:
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
	bclf	bclf.59817
	lw	$r2, -92($r29)
	j	cont.59816
bclf.59817:
	lwcl	$f2, -88($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59819
	addi	$r2, $r0, 1
	j	cont.59818
bclf.59819:
	addi	$r2, $r0, 0
cont.59818:
cont.59816:
	c.le.s	$f0, $f1
	bclf	bclf.59821
	j	cont.59820
bclf.59821:
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
cont.59820:
	lwcl	$f2, -80($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59823
	j	cont.59822
bclf.59823:
	sub.s	$f0, $f1, $f0
cont.59822:
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
	bnei	$r2, 1, bnei.59825
	j	cont.59824
bnei.59825:
	fneg	$f0, $f0
cont.59824:
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
	mul.s	$f0, $f0, $f1
	lw	$r2, -64($r29)
	blti	$r2, 5, blti.59827
	lwcl	$f1, -60($r29)
	mul.s	$f2, $f1, $f1
	mul.s	$f3, $f0, $f0
	add.s	$f2, $f2, $f3
	add.s	$f2, $f2, $f31
	sqrt	$f2, $f2
	div.s	$f1, $f1, $f2
	div.s	$f0, $f0, $f2
	div.s	$f2, $f31, $f2
	lw	$r2, -8($r29)
	sll	$r2, $r2, 2
	lw	$r2, 764($r2)
	lw	$r3, -4($r29)
	sll	$r4, $r3, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r4, 0($r4)
	swcl	$f1, 0($r4)
	swcl	$f0, 4($r4)
	swcl	$f2, 8($r4)
	addi	$r4, $r3, 40
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r4, 0($r4)
	fneg	$f3, $f0
	swcl	$f1, 0($r4)
	swcl	$f2, 4($r4)
	swcl	$f3, 8($r4)
	addi	$r4, $r3, 80
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r4, 0($r4)
	fneg	$f3, $f1
	fneg	$f4, $f0
	swcl	$f2, 0($r4)
	swcl	$f3, 4($r4)
	swcl	$f4, 8($r4)
	addi	$r4, $r3, 1
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r4, 0($r4)
	fneg	$f3, $f1
	fneg	$f4, $f0
	fneg	$f5, $f2
	swcl	$f3, 0($r4)
	swcl	$f4, 4($r4)
	swcl	$f5, 8($r4)
	addi	$r4, $r3, 41
	sll	$r4, $r4, 2
	lwr	$r4, $r4($r2)	!ld var
	lw	$r4, 0($r4)
	fneg	$f3, $f1
	fneg	$f4, $f2
	swcl	$f3, 0($r4)
	swcl	$f4, 4($r4)
	swcl	$f0, 8($r4)
	addi	$r3, $r3, 81
	sll	$r3, $r3, 2
	lwr	$r2, $r3($r2)	!ld var
	lw	$r2, 0($r2)
	fneg	$f2, $f2
	swcl	$f2, 0($r2)
	swcl	$f1, 4($r2)
	swcl	$f0, 8($r2)
	jr	$r31
blti.59827:
	mul.s	$f0, $f0, $f0
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	sqrt	$f0, $f0
	div.s	$f1, $f31, $f0
	c.le.s	$f1, $f31
	bclf	bclf.59829
	c.le.s	$f29, $f1
	bclf	bclf.59831
	addi	$r3, $r0, 0
	j	cont.59830
bclf.59831:
	addi	$r3, $r0, -1
cont.59830:
	j	cont.59828
bclf.59829:
	addi	$r3, $r0, 1
cont.59828:
	bnei	$r3, 0, bnei.59833
	j	cont.59832
bnei.59833:
	div.s	$f1, $f31, $f1
cont.59832:
	mul.s	$f2, $f1, $f1
	lfh	$f3, 17138
	mul.s	$f3, $f3, $f2
	lfh	$f4, 16824
	div.s	$f3, $f3, $f4
	lfh	$f4, 17096
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16808
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 17058
	mul.s	$f4, $f4, $f2
	lfh	$f5, 16792
	add.s	$f3, $f5, $f3
	div.s	$f3, $f4, $f3
	lfh	$f4, 16608
	lfh	$f5, 17024
	mul.s	$f5, $f5, $f2
	lfh	$f6, 16776
	add.s	$f3, $f6, $f3
	div.s	$f3, $f5, $f3
	swcl	$f0, -104($r29)
	sw	$r3, -108($r29)
	swcl	$f1, -112($r29)
	fmove	$f0, $f4
	fmove	$f1, $f2
	fmove	$f2, $f3
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -112($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -108($r29)
	bgti	$r2, 0, bgti.59835
	blti	$r2, 0, blti.59837
	j	cont.59836
blti.59837:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59836:
	j	cont.59834
bgti.59835:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59834:
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -116($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -116($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59839
	addi	$r2, $r0, 0
	j	cont.59838
bclf.59839:
	addi	$r2, $r0, 1
cont.59838:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -120($r29)
	swcl	$f4, -124($r29)
	swcl	$f3, -128($r29)
	swcl	$f1, -132($r29)
	sw	$r2, -136($r29)
	swcl	$f2, -140($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59841
	c.le.s	$f30, $f5
	bclf	bclf.59843
	fmove	$f0, $f5
	j	cont.59842
bclf.59843:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59845
	c.le.s	$f30, $f5
	bclf	bclf.59847
	fmove	$f0, $f5
	j	cont.59846
bclf.59847:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.59846:
	j	cont.59844
bclf.59845:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.59844:
cont.59842:
	j	cont.59840
bclf.59841:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59849
	c.le.s	$f30, $f5
	bclf	bclf.59851
	fmove	$f0, $f5
	j	cont.59850
bclf.59851:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.59850:
	j	cont.59848
bclf.59849:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
cont.59848:
cont.59840:
	lwcl	$f1, -140($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59853
	lw	$r2, -136($r29)
	j	cont.59852
bclf.59853:
	lwcl	$f2, -132($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59855
	addi	$r2, $r0, 1
	j	cont.59854
bclf.59855:
	addi	$r2, $r0, 0
cont.59854:
cont.59852:
	c.le.s	$f0, $f1
	bclf	bclf.59857
	j	cont.59856
bclf.59857:
	lwcl	$f2, -128($r29)
	sub.s	$f0, $f2, $f0
cont.59856:
	lwcl	$f2, -124($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59859
	j	cont.59858
bclf.59859:
	sub.s	$f0, $f1, $f0
cont.59858:
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
	bnei	$r2, 1, bnei.59861
	j	cont.59860
bnei.59861:
	fneg	$f0, $f0
cont.59860:
	lwcl	$f1, -120($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -104($r29)
	mul.s	$f0, $f0, $f1
	lw	$r2, -64($r29)
	addi	$r2, $r2, 1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f1, $f1, $f2
	sqrt	$f1, $f1
	div.s	$f2, $f31, $f1
	c.le.s	$f2, $f31
	bclf	bclf.59863
	c.le.s	$f29, $f2
	bclf	bclf.59865
	addi	$r3, $r0, 0
	j	cont.59864
bclf.59865:
	addi	$r3, $r0, -1
cont.59864:
	j	cont.59862
bclf.59863:
	addi	$r3, $r0, 1
cont.59862:
	bnei	$r3, 0, bnei.59867
	j	cont.59866
bnei.59867:
	div.s	$f2, $f31, $f2
cont.59866:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 17138
	mul.s	$f4, $f4, $f3
	lfh	$f5, 16824
	div.s	$f4, $f4, $f5
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16808
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17058
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16792
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16608
	lfh	$f6, 17024
	mul.s	$f6, $f6, $f3
	lfh	$f7, 16776
	add.s	$f4, $f7, $f4
	div.s	$f4, $f6, $f4
	swcl	$f0, -144($r29)
	sw	$r2, -148($r29)
	swcl	$f1, -152($r29)
	sw	$r3, -156($r29)
	swcl	$f2, -160($r29)
	fmove	$f0, $f5
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -164($r29)	!call-dir
	addi	$r29, $r29, -164	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 164
	lw	$r31, -164($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -160($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -156($r29)
	bgti	$r2, 0, bgti.59869
	blti	$r2, 0, blti.59871
	j	cont.59870
blti.59871:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59870:
	j	cont.59868
bgti.59869:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59868:
	lwcl	$f1, -12($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -164($r29)
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -164($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59873
	addi	$r2, $r0, 0
	j	cont.59872
bclf.59873:
	addi	$r2, $r0, 1
cont.59872:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -168($r29)
	swcl	$f4, -172($r29)
	swcl	$f3, -176($r29)
	swcl	$f1, -180($r29)
	sw	$r2, -184($r29)
	swcl	$f2, -188($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59875
	c.le.s	$f30, $f5
	bclf	bclf.59877
	fmove	$f0, $f5
	j	cont.59876
bclf.59877:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59879
	c.le.s	$f30, $f5
	bclf	bclf.59881
	fmove	$f0, $f5
	j	cont.59880
bclf.59881:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.59880:
	j	cont.59878
bclf.59879:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.59878:
cont.59876:
	j	cont.59874
bclf.59875:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59883
	c.le.s	$f30, $f5
	bclf	bclf.59885
	fmove	$f0, $f5
	j	cont.59884
bclf.59885:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.59884:
	j	cont.59882
bclf.59883:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
cont.59882:
cont.59874:
	lwcl	$f1, -188($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59887
	lw	$r2, -184($r29)
	j	cont.59886
bclf.59887:
	lwcl	$f2, -180($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59889
	addi	$r2, $r0, 1
	j	cont.59888
bclf.59889:
	addi	$r2, $r0, 0
cont.59888:
cont.59886:
	c.le.s	$f0, $f1
	bclf	bclf.59891
	j	cont.59890
bclf.59891:
	lwcl	$f2, -176($r29)
	sub.s	$f0, $f2, $f0
cont.59890:
	lwcl	$f2, -172($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59893
	j	cont.59892
bclf.59893:
	sub.s	$f0, $f1, $f0
cont.59892:
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
	bnei	$r2, 1, bnei.59895
	j	cont.59894
bnei.59895:
	fneg	$f0, $f0
cont.59894:
	lwcl	$f1, -168($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -152($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -148($r29)
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	lwcl	$f0, -144($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -12($r29)
	j	calc_dirvec.6008
calc_dirvecs.6068:
	blti	$r2, 0, blti.59897
	sw	$r2, -4($r29)
	sw	$r4, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f0, -16($r29)
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
	sub.s	$f0, $f0, $f1
	lfh	$f1, 16033
	lfl	$f1, 59547
	lfh	$f2, 16033
	lfl	$f2, 59547
	lfh	$f3, 15820
	lfl	$f3, 52429
	lfh	$f4, 16608
	lfh	$f5, 16060
	lfl	$f5, 9654
	swcl	$f1, -20($r29)
	swcl	$f0, -24($r29)
	swcl	$f2, -28($r29)
	fmove	$f0, $f4
	fmove	$f1, $f3
	fmove	$f2, $f5
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -28($r29)
	div.s	$f0, $f1, $f0
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lwcl	$f1, -24($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -32($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59899
	addi	$r2, $r0, 0
	j	cont.59898
bclf.59899:
	addi	$r2, $r0, 1
cont.59898:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -36($r29)
	swcl	$f4, -40($r29)
	swcl	$f3, -44($r29)
	swcl	$f1, -48($r29)
	sw	$r2, -52($r29)
	swcl	$f2, -56($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59901
	c.le.s	$f30, $f5
	bclf	bclf.59903
	fmove	$f0, $f5
	j	cont.59902
bclf.59903:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59905
	c.le.s	$f30, $f5
	bclf	bclf.59907
	fmove	$f0, $f5
	j	cont.59906
bclf.59907:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59906:
	j	cont.59904
bclf.59905:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59904:
cont.59902:
	j	cont.59900
bclf.59901:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59909
	c.le.s	$f30, $f5
	bclf	bclf.59911
	fmove	$f0, $f5
	j	cont.59910
bclf.59911:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59910:
	j	cont.59908
bclf.59909:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
cont.59908:
cont.59900:
	lwcl	$f1, -56($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59913
	lw	$r2, -52($r29)
	j	cont.59912
bclf.59913:
	lwcl	$f2, -48($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59915
	addi	$r2, $r0, 1
	j	cont.59914
bclf.59915:
	addi	$r2, $r0, 0
cont.59914:
cont.59912:
	c.le.s	$f0, $f1
	bclf	bclf.59917
	j	cont.59916
bclf.59917:
	lwcl	$f2, -44($r29)
	sub.s	$f0, $f2, $f0
cont.59916:
	lwcl	$f2, -40($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59919
	j	cont.59918
bclf.59919:
	sub.s	$f0, $f1, $f0
cont.59918:
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
	bnei	$r2, 1, bnei.59921
	j	cont.59920
bnei.59921:
	fneg	$f0, $f0
cont.59920:
	lwcl	$f1, -36($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -20($r29)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f1, $f1, $f2
	sqrt	$f1, $f1
	div.s	$f2, $f31, $f1
	c.le.s	$f2, $f31
	bclf	bclf.59923
	c.le.s	$f29, $f2
	bclf	bclf.59925
	addi	$r3, $r0, 0
	j	cont.59924
bclf.59925:
	addi	$r3, $r0, -1
cont.59924:
	j	cont.59922
bclf.59923:
	addi	$r3, $r0, 1
cont.59922:
	bnei	$r3, 0, bnei.59927
	j	cont.59926
bnei.59927:
	div.s	$f2, $f31, $f2
cont.59926:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 17138
	mul.s	$f4, $f4, $f3
	lfh	$f5, 16824
	div.s	$f4, $f4, $f5
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16808
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17058
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16792
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16608
	lfh	$f6, 17024
	mul.s	$f6, $f6, $f3
	lfh	$f7, 16776
	add.s	$f4, $f7, $f4
	div.s	$f4, $f6, $f4
	swcl	$f0, -60($r29)
	sw	$r2, -64($r29)
	swcl	$f1, -68($r29)
	sw	$r3, -72($r29)
	swcl	$f2, -76($r29)
	fmove	$f0, $f5
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -76($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -72($r29)
	bgti	$r2, 0, bgti.59929
	blti	$r2, 0, blti.59931
	j	cont.59930
blti.59931:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59930:
	j	cont.59928
bgti.59929:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59928:
	lwcl	$f1, -16($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -80($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59933
	addi	$r2, $r0, 0
	j	cont.59932
bclf.59933:
	addi	$r2, $r0, 1
cont.59932:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -84($r29)
	swcl	$f4, -88($r29)
	swcl	$f3, -92($r29)
	swcl	$f1, -96($r29)
	sw	$r2, -100($r29)
	swcl	$f2, -104($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59935
	c.le.s	$f30, $f5
	bclf	bclf.59937
	fmove	$f0, $f5
	j	cont.59936
bclf.59937:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59939
	c.le.s	$f30, $f5
	bclf	bclf.59941
	fmove	$f0, $f5
	j	cont.59940
bclf.59941:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.59940:
	j	cont.59938
bclf.59939:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.59938:
cont.59936:
	j	cont.59934
bclf.59935:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59943
	c.le.s	$f30, $f5
	bclf	bclf.59945
	fmove	$f0, $f5
	j	cont.59944
bclf.59945:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.59944:
	j	cont.59942
bclf.59943:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
cont.59942:
cont.59934:
	lwcl	$f1, -104($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59947
	lw	$r2, -100($r29)
	j	cont.59946
bclf.59947:
	lwcl	$f2, -96($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59949
	addi	$r2, $r0, 1
	j	cont.59948
bclf.59949:
	addi	$r2, $r0, 0
cont.59948:
cont.59946:
	c.le.s	$f0, $f1
	bclf	bclf.59951
	j	cont.59950
bclf.59951:
	lwcl	$f2, -92($r29)
	sub.s	$f0, $f2, $f0
cont.59950:
	lwcl	$f2, -88($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59953
	j	cont.59952
bclf.59953:
	sub.s	$f0, $f1, $f0
cont.59952:
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
	bnei	$r2, 1, bnei.59955
	j	cont.59954
bnei.59955:
	fneg	$f0, $f0
cont.59954:
	lwcl	$f1, -84($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -68($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -64($r29)
	lw	$r3, -12($r29)
	lw	$r4, -8($r29)
	lwcl	$f0, -60($r29)
	lwcl	$f2, -24($r29)
	lwcl	$f3, -16($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, -4($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f0, $f0, $f1
	lw	$r2, -8($r29)
	addi	$r3, $r2, 2
	lfh	$f1, 16033
	lfl	$f1, 59547
	lfh	$f2, 16033
	lfl	$f2, 59547
	lfh	$f3, 15820
	lfl	$f3, 52429
	lfh	$f4, 16608
	lfh	$f5, 16060
	lfl	$f5, 9654
	sw	$r3, -108($r29)
	swcl	$f1, -112($r29)
	swcl	$f0, -116($r29)
	swcl	$f2, -120($r29)
	fmove	$f0, $f4
	fmove	$f1, $f3
	fmove	$f2, $f5
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -120($r29)
	div.s	$f0, $f1, $f0
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
	lwcl	$f1, -116($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -124($r29)
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -124($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59957
	addi	$r2, $r0, 0
	j	cont.59956
bclf.59957:
	addi	$r2, $r0, 1
cont.59956:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -128($r29)
	swcl	$f4, -132($r29)
	swcl	$f3, -136($r29)
	swcl	$f1, -140($r29)
	sw	$r2, -144($r29)
	swcl	$f2, -148($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59959
	c.le.s	$f30, $f5
	bclf	bclf.59961
	fmove	$f0, $f5
	j	cont.59960
bclf.59961:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59963
	c.le.s	$f30, $f5
	bclf	bclf.59965
	fmove	$f0, $f5
	j	cont.59964
bclf.59965:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.59964:
	j	cont.59962
bclf.59963:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.59962:
cont.59960:
	j	cont.59958
bclf.59959:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59967
	c.le.s	$f30, $f5
	bclf	bclf.59969
	fmove	$f0, $f5
	j	cont.59968
bclf.59969:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.59968:
	j	cont.59966
bclf.59967:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
cont.59966:
cont.59958:
	lwcl	$f1, -148($r29)
	c.le.s	$f0, $f1
	bclf	bclf.59971
	lw	$r2, -144($r29)
	j	cont.59970
bclf.59971:
	lwcl	$f2, -140($r29)
	c.le.s	$f2, $f30
	bclf	bclf.59973
	addi	$r2, $r0, 1
	j	cont.59972
bclf.59973:
	addi	$r2, $r0, 0
cont.59972:
cont.59970:
	c.le.s	$f0, $f1
	bclf	bclf.59975
	j	cont.59974
bclf.59975:
	lwcl	$f2, -136($r29)
	sub.s	$f0, $f2, $f0
cont.59974:
	lwcl	$f2, -132($r29)
	c.le.s	$f0, $f2
	bclf	bclf.59977
	j	cont.59976
bclf.59977:
	sub.s	$f0, $f1, $f0
cont.59976:
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
	bnei	$r2, 1, bnei.59979
	j	cont.59978
bnei.59979:
	fneg	$f0, $f0
cont.59978:
	lwcl	$f1, -128($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -112($r29)
	mul.s	$f0, $f0, $f1
	addi	$r2, $r0, 1
	mul.s	$f1, $f0, $f0
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f1, $f1, $f2
	sqrt	$f1, $f1
	div.s	$f2, $f31, $f1
	c.le.s	$f2, $f31
	bclf	bclf.59981
	c.le.s	$f29, $f2
	bclf	bclf.59983
	addi	$r3, $r0, 0
	j	cont.59982
bclf.59983:
	addi	$r3, $r0, -1
cont.59982:
	j	cont.59980
bclf.59981:
	addi	$r3, $r0, 1
cont.59980:
	bnei	$r3, 0, bnei.59985
	j	cont.59984
bnei.59985:
	div.s	$f2, $f31, $f2
cont.59984:
	mul.s	$f3, $f2, $f2
	lfh	$f4, 17138
	mul.s	$f4, $f4, $f3
	lfh	$f5, 16824
	div.s	$f4, $f4, $f5
	lfh	$f5, 17096
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16808
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 17058
	mul.s	$f5, $f5, $f3
	lfh	$f6, 16792
	add.s	$f4, $f6, $f4
	div.s	$f4, $f5, $f4
	lfh	$f5, 16608
	lfh	$f6, 17024
	mul.s	$f6, $f6, $f3
	lfh	$f7, 16776
	add.s	$f4, $f7, $f4
	div.s	$f4, $f6, $f4
	swcl	$f0, -152($r29)
	sw	$r2, -156($r29)
	swcl	$f1, -160($r29)
	sw	$r3, -164($r29)
	swcl	$f2, -168($r29)
	fmove	$f0, $f5
	fmove	$f1, $f3
	fmove	$f2, $f4
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	atan_sub.2405
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	add.s	$f0, $f31, $f0
	lwcl	$f1, -168($r29)
	div.s	$f0, $f1, $f0
	lw	$r2, -164($r29)
	bgti	$r2, 0, bgti.59987
	blti	$r2, 0, blti.59989
	j	cont.59988
blti.59989:
	lfh	$f1, 49097
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59988:
	j	cont.59986
bgti.59987:
	lfh	$f1, 16329
	lfl	$f1, 4059
	sub.s	$f0, $f1, $f0
cont.59986:
	lwcl	$f1, -16($r29)
	mul.s	$f0, $f0, $f1
	swcl	$f0, -172($r29)
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	sin.2467
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lfh	$f1, 16329
	lfl	$f1, 4059
	lwcl	$f2, -172($r29)
	sub.s	$f1, $f1, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	lfh	$f3, 16585
	lfl	$f3, 4059
	lfh	$f4, 16329
	lfl	$f4, 4059
	c.le.s	$f1, $f30
	bclf	bclf.59991
	addi	$r2, $r0, 0
	j	cont.59990
bclf.59991:
	addi	$r2, $r0, 1
cont.59990:
	fabs	$f5, $f1
	lfh	$f6, 16585
	lfl	$f6, 4059
	swcl	$f0, -176($r29)
	swcl	$f4, -180($r29)
	swcl	$f3, -184($r29)
	swcl	$f1, -188($r29)
	sw	$r2, -192($r29)
	swcl	$f2, -196($r29)
	c.le.s	$f5, $f6
	bclf	bclf.59993
	c.le.s	$f30, $f5
	bclf	bclf.59995
	fmove	$f0, $f5
	j	cont.59994
bclf.59995:
	add.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.59997
	c.le.s	$f30, $f5
	bclf	bclf.59999
	fmove	$f0, $f5
	j	cont.59998
bclf.59999:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
cont.59998:
	j	cont.59996
bclf.59997:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
cont.59996:
cont.59994:
	j	cont.59992
bclf.59993:
	sub.s	$f5, $f5, $f6
	lfh	$f6, 16585
	lfl	$f6, 4059
	c.le.s	$f5, $f6
	bclf	bclf.60001
	c.le.s	$f30, $f5
	bclf	bclf.60003
	fmove	$f0, $f5
	j	cont.60002
bclf.60003:
	add.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
cont.60002:
	j	cont.60000
bclf.60001:
	sub.s	$f5, $f5, $f6
	fmove	$f0, $f5
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	sin_sub.2460
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
cont.60000:
cont.59992:
	lwcl	$f1, -196($r29)
	c.le.s	$f0, $f1
	bclf	bclf.60005
	lw	$r2, -192($r29)
	j	cont.60004
bclf.60005:
	lwcl	$f2, -188($r29)
	c.le.s	$f2, $f30
	bclf	bclf.60007
	addi	$r2, $r0, 1
	j	cont.60006
bclf.60007:
	addi	$r2, $r0, 0
cont.60006:
cont.60004:
	c.le.s	$f0, $f1
	bclf	bclf.60009
	j	cont.60008
bclf.60009:
	lwcl	$f2, -184($r29)
	sub.s	$f0, $f2, $f0
cont.60008:
	lwcl	$f2, -180($r29)
	c.le.s	$f0, $f2
	bclf	bclf.60011
	j	cont.60010
bclf.60011:
	sub.s	$f0, $f1, $f0
cont.60010:
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
	bnei	$r2, 1, bnei.60013
	j	cont.60012
bnei.60013:
	fneg	$f0, $f0
cont.60012:
	lwcl	$f1, -176($r29)
	div.s	$f0, $f1, $f0
	lwcl	$f1, -160($r29)
	mul.s	$f1, $f0, $f1
	lw	$r2, -156($r29)
	lw	$r3, -12($r29)
	lw	$r4, -108($r29)
	lwcl	$f0, -152($r29)
	lwcl	$f2, -116($r29)
	lwcl	$f3, -16($r29)
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60015
	addi	$r3, $r3, -5
	j	cont.60014
blti.60015:
cont.60014:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.60017
	sw	$r2, -200($r29)
	sw	$r3, -204($r29)
	sw	$r4, -208($r29)
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -208($r29)
	lw	$r3, -204($r29)
	lw	$r4, -8($r29)
	lwcl	$f3, -16($r29)
	fmove	$f1, $f0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r2, -200($r29)
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r4, $r2, 2
	lw	$r3, -208($r29)
	lw	$r5, -204($r29)
	lwcl	$f3, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -212($r29)	!call-dir
	addi	$r29, $r29, -212	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 212
	lw	$r31, -212($r29)	!call-dir
	lw	$r2, -200($r29)
	addi	$r2, $r2, -1
	lw	$r3, -204($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60019
	addi	$r3, $r3, -5
	j	cont.60018
blti.60019:
cont.60018:
	blti	$r2, 0, blti.60021
	sw	$r2, -212($r29)
	sw	$r3, -216($r29)
	sw	$r31, -220($r29)	!call-dir
	addi	$r29, $r29, -220	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 220
	lw	$r31, -220($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f1, $f0, $f1
	fmove	$f0, $f30
	swcl	$f1, -220($r29)
	sw	$r31, -224($r29)	!call-dir
	addi	$r29, $r29, -224	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 224
	lw	$r31, -224($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -16($r29)
	swcl	$f0, -224($r29)
	sw	$r2, -228($r29)
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -228($r29)
	lw	$r3, -216($r29)
	lw	$r4, -8($r29)
	lwcl	$f0, -224($r29)
	lwcl	$f2, -220($r29)
	lwcl	$f3, -16($r29)
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	lw	$r2, -212($r29)
	sw	$r31, -232($r29)	!call-dir
	addi	$r29, $r29, -232	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 232
	lw	$r31, -232($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f1, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r3, $r2, 2
	swcl	$f1, -232($r29)
	sw	$r3, -236($r29)
	sw	$r31, -240($r29)	!call-dir
	addi	$r29, $r29, -240	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 240
	lw	$r31, -240($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -16($r29)
	swcl	$f0, -240($r29)
	sw	$r2, -244($r29)
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -244($r29)
	lw	$r3, -216($r29)
	lw	$r4, -236($r29)
	lwcl	$f0, -240($r29)
	lwcl	$f2, -232($r29)
	lwcl	$f3, -16($r29)
	sw	$r31, -248($r29)	!call-dir
	addi	$r29, $r29, -248	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 248
	lw	$r31, -248($r29)	!call-dir
	lw	$r2, -212($r29)
	addi	$r2, $r2, -1
	lw	$r3, -216($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60023
	addi	$r3, $r3, -5
	j	cont.60022
blti.60023:
cont.60022:
	addi	$r4, $r0, 0
	blti	$r2, 0, blti.60025
	sw	$r2, -248($r29)
	sw	$r3, -252($r29)
	sw	$r4, -256($r29)
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -256($r29)
	lw	$r3, -252($r29)
	lw	$r4, -8($r29)
	lwcl	$f3, -16($r29)
	fmove	$f1, $f0
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	lw	$r2, -248($r29)
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r4, $r2, 2
	lw	$r3, -256($r29)
	lw	$r5, -252($r29)
	lwcl	$f3, -16($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -260($r29)	!call-dir
	addi	$r29, $r29, -260	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 260
	lw	$r31, -260($r29)	!call-dir
	lw	$r2, -248($r29)
	addi	$r2, $r2, -1
	lw	$r3, -252($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60027
	addi	$r3, $r3, -5
	j	cont.60026
blti.60027:
cont.60026:
	lw	$r4, -8($r29)
	lwcl	$f0, -16($r29)
	j	calc_dirvecs.6068
blti.60025:
	jr	$r31
blti.60021:
	jr	$r31
blti.60017:
	jr	$r31
blti.59897:
	jr	$r31
calc_dirvec_rows.6098:
	blti	$r2, 0, blti.60029
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
	blti	$r4, 5, blti.60031
	addi	$r4, $r4, -5
	j	cont.60030
blti.60031:
cont.60030:
	sw	$r2, -28($r29)
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
	sub.s	$f1, $f0, $f1
	fmove	$f0, $f30
	swcl	$f1, -36($r29)
	sw	$r31, -40($r29)	!call-dir
	addi	$r29, $r29, -40	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 40
	lw	$r31, -40($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -20($r29)
	swcl	$f0, -40($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -44($r29)
	lw	$r3, -32($r29)
	lw	$r4, -8($r29)
	lwcl	$f0, -40($r29)
	lwcl	$f2, -36($r29)
	lwcl	$f3, -20($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -28($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f1, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r3, $r2, 2
	swcl	$f1, -48($r29)
	sw	$r3, -52($r29)
	sw	$r31, -56($r29)	!call-dir
	addi	$r29, $r29, -56	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 56
	lw	$r31, -56($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -20($r29)
	swcl	$f0, -56($r29)
	sw	$r2, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -60($r29)
	lw	$r3, -32($r29)
	lw	$r4, -52($r29)
	lwcl	$f0, -56($r29)
	lwcl	$f2, -48($r29)
	lwcl	$f3, -20($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60033
	addi	$r3, $r3, -5
	j	cont.60032
blti.60033:
cont.60032:
	addi	$r4, $r0, 0
	sw	$r2, -64($r29)
	sw	$r3, -68($r29)
	sw	$r4, -72($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -72($r29)
	lw	$r3, -68($r29)
	lw	$r4, -8($r29)
	lwcl	$f3, -20($r29)
	fmove	$f1, $f0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -64($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -8($r29)
	addi	$r4, $r2, 2
	lw	$r3, -72($r29)
	lw	$r5, -68($r29)
	lwcl	$f3, -20($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	addi	$r2, $r0, 1
	lw	$r3, -68($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60035
	addi	$r3, $r3, -5
	j	cont.60034
blti.60035:
cont.60034:
	lw	$r4, -8($r29)
	lwcl	$f0, -20($r29)
	sw	$r31, -76($r29)	!call-dir
	addi	$r29, $r29, -76	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 76
	lw	$r31, -76($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	lw	$r3, -12($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.60037
	addi	$r3, $r3, -5
	j	cont.60036
blti.60037:
cont.60036:
	lw	$r4, -8($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.60039
	sw	$r2, -76($r29)
	sw	$r4, -80($r29)
	sw	$r3, -84($r29)
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	sw	$r2, -88($r29)
	swcl	$f0, -92($r29)
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f1, $f0, $f1
	fmove	$f0, $f30
	swcl	$f1, -96($r29)
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -92($r29)
	swcl	$f0, -100($r29)
	sw	$r2, -104($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -104($r29)
	lw	$r3, -84($r29)
	lw	$r4, -80($r29)
	lwcl	$f0, -100($r29)
	lwcl	$f2, -96($r29)
	lwcl	$f3, -92($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, -88($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f1, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -80($r29)
	addi	$r3, $r2, 2
	swcl	$f1, -108($r29)
	sw	$r3, -112($r29)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r2, $r0, 1
	lwcl	$f1, -92($r29)
	swcl	$f0, -116($r29)
	sw	$r2, -120($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	adjust_position.5996
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	fmove	$f1, $f0	!call-dir
	lw	$r2, -120($r29)
	lw	$r3, -84($r29)
	lw	$r4, -112($r29)
	lwcl	$f0, -116($r29)
	lwcl	$f2, -108($r29)
	lwcl	$f3, -92($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -84($r29)
	addi	$r4, $r3, 1
	blti	$r4, 5, blti.60041
	addi	$r4, $r4, -5
	j	cont.60040
blti.60041:
cont.60040:
	addi	$r5, $r0, 0
	sw	$r2, -124($r29)
	sw	$r4, -128($r29)
	sw	$r5, -132($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -132($r29)
	lw	$r3, -128($r29)
	lw	$r4, -80($r29)
	lwcl	$f3, -92($r29)
	fmove	$f1, $f0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, -124($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -80($r29)
	addi	$r4, $r2, 2
	lw	$r3, -132($r29)
	lw	$r5, -128($r29)
	lwcl	$f3, -92($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r2, $r0, 2
	lw	$r3, -128($r29)
	addi	$r3, $r3, 1
	blti	$r3, 5, blti.60043
	addi	$r3, $r3, -5
	j	cont.60042
blti.60043:
cont.60042:
	lw	$r4, -80($r29)
	lwcl	$f0, -92($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, -76($r29)
	addi	$r2, $r2, -1
	lw	$r3, -84($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.60045
	addi	$r3, $r3, -5
	j	cont.60044
blti.60045:
cont.60044:
	lw	$r4, -80($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.60047
	sw	$r2, -136($r29)
	sw	$r4, -140($r29)
	sw	$r3, -144($r29)
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	addi	$r3, $r0, 0
	sw	$r2, -148($r29)
	swcl	$f0, -152($r29)
	sw	$r3, -156($r29)
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -156($r29)
	lw	$r3, -144($r29)
	lw	$r4, -140($r29)
	lwcl	$f3, -152($r29)
	fmove	$f1, $f0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r2, -148($r29)
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 15820
	lfl	$f1, 52429
	add.s	$f2, $f0, $f1
	fmove	$f0, $f30
	lw	$r2, -140($r29)
	addi	$r4, $r2, 2
	lw	$r3, -156($r29)
	lw	$r5, -144($r29)
	lwcl	$f3, -152($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	calc_dirvec.6008
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	addi	$r2, $r0, 3
	lw	$r3, -144($r29)
	addi	$r4, $r3, 1
	blti	$r4, 5, blti.60049
	addi	$r4, $r4, -5
	j	cont.60048
blti.60049:
cont.60048:
	lw	$r5, -140($r29)
	lwcl	$f0, -152($r29)
	addi	$r3, $r4, 0
	addi	$r4, $r5, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r2, -136($r29)
	addi	$r2, $r2, -1
	lw	$r3, -144($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.60051
	addi	$r3, $r3, -5
	j	cont.60050
blti.60051:
cont.60050:
	lw	$r4, -140($r29)
	addi	$r4, $r4, 4
	blti	$r2, 0, blti.60053
	sw	$r2, -160($r29)
	sw	$r4, -164($r29)
	sw	$r3, -168($r29)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -168($r29)
	lw	$r4, -164($r29)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r2, -160($r29)
	addi	$r2, $r2, -1
	lw	$r3, -168($r29)
	addi	$r3, $r3, 2
	blti	$r3, 5, blti.60055
	addi	$r3, $r3, -5
	j	cont.60054
blti.60055:
cont.60054:
	lw	$r4, -164($r29)
	addi	$r4, $r4, 4
	j	calc_dirvec_rows.6098
blti.60053:
	jr	$r31
blti.60047:
	jr	$r31
blti.60039:
	jr	$r31
blti.60029:
	jr	$r31
create_dirvec_elements.6124:
	blti	$r3, 0, blti.60057
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
	blti	$r2, 0, blti.60059
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
	blti	$r2, 0, blti.60061
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
	blti	$r2, 0, blti.60063
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
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.60065
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -44($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.60067
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
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.60069
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -60($r29)
	sw	$r31, -64($r29)	!call-dir
	addi	$r29, $r29, -64	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 64
	lw	$r31, -64($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -60($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r2, $r3, -1
	blti	$r2, 0, blti.60071
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
	lw	$r2, -68($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	j	create_dirvec_elements.6124
blti.60071:
	jr	$r31
blti.60069:
	jr	$r31
blti.60067:
	jr	$r31
blti.60065:
	jr	$r31
blti.60063:
	jr	$r31
blti.60061:
	jr	$r31
blti.60059:
	jr	$r31
blti.60057:
	jr	$r31
create_dirvecs.6133:
	blti	$r2, 0, blti.60073
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
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -32($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -32($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 460($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	lw	$r3, -16($r29)
	sw	$r2, 456($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 452($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -44($r29)	!call-dir
	addi	$r29, $r29, -44	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 44
	lw	$r31, -44($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -44($r29)
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -44($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -16($r29)
	sw	$r2, 448($r3)
	addi	$r2, $r0, 111
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60075
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -48($r29)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0
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
	lw	$r2, -52($r29)
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r3, -48($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -60($r29)
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
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	lw	$r2, -68($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	lw	$r3, -60($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 460($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -80($r29)
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -80($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 456($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r3, 0
	lw	$r3, -60($r29)
	sw	$r2, 452($r3)
	addi	$r2, $r0, 112
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -48($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60077
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -88($r29)
	sw	$r3, -92($r29)
	addi	$r2, $r4, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -96($r29)
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -96($r29)
	sw	$r2, 0($r3)
	lw	$r2, -92($r29)
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r3, -88($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -100($r29)
	addi	$r2, $r4, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -104($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -104($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -100($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
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
	addi	$r2, $r3, 0
	lw	$r3, -100($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -112($r29)
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -112($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -100($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -116($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -116($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -100($r29)
	sw	$r2, 460($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -120($r29)
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -120($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -100($r29)
	sw	$r2, 456($r3)
	addi	$r2, $r0, 113
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -124($r29)	!call-dir
	addi	$r29, $r29, -124	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 124
	lw	$r31, -124($r29)	!call-dir
	lw	$r2, -88($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60079
	addi	$r3, $r0, 120
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -124($r29)
	sw	$r3, -128($r29)
	addi	$r2, $r4, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -132($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -132($r29)
	sw	$r2, 0($r3)
	lw	$r2, -128($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	sw	$r2, 764($r4)
	sll	$r2, $r3, 2
	lw	$r2, 764($r2)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r2, -136($r29)
	addi	$r2, $r4, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -140($r29)
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -140($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -136($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -144($r29)
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -144($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -136($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -148($r29)
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -148($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -136($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	addi	$r3, $r2, 0	!call-dir
	lw	$r2, 28($r0)
	sw	$r3, -152($r29)
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -152($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -136($r29)
	sw	$r2, 460($r3)
	addi	$r2, $r0, 114
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r2, -124($r29)
	addi	$r2, $r2, -1
	j	create_dirvecs.6133
blti.60079:
	jr	$r31
blti.60077:
	jr	$r31
blti.60075:
	jr	$r31
blti.60073:
	jr	$r31
init_dirvec_constants.6146:
	blti	$r3, 0, blti.60081
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
	blti	$r2, 0, blti.60083
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -12($r29)
	blti	$r5, 0, blti.60085
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	sw	$r3, -16($r29)
	bnei	$r9, 1, bnei.60087
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
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60089
	swcl	$f1, 4($r2)
	j	cont.60088
bclf.60089:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60091
	addi	$r6, $r0, 0
	j	cont.60090
bclf.60091:
	addi	$r6, $r0, 1
cont.60090:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60093
	fneg	$f0, $f0
	j	cont.60092
bne.60093:
cont.60092:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60088:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60095
	swcl	$f1, 12($r2)
	j	cont.60094
bclf.60095:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60097
	addi	$r6, $r0, 0
	j	cont.60096
bclf.60097:
	addi	$r6, $r0, 1
cont.60096:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60099
	fneg	$f0, $f0
	j	cont.60098
bne.60099:
cont.60098:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60094:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60101
	swcl	$f1, 20($r2)
	j	cont.60100
bclf.60101:
	lw	$r4, -28($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60103
	addi	$r6, $r0, 0
	j	cont.60102
bclf.60103:
	addi	$r6, $r0, 1
cont.60102:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60105
	fneg	$f0, $f0
	j	cont.60104
bne.60105:
cont.60104:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60100:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60086
bnei.60087:
	bnei	$r9, 2, bnei.60107
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
	fmove	$f1, $f30
	c.le.s	$f0, $f30
	bclf	bclf.60109
	swcl	$f1, 0($r2)
	j	cont.60108
bclf.60109:
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
cont.60108:
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60106
bnei.60107:
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	swr	$r2, $r4($r5)	!st var
cont.60106:
cont.60086:
	addi	$r3, $r3, -1
	lw	$r2, -16($r29)
	sw	$r31, -36($r29)	!call-dir
	addi	$r29, $r29, -36	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 36
	lw	$r31, -36($r29)	!call-dir
	j	cont.60084
blti.60085:
cont.60084:
	lw	$r2, -12($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60111
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
	blti	$r2, 0, blti.60113
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
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60115
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -48($r29)	!call-dir
	addi	$r29, $r29, -48	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 48
	lw	$r31, -48($r29)	!call-dir
	lw	$r2, -44($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60117
	sll	$r3, $r2, 2
	lw	$r4, -4($r29)
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -48($r29)
	blti	$r5, 0, blti.60119
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r3)
	lw	$r8, 0($r3)
	lw	$r9, 4($r6)
	sw	$r3, -52($r29)
	bnei	$r9, 1, bnei.60121
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
	bclf	bclf.60123
	swcl	$f1, 4($r2)
	j	cont.60122
bclf.60123:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60125
	addi	$r6, $r0, 0
	j	cont.60124
bclf.60125:
	addi	$r6, $r0, 1
cont.60124:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60127
	fneg	$f0, $f0
	j	cont.60126
bne.60127:
cont.60126:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60122:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60129
	swcl	$f1, 12($r2)
	j	cont.60128
bclf.60129:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60131
	addi	$r6, $r0, 0
	j	cont.60130
bclf.60131:
	addi	$r6, $r0, 1
cont.60130:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60133
	fneg	$f0, $f0
	j	cont.60132
bne.60133:
cont.60132:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60128:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60135
	swcl	$f1, 20($r2)
	j	cont.60134
bclf.60135:
	lw	$r4, -64($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60137
	addi	$r6, $r0, 0
	j	cont.60136
bclf.60137:
	addi	$r6, $r0, 1
cont.60136:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60139
	fneg	$f0, $f0
	j	cont.60138
bne.60139:
cont.60138:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60134:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60120
bnei.60121:
	bnei	$r9, 2, bnei.60141
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
	bclf	bclf.60143
	swcl	$f1, 0($r2)
	j	cont.60142
bclf.60143:
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
cont.60142:
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60140
bnei.60141:
	sw	$r7, -56($r29)
	sw	$r5, -60($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -60($r29)
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	swr	$r2, $r4($r5)	!st var
cont.60140:
cont.60120:
	addi	$r3, $r3, -1
	lw	$r2, -52($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.60118
blti.60119:
cont.60118:
	lw	$r2, -48($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60145
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
	blti	$r2, 0, blti.60147
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
blti.60147:
	jr	$r31
blti.60145:
	jr	$r31
blti.60117:
	jr	$r31
blti.60115:
	jr	$r31
blti.60113:
	jr	$r31
blti.60111:
	jr	$r31
blti.60083:
	jr	$r31
blti.60081:
	jr	$r31
init_vecset_constants.6154:
	blti	$r2, 0, blti.60149
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	blti	$r5, 0, blti.60151
	sll	$r6, $r5, 2
	lw	$r6, 80($r6)
	lw	$r7, 4($r4)
	lw	$r8, 0($r4)
	lw	$r9, 4($r6)
	sw	$r4, -12($r29)
	bnei	$r9, 1, bnei.60153
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
	bclf	bclf.60155
	swcl	$f1, 4($r2)
	j	cont.60154
bclf.60155:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60157
	addi	$r6, $r0, 0
	j	cont.60156
bclf.60157:
	addi	$r6, $r0, 1
cont.60156:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60159
	fneg	$f0, $f0
	j	cont.60158
bne.60159:
cont.60158:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60154:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60161
	swcl	$f1, 12($r2)
	j	cont.60160
bclf.60161:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60163
	addi	$r6, $r0, 0
	j	cont.60162
bclf.60163:
	addi	$r6, $r0, 1
cont.60162:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60165
	fneg	$f0, $f0
	j	cont.60164
bne.60165:
cont.60164:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60160:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60167
	swcl	$f1, 20($r2)
	j	cont.60166
bclf.60167:
	lw	$r4, -24($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60169
	addi	$r6, $r0, 0
	j	cont.60168
bclf.60169:
	addi	$r6, $r0, 1
cont.60168:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60171
	fneg	$f0, $f0
	j	cont.60170
bne.60171:
cont.60170:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60166:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60152
bnei.60153:
	bnei	$r9, 2, bnei.60173
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
	bclf	bclf.60175
	swcl	$f1, 0($r2)
	j	cont.60174
bclf.60175:
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
cont.60174:
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60172
bnei.60173:
	sw	$r7, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r8, 0
	addi	$r3, $r6, 0
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	lw	$r3, -20($r29)
	sll	$r4, $r3, 2
	lw	$r5, -16($r29)
	swr	$r2, $r4($r5)	!st var
cont.60172:
cont.60152:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	sw	$r31, -32($r29)	!call-dir
	addi	$r29, $r29, -32	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 32
	lw	$r31, -32($r29)	!call-dir
	j	cont.60150
blti.60151:
cont.60150:
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
	lw	$r2, -8($r29)
	lw	$r3, 464($r2)
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
	lw	$r3, 460($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	blti	$r4, 0, blti.60177
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	sw	$r3, -32($r29)
	bnei	$r8, 1, bnei.60179
	addi	$r8, $r0, 6
	fmove	$f0, $f30
	sw	$r6, -36($r29)
	sw	$r4, -40($r29)
	sw	$r5, -44($r29)
	sw	$r7, -48($r29)
	addi	$r2, $r8, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60181
	swcl	$f1, 4($r2)
	j	cont.60180
bclf.60181:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60183
	addi	$r6, $r0, 0
	j	cont.60182
bclf.60183:
	addi	$r6, $r0, 1
cont.60182:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60185
	fneg	$f0, $f0
	j	cont.60184
bne.60185:
cont.60184:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60180:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60187
	swcl	$f1, 12($r2)
	j	cont.60186
bclf.60187:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60189
	addi	$r6, $r0, 0
	j	cont.60188
bclf.60189:
	addi	$r6, $r0, 1
cont.60188:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60191
	fneg	$f0, $f0
	j	cont.60190
bne.60191:
cont.60190:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60186:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60193
	swcl	$f1, 20($r2)
	j	cont.60192
bclf.60193:
	lw	$r4, -44($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60195
	addi	$r6, $r0, 0
	j	cont.60194
bclf.60195:
	addi	$r6, $r0, 1
cont.60194:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60197
	fneg	$f0, $f0
	j	cont.60196
bne.60197:
cont.60196:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60192:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60178
bnei.60179:
	bnei	$r8, 2, bnei.60199
	addi	$r8, $r0, 4
	fmove	$f0, $f30
	sw	$r6, -36($r29)
	sw	$r4, -40($r29)
	sw	$r5, -44($r29)
	sw	$r7, -48($r29)
	addi	$r2, $r8, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -48($r29)
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
	bclf	bclf.60201
	swcl	$f1, 0($r2)
	j	cont.60200
bclf.60201:
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
cont.60200:
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60198
bnei.60199:
	sw	$r6, -36($r29)
	sw	$r4, -40($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r3, -40($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	swr	$r2, $r4($r5)	!st var
cont.60198:
cont.60178:
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	j	cont.60176
blti.60177:
cont.60176:
	lw	$r2, -8($r29)
	lw	$r3, 456($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -8($r29)
	lw	$r3, 452($r2)
	addi	$r2, $r3, 0
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	addi	$r3, $r0, 112
	lw	$r2, -8($r29)
	sw	$r31, -52($r29)	!call-dir
	addi	$r29, $r29, -52	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 52
	lw	$r31, -52($r29)	!call-dir
	lw	$r2, -4($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60203
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -52($r29)
	sw	$r3, -56($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 472($r2)
	addi	$r2, $r3, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 468($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -60($r29)	!call-dir
	addi	$r29, $r29, -60	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 60
	lw	$r31, -60($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 464($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	blti	$r4, 0, blti.60205
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	sw	$r3, -60($r29)
	bnei	$r8, 1, bnei.60207
	addi	$r8, $r0, 6
	fmove	$f0, $f30
	sw	$r6, -64($r29)
	sw	$r4, -68($r29)
	sw	$r5, -72($r29)
	sw	$r7, -76($r29)
	addi	$r2, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60209
	swcl	$f1, 4($r2)
	j	cont.60208
bclf.60209:
	lw	$r4, -72($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60211
	addi	$r6, $r0, 0
	j	cont.60210
bclf.60211:
	addi	$r6, $r0, 1
cont.60210:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60213
	fneg	$f0, $f0
	j	cont.60212
bne.60213:
cont.60212:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60208:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60215
	swcl	$f1, 12($r2)
	j	cont.60214
bclf.60215:
	lw	$r4, -72($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60217
	addi	$r6, $r0, 0
	j	cont.60216
bclf.60217:
	addi	$r6, $r0, 1
cont.60216:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60219
	fneg	$f0, $f0
	j	cont.60218
bne.60219:
cont.60218:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60214:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60221
	swcl	$f1, 20($r2)
	j	cont.60220
bclf.60221:
	lw	$r4, -72($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60223
	addi	$r6, $r0, 0
	j	cont.60222
bclf.60223:
	addi	$r6, $r0, 1
cont.60222:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60225
	fneg	$f0, $f0
	j	cont.60224
bne.60225:
cont.60224:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60220:
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60206
bnei.60207:
	bnei	$r8, 2, bnei.60227
	addi	$r8, $r0, 4
	fmove	$f0, $f30
	sw	$r6, -64($r29)
	sw	$r4, -68($r29)
	sw	$r5, -72($r29)
	sw	$r7, -76($r29)
	addi	$r2, $r8, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -76($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -72($r29)
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
	bclf	bclf.60229
	swcl	$f1, 0($r2)
	j	cont.60228
bclf.60229:
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
cont.60228:
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60226
bnei.60227:
	sw	$r6, -64($r29)
	sw	$r4, -68($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	swr	$r2, $r4($r5)	!st var
cont.60226:
cont.60206:
	addi	$r3, $r3, -1
	lw	$r2, -60($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	j	cont.60204
blti.60205:
cont.60204:
	lw	$r2, -56($r29)
	lw	$r3, 460($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, -56($r29)
	lw	$r3, 456($r2)
	addi	$r2, $r3, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	addi	$r3, $r0, 113
	lw	$r2, -56($r29)
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r2, -52($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60231
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	sw	$r2, -80($r29)
	sw	$r3, -84($r29)
	addi	$r2, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -84($r29)
	lw	$r3, 472($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r2, -84($r29)
	lw	$r3, 468($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	blti	$r4, 0, blti.60233
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	sw	$r3, -88($r29)
	bnei	$r8, 1, bnei.60235
	addi	$r8, $r0, 6
	fmove	$f0, $f30
	sw	$r6, -92($r29)
	sw	$r4, -96($r29)
	sw	$r5, -100($r29)
	sw	$r7, -104($r29)
	addi	$r2, $r8, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60237
	swcl	$f1, 4($r2)
	j	cont.60236
bclf.60237:
	lw	$r4, -100($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60239
	addi	$r6, $r0, 0
	j	cont.60238
bclf.60239:
	addi	$r6, $r0, 1
cont.60238:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60241
	fneg	$f0, $f0
	j	cont.60240
bne.60241:
cont.60240:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60236:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60243
	swcl	$f1, 12($r2)
	j	cont.60242
bclf.60243:
	lw	$r4, -100($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60245
	addi	$r6, $r0, 0
	j	cont.60244
bclf.60245:
	addi	$r6, $r0, 1
cont.60244:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60247
	fneg	$f0, $f0
	j	cont.60246
bne.60247:
cont.60246:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60242:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60249
	swcl	$f1, 20($r2)
	j	cont.60248
bclf.60249:
	lw	$r4, -100($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60251
	addi	$r6, $r0, 0
	j	cont.60250
bclf.60251:
	addi	$r6, $r0, 1
cont.60250:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60253
	fneg	$f0, $f0
	j	cont.60252
bne.60253:
cont.60252:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60248:
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60234
bnei.60235:
	bnei	$r8, 2, bnei.60255
	addi	$r8, $r0, 4
	fmove	$f0, $f30
	sw	$r6, -92($r29)
	sw	$r4, -96($r29)
	sw	$r5, -100($r29)
	sw	$r7, -104($r29)
	addi	$r2, $r8, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -104($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -100($r29)
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
	bclf	bclf.60257
	swcl	$f1, 0($r2)
	j	cont.60256
bclf.60257:
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
cont.60256:
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60254
bnei.60255:
	sw	$r6, -92($r29)
	sw	$r4, -96($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	swr	$r2, $r4($r5)	!st var
cont.60254:
cont.60234:
	addi	$r3, $r3, -1
	lw	$r2, -88($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	j	cont.60232
blti.60233:
cont.60232:
	lw	$r2, -84($r29)
	lw	$r3, 464($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, -84($r29)
	lw	$r3, 460($r2)
	addi	$r2, $r3, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	addi	$r3, $r0, 114
	lw	$r2, -84($r29)
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r2, -80($r29)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60259
	sll	$r3, $r2, 2
	lw	$r3, 764($r3)
	lw	$r4, 476($r3)
	lw	$r5, 28($r0)
	addi	$r5, $r5, -1
	sw	$r2, -108($r29)
	sw	$r3, -112($r29)
	addi	$r2, $r4, 0
	addi	$r3, $r5, 0
	sw	$r31, -116($r29)	!call-dir
	addi	$r29, $r29, -116	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 116
	lw	$r31, -116($r29)	!call-dir
	lw	$r2, -112($r29)
	lw	$r3, 472($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	blti	$r4, 0, blti.60261
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	sw	$r3, -116($r29)
	bnei	$r8, 1, bnei.60263
	addi	$r8, $r0, 6
	fmove	$f0, $f30
	sw	$r6, -120($r29)
	sw	$r4, -124($r29)
	sw	$r5, -128($r29)
	sw	$r7, -132($r29)
	addi	$r2, $r8, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -132($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60265
	swcl	$f1, 4($r2)
	j	cont.60264
bclf.60265:
	lw	$r4, -128($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60267
	addi	$r6, $r0, 0
	j	cont.60266
bclf.60267:
	addi	$r6, $r0, 1
cont.60266:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60269
	fneg	$f0, $f0
	j	cont.60268
bne.60269:
cont.60268:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60264:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60271
	swcl	$f1, 12($r2)
	j	cont.60270
bclf.60271:
	lw	$r4, -128($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60273
	addi	$r6, $r0, 0
	j	cont.60272
bclf.60273:
	addi	$r6, $r0, 1
cont.60272:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60275
	fneg	$f0, $f0
	j	cont.60274
bne.60275:
cont.60274:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60270:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60277
	swcl	$f1, 20($r2)
	j	cont.60276
bclf.60277:
	lw	$r4, -128($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60279
	addi	$r6, $r0, 0
	j	cont.60278
bclf.60279:
	addi	$r6, $r0, 1
cont.60278:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60281
	fneg	$f0, $f0
	j	cont.60280
bne.60281:
cont.60280:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60276:
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60262
bnei.60263:
	bnei	$r8, 2, bnei.60283
	addi	$r8, $r0, 4
	fmove	$f0, $f30
	sw	$r6, -120($r29)
	sw	$r4, -124($r29)
	sw	$r5, -128($r29)
	sw	$r7, -132($r29)
	addi	$r2, $r8, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -132($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -128($r29)
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
	bclf	bclf.60285
	swcl	$f1, 0($r2)
	j	cont.60284
bclf.60285:
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
cont.60284:
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60282
bnei.60283:
	sw	$r6, -120($r29)
	sw	$r4, -124($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	swr	$r2, $r4($r5)	!st var
cont.60282:
cont.60262:
	addi	$r3, $r3, -1
	lw	$r2, -116($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	j	cont.60260
blti.60261:
cont.60260:
	lw	$r2, -112($r29)
	lw	$r3, 468($r2)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, -112($r29)
	lw	$r3, 464($r2)
	addi	$r2, $r3, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	addi	$r3, $r0, 115
	lw	$r2, -112($r29)
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r2, -108($r29)
	addi	$r2, $r2, -1
	j	init_vecset_constants.6154
blti.60259:
	jr	$r31
blti.60231:
	jr	$r31
blti.60203:
	jr	$r31
blti.60149:
	jr	$r31
setup_reflections.6262:
	blti	$r2, 0, blti.60287
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 8($r3)
	bnei	$r4, 2, bnei.60289
	lw	$r4, 28($r3)
	lwcl	$f0, 0($r4)
	c.le.s	$f31, $f0
	bclf	bclf.60291
	jr	$r31
bclf.60291:
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.60293
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
bnei.60293:
	bnei	$r4, 2, bnei.60295
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
bnei.60295:
	jr	$r31
bnei.60289:
	jr	$r31
blti.60287:
	jr	$r31
min_caml_start:
	ori	$r30, $r0, 3672
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
	blti	$r3, 0, blti.60297
	sw	$r2, -64($r29)
	sw	$r3, -68($r29)
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -72($r29)	!call-dir
	addi	$r29, $r29, -72	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 72
	lw	$r31, -72($r29)	!call-dir
	j	cont.60296
blti.60297:
cont.60296:
	sw	$r2, 2212($r0)
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2216
	sw	$r2, -72($r29)
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0
	sw	$r31, -80($r29)	!call-dir
	addi	$r29, $r29, -80	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 80
	lw	$r31, -80($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2228
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2240
	addi	$r3, $r0, 2228
	sw	$r31, -84($r29)	!call-dir
	addi	$r29, $r29, -84	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 84
	lw	$r31, -84($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2260
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2244($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2272
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2248($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2284
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2252($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2296
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2256($r0)
	addi	$r2, $r0, 5
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2308
	sw	$r31, -88($r29)	!call-dir
	addi	$r29, $r29, -88	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 88
	lw	$r31, -88($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2328
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -92($r29)	!call-dir
	addi	$r29, $r29, -92	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 92
	lw	$r31, -92($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2348
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2360
	addi	$r3, $r0, 2348
	sw	$r31, -96($r29)	!call-dir
	addi	$r29, $r29, -96	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 96
	lw	$r31, -96($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2380
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2364($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2392
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2368($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2404
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2372($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2416
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2376($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2428
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2440
	addi	$r3, $r0, 2428
	sw	$r31, -100($r29)	!call-dir
	addi	$r29, $r29, -100	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 100
	lw	$r31, -100($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2460
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2444($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2472
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2448($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2484
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2452($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2496
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2456($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2508
	sw	$r31, -104($r29)	!call-dir
	addi	$r29, $r29, -104	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 104
	lw	$r31, -104($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2512
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2524
	addi	$r3, $r0, 2512
	sw	$r31, -108($r29)	!call-dir
	addi	$r29, $r29, -108	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 108
	lw	$r31, -108($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2544
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2528($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2556
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2532($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2568
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2536($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2580
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2540($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2592
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	lw	$r3, -108($r29)
	sw	$r3, 28($r2)
	lw	$r3, -104($r29)
	sw	$r3, 24($r2)
	lw	$r3, -100($r29)
	sw	$r3, 20($r2)
	lw	$r3, -96($r29)
	sw	$r3, 16($r2)
	lw	$r3, -92($r29)
	sw	$r3, 12($r2)
	lw	$r3, -88($r29)
	sw	$r3, 8($r2)
	lw	$r3, -84($r29)
	sw	$r3, 4($r2)
	lw	$r3, -80($r29)
	sw	$r3, 0($r2)
	lw	$r30, 0($r0)
	addi	$r3, $r0, 2592
	lw	$r2, -76($r29)
	sw	$r31, -112($r29)	!call-dir
	addi	$r29, $r29, -112	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 112
	lw	$r31, -112($r29)	!call-dir
	sw	$r2, 2624($r0)
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.60299
	sw	$r2, -112($r29)
	sw	$r3, -116($r29)
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	lw	$r3, -116($r29)
	sll	$r4, $r3, 2
	lw	$r5, -112($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -120($r29)	!call-dir
	addi	$r29, $r29, -120	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 120
	lw	$r31, -120($r29)	!call-dir
	j	cont.60298
blti.60299:
cont.60298:
	sw	$r2, 2628($r0)
	lw	$r3, 652($r0)
	addi	$r4, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2632
	sw	$r2, -120($r29)
	sw	$r3, -124($r29)
	addi	$r2, $r4, 0
	sw	$r31, -128($r29)	!call-dir
	addi	$r29, $r29, -128	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 128
	lw	$r31, -128($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2644
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2656
	addi	$r3, $r0, 2644
	sw	$r31, -132($r29)	!call-dir
	addi	$r29, $r29, -132	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 132
	lw	$r31, -132($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2676
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2660($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2688
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2664($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2700
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2668($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2712
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2672($r0)
	addi	$r2, $r0, 5
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2724
	sw	$r31, -136($r29)	!call-dir
	addi	$r29, $r29, -136	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 136
	lw	$r31, -136($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 5
	addi	$r4, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2744
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -140($r29)	!call-dir
	addi	$r29, $r29, -140	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 140
	lw	$r31, -140($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2764
	sw	$r2, -140($r29)
	addi	$r2, $r3, 0
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2776
	addi	$r3, $r0, 2764
	sw	$r31, -144($r29)	!call-dir
	addi	$r29, $r29, -144	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 144
	lw	$r31, -144($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2796
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2780($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2808
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2784($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2820
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2788($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2832
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2792($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2844
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2856
	addi	$r3, $r0, 2844
	sw	$r31, -148($r29)	!call-dir
	addi	$r29, $r29, -148	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 148
	lw	$r31, -148($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2876
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2860($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2888
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2864($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2900
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2868($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2912
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2872($r0)
	addi	$r2, $r0, 1
	addi	$r3, $r0, 0
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2924
	sw	$r31, -152($r29)	!call-dir
	addi	$r29, $r29, -152	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 152
	lw	$r31, -152($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2928
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r2, $r0, 5
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2940
	addi	$r3, $r0, 2928
	sw	$r31, -156($r29)	!call-dir
	addi	$r29, $r29, -156	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 156
	lw	$r31, -156($r29)	!call-dir
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2960
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2944($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2972
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2948($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2984
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2952($r0)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 2996
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 2956($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3008
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	lw	$r3, -156($r29)
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
	lw	$r30, 0($r0)
	addi	$r3, $r0, 3008
	lw	$r2, -124($r29)
	sw	$r31, -160($r29)	!call-dir
	addi	$r29, $r29, -160	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 160
	lw	$r31, -160($r29)	!call-dir
	sw	$r2, 3040($r0)
	lw	$r3, 652($r0)
	addi	$r3, $r3, -2
	blti	$r3, 0, blti.60301
	sw	$r2, -160($r29)
	sw	$r3, -164($r29)
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	create_pixel.5950
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	swr	$r2, $r4($r5)	!st var
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0
	sw	$r31, -168($r29)	!call-dir
	addi	$r29, $r29, -168	!call-dir
	jal	init_line_elements.5972
	addi	$r29, $r29, 168
	lw	$r31, -168($r29)	!call-dir
	j	cont.60300
blti.60301:
cont.60300:
	sw	$r2, 3044($r0)
	sw	$r2, -168($r29)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	read_parameter.4059
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 80
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 54
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r2, 652($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	lw	$r2, 656($r0)
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 32
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 255
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	print_int.2704
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 10
	sw	$r31, -172($r29)	!call-dir
	addi	$r29, $r29, -172	!call-dir
	jal	min_caml_print_char
	addi	$r29, $r29, 172
	lw	$r31, -172($r29)	!call-dir
	addi	$r2, $r0, 120
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3048
	sw	$r2, -172($r29)
	addi	$r2, $r3, 0
	sw	$r31, -176($r29)	!call-dir
	addi	$r29, $r29, -176	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 176
	lw	$r31, -176($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3048
	sw	$r2, -176($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -180($r29)	!call-dir
	addi	$r29, $r29, -180	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 180
	lw	$r31, -180($r29)	!call-dir
	sw	$r2, 3060($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3064
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -176($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3072
	addi	$r3, $r0, 3064
	lw	$r2, -172($r29)
	sw	$r31, -180($r29)	!call-dir
	addi	$r29, $r29, -180	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 180
	lw	$r31, -180($r29)	!call-dir
	lw	$r30, 0($r0)
	sw	$r2, 780($r0)
	lw	$r2, 780($r0)
	sw	$r2, 3552($r0)
	addi	$r3, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3556
	sw	$r2, -180($r29)
	addi	$r2, $r3, 0
	sw	$r31, -184($r29)	!call-dir
	addi	$r29, $r29, -184	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 184
	lw	$r31, -184($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3556
	sw	$r2, -184($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	sw	$r2, 3568($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3572
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -184($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	lw	$r3, -180($r29)
	sw	$r2, 472($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3580
	sw	$r31, -188($r29)	!call-dir
	addi	$r29, $r29, -188	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 188
	lw	$r31, -188($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3580
	sw	$r2, -188($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	sw	$r2, 3592($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3596
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -188($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	lw	$r3, -180($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3604
	sw	$r31, -192($r29)	!call-dir
	addi	$r29, $r29, -192	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 192
	lw	$r31, -192($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3604
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	sw	$r2, 3616($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3620
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -192($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	lw	$r3, -180($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 3
	fmove	$f0, $f30
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3628
	sw	$r31, -196($r29)	!call-dir
	addi	$r29, $r29, -196	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 196
	lw	$r31, -196($r29)	!call-dir
	lw	$r30, 0($r0)
	lw	$r3, 28($r0)
	addi	$r4, $r0, 3628
	sw	$r2, -196($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	min_caml_create_array
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	sw	$r2, 3640($r0)
	sw	$r30, 0($r0)
	addi	$r30, $r0, 3644
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -196($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r30, 0($r0)
	lw	$r3, -180($r29)
	sw	$r2, 460($r3)
	addi	$r2, $r0, 114
	addi	$r27, $r2, 0
	addi	$r2, $r3, 0
	addi	$r3, $r27, 0
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	create_dirvec_elements.6124
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	addi	$r2, $r0, 3
	sw	$r31, -200($r29)	!call-dir
	addi	$r29, $r29, -200	!call-dir
	jal	create_dirvecs.6133
	addi	$r29, $r29, 200
	lw	$r31, -200($r29)	!call-dir
	addi	$r2, $r0, 9
	addi	$r3, $r0, 0
	sw	$r3, -200($r29)
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	lfh	$f1, 15948
	lfl	$f1, 52429
	mul.s	$f0, $f0, $f1
	lfh	$f1, 16230
	lfl	$f1, 26214
	sub.s	$f0, $f0, $f1
	addi	$r2, $r0, 4
	lw	$r3, -200($r29)
	addi	$r4, $r3, 0
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	calc_dirvecs.6068
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	addi	$r2, $r0, 8
	addi	$r3, $r0, 2
	addi	$r4, $r0, 4
	sw	$r31, -204($r29)	!call-dir
	addi	$r29, $r29, -204	!call-dir
	jal	calc_dirvec_rows.6098
	addi	$r29, $r29, 204
	lw	$r31, -204($r29)	!call-dir
	lw	$r2, 780($r0)
	sw	$r2, 3652($r0)
	lw	$r3, 476($r2)
	sw	$r3, 3656($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	sw	$r2, -204($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -208($r29)	!call-dir
	addi	$r29, $r29, -208	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 208
	lw	$r31, -208($r29)	!call-dir
	lw	$r2, -204($r29)
	lw	$r3, 472($r2)
	sw	$r3, 3660($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	blti	$r4, 0, blti.60303
	sll	$r5, $r4, 2
	lw	$r5, 80($r5)
	lw	$r6, 4($r3)
	lw	$r7, 0($r3)
	lw	$r8, 4($r5)
	sw	$r3, -208($r29)
	bnei	$r8, 1, bnei.60305
	addi	$r8, $r0, 6
	fmove	$f0, $f30
	sw	$r6, -212($r29)
	sw	$r4, -216($r29)
	sw	$r5, -220($r29)
	sw	$r7, -224($r29)
	addi	$r2, $r8, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	lwcl	$f0, 0($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60307
	swcl	$f1, 4($r2)
	j	cont.60306
bclf.60307:
	lw	$r4, -220($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 0($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60309
	addi	$r6, $r0, 0
	j	cont.60308
bclf.60309:
	addi	$r6, $r0, 1
cont.60308:
	lw	$r7, 16($r4)
	lwcl	$f0, 0($r7)
	bne	$r5, $r6, bne.60311
	fneg	$f0, $f0
	j	cont.60310
bne.60311:
cont.60310:
	swcl	$f0, 0($r2)
	lwcl	$f0, 0($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60306:
	lwcl	$f0, 4($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60313
	swcl	$f1, 12($r2)
	j	cont.60312
bclf.60313:
	lw	$r4, -220($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 4($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60315
	addi	$r6, $r0, 0
	j	cont.60314
bclf.60315:
	addi	$r6, $r0, 1
cont.60314:
	lw	$r7, 16($r4)
	lwcl	$f0, 4($r7)
	bne	$r5, $r6, bne.60317
	fneg	$f0, $f0
	j	cont.60316
bne.60317:
cont.60316:
	swcl	$f0, 8($r2)
	lwcl	$f0, 4($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60312:
	lwcl	$f0, 8($r3)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60319
	swcl	$f1, 20($r2)
	j	cont.60318
bclf.60319:
	lw	$r4, -220($r29)
	lw	$r5, 24($r4)
	lwcl	$f0, 8($r3)
	c.le.s	$f30, $f0
	bclf	bclf.60321
	addi	$r6, $r0, 0
	j	cont.60320
bclf.60321:
	addi	$r6, $r0, 1
cont.60320:
	lw	$r4, 16($r4)
	lwcl	$f0, 8($r4)
	bne	$r5, $r6, bne.60323
	fneg	$f0, $f0
	j	cont.60322
bne.60323:
cont.60322:
	swcl	$f0, 16($r2)
	lwcl	$f0, 8($r3)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60318:
	lw	$r3, -216($r29)
	sll	$r4, $r3, 2
	lw	$r5, -212($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60304
bnei.60305:
	bnei	$r8, 2, bnei.60325
	addi	$r8, $r0, 4
	fmove	$f0, $f30
	sw	$r6, -212($r29)
	sw	$r4, -216($r29)
	sw	$r5, -220($r29)
	sw	$r7, -224($r29)
	addi	$r2, $r8, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -224($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -220($r29)
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
	bclf	bclf.60327
	swcl	$f1, 0($r2)
	j	cont.60326
bclf.60327:
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
cont.60326:
	lw	$r3, -216($r29)
	sll	$r4, $r3, 2
	lw	$r5, -212($r29)
	swr	$r2, $r4($r5)	!st var
	j	cont.60324
bnei.60325:
	sw	$r6, -212($r29)
	sw	$r4, -216($r29)
	addi	$r2, $r7, 0
	addi	$r3, $r5, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r3, -216($r29)
	sll	$r4, $r3, 2
	lw	$r5, -212($r29)
	swr	$r2, $r4($r5)	!st var
cont.60324:
cont.60304:
	addi	$r3, $r3, -1
	lw	$r2, -208($r29)
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	j	cont.60302
blti.60303:
cont.60302:
	lw	$r2, -204($r29)
	lw	$r3, 468($r2)
	sw	$r3, 3664($r0)
	lw	$r4, 28($r0)
	addi	$r4, $r4, -1
	addi	$r2, $r3, 0
	addi	$r3, $r4, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lw	$r2, -204($r29)
	lw	$r3, 464($r2)
	sw	$r3, 3668($r0)
	addi	$r2, $r3, 0
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	setup_dirvec_constants.4723
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	addi	$r3, $r0, 115
	lw	$r2, -204($r29)
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	init_dirvec_constants.6146
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	addi	$r2, $r0, 3
	sw	$r31, -228($r29)	!call-dir
	addi	$r29, $r29, -228	!call-dir
	jal	init_vecset_constants.6154
	addi	$r29, $r29, 228
	lw	$r31, -228($r29)	!call-dir
	lwcl	$f0, 344($r0)
	swcl	$f0, 788($r0)
	lwcl	$f0, 348($r0)
	swcl	$f0, 792($r0)
	lwcl	$f0, 352($r0)
	swcl	$f0, 796($r0)
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	blti	$r2, 0, blti.60329
	sll	$r3, $r2, 2
	lw	$r3, 80($r3)
	lw	$r4, 4($r3)
	bnei	$r4, 1, bnei.60331
	addi	$r4, $r0, 6
	fmove	$f0, $f30
	sw	$r2, -228($r29)
	sw	$r3, -232($r29)
	addi	$r2, $r4, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lwcl	$f0, 788($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60333
	swcl	$f1, 4($r2)
	j	cont.60332
bclf.60333:
	lw	$r3, -232($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 788($r0)
	c.le.s	$f30, $f0
	bclf	bclf.60335
	addi	$r5, $r0, 0
	j	cont.60334
bclf.60335:
	addi	$r5, $r0, 1
cont.60334:
	lw	$r6, 16($r3)
	lwcl	$f0, 0($r6)
	bne	$r4, $r5, bne.60337
	fneg	$f0, $f0
	j	cont.60336
bne.60337:
cont.60336:
	swcl	$f0, 0($r2)
	lwcl	$f0, 788($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 4($r2)
cont.60332:
	lwcl	$f0, 792($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60339
	swcl	$f1, 12($r2)
	j	cont.60338
bclf.60339:
	lw	$r3, -232($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 792($r0)
	c.le.s	$f30, $f0
	bclf	bclf.60341
	addi	$r5, $r0, 0
	j	cont.60340
bclf.60341:
	addi	$r5, $r0, 1
cont.60340:
	lw	$r6, 16($r3)
	lwcl	$f0, 4($r6)
	bne	$r4, $r5, bne.60343
	fneg	$f0, $f0
	j	cont.60342
bne.60343:
cont.60342:
	swcl	$f0, 8($r2)
	lwcl	$f0, 792($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 12($r2)
cont.60338:
	lwcl	$f0, 796($r0)
	fmove	$f1, $f30
	c.eq.s	$f0, $f30
	bclf	bclf.60345
	swcl	$f1, 20($r2)
	j	cont.60344
bclf.60345:
	lw	$r3, -232($r29)
	lw	$r4, 24($r3)
	lwcl	$f0, 796($r0)
	c.le.s	$f30, $f0
	bclf	bclf.60347
	addi	$r5, $r0, 0
	j	cont.60346
bclf.60347:
	addi	$r5, $r0, 1
cont.60346:
	lw	$r3, 16($r3)
	lwcl	$f0, 8($r3)
	bne	$r4, $r5, bne.60349
	fneg	$f0, $f0
	j	cont.60348
bne.60349:
cont.60348:
	swcl	$f0, 16($r2)
	lwcl	$f0, 796($r0)
	div.s	$f0, $f31, $f0
	swcl	$f0, 20($r2)
cont.60344:
	lw	$r3, -228($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
	j	cont.60330
bnei.60331:
	bnei	$r4, 2, bnei.60351
	addi	$r4, $r0, 4
	fmove	$f0, $f30
	sw	$r2, -228($r29)
	sw	$r3, -232($r29)
	addi	$r2, $r4, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	min_caml_create_float_array
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lwcl	$f0, 788($r0)
	lw	$r3, -232($r29)
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
	bclf	bclf.60353
	swcl	$f1, 0($r2)
	j	cont.60352
bclf.60353:
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
cont.60352:
	lw	$r3, -228($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
	j	cont.60350
bnei.60351:
	addi	$r4, $r0, 788
	sw	$r2, -228($r29)
	addi	$r2, $r4, 0
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	setup_second_table.4626
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	lw	$r3, -228($r29)
	sll	$r4, $r3, 2
	sw	$r2, 800($r4)
cont.60350:
cont.60330:
	addi	$r3, $r3, -1
	addi	$r2, $r0, 1040
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	iter_setup_dirvec_constants.4707
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	j	cont.60328
blti.60329:
cont.60328:
	lw	$r2, 28($r0)
	addi	$r2, $r2, -1
	sw	$r31, -236($r29)	!call-dir
	addi	$r29, $r29, -236	!call-dir
	jal	setup_reflections.6262
	addi	$r29, $r29, 236
	lw	$r31, -236($r29)	!call-dir
	addi	$r2, $r0, 0
	lwcl	$f0, 668($r0)
	lw	$r3, 664($r0)
	subu	$r3, $r2, $r3
	sw	$r2, -236($r29)
	swcl	$f0, -240($r29)
	addi	$r2, $r3, 0
	sw	$r31, -244($r29)	!call-dir
	addi	$r29, $r29, -244	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 244
	lw	$r31, -244($r29)	!call-dir
	lwcl	$f1, -240($r29)
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
	blti	$r2, 0, blti.60355
	lwcl	$f3, 668($r0)
	lw	$r4, 660($r0)
	subu	$r4, $r2, $r4
	sw	$r3, -244($r29)
	sw	$r2, -248($r29)
	swcl	$f0, -252($r29)
	swcl	$f2, -256($r29)
	swcl	$f1, -260($r29)
	swcl	$f3, -264($r29)
	addi	$r2, $r4, 0
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	min_caml_float_of_int
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lwcl	$f1, -264($r29)
	mul.s	$f0, $f1, $f0
	lwcl	$f1, 696($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f2, -260($r29)
	add.s	$f1, $f1, $f2
	swcl	$f1, 732($r0)
	lwcl	$f1, 700($r0)
	mul.s	$f1, $f0, $f1
	lwcl	$f3, -256($r29)
	add.s	$f1, $f1, $f3
	swcl	$f1, 736($r0)
	lwcl	$f1, 704($r0)
	mul.s	$f0, $f0, $f1
	lwcl	$f1, -252($r29)
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
	bclf	bclf.60357
	fmove	$f0, $f31
	j	cont.60356
bclf.60357:
	div.s	$f0, $f31, $f0
cont.60356:
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
	lw	$r2, -248($r29)
	sll	$r3, $r2, 2
	lw	$r4, -120($r29)
	lwr	$r3, $r3($r4)	!ld var
	fmove	$f4, $f30
	addi	$r5, $r0, 732
	lw	$r6, -244($r29)
	addi	$r2, $r6, 0
	addi	$r4, $r3, 0
	addi	$r3, $r5, 0
	fmove	$f1, $f4
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	trace_ray.5428
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r2, -248($r29)
	sll	$r3, $r2, 2
	lw	$r4, -120($r29)
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
	lw	$r5, -236($r29)
	sw	$r5, 0($r3)
	sll	$r3, $r2, 2
	lwr	$r3, $r3($r4)	!ld var
	lw	$r5, -244($r29)
	addi	$r2, $r3, 0
	addi	$r3, $r5, 0
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	pretrace_diffuse_rays.5772
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	lw	$r2, -248($r29)
	addi	$r3, $r2, -1
	addi	$r4, $r0, 1
	lw	$r2, -120($r29)
	lwcl	$f0, -260($r29)
	lwcl	$f1, -256($r29)
	lwcl	$f2, -252($r29)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	pretrace_pixels.5794
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
	j	cont.60354
blti.60355:
cont.60354:
	addi	$r2, $r0, 0
	addi	$r6, $r0, 2
	lw	$r3, -72($r29)
	lw	$r4, -120($r29)
	lw	$r5, -168($r29)
	sw	$r31, -268($r29)	!call-dir
	addi	$r29, $r29, -268	!call-dir
	jal	scan_line.5902
	addi	$r29, $r29, 268
	lw	$r31, -268($r29)	!call-dir
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

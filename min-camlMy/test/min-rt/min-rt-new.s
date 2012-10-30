	j	.min_caml_start
.atan_sub.2808:
	lfh	$f6, 16128
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.558300
	lfh	$f8, 16256
	lfl	$f8, 0
	sub.s	$f10, $f0, $f8
	mul.s	$f12, $f0, $f0
	mul.s	$f12, $f12, $f2
	add.s	$f0, $f0, $f0
	add.s	$f0, $f0, $f8
	add.s	$f0, $f0, $f4
	div.s	$f0, $f12, $f0
	c.le.s	$f6, $f10
	bclf	.bclt_else.558301
	sub.s	$f4, $f10, $f8
	mul.s	$f12, $f10, $f10
	mul.s	$f12, $f12, $f2
	add.s	$f10, $f10, $f10
	add.s	$f10, $f10, $f8
	add.s	$f0, $f10, $f0
	div.s	$f0, $f12, $f0
	c.le.s	$f6, $f4
	bclf	.bclt_else.558302
	sub.s	$f10, $f4, $f8
	mul.s	$f12, $f4, $f4
	mul.s	$f12, $f12, $f2
	add.s	$f4, $f4, $f4
	add.s	$f4, $f4, $f8
	add.s	$f0, $f4, $f0
	div.s	$f0, $f12, $f0
	c.le.s	$f6, $f10
	bclf	.bclt_else.558303
	sub.s	$f4, $f10, $f8
	mul.s	$f6, $f10, $f10
	mul.s	$f6, $f6, $f2
	add.s	$f10, $f10, $f10
	add.s	$f8, $f10, $f8
	add.s	$f0, $f8, $f0
	div.s	$f0, $f6, $f0
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f30	! g'_args
	j	.atan_sub.2808	! calldir-tail
.bclt_else.558303:
	jr	$r31
.bclt_else.558302:
	jr	$r31
.bclt_else.558301:
	jr	$r31
.bclt_else.558300:
	fmove	$f0, $f4
	jr	$r31
.sin_sub.2816:
	lfh	$f2, 16585
	lfl	$f2, 4059
	c.le.s	$f0, $f2
	bclf	.bclt_else.558304
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.558305
	jr	$r31
.bclt_else.558305:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558306
	c.le.s	$f4, $f0
	bclf	.bclt_else.558307
	jr	$r31
.bclt_else.558307:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558308
	c.le.s	$f4, $f0
	bclf	.bclt_else.558309
	jr	$r31
.bclt_else.558309:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558310
	c.le.s	$f4, $f0
	bclf	.bclt_else.558311
	jr	$r31
.bclt_else.558311:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558310:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558308:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558312
	c.le.s	$f4, $f0
	bclf	.bclt_else.558313
	jr	$r31
.bclt_else.558313:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558312:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558306:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558314
	c.le.s	$f4, $f0
	bclf	.bclt_else.558315
	jr	$r31
.bclt_else.558315:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558316
	c.le.s	$f4, $f0
	bclf	.bclt_else.558317
	jr	$r31
.bclt_else.558317:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558316:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558314:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558318
	c.le.s	$f4, $f0
	bclf	.bclt_else.558319
	jr	$r31
.bclt_else.558319:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558318:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558304:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558320
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.558321
	jr	$r31
.bclt_else.558321:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558322
	c.le.s	$f4, $f0
	bclf	.bclt_else.558323
	jr	$r31
.bclt_else.558323:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558324
	c.le.s	$f4, $f0
	bclf	.bclt_else.558325
	jr	$r31
.bclt_else.558325:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558324:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558322:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558326
	c.le.s	$f4, $f0
	bclf	.bclt_else.558327
	jr	$r31
.bclt_else.558327:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558326:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558320:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558328
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.558329
	jr	$r31
.bclt_else.558329:
	add.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558330
	c.le.s	$f4, $f0
	bclf	.bclt_else.558331
	jr	$r31
.bclt_else.558331:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558330:
	sub.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558328:
	sub.s	$f0, $f0, $f2
	c.le.s	$f0, $f2
	bclf	.bclt_else.558332
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.558333
	jr	$r31
.bclt_else.558333:
	add.s	$f0, $f0, $f2
	j	.sin_sub.2816	! calldir-tail
.bclt_else.558332:
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
	bclf	.bclt_else.558334
	addi	$r2, $r0, 0
	j	.bclt_cont.558335
.bclt_else.558334:
	addi	$r2, $r0, 1
.bclt_cont.558335:
	c.le.s	$f8, $f0
	bclf	.bclt_else.558336
	j	.bclt_cont.558337
.bclt_else.558336:
	fneg	$f0, $f0
.bclt_cont.558337:
	swcl	$f6, -4($r29)
	swcl	$f4, -8($r29)
	sw	$r2, -12($r29)
	swcl	$f2, -16($r29)
	c.le.s	$f0, $f4
	bclf	.bclt_else.558338
	c.le.s	$f8, $f0
	bclf	.bclt_else.558340
	j	.bclt_cont.558341
.bclt_else.558340:
	add.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558342
	c.le.s	$f8, $f0
	bclf	.bclt_else.558344
	j	.bclt_cont.558345
.bclt_else.558344:
	add.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558346
	c.le.s	$f8, $f0
	bclf	.bclt_else.558348
	j	.bclt_cont.558349
.bclt_else.558348:
	add.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558349:
	j	.bclt_cont.558347
.bclt_else.558346:
	sub.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558347:
.bclt_cont.558345:
	j	.bclt_cont.558343
.bclt_else.558342:
	sub.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558350
	c.le.s	$f8, $f0
	bclf	.bclt_else.558352
	j	.bclt_cont.558353
.bclt_else.558352:
	add.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558353:
	j	.bclt_cont.558351
.bclt_else.558350:
	sub.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558351:
.bclt_cont.558343:
.bclt_cont.558341:
	j	.bclt_cont.558339
.bclt_else.558338:
	sub.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558354
	c.le.s	$f8, $f0
	bclf	.bclt_else.558356
	j	.bclt_cont.558357
.bclt_else.558356:
	add.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558358
	c.le.s	$f8, $f0
	bclf	.bclt_else.558360
	j	.bclt_cont.558361
.bclt_else.558360:
	add.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558361:
	j	.bclt_cont.558359
.bclt_else.558358:
	sub.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558359:
.bclt_cont.558357:
	j	.bclt_cont.558355
.bclt_else.558354:
	sub.s	$f0, $f0, $f4
	c.le.s	$f0, $f4
	bclf	.bclt_else.558362
	c.le.s	$f8, $f0
	bclf	.bclt_else.558364
	j	.bclt_cont.558365
.bclt_else.558364:
	add.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558365:
	j	.bclt_cont.558363
.bclt_else.558362:
	sub.s	$f0, $f0, $f4
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin_sub.2816	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
.bclt_cont.558363:
.bclt_cont.558355:
.bclt_cont.558339:
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.558366
	lw	$r2, -12($r29)
	j	.bclt_cont.558367
.bclt_else.558366:
	addi	$r2, $r0, 0
	lw	$r3, -12($r29)
	bne	$r3, $r2, .beq_else.558368
	addi	$r2, $r0, 1
	j	.beq_cont.558369
.beq_else.558368:
	addi	$r2, $r0, 0
.beq_cont.558369:
.bclt_cont.558367:
	c.le.s	$f0, $f2
	bclf	.bclt_else.558370
	j	.bclt_cont.558371
.bclt_else.558370:
	lwcl	$f4, -8($r29)
	sub.s	$f0, $f4, $f0
.bclt_cont.558371:
	lwcl	$f4, -4($r29)
	c.le.s	$f0, $f4
	bclf	.bclt_else.558372
	j	.bclt_cont.558373
.bclt_else.558372:
	sub.s	$f0, $f2, $f0
.bclt_cont.558373:
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
	sub.s	$f4, $f2, $f4
	div.s	$f0, $f0, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	mul.s	$f4, $f4, $f0
	mul.s	$f0, $f0, $f0
	add.s	$f0, $f2, $f0
	div.s	$f0, $f4, $f0
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.558374
	fneg	$f0, $f0
	jr	$r31
.beq_else.558374:
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
	bgt	$r2, $r3, .ble_else.558375
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.558377
	addi	$r2, $r0, 0
	j	.ble_cont.558378
.ble_else.558377:
	addi	$r2, $r0, 1
.ble_cont.558378:
	j	.ble_cont.558376
.ble_else.558375:
	addi	$r2, $r0, 1
.ble_cont.558376:
	addi	$r4, $r0, 0
	bne	$r2, $r4, .beq_else.558379
	lw	$r2, -20($r29)
	lw	$r5, 0($r2)
	bne	$r5, $r4, .beq_else.558380
	addi	$r4, $r0, 45
	lw	$r5, -16($r29)
	bne	$r5, $r4, .beq_else.558382
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.558383
.beq_else.558382:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.558383:
	j	.beq_cont.558381
.beq_else.558380:
.beq_cont.558381:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sll	$r5, $r4, 3
	addi	$r6, $r0, 1
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r5, $r3, -48
	addu	$r4, $r4, $r5
	sw	$r4, 0($r2)
	lw	$r28, -8($r29)
	addi	$r2, $r6, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558379:
	lw	$r2, -4($r29)
	bne	$r2, $r4, .beq_else.558384
	lw	$r28, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558384:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r0, 1
	bne	$r2, $r3, .beq_else.558385
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	jr	$r31
.beq_else.558385:
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	subu	$r2, $r0, $r2
	jr	$r31
.read_float_token1.2835:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sw	$r2, -4($r29)
	sw	$r28, -8($r29)
	sw	$r5, -12($r29)
	sw	$r3, -16($r29)
	sw	$r4, -20($r29)
	input	$r2
	addi	$r3, $r0, 48
	bgt	$r3, $r2, .ble_else.558386
	addi	$r4, $r0, 57
	bgt	$r2, $r4, .ble_else.558388
	addi	$r4, $r0, 0
	j	.ble_cont.558389
.ble_else.558388:
	addi	$r4, $r0, 1
.ble_cont.558389:
	j	.ble_cont.558387
.ble_else.558386:
	addi	$r4, $r0, 1
.ble_cont.558387:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.558390
	lw	$r4, -20($r29)
	lw	$r6, 0($r4)
	bne	$r6, $r5, .beq_else.558391
	addi	$r6, $r0, 45
	lw	$r7, -16($r29)
	bne	$r7, $r6, .beq_else.558393
	addi	$r6, $r0, -1
	sw	$r6, 0($r4)
	j	.beq_cont.558394
.beq_else.558393:
	addi	$r6, $r0, 1
	sw	$r6, 0($r4)
.beq_cont.558394:
	j	.beq_cont.558392
.beq_else.558391:
.beq_cont.558392:
	lw	$r6, -12($r29)
	lw	$r7, 0($r6)
	sll	$r8, $r7, 3
	addi	$r9, $r0, 1
	sll	$r7, $r7, 1
	addu	$r7, $r8, $r7
	addi	$r8, $r2, -48
	addu	$r7, $r7, $r8
	sw	$r7, 0($r6)
	sw	$r9, -24($r29)
	sw	$r2, -28($r29)
	sw	$r5, -32($r29)
	sw	$r3, -36($r29)
	input	$r3
	lw	$r2, -36($r29)
	bgt	$r2, $r3, .ble_else.558395
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.558397
	addi	$r2, $r0, 0
	j	.ble_cont.558398
.ble_else.558397:
	addi	$r2, $r0, 1
.ble_cont.558398:
	j	.ble_cont.558396
.ble_else.558395:
	addi	$r2, $r0, 1
.ble_cont.558396:
	lw	$r4, -32($r29)
	bne	$r2, $r4, .beq_else.558399
	lw	$r2, -20($r29)
	lw	$r5, 0($r2)
	bne	$r5, $r4, .beq_else.558400
	addi	$r4, $r0, 45
	lw	$r5, -28($r29)
	bne	$r5, $r4, .beq_else.558402
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.558403
.beq_else.558402:
	lw	$r4, -24($r29)
	sw	$r4, 0($r2)
.beq_cont.558403:
	j	.beq_cont.558401
.beq_else.558400:
.beq_cont.558401:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r5, $r3, -48
	addu	$r4, $r4, $r5
	sw	$r4, 0($r2)
	lw	$r2, -24($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558399:
	addi	$r2, $r3, 0
	jr	$r31
.beq_else.558390:
	lw	$r4, -4($r29)
	bne	$r4, $r5, .beq_else.558404
	sw	$r2, -28($r29)
	sw	$r5, -32($r29)
	sw	$r3, -36($r29)
	input	$r3
	lw	$r2, -36($r29)
	bgt	$r2, $r3, .ble_else.558405
	addi	$r2, $r0, 57
	bgt	$r3, $r2, .ble_else.558407
	addi	$r2, $r0, 0
	j	.ble_cont.558408
.ble_else.558407:
	addi	$r2, $r0, 1
.ble_cont.558408:
	j	.ble_cont.558406
.ble_else.558405:
	addi	$r2, $r0, 1
.ble_cont.558406:
	lw	$r4, -32($r29)
	bne	$r2, $r4, .beq_else.558409
	lw	$r2, -20($r29)
	lw	$r5, 0($r2)
	bne	$r5, $r4, .beq_else.558410
	addi	$r4, $r0, 45
	lw	$r5, -28($r29)
	bne	$r5, $r4, .beq_else.558412
	addi	$r4, $r0, -1
	sw	$r4, 0($r2)
	j	.beq_cont.558413
.beq_else.558412:
	addi	$r4, $r0, 1
	sw	$r4, 0($r2)
.beq_cont.558413:
	j	.beq_cont.558411
.beq_else.558410:
.beq_cont.558411:
	lw	$r2, -12($r29)
	lw	$r4, 0($r2)
	sll	$r5, $r4, 3
	addi	$r6, $r0, 1
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r5, $r3, -48
	addu	$r4, $r4, $r5
	sw	$r4, 0($r2)
	lw	$r28, -8($r29)
	addi	$r2, $r6, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558409:
	lw	$r28, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558404:
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
	bgt	$r3, $r2, .ble_else.558414
	addi	$r4, $r0, 57
	bgt	$r2, $r4, .ble_else.558416
	addi	$r4, $r0, 0
	j	.ble_cont.558417
.ble_else.558416:
	addi	$r4, $r0, 1
.ble_cont.558417:
	j	.ble_cont.558415
.ble_else.558414:
	addi	$r4, $r0, 1
.ble_cont.558415:
	addi	$r5, $r0, 0
	bne	$r4, $r5, .beq_else.558418
	lw	$r4, -16($r29)
	lw	$r6, 0($r4)
	sll	$r7, $r6, 3
	addi	$r8, $r0, 1
	sll	$r6, $r6, 1
	addu	$r6, $r7, $r6
	addi	$r2, $r2, -48
	addu	$r2, $r6, $r2
	sw	$r2, 0($r4)
	lw	$r2, -12($r29)
	lw	$r6, 0($r2)
	sll	$r7, $r6, 3
	sll	$r6, $r6, 1
	addu	$r6, $r7, $r6
	sw	$r6, 0($r2)
	sw	$r8, -20($r29)
	sw	$r5, -24($r29)
	sw	$r3, -28($r29)
	input	$r2
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.558419
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.558421
	addi	$r3, $r0, 0
	j	.ble_cont.558422
.ble_else.558421:
	addi	$r3, $r0, 1
.ble_cont.558422:
	j	.ble_cont.558420
.ble_else.558419:
	addi	$r3, $r0, 1
.ble_cont.558420:
	lw	$r4, -24($r29)
	bne	$r3, $r4, .beq_else.558423
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
	lw	$r2, -20($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558423:
	jr	$r31
.beq_else.558418:
	lw	$r2, -4($r29)
	bne	$r2, $r5, .beq_else.558425
	sw	$r5, -24($r29)
	sw	$r3, -28($r29)
	input	$r2
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.558426
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.558428
	addi	$r3, $r0, 0
	j	.ble_cont.558429
.ble_else.558428:
	addi	$r3, $r0, 1
.ble_cont.558429:
	j	.ble_cont.558427
.ble_else.558426:
	addi	$r3, $r0, 1
.ble_cont.558427:
	lw	$r4, -24($r29)
	bne	$r3, $r4, .beq_else.558430
	lw	$r3, -16($r29)
	lw	$r4, 0($r3)
	sll	$r5, $r4, 3
	addi	$r6, $r0, 1
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
	lw	$r28, -8($r29)
	addi	$r2, $r6, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558430:
	lw	$r28, -8($r29)
	addi	$r2, $r4, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.558425:
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
	sw	$r8, 0($r6)
	addi	$r9, $r0, 1
	sw	$r9, 0($r7)
	sw	$r8, 0($r4)
	sw	$r2, -4($r29)
	sw	$r7, -8($r29)
	sw	$r6, -12($r29)
	sw	$r3, -16($r29)
	sw	$r5, -20($r29)
	sw	$r9, -24($r29)
	sw	$r4, -28($r29)
	sw	$r8, -32($r29)
	input	$r3
	addi	$r2, $r0, 48
	bgt	$r2, $r3, .ble_else.558432
	addi	$r4, $r0, 57
	bgt	$r3, $r4, .ble_else.558434
	addi	$r4, $r0, 0
	j	.ble_cont.558435
.ble_else.558434:
	addi	$r4, $r0, 1
.ble_cont.558435:
	j	.ble_cont.558433
.ble_else.558432:
	addi	$r4, $r0, 1
.ble_cont.558433:
	lw	$r5, -32($r29)
	sw	$r2, -36($r29)
	bne	$r4, $r5, .beq_else.558436
	lw	$r4, -28($r29)
	lw	$r6, 0($r4)
	bne	$r6, $r5, .beq_else.558438
	lw	$r6, -24($r29)
	sw	$r6, 0($r4)
	j	.beq_cont.558439
.beq_else.558438:
.beq_cont.558439:
	lw	$r6, -20($r29)
	lw	$r7, 0($r6)
	sll	$r8, $r7, 3
	sll	$r7, $r7, 1
	addu	$r7, $r8, $r7
	addi	$r8, $r3, -48
	addu	$r7, $r7, $r8
	sw	$r7, 0($r6)
	lw	$r7, -24($r29)
	lw	$r28, -16($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.558441	! callcls
	j	.mendoi1.558440	! callcls
.mendoi2.558441:	! callcls
	jr	$r27	! callcls
.mendoi1.558440:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	j	.beq_cont.558437
.beq_else.558436:
	lw	$r28, -16($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.558443	! callcls
	j	.mendoi1.558442	! callcls
.mendoi2.558443:	! callcls
	jr	$r27	! callcls
.mendoi1.558442:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.558437:
	addi	$r3, $r0, 46
	bne	$r2, $r3, .beq_else.558444
	input	$r2
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.558446
	addi	$r3, $r0, 57
	bgt	$r2, $r3, .ble_else.558448
	addi	$r3, $r0, 0
	j	.ble_cont.558449
.ble_else.558448:
	addi	$r3, $r0, 1
.ble_cont.558449:
	j	.ble_cont.558447
.ble_else.558446:
	addi	$r3, $r0, 1
.ble_cont.558447:
	lw	$r4, -32($r29)
	bne	$r3, $r4, .beq_else.558450
	lw	$r3, -12($r29)
	lw	$r4, 0($r3)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	addi	$r2, $r2, -48
	addu	$r2, $r4, $r2
	sw	$r2, 0($r3)
	lw	$r2, -8($r29)
	lw	$r4, 0($r2)
	sll	$r5, $r4, 3
	sll	$r4, $r4, 1
	addu	$r4, $r5, $r4
	sw	$r4, 0($r2)
	lw	$r4, -24($r29)
	lw	$r28, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.558453	! callcls
	j	.mendoi1.558452	! callcls
.mendoi2.558453:	! callcls
	jr	$r27	! callcls
.mendoi1.558452:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	j	.beq_cont.558451
.beq_else.558450:
	lw	$r28, -4($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.558455	! callcls
	j	.mendoi1.558454	! callcls
.mendoi2.558455:	! callcls
	jr	$r27	! callcls
.mendoi1.558454:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.558451:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -12($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -40($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r2, 0($r2)
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -40($r29)
	add.s	$f0, $f2, $f0
	j	.beq_cont.558445
.beq_else.558444:
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
.beq_cont.558445:
	lw	$r2, -28($r29)
	lw	$r2, 0($r2)
	lw	$r3, -24($r29)
	bne	$r2, $r3, .beq_else.558456
	jr	$r31
.beq_else.558456:
	fneg	$f0, $f0
	jr	$r31
.mul_sub.2842:
	addi	$r4, $r0, 0
	bne	$r3, $r4, .beq_else.558457
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.558457:
	sra	$r5, $r3, 1
	sll	$r6, $r5, 1
	subu	$r3, $r3, $r6
	bne	$r3, $r4, .beq_else.558458
	sll	$r2, $r2, 1
	bne	$r5, $r4, .beq_else.558459
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.558459:
	sra	$r3, $r5, 1
	sll	$r6, $r3, 1
	subu	$r5, $r5, $r6
	bne	$r5, $r4, .beq_else.558460
	sll	$r2, $r2, 1
	bne	$r3, $r4, .beq_else.558461
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.558461:
	sra	$r5, $r3, 1
	sll	$r6, $r5, 1
	subu	$r3, $r3, $r6
	bne	$r3, $r4, .beq_else.558462
	sll	$r2, $r2, 1
	bne	$r5, $r4, .beq_else.558463
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.558463:
	sra	$r3, $r5, 1
	sll	$r6, $r3, 1
	subu	$r5, $r5, $r6
	bne	$r5, $r4, .beq_else.558464
	sll	$r2, $r2, 1
	j	.mul_sub.2842	! calldir-tail
.beq_else.558464:
	sll	$r4, $r2, 1
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
.beq_else.558462:
	sll	$r3, $r2, 1
	sw	$r2, -8($r29)
	bne	$r5, $r4, .beq_else.558465
	addi	$r2, $r0, 0
	j	.beq_cont.558466
.beq_else.558465:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r4, .beq_else.558467
	sll	$r3, $r3, 1
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	j	.beq_cont.558468
.beq_else.558467:
	sll	$r4, $r3, 1
	sw	$r3, -12($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r3, -12($r29)
	addu	$r2, $r2, $r3
.beq_cont.558468:
.beq_cont.558466:
	lw	$r3, -8($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.beq_else.558460:
	sll	$r5, $r2, 1
	sw	$r2, -16($r29)
	bne	$r3, $r4, .beq_else.558469
	addi	$r2, $r0, 0
	j	.beq_cont.558470
.beq_else.558469:
	sra	$r6, $r3, 1
	sll	$r7, $r6, 1
	subu	$r3, $r3, $r7
	bne	$r3, $r4, .beq_else.558471
	sll	$r3, $r5, 1
	bne	$r6, $r4, .beq_else.558473
	addi	$r2, $r0, 0
	j	.beq_cont.558474
.beq_else.558473:
	sra	$r5, $r6, 1
	sll	$r7, $r5, 1
	subu	$r6, $r6, $r7
	bne	$r6, $r4, .beq_else.558475
	sll	$r3, $r3, 1
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	j	.beq_cont.558476
.beq_else.558475:
	sll	$r4, $r3, 1
	sw	$r3, -20($r29)
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -20($r29)
	addu	$r2, $r2, $r3
.beq_cont.558476:
.beq_cont.558474:
	j	.beq_cont.558472
.beq_else.558471:
	sll	$r3, $r5, 1
	sw	$r5, -24($r29)
	bne	$r6, $r4, .beq_else.558477
	addi	$r2, $r0, 0
	j	.beq_cont.558478
.beq_else.558477:
	sra	$r7, $r6, 1
	sll	$r8, $r7, 1
	subu	$r6, $r6, $r8
	bne	$r6, $r4, .beq_else.558479
	sll	$r3, $r3, 1
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	j	.beq_cont.558480
.beq_else.558479:
	sll	$r4, $r3, 1
	sw	$r3, -28($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
.beq_cont.558480:
.beq_cont.558478:
	lw	$r3, -24($r29)
	addu	$r2, $r2, $r3
.beq_cont.558472:
.beq_cont.558470:
	lw	$r3, -16($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.beq_else.558458:
	sll	$r3, $r2, 1
	sw	$r2, -32($r29)
	bne	$r5, $r4, .beq_else.558481
	addi	$r2, $r0, 0
	j	.beq_cont.558482
.beq_else.558481:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r4, .beq_else.558483
	sll	$r3, $r3, 1
	bne	$r6, $r4, .beq_else.558485
	addi	$r2, $r0, 0
	j	.beq_cont.558486
.beq_else.558485:
	sra	$r5, $r6, 1
	sll	$r7, $r5, 1
	subu	$r6, $r6, $r7
	bne	$r6, $r4, .beq_else.558487
	sll	$r3, $r3, 1
	bne	$r5, $r4, .beq_else.558489
	addi	$r2, $r0, 0
	j	.beq_cont.558490
.beq_else.558489:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r4, .beq_else.558491
	sll	$r3, $r3, 1
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	j	.beq_cont.558492
.beq_else.558491:
	sll	$r4, $r3, 1
	sw	$r3, -36($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
.beq_cont.558492:
.beq_cont.558490:
	j	.beq_cont.558488
.beq_else.558487:
	sll	$r6, $r3, 1
	sw	$r3, -40($r29)
	bne	$r5, $r4, .beq_else.558493
	addi	$r2, $r0, 0
	j	.beq_cont.558494
.beq_else.558493:
	sra	$r7, $r5, 1
	sll	$r8, $r7, 1
	subu	$r5, $r5, $r8
	bne	$r5, $r4, .beq_else.558495
	sll	$r4, $r6, 1
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.558496
.beq_else.558495:
	sll	$r4, $r6, 1
	sw	$r6, -44($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
.beq_cont.558496:
.beq_cont.558494:
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
.beq_cont.558488:
.beq_cont.558486:
	j	.beq_cont.558484
.beq_else.558483:
	sll	$r5, $r3, 1
	sw	$r3, -48($r29)
	bne	$r6, $r4, .beq_else.558497
	addi	$r2, $r0, 0
	j	.beq_cont.558498
.beq_else.558497:
	sra	$r7, $r6, 1
	sll	$r8, $r7, 1
	subu	$r6, $r6, $r8
	bne	$r6, $r4, .beq_else.558499
	sll	$r5, $r5, 1
	bne	$r7, $r4, .beq_else.558501
	addi	$r2, $r0, 0
	j	.beq_cont.558502
.beq_else.558501:
	sra	$r6, $r7, 1
	sll	$r8, $r6, 1
	subu	$r7, $r7, $r8
	bne	$r7, $r4, .beq_else.558503
	sll	$r4, $r5, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	j	.beq_cont.558504
.beq_else.558503:
	sll	$r4, $r5, 1
	sw	$r5, -52($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
.beq_cont.558504:
.beq_cont.558502:
	j	.beq_cont.558500
.beq_else.558499:
	sll	$r6, $r5, 1
	sw	$r5, -56($r29)
	bne	$r7, $r4, .beq_else.558505
	addi	$r2, $r0, 0
	j	.beq_cont.558506
.beq_else.558505:
	sra	$r8, $r7, 1
	sll	$r9, $r8, 1
	subu	$r7, $r7, $r9
	bne	$r7, $r4, .beq_else.558507
	sll	$r4, $r6, 1
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	j	.beq_cont.558508
.beq_else.558507:
	sll	$r4, $r6, 1
	sw	$r6, -60($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	addu	$r2, $r2, $r3
.beq_cont.558508:
.beq_cont.558506:
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
.beq_cont.558500:
.beq_cont.558498:
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
.beq_cont.558484:
.beq_cont.558482:
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
	jr	$r31
.div_binary_search.2848:
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
	bgt	$r8, $r3, .ble_else.558509
	bne	$r3, $r8, .beq_else.558511
	addi	$r2, $r0, 0
	j	.beq_cont.558512
.beq_else.558511:
	sra	$r9, $r3, 1
	sll	$r10, $r9, 1
	subu	$r10, $r3, $r10
	bne	$r10, $r8, .beq_else.558513
	sll	$r10, $r6, 1
	bne	$r9, $r8, .beq_else.558515
	addi	$r2, $r0, 0
	j	.beq_cont.558516
.beq_else.558515:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558517
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	j	.beq_cont.558518
.beq_else.558517:
	sll	$r9, $r10, 1
	sw	$r10, -32($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lw	$r3, -32($r29)
	addu	$r2, $r2, $r3
.beq_cont.558518:
.beq_cont.558516:
	j	.beq_cont.558514
.beq_else.558513:
	sll	$r10, $r6, 1
	bne	$r9, $r8, .beq_else.558519
	addi	$r2, $r0, 0
	j	.beq_cont.558520
.beq_else.558519:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558521
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	j	.beq_cont.558522
.beq_else.558521:
	sll	$r9, $r10, 1
	sw	$r10, -36($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
.beq_cont.558522:
.beq_cont.558520:
	lw	$r5, -12($r29)
	addu	$r2, $r2, $r5
.beq_cont.558514:
.beq_cont.558512:
	j	.ble_cont.558510
.ble_else.558509:
	subu	$r9, $r0, $r6
	subu	$r10, $r0, $r3
	bne	$r10, $r8, .beq_else.558523
	addi	$r2, $r0, 0
	j	.beq_cont.558524
.beq_else.558523:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558525
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558527
	addi	$r2, $r0, 0
	j	.beq_cont.558528
.beq_else.558527:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558529
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	j	.beq_cont.558530
.beq_else.558529:
	sll	$r11, $r9, 1
	sw	$r9, -40($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
.beq_cont.558530:
.beq_cont.558528:
	j	.beq_cont.558526
.beq_else.558525:
	sll	$r10, $r9, 1
	sw	$r9, -44($r29)
	bne	$r11, $r8, .beq_else.558531
	addi	$r2, $r0, 0
	j	.beq_cont.558532
.beq_else.558531:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558533
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	j	.beq_cont.558534
.beq_else.558533:
	sll	$r11, $r10, 1
	sw	$r10, -48($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
.beq_cont.558534:
.beq_cont.558532:
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
.beq_cont.558526:
.beq_cont.558524:
.ble_cont.558510:
	lw	$r4, -24($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558535
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558535:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558536
	bne	$r2, $r3, .beq_else.558537
	lw	$r2, -12($r29)
	jr	$r31
.beq_else.558537:
	lw	$r5, -12($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -52($r29)
	bgt	$r8, $r7, .ble_else.558538
	bne	$r7, $r8, .beq_else.558540
	addi	$r2, $r0, 0
	j	.beq_cont.558541
.beq_else.558540:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558542
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558544
	addi	$r2, $r0, 0
	j	.beq_cont.558545
.beq_else.558544:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558546
	sll	$r9, $r10, 1
	bne	$r11, $r8, .beq_else.558548
	addi	$r2, $r0, 0
	j	.beq_cont.558549
.beq_else.558548:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558550
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	j	.beq_cont.558551
.beq_else.558550:
	sll	$r11, $r9, 1
	sw	$r9, -56($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
.beq_cont.558551:
.beq_cont.558549:
	j	.beq_cont.558547
.beq_else.558546:
	sll	$r9, $r10, 1
	sw	$r10, -60($r29)
	bne	$r11, $r8, .beq_else.558552
	addi	$r2, $r0, 0
	j	.beq_cont.558553
.beq_else.558552:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558554
	sll	$r9, $r9, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	j	.beq_cont.558555
.beq_else.558554:
	sll	$r11, $r9, 1
	sw	$r9, -64($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	addu	$r2, $r2, $r3
.beq_cont.558555:
.beq_cont.558553:
	lw	$r3, -60($r29)
	addu	$r2, $r2, $r3
.beq_cont.558547:
.beq_cont.558545:
	j	.beq_cont.558543
.beq_else.558542:
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558556
	addi	$r2, $r0, 0
	j	.beq_cont.558557
.beq_else.558556:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558558
	sll	$r9, $r10, 1
	bne	$r11, $r8, .beq_else.558560
	addi	$r2, $r0, 0
	j	.beq_cont.558561
.beq_else.558560:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558562
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	j	.beq_cont.558563
.beq_else.558562:
	sll	$r11, $r9, 1
	sw	$r9, -68($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -68($r29)
	addu	$r2, $r2, $r3
.beq_cont.558563:
.beq_cont.558561:
	j	.beq_cont.558559
.beq_else.558558:
	sll	$r9, $r10, 1
	sw	$r10, -72($r29)
	bne	$r11, $r8, .beq_else.558564
	addi	$r2, $r0, 0
	j	.beq_cont.558565
.beq_else.558564:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558566
	sll	$r9, $r9, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	j	.beq_cont.558567
.beq_else.558566:
	sll	$r11, $r9, 1
	sw	$r9, -76($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	addu	$r2, $r2, $r3
.beq_cont.558567:
.beq_cont.558565:
	lw	$r3, -72($r29)
	addu	$r2, $r2, $r3
.beq_cont.558559:
.beq_cont.558557:
	lw	$r5, -52($r29)
	addu	$r2, $r2, $r5
.beq_cont.558543:
.beq_cont.558541:
	j	.ble_cont.558539
.ble_else.558538:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558568
	addi	$r2, $r0, 0
	j	.beq_cont.558569
.beq_else.558568:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558570
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558572
	addi	$r2, $r0, 0
	j	.beq_cont.558573
.beq_else.558572:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558574
	sll	$r9, $r9, 1
	bne	$r10, $r8, .beq_else.558576
	addi	$r2, $r0, 0
	j	.beq_cont.558577
.beq_else.558576:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558578
	sll	$r9, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	j	.beq_cont.558579
.beq_else.558578:
	sll	$r10, $r9, 1
	sw	$r9, -80($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -80($r29)
	addu	$r2, $r2, $r3
.beq_cont.558579:
.beq_cont.558577:
	j	.beq_cont.558575
.beq_else.558574:
	sll	$r11, $r9, 1
	sw	$r9, -84($r29)
	bne	$r10, $r8, .beq_else.558580
	addi	$r2, $r0, 0
	j	.beq_cont.558581
.beq_else.558580:
	sra	$r12, $r10, 1
	sll	$r13, $r12, 1
	subu	$r10, $r10, $r13
	bne	$r10, $r8, .beq_else.558582
	sll	$r10, $r11, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	j	.beq_cont.558583
.beq_else.558582:
	sll	$r10, $r11, 1
	sw	$r11, -88($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	addu	$r2, $r2, $r3
.beq_cont.558583:
.beq_cont.558581:
	lw	$r3, -84($r29)
	addu	$r2, $r2, $r3
.beq_cont.558575:
.beq_cont.558573:
	j	.beq_cont.558571
.beq_else.558570:
	sll	$r10, $r9, 1
	sw	$r9, -92($r29)
	bne	$r11, $r8, .beq_else.558584
	addi	$r2, $r0, 0
	j	.beq_cont.558585
.beq_else.558584:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558586
	sll	$r10, $r10, 1
	bne	$r12, $r8, .beq_else.558588
	addi	$r2, $r0, 0
	j	.beq_cont.558589
.beq_else.558588:
	sra	$r11, $r12, 1
	sll	$r13, $r11, 1
	subu	$r12, $r12, $r13
	bne	$r12, $r8, .beq_else.558590
	sll	$r10, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	j	.beq_cont.558591
.beq_else.558590:
	sll	$r12, $r10, 1
	sw	$r10, -96($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	addu	$r2, $r2, $r3
.beq_cont.558591:
.beq_cont.558589:
	j	.beq_cont.558587
.beq_else.558586:
	sll	$r11, $r10, 1
	sw	$r10, -100($r29)
	bne	$r12, $r8, .beq_else.558592
	addi	$r2, $r0, 0
	j	.beq_cont.558593
.beq_else.558592:
	sra	$r13, $r12, 1
	sll	$r14, $r13, 1
	subu	$r12, $r12, $r14
	bne	$r12, $r8, .beq_else.558594
	sll	$r11, $r11, 1
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	j	.beq_cont.558595
.beq_else.558594:
	sll	$r12, $r11, 1
	sw	$r11, -104($r29)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -104($r29)
	addu	$r2, $r2, $r3
.beq_cont.558595:
.beq_cont.558593:
	lw	$r3, -100($r29)
	addu	$r2, $r2, $r3
.beq_cont.558587:
.beq_cont.558585:
	lw	$r3, -92($r29)
	addu	$r2, $r2, $r3
.beq_cont.558571:
.beq_cont.558569:
.ble_cont.558539:
	lw	$r4, -24($r29)
	lw	$r5, -12($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558596
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558596:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558597
	bne	$r2, $r3, .beq_else.558598
	lw	$r2, -52($r29)
	jr	$r31
.beq_else.558598:
	lw	$r5, -52($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -108($r29)
	bgt	$r8, $r7, .ble_else.558599
	bne	$r7, $r8, .beq_else.558601
	addi	$r2, $r0, 0
	j	.beq_cont.558602
.beq_else.558601:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558603
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558605
	addi	$r2, $r0, 0
	j	.beq_cont.558606
.beq_else.558605:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558607
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	j	.beq_cont.558608
.beq_else.558607:
	sll	$r9, $r10, 1
	sw	$r10, -112($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -112($r29)
	addu	$r2, $r2, $r3
.beq_cont.558608:
.beq_cont.558606:
	j	.beq_cont.558604
.beq_else.558603:
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558609
	addi	$r2, $r0, 0
	j	.beq_cont.558610
.beq_else.558609:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558611
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	j	.beq_cont.558612
.beq_else.558611:
	sll	$r9, $r10, 1
	sw	$r10, -116($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	lw	$r3, -116($r29)
	addu	$r2, $r2, $r3
.beq_cont.558612:
.beq_cont.558610:
	lw	$r5, -108($r29)
	addu	$r2, $r2, $r5
.beq_cont.558604:
.beq_cont.558602:
	j	.ble_cont.558600
.ble_else.558599:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558613
	addi	$r2, $r0, 0
	j	.beq_cont.558614
.beq_else.558613:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558615
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558617
	addi	$r2, $r0, 0
	j	.beq_cont.558618
.beq_else.558617:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558619
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	j	.beq_cont.558620
.beq_else.558619:
	sll	$r11, $r9, 1
	sw	$r9, -120($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	addu	$r2, $r2, $r3
.beq_cont.558620:
.beq_cont.558618:
	j	.beq_cont.558616
.beq_else.558615:
	sll	$r10, $r9, 1
	sw	$r9, -124($r29)
	bne	$r11, $r8, .beq_else.558621
	addi	$r2, $r0, 0
	j	.beq_cont.558622
.beq_else.558621:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558623
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	j	.beq_cont.558624
.beq_else.558623:
	sll	$r11, $r10, 1
	sw	$r10, -128($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	addu	$r2, $r2, $r3
.beq_cont.558624:
.beq_cont.558622:
	lw	$r3, -124($r29)
	addu	$r2, $r2, $r3
.beq_cont.558616:
.beq_cont.558614:
.ble_cont.558600:
	lw	$r4, -24($r29)
	lw	$r5, -52($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558625
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558625:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558626
	bne	$r2, $r3, .beq_else.558627
	lw	$r2, -108($r29)
	jr	$r31
.beq_else.558627:
	lw	$r5, -108($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -132($r29)
	bgt	$r8, $r7, .ble_else.558628
	bne	$r7, $r8, .beq_else.558630
	addi	$r2, $r0, 0
	j	.beq_cont.558631
.beq_else.558630:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558632
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	j	.beq_cont.558633
.beq_else.558632:
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r5, -132($r29)
	addu	$r2, $r2, $r5
.beq_cont.558633:
.beq_cont.558631:
	j	.ble_cont.558629
.ble_else.558628:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558634
	addi	$r2, $r0, 0
	j	.beq_cont.558635
.beq_else.558634:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558636
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	j	.beq_cont.558637
.beq_else.558636:
	sll	$r8, $r9, 1
	sw	$r9, -136($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.558637:
.beq_cont.558635:
.ble_cont.558629:
	lw	$r4, -24($r29)
	lw	$r5, -108($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558638
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558638:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558639
	bne	$r2, $r3, .beq_else.558640
	lw	$r2, -132($r29)
	jr	$r31
.beq_else.558640:
	lw	$r2, -4($r29)
	lw	$r5, -132($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558639:
	lw	$r2, -4($r29)
	lw	$r4, -132($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558626:
	lw	$r2, -108($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -140($r29)
	bgt	$r8, $r7, .ble_else.558641
	bne	$r7, $r8, .beq_else.558643
	addi	$r2, $r0, 0
	j	.beq_cont.558644
.beq_else.558643:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558645
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	j	.beq_cont.558646
.beq_else.558645:
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r5, -140($r29)
	addu	$r2, $r2, $r5
.beq_cont.558646:
.beq_cont.558644:
	j	.ble_cont.558642
.ble_else.558641:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558647
	addi	$r2, $r0, 0
	j	.beq_cont.558648
.beq_else.558647:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558649
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	j	.beq_cont.558650
.beq_else.558649:
	sll	$r8, $r9, 1
	sw	$r9, -144($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	lw	$r3, -144($r29)
	addu	$r2, $r2, $r3
.beq_cont.558650:
.beq_cont.558648:
.ble_cont.558642:
	lw	$r4, -108($r29)
	lw	$r5, -52($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558651
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558651:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558652
	bne	$r2, $r3, .beq_else.558653
	lw	$r2, -140($r29)
	jr	$r31
.beq_else.558653:
	lw	$r2, -4($r29)
	lw	$r5, -140($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558652:
	lw	$r2, -4($r29)
	lw	$r4, -140($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558597:
	lw	$r2, -52($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -148($r29)
	bgt	$r8, $r7, .ble_else.558654
	bne	$r7, $r8, .beq_else.558656
	addi	$r2, $r0, 0
	j	.beq_cont.558657
.beq_else.558656:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558658
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558660
	addi	$r2, $r0, 0
	j	.beq_cont.558661
.beq_else.558660:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558662
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	j	.beq_cont.558663
.beq_else.558662:
	sll	$r9, $r10, 1
	sw	$r10, -152($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	lw	$r3, -152($r29)
	addu	$r2, $r2, $r3
.beq_cont.558663:
.beq_cont.558661:
	j	.beq_cont.558659
.beq_else.558658:
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558664
	addi	$r2, $r0, 0
	j	.beq_cont.558665
.beq_else.558664:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558666
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	j	.beq_cont.558667
.beq_else.558666:
	sll	$r9, $r10, 1
	sw	$r10, -156($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	lw	$r3, -156($r29)
	addu	$r2, $r2, $r3
.beq_cont.558667:
.beq_cont.558665:
	lw	$r5, -148($r29)
	addu	$r2, $r2, $r5
.beq_cont.558659:
.beq_cont.558657:
	j	.ble_cont.558655
.ble_else.558654:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558668
	addi	$r2, $r0, 0
	j	.beq_cont.558669
.beq_else.558668:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558670
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558672
	addi	$r2, $r0, 0
	j	.beq_cont.558673
.beq_else.558672:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558674
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	j	.beq_cont.558675
.beq_else.558674:
	sll	$r11, $r9, 1
	sw	$r9, -160($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	lw	$r3, -160($r29)
	addu	$r2, $r2, $r3
.beq_cont.558675:
.beq_cont.558673:
	j	.beq_cont.558671
.beq_else.558670:
	sll	$r10, $r9, 1
	sw	$r9, -164($r29)
	bne	$r11, $r8, .beq_else.558676
	addi	$r2, $r0, 0
	j	.beq_cont.558677
.beq_else.558676:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558678
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	j	.beq_cont.558679
.beq_else.558678:
	sll	$r11, $r10, 1
	sw	$r10, -168($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	addu	$r2, $r2, $r3
.beq_cont.558679:
.beq_cont.558677:
	lw	$r3, -164($r29)
	addu	$r2, $r2, $r3
.beq_cont.558671:
.beq_cont.558669:
.ble_cont.558655:
	lw	$r4, -52($r29)
	lw	$r5, -12($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558680
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558680:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558681
	bne	$r2, $r3, .beq_else.558682
	lw	$r2, -148($r29)
	jr	$r31
.beq_else.558682:
	lw	$r5, -148($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -172($r29)
	bgt	$r8, $r7, .ble_else.558683
	bne	$r7, $r8, .beq_else.558685
	addi	$r2, $r0, 0
	j	.beq_cont.558686
.beq_else.558685:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558687
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	j	.beq_cont.558688
.beq_else.558687:
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r5, -172($r29)
	addu	$r2, $r2, $r5
.beq_cont.558688:
.beq_cont.558686:
	j	.ble_cont.558684
.ble_else.558683:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558689
	addi	$r2, $r0, 0
	j	.beq_cont.558690
.beq_else.558689:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558691
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	j	.beq_cont.558692
.beq_else.558691:
	sll	$r8, $r9, 1
	sw	$r9, -176($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	lw	$r3, -176($r29)
	addu	$r2, $r2, $r3
.beq_cont.558692:
.beq_cont.558690:
.ble_cont.558684:
	lw	$r4, -52($r29)
	lw	$r5, -148($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558693
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558693:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558694
	bne	$r2, $r3, .beq_else.558695
	lw	$r2, -172($r29)
	jr	$r31
.beq_else.558695:
	lw	$r2, -4($r29)
	lw	$r5, -172($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558694:
	lw	$r2, -4($r29)
	lw	$r4, -172($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558681:
	lw	$r2, -148($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -180($r29)
	bgt	$r8, $r7, .ble_else.558696
	bne	$r7, $r8, .beq_else.558698
	addi	$r2, $r0, 0
	j	.beq_cont.558699
.beq_else.558698:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558700
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	j	.beq_cont.558701
.beq_else.558700:
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	lw	$r5, -180($r29)
	addu	$r2, $r2, $r5
.beq_cont.558701:
.beq_cont.558699:
	j	.ble_cont.558697
.ble_else.558696:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558702
	addi	$r2, $r0, 0
	j	.beq_cont.558703
.beq_else.558702:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558704
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	j	.beq_cont.558705
.beq_else.558704:
	sll	$r8, $r9, 1
	sw	$r9, -184($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	addu	$r2, $r2, $r3
.beq_cont.558705:
.beq_cont.558703:
.ble_cont.558697:
	lw	$r4, -148($r29)
	lw	$r5, -12($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558706
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558706:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558707
	bne	$r2, $r3, .beq_else.558708
	lw	$r2, -180($r29)
	jr	$r31
.beq_else.558708:
	lw	$r2, -4($r29)
	lw	$r5, -180($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558707:
	lw	$r2, -4($r29)
	lw	$r4, -180($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558536:
	lw	$r2, -12($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -188($r29)
	bgt	$r8, $r7, .ble_else.558709
	bne	$r7, $r8, .beq_else.558711
	addi	$r2, $r0, 0
	j	.beq_cont.558712
.beq_else.558711:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558713
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558715
	addi	$r2, $r0, 0
	j	.beq_cont.558716
.beq_else.558715:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558717
	sll	$r9, $r10, 1
	bne	$r11, $r8, .beq_else.558719
	addi	$r2, $r0, 0
	j	.beq_cont.558720
.beq_else.558719:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558721
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	j	.beq_cont.558722
.beq_else.558721:
	sll	$r11, $r9, 1
	sw	$r9, -192($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	lw	$r3, -192($r29)
	addu	$r2, $r2, $r3
.beq_cont.558722:
.beq_cont.558720:
	j	.beq_cont.558718
.beq_else.558717:
	sll	$r9, $r10, 1
	sw	$r10, -196($r29)
	bne	$r11, $r8, .beq_else.558723
	addi	$r2, $r0, 0
	j	.beq_cont.558724
.beq_else.558723:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558725
	sll	$r9, $r9, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	j	.beq_cont.558726
.beq_else.558725:
	sll	$r11, $r9, 1
	sw	$r9, -200($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r3, -200($r29)
	addu	$r2, $r2, $r3
.beq_cont.558726:
.beq_cont.558724:
	lw	$r3, -196($r29)
	addu	$r2, $r2, $r3
.beq_cont.558718:
.beq_cont.558716:
	j	.beq_cont.558714
.beq_else.558713:
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558727
	addi	$r2, $r0, 0
	j	.beq_cont.558728
.beq_else.558727:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558729
	sll	$r9, $r10, 1
	bne	$r11, $r8, .beq_else.558731
	addi	$r2, $r0, 0
	j	.beq_cont.558732
.beq_else.558731:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558733
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	j	.beq_cont.558734
.beq_else.558733:
	sll	$r11, $r9, 1
	sw	$r9, -204($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	lw	$r3, -204($r29)
	addu	$r2, $r2, $r3
.beq_cont.558734:
.beq_cont.558732:
	j	.beq_cont.558730
.beq_else.558729:
	sll	$r9, $r10, 1
	sw	$r10, -208($r29)
	bne	$r11, $r8, .beq_else.558735
	addi	$r2, $r0, 0
	j	.beq_cont.558736
.beq_else.558735:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558737
	sll	$r9, $r9, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	j	.beq_cont.558738
.beq_else.558737:
	sll	$r11, $r9, 1
	sw	$r9, -212($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	addu	$r2, $r2, $r3
.beq_cont.558738:
.beq_cont.558736:
	lw	$r3, -208($r29)
	addu	$r2, $r2, $r3
.beq_cont.558730:
.beq_cont.558728:
	lw	$r5, -188($r29)
	addu	$r2, $r2, $r5
.beq_cont.558714:
.beq_cont.558712:
	j	.ble_cont.558710
.ble_else.558709:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558739
	addi	$r2, $r0, 0
	j	.beq_cont.558740
.beq_else.558739:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558741
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558743
	addi	$r2, $r0, 0
	j	.beq_cont.558744
.beq_else.558743:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558745
	sll	$r9, $r9, 1
	bne	$r10, $r8, .beq_else.558747
	addi	$r2, $r0, 0
	j	.beq_cont.558748
.beq_else.558747:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558749
	sll	$r9, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	j	.beq_cont.558750
.beq_else.558749:
	sll	$r10, $r9, 1
	sw	$r9, -216($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -220($r29)	! calldir
	addi	$r29, $r29, -220	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 220	! calldir
	lw	$r31, -220($r29)	! calldir
	lw	$r3, -216($r29)
	addu	$r2, $r2, $r3
.beq_cont.558750:
.beq_cont.558748:
	j	.beq_cont.558746
.beq_else.558745:
	sll	$r11, $r9, 1
	sw	$r9, -220($r29)
	bne	$r10, $r8, .beq_else.558751
	addi	$r2, $r0, 0
	j	.beq_cont.558752
.beq_else.558751:
	sra	$r12, $r10, 1
	sll	$r13, $r12, 1
	subu	$r10, $r10, $r13
	bne	$r10, $r8, .beq_else.558753
	sll	$r10, $r11, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	j	.beq_cont.558754
.beq_else.558753:
	sll	$r10, $r11, 1
	sw	$r11, -224($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -228($r29)	! calldir
	addi	$r29, $r29, -228	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 228	! calldir
	lw	$r31, -228($r29)	! calldir
	lw	$r3, -224($r29)
	addu	$r2, $r2, $r3
.beq_cont.558754:
.beq_cont.558752:
	lw	$r3, -220($r29)
	addu	$r2, $r2, $r3
.beq_cont.558746:
.beq_cont.558744:
	j	.beq_cont.558742
.beq_else.558741:
	sll	$r10, $r9, 1
	sw	$r9, -228($r29)
	bne	$r11, $r8, .beq_else.558755
	addi	$r2, $r0, 0
	j	.beq_cont.558756
.beq_else.558755:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558757
	sll	$r10, $r10, 1
	bne	$r12, $r8, .beq_else.558759
	addi	$r2, $r0, 0
	j	.beq_cont.558760
.beq_else.558759:
	sra	$r11, $r12, 1
	sll	$r13, $r11, 1
	subu	$r12, $r12, $r13
	bne	$r12, $r8, .beq_else.558761
	sll	$r10, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -232($r29)	! calldir
	addi	$r29, $r29, -232	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 232	! calldir
	lw	$r31, -232($r29)	! calldir
	j	.beq_cont.558762
.beq_else.558761:
	sll	$r12, $r10, 1
	sw	$r10, -232($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -236($r29)	! calldir
	addi	$r29, $r29, -236	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 236	! calldir
	lw	$r31, -236($r29)	! calldir
	lw	$r3, -232($r29)
	addu	$r2, $r2, $r3
.beq_cont.558762:
.beq_cont.558760:
	j	.beq_cont.558758
.beq_else.558757:
	sll	$r11, $r10, 1
	sw	$r10, -236($r29)
	bne	$r12, $r8, .beq_else.558763
	addi	$r2, $r0, 0
	j	.beq_cont.558764
.beq_else.558763:
	sra	$r13, $r12, 1
	sll	$r14, $r13, 1
	subu	$r12, $r12, $r14
	bne	$r12, $r8, .beq_else.558765
	sll	$r11, $r11, 1
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -240($r29)	! calldir
	addi	$r29, $r29, -240	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 240	! calldir
	lw	$r31, -240($r29)	! calldir
	j	.beq_cont.558766
.beq_else.558765:
	sll	$r12, $r11, 1
	sw	$r11, -240($r29)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -244($r29)	! calldir
	addi	$r29, $r29, -244	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 244	! calldir
	lw	$r31, -244($r29)	! calldir
	lw	$r3, -240($r29)
	addu	$r2, $r2, $r3
.beq_cont.558766:
.beq_cont.558764:
	lw	$r3, -236($r29)
	addu	$r2, $r2, $r3
.beq_cont.558758:
.beq_cont.558756:
	lw	$r3, -228($r29)
	addu	$r2, $r2, $r3
.beq_cont.558742:
.beq_cont.558740:
.ble_cont.558710:
	lw	$r4, -12($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558767
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558767:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558768
	bne	$r2, $r3, .beq_else.558769
	lw	$r2, -188($r29)
	jr	$r31
.beq_else.558769:
	lw	$r5, -188($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -244($r29)
	bgt	$r8, $r7, .ble_else.558770
	bne	$r7, $r8, .beq_else.558772
	addi	$r2, $r0, 0
	j	.beq_cont.558773
.beq_else.558772:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558774
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558776
	addi	$r2, $r0, 0
	j	.beq_cont.558777
.beq_else.558776:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558778
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -248($r29)	! calldir
	addi	$r29, $r29, -248	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 248	! calldir
	lw	$r31, -248($r29)	! calldir
	j	.beq_cont.558779
.beq_else.558778:
	sll	$r9, $r10, 1
	sw	$r10, -248($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	addu	$r2, $r2, $r3
.beq_cont.558779:
.beq_cont.558777:
	j	.beq_cont.558775
.beq_else.558774:
	sll	$r10, $r2, 1
	bne	$r9, $r8, .beq_else.558780
	addi	$r2, $r0, 0
	j	.beq_cont.558781
.beq_else.558780:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558782
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	j	.beq_cont.558783
.beq_else.558782:
	sll	$r9, $r10, 1
	sw	$r10, -252($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -256($r29)	! calldir
	addi	$r29, $r29, -256	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 256	! calldir
	lw	$r31, -256($r29)	! calldir
	lw	$r3, -252($r29)
	addu	$r2, $r2, $r3
.beq_cont.558783:
.beq_cont.558781:
	lw	$r5, -244($r29)
	addu	$r2, $r2, $r5
.beq_cont.558775:
.beq_cont.558773:
	j	.ble_cont.558771
.ble_else.558770:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558784
	addi	$r2, $r0, 0
	j	.beq_cont.558785
.beq_else.558784:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558786
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558788
	addi	$r2, $r0, 0
	j	.beq_cont.558789
.beq_else.558788:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558790
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -256($r29)	! calldir
	addi	$r29, $r29, -256	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 256	! calldir
	lw	$r31, -256($r29)	! calldir
	j	.beq_cont.558791
.beq_else.558790:
	sll	$r11, $r9, 1
	sw	$r9, -256($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -260($r29)	! calldir
	addi	$r29, $r29, -260	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 260	! calldir
	lw	$r31, -260($r29)	! calldir
	lw	$r3, -256($r29)
	addu	$r2, $r2, $r3
.beq_cont.558791:
.beq_cont.558789:
	j	.beq_cont.558787
.beq_else.558786:
	sll	$r10, $r9, 1
	sw	$r9, -260($r29)
	bne	$r11, $r8, .beq_else.558792
	addi	$r2, $r0, 0
	j	.beq_cont.558793
.beq_else.558792:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558794
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	j	.beq_cont.558795
.beq_else.558794:
	sll	$r11, $r10, 1
	sw	$r10, -264($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	addu	$r2, $r2, $r3
.beq_cont.558795:
.beq_cont.558793:
	lw	$r3, -260($r29)
	addu	$r2, $r2, $r3
.beq_cont.558787:
.beq_cont.558785:
.ble_cont.558771:
	lw	$r4, -12($r29)
	lw	$r5, -188($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558796
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558796:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558797
	bne	$r2, $r3, .beq_else.558798
	lw	$r2, -244($r29)
	jr	$r31
.beq_else.558798:
	lw	$r5, -244($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -268($r29)
	bgt	$r8, $r7, .ble_else.558799
	bne	$r7, $r8, .beq_else.558801
	addi	$r2, $r0, 0
	j	.beq_cont.558802
.beq_else.558801:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558803
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	j	.beq_cont.558804
.beq_else.558803:
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	lw	$r5, -268($r29)
	addu	$r2, $r2, $r5
.beq_cont.558804:
.beq_cont.558802:
	j	.ble_cont.558800
.ble_else.558799:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558805
	addi	$r2, $r0, 0
	j	.beq_cont.558806
.beq_else.558805:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558807
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	j	.beq_cont.558808
.beq_else.558807:
	sll	$r8, $r9, 1
	sw	$r9, -272($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	lw	$r3, -272($r29)
	addu	$r2, $r2, $r3
.beq_cont.558808:
.beq_cont.558806:
.ble_cont.558800:
	lw	$r4, -12($r29)
	lw	$r5, -244($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558809
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558809:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558810
	bne	$r2, $r3, .beq_else.558811
	lw	$r2, -268($r29)
	jr	$r31
.beq_else.558811:
	lw	$r2, -4($r29)
	lw	$r5, -268($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558810:
	lw	$r2, -4($r29)
	lw	$r4, -268($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558797:
	lw	$r2, -244($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -276($r29)
	bgt	$r8, $r7, .ble_else.558812
	bne	$r7, $r8, .beq_else.558814
	addi	$r2, $r0, 0
	j	.beq_cont.558815
.beq_else.558814:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558816
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	j	.beq_cont.558817
.beq_else.558816:
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	lw	$r5, -276($r29)
	addu	$r2, $r2, $r5
.beq_cont.558817:
.beq_cont.558815:
	j	.ble_cont.558813
.ble_else.558812:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558818
	addi	$r2, $r0, 0
	j	.beq_cont.558819
.beq_else.558818:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558820
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	j	.beq_cont.558821
.beq_else.558820:
	sll	$r8, $r9, 1
	sw	$r9, -280($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -284($r29)	! calldir
	addi	$r29, $r29, -284	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 284	! calldir
	lw	$r31, -284($r29)	! calldir
	lw	$r3, -280($r29)
	addu	$r2, $r2, $r3
.beq_cont.558821:
.beq_cont.558819:
.ble_cont.558813:
	lw	$r4, -244($r29)
	lw	$r5, -188($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558822
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558822:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558823
	bne	$r2, $r3, .beq_else.558824
	lw	$r2, -276($r29)
	jr	$r31
.beq_else.558824:
	lw	$r2, -4($r29)
	lw	$r5, -276($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558823:
	lw	$r2, -4($r29)
	lw	$r4, -276($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558768:
	lw	$r2, -188($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -284($r29)
	bgt	$r8, $r7, .ble_else.558825
	bne	$r7, $r8, .beq_else.558827
	addi	$r2, $r0, 0
	j	.beq_cont.558828
.beq_else.558827:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558829
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558831
	addi	$r2, $r0, 0
	j	.beq_cont.558832
.beq_else.558831:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558833
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -288($r29)	! calldir
	addi	$r29, $r29, -288	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 288	! calldir
	lw	$r31, -288($r29)	! calldir
	j	.beq_cont.558834
.beq_else.558833:
	sll	$r9, $r10, 1
	sw	$r10, -288($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -292($r29)	! calldir
	addi	$r29, $r29, -292	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 292	! calldir
	lw	$r31, -292($r29)	! calldir
	lw	$r3, -288($r29)
	addu	$r2, $r2, $r3
.beq_cont.558834:
.beq_cont.558832:
	j	.beq_cont.558830
.beq_else.558829:
	sll	$r10, $r4, 1
	bne	$r9, $r8, .beq_else.558835
	addi	$r2, $r0, 0
	j	.beq_cont.558836
.beq_else.558835:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r8, .beq_else.558837
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -292($r29)	! calldir
	addi	$r29, $r29, -292	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 292	! calldir
	lw	$r31, -292($r29)	! calldir
	j	.beq_cont.558838
.beq_else.558837:
	sll	$r9, $r10, 1
	sw	$r10, -292($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
	lw	$r3, -292($r29)
	addu	$r2, $r2, $r3
.beq_cont.558838:
.beq_cont.558836:
	lw	$r5, -284($r29)
	addu	$r2, $r2, $r5
.beq_cont.558830:
.beq_cont.558828:
	j	.ble_cont.558826
.ble_else.558825:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558839
	addi	$r2, $r0, 0
	j	.beq_cont.558840
.beq_else.558839:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558841
	sll	$r9, $r9, 1
	bne	$r11, $r8, .beq_else.558843
	addi	$r2, $r0, 0
	j	.beq_cont.558844
.beq_else.558843:
	sra	$r10, $r11, 1
	sll	$r12, $r10, 1
	subu	$r11, $r11, $r12
	bne	$r11, $r8, .beq_else.558845
	sll	$r9, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
	j	.beq_cont.558846
.beq_else.558845:
	sll	$r11, $r9, 1
	sw	$r9, -296($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -300($r29)	! calldir
	addi	$r29, $r29, -300	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 300	! calldir
	lw	$r31, -300($r29)	! calldir
	lw	$r3, -296($r29)
	addu	$r2, $r2, $r3
.beq_cont.558846:
.beq_cont.558844:
	j	.beq_cont.558842
.beq_else.558841:
	sll	$r10, $r9, 1
	sw	$r9, -300($r29)
	bne	$r11, $r8, .beq_else.558847
	addi	$r2, $r0, 0
	j	.beq_cont.558848
.beq_else.558847:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r8, .beq_else.558849
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -304($r29)	! calldir
	addi	$r29, $r29, -304	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 304	! calldir
	lw	$r31, -304($r29)	! calldir
	j	.beq_cont.558850
.beq_else.558849:
	sll	$r11, $r10, 1
	sw	$r10, -304($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -308($r29)	! calldir
	addi	$r29, $r29, -308	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 308	! calldir
	lw	$r31, -308($r29)	! calldir
	lw	$r3, -304($r29)
	addu	$r2, $r2, $r3
.beq_cont.558850:
.beq_cont.558848:
	lw	$r3, -300($r29)
	addu	$r2, $r2, $r3
.beq_cont.558842:
.beq_cont.558840:
.ble_cont.558826:
	lw	$r4, -188($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558851
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558851:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558852
	bne	$r2, $r3, .beq_else.558853
	lw	$r2, -284($r29)
	jr	$r31
.beq_else.558853:
	lw	$r5, -284($r29)
	addu	$r2, $r4, $r5
	sra	$r2, $r2, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r2, -308($r29)
	bgt	$r8, $r7, .ble_else.558854
	bne	$r7, $r8, .beq_else.558856
	addi	$r2, $r0, 0
	j	.beq_cont.558857
.beq_else.558856:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558858
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -312($r29)	! calldir
	addi	$r29, $r29, -312	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 312	! calldir
	lw	$r31, -312($r29)	! calldir
	j	.beq_cont.558859
.beq_else.558858:
	sll	$r8, $r2, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -312($r29)	! calldir
	addi	$r29, $r29, -312	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 312	! calldir
	lw	$r31, -312($r29)	! calldir
	lw	$r5, -308($r29)
	addu	$r2, $r2, $r5
.beq_cont.558859:
.beq_cont.558857:
	j	.ble_cont.558855
.ble_else.558854:
	subu	$r9, $r0, $r2
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558860
	addi	$r2, $r0, 0
	j	.beq_cont.558861
.beq_else.558860:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558862
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -312($r29)	! calldir
	addi	$r29, $r29, -312	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 312	! calldir
	lw	$r31, -312($r29)	! calldir
	j	.beq_cont.558863
.beq_else.558862:
	sll	$r8, $r9, 1
	sw	$r9, -312($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -312($r29)
	addu	$r2, $r2, $r3
.beq_cont.558863:
.beq_cont.558861:
.ble_cont.558855:
	lw	$r4, -188($r29)
	lw	$r5, -284($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558864
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558864:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558865
	bne	$r2, $r3, .beq_else.558866
	lw	$r2, -308($r29)
	jr	$r31
.beq_else.558866:
	lw	$r2, -4($r29)
	lw	$r5, -308($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558865:
	lw	$r2, -4($r29)
	lw	$r4, -308($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558852:
	lw	$r2, -284($r29)
	addu	$r4, $r2, $r5
	sra	$r4, $r4, 1
	lw	$r7, -4($r29)
	lw	$r8, -8($r29)
	sw	$r4, -316($r29)
	bgt	$r8, $r7, .ble_else.558867
	bne	$r7, $r8, .beq_else.558869
	addi	$r2, $r0, 0
	j	.beq_cont.558870
.beq_else.558869:
	sra	$r9, $r7, 1
	sll	$r10, $r9, 1
	subu	$r10, $r7, $r10
	bne	$r10, $r8, .beq_else.558871
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -320($r29)	! calldir
	addi	$r29, $r29, -320	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 320	! calldir
	lw	$r31, -320($r29)	! calldir
	j	.beq_cont.558872
.beq_else.558871:
	sll	$r8, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -320($r29)	! calldir
	addi	$r29, $r29, -320	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 320	! calldir
	lw	$r31, -320($r29)	! calldir
	lw	$r5, -316($r29)
	addu	$r2, $r2, $r5
.beq_cont.558872:
.beq_cont.558870:
	j	.ble_cont.558868
.ble_else.558867:
	subu	$r9, $r0, $r4
	subu	$r10, $r0, $r7
	bne	$r10, $r8, .beq_else.558873
	addi	$r2, $r0, 0
	j	.beq_cont.558874
.beq_else.558873:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558875
	sll	$r8, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -320($r29)	! calldir
	addi	$r29, $r29, -320	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 320	! calldir
	lw	$r31, -320($r29)	! calldir
	j	.beq_cont.558876
.beq_else.558875:
	sll	$r8, $r9, 1
	sw	$r9, -320($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -324($r29)	! calldir
	addi	$r29, $r29, -324	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 324	! calldir
	lw	$r31, -324($r29)	! calldir
	lw	$r3, -320($r29)
	addu	$r2, $r2, $r3
.beq_cont.558876:
.beq_cont.558874:
.ble_cont.558868:
	lw	$r4, -284($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -20($r29)
	bgt	$r3, $r6, .ble_else.558877
	addi	$r2, $r4, 0
	jr	$r31
.ble_else.558877:
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.558878
	bne	$r2, $r3, .beq_else.558879
	lw	$r2, -316($r29)
	jr	$r31
.beq_else.558879:
	lw	$r2, -4($r29)
	lw	$r5, -316($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.ble_else.558878:
	lw	$r2, -4($r29)
	lw	$r4, -316($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.div_binary_search.2848	! calldir-tail
.print_int.2860:
	addi	$r3, $r0, 0
	bgt	$r3, $r2, .ble_else.558880
	lui	$r4, 1525
	ori	$r4, $r4, 57600
	addi	$r5, $r0, 3
	addi	$r6, $r0, 1
	sra	$r7, $r5, 1
	sra	$r8, $r4, 1
	sll	$r9, $r8, 1
	subu	$r9, $r4, $r9
	sw	$r5, -4($r29)
	sw	$r4, -8($r29)
	sw	$r6, -12($r29)
	sw	$r8, -16($r29)
	sw	$r3, -20($r29)
	sw	$r9, -24($r29)
	sw	$r7, -28($r29)
	sw	$r2, -32($r29)
	bne	$r9, $r3, .beq_else.558881
	sll	$r10, $r7, 1
	bne	$r8, $r3, .beq_else.558883
	addi	$r2, $r0, 0
	j	.beq_cont.558884
.beq_else.558883:
	sra	$r11, $r8, 1
	sll	$r12, $r11, 1
	subu	$r12, $r8, $r12
	bne	$r12, $r3, .beq_else.558885
	sll	$r10, $r10, 1
	bne	$r11, $r3, .beq_else.558887
	addi	$r2, $r0, 0
	j	.beq_cont.558888
.beq_else.558887:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r3, .beq_else.558889
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	j	.beq_cont.558890
.beq_else.558889:
	sll	$r11, $r10, 1
	sw	$r10, -36($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	addu	$r2, $r2, $r3
.beq_cont.558890:
.beq_cont.558888:
	j	.beq_cont.558886
.beq_else.558885:
	sll	$r12, $r10, 1
	sw	$r10, -40($r29)
	bne	$r11, $r3, .beq_else.558891
	addi	$r2, $r0, 0
	j	.beq_cont.558892
.beq_else.558891:
	sra	$r13, $r11, 1
	sll	$r14, $r13, 1
	subu	$r11, $r11, $r14
	bne	$r11, $r3, .beq_else.558893
	sll	$r11, $r12, 1
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.558894
.beq_else.558893:
	sll	$r11, $r12, 1
	sw	$r12, -44($r29)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	addu	$r2, $r2, $r3
.beq_cont.558894:
.beq_cont.558892:
	lw	$r3, -40($r29)
	addu	$r2, $r2, $r3
.beq_cont.558886:
.beq_cont.558884:
	j	.beq_cont.558882
.beq_else.558881:
	sll	$r10, $r7, 1
	bne	$r8, $r3, .beq_else.558895
	addi	$r2, $r0, 0
	j	.beq_cont.558896
.beq_else.558895:
	sra	$r11, $r8, 1
	sll	$r12, $r11, 1
	subu	$r12, $r8, $r12
	bne	$r12, $r3, .beq_else.558897
	sll	$r10, $r10, 1
	bne	$r11, $r3, .beq_else.558899
	addi	$r2, $r0, 0
	j	.beq_cont.558900
.beq_else.558899:
	sra	$r12, $r11, 1
	sll	$r13, $r12, 1
	subu	$r11, $r11, $r13
	bne	$r11, $r3, .beq_else.558901
	sll	$r10, $r10, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	j	.beq_cont.558902
.beq_else.558901:
	sll	$r11, $r10, 1
	sw	$r10, -48($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	addu	$r2, $r2, $r3
.beq_cont.558902:
.beq_cont.558900:
	j	.beq_cont.558898
.beq_else.558897:
	sll	$r12, $r10, 1
	sw	$r10, -52($r29)
	bne	$r11, $r3, .beq_else.558903
	addi	$r2, $r0, 0
	j	.beq_cont.558904
.beq_else.558903:
	sra	$r13, $r11, 1
	sll	$r14, $r13, 1
	subu	$r11, $r11, $r14
	bne	$r11, $r3, .beq_else.558905
	sll	$r11, $r12, 1
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	j	.beq_cont.558906
.beq_else.558905:
	sll	$r11, $r12, 1
	sw	$r12, -56($r29)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	addu	$r2, $r2, $r3
.beq_cont.558906:
.beq_cont.558904:
	lw	$r3, -52($r29)
	addu	$r2, $r2, $r3
.beq_cont.558898:
.beq_cont.558896:
	lw	$r3, -28($r29)
	addu	$r2, $r2, $r3
.beq_cont.558882:
	lw	$r3, -32($r29)
	bgt	$r3, $r2, .ble_else.558907
	bne	$r2, $r3, .beq_else.558909
	lw	$r2, -28($r29)
	j	.beq_cont.558910
.beq_else.558909:
	lw	$r2, -28($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -24($r29)
	sw	$r4, -60($r29)
	bne	$r6, $r5, .beq_else.558911
	sll	$r7, $r4, 1
	lw	$r8, -16($r29)
	bne	$r8, $r5, .beq_else.558913
	addi	$r2, $r0, 0
	j	.beq_cont.558914
.beq_else.558913:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.558915
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	j	.beq_cont.558916
.beq_else.558915:
	sll	$r10, $r7, 1
	sw	$r7, -64($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	addu	$r2, $r2, $r3
.beq_cont.558916:
.beq_cont.558914:
	j	.beq_cont.558912
.beq_else.558911:
	sll	$r7, $r4, 1
	lw	$r8, -16($r29)
	bne	$r8, $r5, .beq_else.558917
	addi	$r2, $r0, 0
	j	.beq_cont.558918
.beq_else.558917:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.558919
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	j	.beq_cont.558920
.beq_else.558919:
	sll	$r10, $r7, 1
	sw	$r7, -68($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -68($r29)
	addu	$r2, $r2, $r3
.beq_cont.558920:
.beq_cont.558918:
	lw	$r3, -60($r29)
	addu	$r2, $r2, $r3
.beq_cont.558912:
	lw	$r3, -28($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.558921
	addi	$r2, $r0, 0
	j	.ble_cont.558922
.ble_else.558921:
	lw	$r4, -32($r29)
	bgt	$r4, $r2, .ble_else.558923
	bne	$r2, $r4, .beq_else.558925
	lw	$r2, -60($r29)
	j	.beq_cont.558926
.beq_else.558925:
	lw	$r2, -60($r29)
	addi	$r3, $r2, 0
	sra	$r3, $r3, 1
	lw	$r6, -20($r29)
	lw	$r7, -24($r29)
	sw	$r3, -72($r29)
	bne	$r7, $r6, .beq_else.558927
	sll	$r8, $r3, 1
	lw	$r9, -16($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	j	.beq_cont.558928
.beq_else.558927:
	sll	$r8, $r3, 1
	lw	$r9, -16($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r5, -72($r29)
	addu	$r2, $r2, $r5
.beq_cont.558928:
	lw	$r5, -60($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.558929
	addi	$r2, $r0, 0
	j	.ble_cont.558930
.ble_else.558929:
	lw	$r3, -32($r29)
	bgt	$r3, $r2, .ble_else.558931
	bne	$r2, $r3, .beq_else.558933
	lw	$r2, -72($r29)
	j	.beq_cont.558934
.beq_else.558933:
	lw	$r2, -8($r29)
	lw	$r5, -20($r29)
	lw	$r6, -72($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
.beq_cont.558934:
	j	.ble_cont.558932
.ble_else.558931:
	lw	$r2, -8($r29)
	lw	$r6, -72($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
.ble_cont.558932:
.ble_cont.558930:
.beq_cont.558926:
	j	.ble_cont.558924
.ble_else.558923:
	lw	$r2, -60($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -24($r29)
	sw	$r6, -76($r29)
	bne	$r8, $r7, .beq_else.558935
	sll	$r9, $r6, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	j	.beq_cont.558936
.beq_else.558935:
	sll	$r9, $r6, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r5, -76($r29)
	addu	$r2, $r2, $r5
.beq_cont.558936:
	lw	$r4, -60($r29)
	lw	$r5, -28($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.558937
	addi	$r2, $r4, 0
	j	.ble_cont.558938
.ble_else.558937:
	lw	$r3, -32($r29)
	bgt	$r3, $r2, .ble_else.558939
	bne	$r2, $r3, .beq_else.558941
	lw	$r2, -76($r29)
	j	.beq_cont.558942
.beq_else.558941:
	lw	$r2, -8($r29)
	lw	$r5, -76($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.beq_cont.558942:
	j	.ble_cont.558940
.ble_else.558939:
	lw	$r2, -8($r29)
	lw	$r4, -76($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
.ble_cont.558940:
.ble_cont.558938:
.ble_cont.558924:
.ble_cont.558922:
.beq_cont.558910:
	j	.ble_cont.558908
.ble_else.558907:
	lw	$r2, -28($r29)
	addi	$r4, $r2, 3
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -24($r29)
	sw	$r4, -80($r29)
	bne	$r6, $r5, .beq_else.558943
	sll	$r7, $r4, 1
	lw	$r8, -16($r29)
	bne	$r8, $r5, .beq_else.558945
	addi	$r2, $r0, 0
	j	.beq_cont.558946
.beq_else.558945:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.558947
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	j	.beq_cont.558948
.beq_else.558947:
	sll	$r10, $r7, 1
	sw	$r7, -84($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -84($r29)
	addu	$r2, $r2, $r3
.beq_cont.558948:
.beq_cont.558946:
	j	.beq_cont.558944
.beq_else.558943:
	sll	$r7, $r4, 1
	lw	$r8, -16($r29)
	bne	$r8, $r5, .beq_else.558949
	addi	$r2, $r0, 0
	j	.beq_cont.558950
.beq_else.558949:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.558951
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	j	.beq_cont.558952
.beq_else.558951:
	sll	$r10, $r7, 1
	sw	$r7, -88($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	addu	$r2, $r2, $r3
.beq_cont.558952:
.beq_cont.558950:
	lw	$r3, -80($r29)
	addu	$r2, $r2, $r3
.beq_cont.558944:
	lw	$r3, -28($r29)
	lw	$r4, -4($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.558953
	addi	$r2, $r3, 0
	j	.ble_cont.558954
.ble_else.558953:
	lw	$r5, -32($r29)
	bgt	$r5, $r2, .ble_else.558955
	bne	$r2, $r5, .beq_else.558957
	lw	$r2, -80($r29)
	j	.beq_cont.558958
.beq_else.558957:
	lw	$r2, -80($r29)
	addu	$r4, $r3, $r2
	sra	$r4, $r4, 1
	lw	$r7, -20($r29)
	lw	$r8, -24($r29)
	sw	$r4, -92($r29)
	bne	$r8, $r7, .beq_else.558959
	sll	$r9, $r4, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	j	.beq_cont.558960
.beq_else.558959:
	sll	$r9, $r4, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r5, -92($r29)
	addu	$r2, $r2, $r5
.beq_cont.558960:
	lw	$r4, -28($r29)
	lw	$r5, -80($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.558961
	addi	$r2, $r4, 0
	j	.ble_cont.558962
.ble_else.558961:
	lw	$r3, -32($r29)
	bgt	$r3, $r2, .ble_else.558963
	bne	$r2, $r3, .beq_else.558965
	lw	$r2, -92($r29)
	j	.beq_cont.558966
.beq_else.558965:
	lw	$r2, -8($r29)
	lw	$r5, -92($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
.beq_cont.558966:
	j	.ble_cont.558964
.ble_else.558963:
	lw	$r2, -8($r29)
	lw	$r4, -92($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
.ble_cont.558964:
.ble_cont.558962:
.beq_cont.558958:
	j	.ble_cont.558956
.ble_else.558955:
	lw	$r2, -80($r29)
	addi	$r3, $r2, 3
	sra	$r3, $r3, 1
	lw	$r7, -20($r29)
	lw	$r8, -24($r29)
	sw	$r3, -96($r29)
	bne	$r8, $r7, .beq_else.558967
	sll	$r9, $r3, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	j	.beq_cont.558968
.beq_else.558967:
	sll	$r9, $r3, 1
	lw	$r10, -16($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r5, -96($r29)
	addu	$r2, $r2, $r5
.beq_cont.558968:
	lw	$r4, -80($r29)
	lw	$r5, -4($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.558969
	addi	$r2, $r4, 0
	j	.ble_cont.558970
.ble_else.558969:
	lw	$r3, -32($r29)
	bgt	$r3, $r2, .ble_else.558971
	bne	$r2, $r3, .beq_else.558973
	lw	$r2, -96($r29)
	j	.beq_cont.558974
.beq_else.558973:
	lw	$r2, -8($r29)
	lw	$r5, -96($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
.beq_cont.558974:
	j	.ble_cont.558972
.ble_else.558971:
	lw	$r2, -8($r29)
	lw	$r4, -96($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
.ble_cont.558972:
.ble_cont.558970:
.ble_cont.558956:
.ble_cont.558954:
.ble_cont.558908:
	lw	$r3, -20($r29)
	lw	$r4, -24($r29)
	sw	$r2, -100($r29)
	bne	$r4, $r3, .beq_else.558975
	sll	$r4, $r2, 1
	lw	$r5, -16($r29)
	bne	$r5, $r3, .beq_else.558977
	addi	$r2, $r0, 0
	j	.beq_cont.558978
.beq_else.558977:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.558979
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	j	.beq_cont.558980
.beq_else.558979:
	sll	$r5, $r4, 1
	sw	$r4, -104($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -104($r29)
	addu	$r2, $r2, $r3
.beq_cont.558980:
.beq_cont.558978:
	j	.beq_cont.558976
.beq_else.558975:
	sll	$r4, $r2, 1
	lw	$r5, -16($r29)
	bne	$r5, $r3, .beq_else.558981
	addi	$r2, $r0, 0
	j	.beq_cont.558982
.beq_else.558981:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.558983
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	j	.beq_cont.558984
.beq_else.558983:
	sll	$r5, $r4, 1
	sw	$r4, -108($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -108($r29)
	addu	$r2, $r2, $r3
.beq_cont.558984:
.beq_cont.558982:
	lw	$r3, -100($r29)
	addu	$r2, $r2, $r3
.beq_cont.558976:
	lw	$r3, -32($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -100($r29)
	sw	$r2, -112($r29)
	bgt	$r4, $r3, .ble_else.558985
	addi	$r2, $r0, 0
	j	.ble_cont.558986
.ble_else.558985:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.558986:
	lui	$r3, 152
	ori	$r3, $r3, 38528
	addi	$r4, $r0, 10
	sra	$r5, $r4, 1
	sra	$r6, $r3, 1
	sll	$r7, $r6, 1
	subu	$r7, $r3, $r7
	lw	$r8, -20($r29)
	sw	$r2, -116($r29)
	sw	$r4, -120($r29)
	sw	$r3, -124($r29)
	sw	$r6, -128($r29)
	sw	$r7, -132($r29)
	sw	$r5, -136($r29)
	bne	$r7, $r8, .beq_else.558987
	sll	$r9, $r5, 1
	bne	$r6, $r8, .beq_else.558989
	addi	$r2, $r0, 0
	j	.beq_cont.558990
.beq_else.558989:
	sra	$r10, $r6, 1
	sll	$r11, $r10, 1
	subu	$r11, $r6, $r11
	bne	$r11, $r8, .beq_else.558991
	sll	$r9, $r9, 1
	bne	$r10, $r8, .beq_else.558993
	addi	$r2, $r0, 0
	j	.beq_cont.558994
.beq_else.558993:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.558995
	sll	$r9, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	j	.beq_cont.558996
.beq_else.558995:
	sll	$r10, $r9, 1
	sw	$r9, -140($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r3, -140($r29)
	addu	$r2, $r2, $r3
.beq_cont.558996:
.beq_cont.558994:
	j	.beq_cont.558992
.beq_else.558991:
	sll	$r11, $r9, 1
	sw	$r9, -144($r29)
	bne	$r10, $r8, .beq_else.558997
	addi	$r2, $r0, 0
	j	.beq_cont.558998
.beq_else.558997:
	sra	$r12, $r10, 1
	sll	$r13, $r12, 1
	subu	$r10, $r10, $r13
	bne	$r10, $r8, .beq_else.558999
	sll	$r10, $r11, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	j	.beq_cont.559000
.beq_else.558999:
	sll	$r10, $r11, 1
	sw	$r11, -148($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lw	$r3, -148($r29)
	addu	$r2, $r2, $r3
.beq_cont.559000:
.beq_cont.558998:
	lw	$r3, -144($r29)
	addu	$r2, $r2, $r3
.beq_cont.558992:
.beq_cont.558990:
	j	.beq_cont.558988
.beq_else.558987:
	sll	$r9, $r5, 1
	bne	$r6, $r8, .beq_else.559001
	addi	$r2, $r0, 0
	j	.beq_cont.559002
.beq_else.559001:
	sra	$r10, $r6, 1
	sll	$r11, $r10, 1
	subu	$r11, $r6, $r11
	bne	$r11, $r8, .beq_else.559003
	sll	$r9, $r9, 1
	bne	$r10, $r8, .beq_else.559005
	addi	$r2, $r0, 0
	j	.beq_cont.559006
.beq_else.559005:
	sra	$r11, $r10, 1
	sll	$r12, $r11, 1
	subu	$r10, $r10, $r12
	bne	$r10, $r8, .beq_else.559007
	sll	$r9, $r9, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	j	.beq_cont.559008
.beq_else.559007:
	sll	$r10, $r9, 1
	sw	$r9, -152($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	lw	$r3, -152($r29)
	addu	$r2, $r2, $r3
.beq_cont.559008:
.beq_cont.559006:
	j	.beq_cont.559004
.beq_else.559003:
	sll	$r11, $r9, 1
	sw	$r9, -156($r29)
	bne	$r10, $r8, .beq_else.559009
	addi	$r2, $r0, 0
	j	.beq_cont.559010
.beq_else.559009:
	sra	$r12, $r10, 1
	sll	$r13, $r12, 1
	subu	$r10, $r10, $r13
	bne	$r10, $r8, .beq_else.559011
	sll	$r10, $r11, 1
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	j	.beq_cont.559012
.beq_else.559011:
	sll	$r10, $r11, 1
	sw	$r11, -160($r29)
	addi	$r3, $r12, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	lw	$r3, -160($r29)
	addu	$r2, $r2, $r3
.beq_cont.559012:
.beq_cont.559010:
	lw	$r3, -156($r29)
	addu	$r2, $r2, $r3
.beq_cont.559004:
.beq_cont.559002:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.558988:
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.559013
	bne	$r2, $r3, .beq_else.559015
	lw	$r2, -136($r29)
	j	.beq_cont.559016
.beq_else.559015:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -132($r29)
	sw	$r4, -164($r29)
	bne	$r6, $r5, .beq_else.559017
	sll	$r7, $r4, 1
	lw	$r8, -128($r29)
	bne	$r8, $r5, .beq_else.559019
	addi	$r2, $r0, 0
	j	.beq_cont.559020
.beq_else.559019:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559021
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	j	.beq_cont.559022
.beq_else.559021:
	sll	$r10, $r7, 1
	sw	$r7, -168($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	addu	$r2, $r2, $r3
.beq_cont.559022:
.beq_cont.559020:
	j	.beq_cont.559018
.beq_else.559017:
	sll	$r7, $r4, 1
	lw	$r8, -128($r29)
	bne	$r8, $r5, .beq_else.559023
	addi	$r2, $r0, 0
	j	.beq_cont.559024
.beq_else.559023:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559025
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	j	.beq_cont.559026
.beq_else.559025:
	sll	$r10, $r7, 1
	sw	$r7, -172($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -172($r29)
	addu	$r2, $r2, $r3
.beq_cont.559026:
.beq_cont.559024:
	lw	$r3, -164($r29)
	addu	$r2, $r2, $r3
.beq_cont.559018:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559027
	addi	$r2, $r0, 0
	j	.ble_cont.559028
.ble_else.559027:
	lw	$r4, -112($r29)
	bgt	$r4, $r2, .ble_else.559029
	bne	$r2, $r4, .beq_else.559031
	lw	$r2, -164($r29)
	j	.beq_cont.559032
.beq_else.559031:
	lw	$r2, -164($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -132($r29)
	sw	$r6, -176($r29)
	bne	$r8, $r7, .beq_else.559033
	sll	$r9, $r6, 1
	lw	$r10, -128($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	j	.beq_cont.559034
.beq_else.559033:
	sll	$r9, $r6, 1
	lw	$r10, -128($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	lw	$r5, -176($r29)
	addu	$r2, $r2, $r5
.beq_cont.559034:
	lw	$r5, -164($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559035
	addi	$r2, $r0, 0
	j	.ble_cont.559036
.ble_else.559035:
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.559037
	bne	$r2, $r3, .beq_else.559039
	lw	$r2, -176($r29)
	j	.beq_cont.559040
.beq_else.559039:
	lw	$r2, -124($r29)
	lw	$r5, -20($r29)
	lw	$r6, -176($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
.beq_cont.559040:
	j	.ble_cont.559038
.ble_else.559037:
	lw	$r2, -124($r29)
	lw	$r6, -176($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
.ble_cont.559038:
.ble_cont.559036:
.beq_cont.559032:
	j	.ble_cont.559030
.ble_else.559029:
	lw	$r2, -164($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -132($r29)
	sw	$r6, -180($r29)
	bne	$r8, $r7, .beq_else.559041
	sll	$r9, $r6, 1
	lw	$r10, -128($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	j	.beq_cont.559042
.beq_else.559041:
	sll	$r9, $r6, 1
	lw	$r10, -128($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	lw	$r5, -180($r29)
	addu	$r2, $r2, $r5
.beq_cont.559042:
	lw	$r4, -164($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559043
	addi	$r2, $r4, 0
	j	.ble_cont.559044
.ble_else.559043:
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.559045
	bne	$r2, $r3, .beq_else.559047
	lw	$r2, -180($r29)
	j	.beq_cont.559048
.beq_else.559047:
	lw	$r2, -124($r29)
	lw	$r7, -180($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
.beq_cont.559048:
	j	.ble_cont.559046
.ble_else.559045:
	lw	$r2, -124($r29)
	lw	$r4, -180($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
.ble_cont.559046:
.ble_cont.559044:
.ble_cont.559030:
.ble_cont.559028:
.beq_cont.559016:
	j	.ble_cont.559014
.ble_else.559013:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -132($r29)
	sw	$r4, -184($r29)
	bne	$r6, $r5, .beq_else.559049
	sll	$r7, $r4, 1
	lw	$r8, -128($r29)
	bne	$r8, $r5, .beq_else.559051
	addi	$r2, $r0, 0
	j	.beq_cont.559052
.beq_else.559051:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559053
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	j	.beq_cont.559054
.beq_else.559053:
	sll	$r10, $r7, 1
	sw	$r7, -188($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	lw	$r3, -188($r29)
	addu	$r2, $r2, $r3
.beq_cont.559054:
.beq_cont.559052:
	j	.beq_cont.559050
.beq_else.559049:
	sll	$r7, $r4, 1
	lw	$r8, -128($r29)
	bne	$r8, $r5, .beq_else.559055
	addi	$r2, $r0, 0
	j	.beq_cont.559056
.beq_else.559055:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559057
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	j	.beq_cont.559058
.beq_else.559057:
	sll	$r10, $r7, 1
	sw	$r7, -192($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	lw	$r3, -192($r29)
	addu	$r2, $r2, $r3
.beq_cont.559058:
.beq_cont.559056:
	lw	$r3, -184($r29)
	addu	$r2, $r2, $r3
.beq_cont.559050:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559059
	addi	$r2, $r3, 0
	j	.ble_cont.559060
.ble_else.559059:
	lw	$r5, -112($r29)
	bgt	$r5, $r2, .ble_else.559061
	bne	$r2, $r5, .beq_else.559063
	lw	$r2, -184($r29)
	j	.beq_cont.559064
.beq_else.559063:
	lw	$r2, -184($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -132($r29)
	sw	$r7, -196($r29)
	bne	$r9, $r8, .beq_else.559065
	sll	$r10, $r7, 1
	lw	$r11, -128($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	j	.beq_cont.559066
.beq_else.559065:
	sll	$r10, $r7, 1
	lw	$r11, -128($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lw	$r5, -196($r29)
	addu	$r2, $r2, $r5
.beq_cont.559066:
	lw	$r4, -136($r29)
	lw	$r5, -184($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559067
	addi	$r2, $r4, 0
	j	.ble_cont.559068
.ble_else.559067:
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.559069
	bne	$r2, $r3, .beq_else.559071
	lw	$r2, -196($r29)
	j	.beq_cont.559072
.beq_else.559071:
	lw	$r2, -124($r29)
	lw	$r5, -196($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
.beq_cont.559072:
	j	.ble_cont.559070
.ble_else.559069:
	lw	$r2, -124($r29)
	lw	$r7, -196($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
.ble_cont.559070:
.ble_cont.559068:
.beq_cont.559064:
	j	.ble_cont.559062
.ble_else.559061:
	lw	$r2, -184($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -132($r29)
	sw	$r7, -200($r29)
	bne	$r9, $r8, .beq_else.559073
	sll	$r10, $r7, 1
	lw	$r11, -128($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	j	.beq_cont.559074
.beq_else.559073:
	sll	$r10, $r7, 1
	lw	$r11, -128($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r5, -200($r29)
	addu	$r2, $r2, $r5
.beq_cont.559074:
	lw	$r4, -184($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559075
	addi	$r2, $r4, 0
	j	.ble_cont.559076
.ble_else.559075:
	lw	$r3, -112($r29)
	bgt	$r3, $r2, .ble_else.559077
	bne	$r2, $r3, .beq_else.559079
	lw	$r2, -200($r29)
	j	.beq_cont.559080
.beq_else.559079:
	lw	$r2, -124($r29)
	lw	$r7, -200($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
.beq_cont.559080:
	j	.ble_cont.559078
.ble_else.559077:
	lw	$r2, -124($r29)
	lw	$r4, -200($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
.ble_cont.559078:
.ble_cont.559076:
.ble_cont.559062:
.ble_cont.559060:
.ble_cont.559014:
	lw	$r3, -20($r29)
	lw	$r4, -132($r29)
	sw	$r2, -204($r29)
	bne	$r4, $r3, .beq_else.559081
	sll	$r4, $r2, 1
	lw	$r5, -128($r29)
	bne	$r5, $r3, .beq_else.559083
	addi	$r2, $r0, 0
	j	.beq_cont.559084
.beq_else.559083:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559085
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	j	.beq_cont.559086
.beq_else.559085:
	sll	$r5, $r4, 1
	sw	$r4, -208($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -208($r29)
	addu	$r2, $r2, $r3
.beq_cont.559086:
.beq_cont.559084:
	j	.beq_cont.559082
.beq_else.559081:
	sll	$r4, $r2, 1
	lw	$r5, -128($r29)
	bne	$r5, $r3, .beq_else.559087
	addi	$r2, $r0, 0
	j	.beq_cont.559088
.beq_else.559087:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559089
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	j	.beq_cont.559090
.beq_else.559089:
	sll	$r5, $r4, 1
	sw	$r4, -212($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	addu	$r2, $r2, $r3
.beq_cont.559090:
.beq_cont.559088:
	lw	$r3, -204($r29)
	addu	$r2, $r2, $r3
.beq_cont.559082:
	lw	$r3, -112($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -204($r29)
	sw	$r2, -216($r29)
	bgt	$r4, $r3, .ble_else.559091
	lw	$r5, -116($r29)
	bne	$r5, $r3, .beq_else.559093
	addi	$r2, $r0, 0
	j	.beq_cont.559094
.beq_else.559093:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559094:
	j	.ble_cont.559092
.ble_else.559091:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559092:
	lui	$r3, 15
	ori	$r3, $r3, 16960
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -20($r29)
	sw	$r2, -220($r29)
	sw	$r3, -224($r29)
	sw	$r4, -228($r29)
	sw	$r5, -232($r29)
	bne	$r5, $r6, .beq_else.559095
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559097
	addi	$r2, $r0, 0
	j	.beq_cont.559098
.beq_else.559097:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559099
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559101
	addi	$r2, $r0, 0
	j	.beq_cont.559102
.beq_else.559101:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559103
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -236($r29)	! calldir
	addi	$r29, $r29, -236	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 236	! calldir
	lw	$r31, -236($r29)	! calldir
	j	.beq_cont.559104
.beq_else.559103:
	sll	$r9, $r8, 1
	sw	$r8, -236($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -240($r29)	! calldir
	addi	$r29, $r29, -240	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 240	! calldir
	lw	$r31, -240($r29)	! calldir
	lw	$r3, -236($r29)
	addu	$r2, $r2, $r3
.beq_cont.559104:
.beq_cont.559102:
	j	.beq_cont.559100
.beq_else.559099:
	sll	$r10, $r8, 1
	sw	$r8, -240($r29)
	bne	$r9, $r6, .beq_else.559105
	addi	$r2, $r0, 0
	j	.beq_cont.559106
.beq_else.559105:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559107
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -244($r29)	! calldir
	addi	$r29, $r29, -244	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 244	! calldir
	lw	$r31, -244($r29)	! calldir
	j	.beq_cont.559108
.beq_else.559107:
	sll	$r9, $r10, 1
	sw	$r10, -244($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -248($r29)	! calldir
	addi	$r29, $r29, -248	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 248	! calldir
	lw	$r31, -248($r29)	! calldir
	lw	$r3, -244($r29)
	addu	$r2, $r2, $r3
.beq_cont.559108:
.beq_cont.559106:
	lw	$r3, -240($r29)
	addu	$r2, $r2, $r3
.beq_cont.559100:
.beq_cont.559098:
	j	.beq_cont.559096
.beq_else.559095:
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559109
	addi	$r2, $r0, 0
	j	.beq_cont.559110
.beq_else.559109:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559111
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559113
	addi	$r2, $r0, 0
	j	.beq_cont.559114
.beq_else.559113:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559115
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -248($r29)	! calldir
	addi	$r29, $r29, -248	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 248	! calldir
	lw	$r31, -248($r29)	! calldir
	j	.beq_cont.559116
.beq_else.559115:
	sll	$r9, $r8, 1
	sw	$r8, -248($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	addu	$r2, $r2, $r3
.beq_cont.559116:
.beq_cont.559114:
	j	.beq_cont.559112
.beq_else.559111:
	sll	$r10, $r8, 1
	sw	$r8, -252($r29)
	bne	$r9, $r6, .beq_else.559117
	addi	$r2, $r0, 0
	j	.beq_cont.559118
.beq_else.559117:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559119
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -256($r29)	! calldir
	addi	$r29, $r29, -256	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 256	! calldir
	lw	$r31, -256($r29)	! calldir
	j	.beq_cont.559120
.beq_else.559119:
	sll	$r9, $r10, 1
	sw	$r10, -256($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -260($r29)	! calldir
	addi	$r29, $r29, -260	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 260	! calldir
	lw	$r31, -260($r29)	! calldir
	lw	$r3, -256($r29)
	addu	$r2, $r2, $r3
.beq_cont.559120:
.beq_cont.559118:
	lw	$r3, -252($r29)
	addu	$r2, $r2, $r3
.beq_cont.559112:
.beq_cont.559110:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559096:
	lw	$r3, -216($r29)
	bgt	$r3, $r2, .ble_else.559121
	bne	$r2, $r3, .beq_else.559123
	lw	$r2, -136($r29)
	j	.beq_cont.559124
.beq_else.559123:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -232($r29)
	sw	$r4, -260($r29)
	bne	$r6, $r5, .beq_else.559125
	sll	$r7, $r4, 1
	lw	$r8, -228($r29)
	bne	$r8, $r5, .beq_else.559127
	addi	$r2, $r0, 0
	j	.beq_cont.559128
.beq_else.559127:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559129
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	j	.beq_cont.559130
.beq_else.559129:
	sll	$r10, $r7, 1
	sw	$r7, -264($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	addu	$r2, $r2, $r3
.beq_cont.559130:
.beq_cont.559128:
	j	.beq_cont.559126
.beq_else.559125:
	sll	$r7, $r4, 1
	lw	$r8, -228($r29)
	bne	$r8, $r5, .beq_else.559131
	addi	$r2, $r0, 0
	j	.beq_cont.559132
.beq_else.559131:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559133
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	j	.beq_cont.559134
.beq_else.559133:
	sll	$r10, $r7, 1
	sw	$r7, -268($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	lw	$r3, -268($r29)
	addu	$r2, $r2, $r3
.beq_cont.559134:
.beq_cont.559132:
	lw	$r3, -260($r29)
	addu	$r2, $r2, $r3
.beq_cont.559126:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559135
	addi	$r2, $r0, 0
	j	.ble_cont.559136
.ble_else.559135:
	lw	$r4, -216($r29)
	bgt	$r4, $r2, .ble_else.559137
	bne	$r2, $r4, .beq_else.559139
	lw	$r2, -260($r29)
	j	.beq_cont.559140
.beq_else.559139:
	lw	$r2, -260($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -232($r29)
	sw	$r6, -272($r29)
	bne	$r8, $r7, .beq_else.559141
	sll	$r9, $r6, 1
	lw	$r10, -228($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	j	.beq_cont.559142
.beq_else.559141:
	sll	$r9, $r6, 1
	lw	$r10, -228($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	lw	$r5, -272($r29)
	addu	$r2, $r2, $r5
.beq_cont.559142:
	lw	$r5, -260($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559143
	addi	$r2, $r0, 0
	j	.ble_cont.559144
.ble_else.559143:
	lw	$r3, -216($r29)
	bgt	$r3, $r2, .ble_else.559145
	bne	$r2, $r3, .beq_else.559147
	lw	$r2, -272($r29)
	j	.beq_cont.559148
.beq_else.559147:
	lw	$r2, -224($r29)
	lw	$r5, -20($r29)
	lw	$r6, -272($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
.beq_cont.559148:
	j	.ble_cont.559146
.ble_else.559145:
	lw	$r2, -224($r29)
	lw	$r6, -272($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
.ble_cont.559146:
.ble_cont.559144:
.beq_cont.559140:
	j	.ble_cont.559138
.ble_else.559137:
	lw	$r2, -260($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -232($r29)
	sw	$r6, -276($r29)
	bne	$r8, $r7, .beq_else.559149
	sll	$r9, $r6, 1
	lw	$r10, -228($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	j	.beq_cont.559150
.beq_else.559149:
	sll	$r9, $r6, 1
	lw	$r10, -228($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	lw	$r5, -276($r29)
	addu	$r2, $r2, $r5
.beq_cont.559150:
	lw	$r4, -260($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559151
	addi	$r2, $r4, 0
	j	.ble_cont.559152
.ble_else.559151:
	lw	$r3, -216($r29)
	bgt	$r3, $r2, .ble_else.559153
	bne	$r2, $r3, .beq_else.559155
	lw	$r2, -276($r29)
	j	.beq_cont.559156
.beq_else.559155:
	lw	$r2, -224($r29)
	lw	$r7, -276($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
.beq_cont.559156:
	j	.ble_cont.559154
.ble_else.559153:
	lw	$r2, -224($r29)
	lw	$r4, -276($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
.ble_cont.559154:
.ble_cont.559152:
.ble_cont.559138:
.ble_cont.559136:
.beq_cont.559124:
	j	.ble_cont.559122
.ble_else.559121:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -232($r29)
	sw	$r4, -280($r29)
	bne	$r6, $r5, .beq_else.559157
	sll	$r7, $r4, 1
	lw	$r8, -228($r29)
	bne	$r8, $r5, .beq_else.559159
	addi	$r2, $r0, 0
	j	.beq_cont.559160
.beq_else.559159:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559161
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -284($r29)	! calldir
	addi	$r29, $r29, -284	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 284	! calldir
	lw	$r31, -284($r29)	! calldir
	j	.beq_cont.559162
.beq_else.559161:
	sll	$r10, $r7, 1
	sw	$r7, -284($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -288($r29)	! calldir
	addi	$r29, $r29, -288	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 288	! calldir
	lw	$r31, -288($r29)	! calldir
	lw	$r3, -284($r29)
	addu	$r2, $r2, $r3
.beq_cont.559162:
.beq_cont.559160:
	j	.beq_cont.559158
.beq_else.559157:
	sll	$r7, $r4, 1
	lw	$r8, -228($r29)
	bne	$r8, $r5, .beq_else.559163
	addi	$r2, $r0, 0
	j	.beq_cont.559164
.beq_else.559163:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559165
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -288($r29)	! calldir
	addi	$r29, $r29, -288	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 288	! calldir
	lw	$r31, -288($r29)	! calldir
	j	.beq_cont.559166
.beq_else.559165:
	sll	$r10, $r7, 1
	sw	$r7, -288($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -292($r29)	! calldir
	addi	$r29, $r29, -292	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 292	! calldir
	lw	$r31, -292($r29)	! calldir
	lw	$r3, -288($r29)
	addu	$r2, $r2, $r3
.beq_cont.559166:
.beq_cont.559164:
	lw	$r3, -280($r29)
	addu	$r2, $r2, $r3
.beq_cont.559158:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559167
	addi	$r2, $r3, 0
	j	.ble_cont.559168
.ble_else.559167:
	lw	$r5, -216($r29)
	bgt	$r5, $r2, .ble_else.559169
	bne	$r2, $r5, .beq_else.559171
	lw	$r2, -280($r29)
	j	.beq_cont.559172
.beq_else.559171:
	lw	$r2, -280($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -232($r29)
	sw	$r7, -292($r29)
	bne	$r9, $r8, .beq_else.559173
	sll	$r10, $r7, 1
	lw	$r11, -228($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
	j	.beq_cont.559174
.beq_else.559173:
	sll	$r10, $r7, 1
	lw	$r11, -228($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
	lw	$r5, -292($r29)
	addu	$r2, $r2, $r5
.beq_cont.559174:
	lw	$r4, -136($r29)
	lw	$r5, -280($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559175
	addi	$r2, $r4, 0
	j	.ble_cont.559176
.ble_else.559175:
	lw	$r3, -216($r29)
	bgt	$r3, $r2, .ble_else.559177
	bne	$r2, $r3, .beq_else.559179
	lw	$r2, -292($r29)
	j	.beq_cont.559180
.beq_else.559179:
	lw	$r2, -224($r29)
	lw	$r5, -292($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
.beq_cont.559180:
	j	.ble_cont.559178
.ble_else.559177:
	lw	$r2, -224($r29)
	lw	$r7, -292($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -296($r29)	! calldir
	addi	$r29, $r29, -296	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 296	! calldir
	lw	$r31, -296($r29)	! calldir
.ble_cont.559178:
.ble_cont.559176:
.beq_cont.559172:
	j	.ble_cont.559170
.ble_else.559169:
	lw	$r2, -280($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -232($r29)
	sw	$r7, -296($r29)
	bne	$r9, $r8, .beq_else.559181
	sll	$r10, $r7, 1
	lw	$r11, -228($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -300($r29)	! calldir
	addi	$r29, $r29, -300	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 300	! calldir
	lw	$r31, -300($r29)	! calldir
	j	.beq_cont.559182
.beq_else.559181:
	sll	$r10, $r7, 1
	lw	$r11, -228($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -300($r29)	! calldir
	addi	$r29, $r29, -300	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 300	! calldir
	lw	$r31, -300($r29)	! calldir
	lw	$r5, -296($r29)
	addu	$r2, $r2, $r5
.beq_cont.559182:
	lw	$r4, -280($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559183
	addi	$r2, $r4, 0
	j	.ble_cont.559184
.ble_else.559183:
	lw	$r3, -216($r29)
	bgt	$r3, $r2, .ble_else.559185
	bne	$r2, $r3, .beq_else.559187
	lw	$r2, -296($r29)
	j	.beq_cont.559188
.beq_else.559187:
	lw	$r2, -224($r29)
	lw	$r7, -296($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -300($r29)	! calldir
	addi	$r29, $r29, -300	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 300	! calldir
	lw	$r31, -300($r29)	! calldir
.beq_cont.559188:
	j	.ble_cont.559186
.ble_else.559185:
	lw	$r2, -224($r29)
	lw	$r4, -296($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -300($r29)	! calldir
	addi	$r29, $r29, -300	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 300	! calldir
	lw	$r31, -300($r29)	! calldir
.ble_cont.559186:
.ble_cont.559184:
.ble_cont.559170:
.ble_cont.559168:
.ble_cont.559122:
	lw	$r3, -20($r29)
	lw	$r4, -232($r29)
	sw	$r2, -300($r29)
	bne	$r4, $r3, .beq_else.559189
	sll	$r4, $r2, 1
	lw	$r5, -228($r29)
	bne	$r5, $r3, .beq_else.559191
	addi	$r2, $r0, 0
	j	.beq_cont.559192
.beq_else.559191:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559193
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -304($r29)	! calldir
	addi	$r29, $r29, -304	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 304	! calldir
	lw	$r31, -304($r29)	! calldir
	j	.beq_cont.559194
.beq_else.559193:
	sll	$r5, $r4, 1
	sw	$r4, -304($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -308($r29)	! calldir
	addi	$r29, $r29, -308	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 308	! calldir
	lw	$r31, -308($r29)	! calldir
	lw	$r3, -304($r29)
	addu	$r2, $r2, $r3
.beq_cont.559194:
.beq_cont.559192:
	j	.beq_cont.559190
.beq_else.559189:
	sll	$r4, $r2, 1
	lw	$r5, -228($r29)
	bne	$r5, $r3, .beq_else.559195
	addi	$r2, $r0, 0
	j	.beq_cont.559196
.beq_else.559195:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559197
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -308($r29)	! calldir
	addi	$r29, $r29, -308	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 308	! calldir
	lw	$r31, -308($r29)	! calldir
	j	.beq_cont.559198
.beq_else.559197:
	sll	$r5, $r4, 1
	sw	$r4, -308($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -312($r29)	! calldir
	addi	$r29, $r29, -312	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 312	! calldir
	lw	$r31, -312($r29)	! calldir
	lw	$r3, -308($r29)
	addu	$r2, $r2, $r3
.beq_cont.559198:
.beq_cont.559196:
	lw	$r3, -300($r29)
	addu	$r2, $r2, $r3
.beq_cont.559190:
	lw	$r3, -216($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -300($r29)
	sw	$r2, -312($r29)
	bgt	$r4, $r3, .ble_else.559199
	lw	$r5, -220($r29)
	bne	$r5, $r3, .beq_else.559201
	addi	$r2, $r0, 0
	j	.beq_cont.559202
.beq_else.559201:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559202:
	j	.ble_cont.559200
.ble_else.559199:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559200:
	lui	$r3, 1
	ori	$r3, $r3, 34464
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -20($r29)
	sw	$r2, -316($r29)
	sw	$r3, -320($r29)
	sw	$r4, -324($r29)
	sw	$r5, -328($r29)
	bne	$r5, $r6, .beq_else.559203
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559205
	addi	$r2, $r0, 0
	j	.beq_cont.559206
.beq_else.559205:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559207
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559209
	addi	$r2, $r0, 0
	j	.beq_cont.559210
.beq_else.559209:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559211
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	j	.beq_cont.559212
.beq_else.559211:
	sll	$r9, $r8, 1
	sw	$r8, -332($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -336($r29)	! calldir
	addi	$r29, $r29, -336	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 336	! calldir
	lw	$r31, -336($r29)	! calldir
	lw	$r3, -332($r29)
	addu	$r2, $r2, $r3
.beq_cont.559212:
.beq_cont.559210:
	j	.beq_cont.559208
.beq_else.559207:
	sll	$r10, $r8, 1
	sw	$r8, -336($r29)
	bne	$r9, $r6, .beq_else.559213
	addi	$r2, $r0, 0
	j	.beq_cont.559214
.beq_else.559213:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559215
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -340($r29)	! calldir
	addi	$r29, $r29, -340	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 340	! calldir
	lw	$r31, -340($r29)	! calldir
	j	.beq_cont.559216
.beq_else.559215:
	sll	$r9, $r10, 1
	sw	$r10, -340($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -344($r29)	! calldir
	addi	$r29, $r29, -344	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 344	! calldir
	lw	$r31, -344($r29)	! calldir
	lw	$r3, -340($r29)
	addu	$r2, $r2, $r3
.beq_cont.559216:
.beq_cont.559214:
	lw	$r3, -336($r29)
	addu	$r2, $r2, $r3
.beq_cont.559208:
.beq_cont.559206:
	j	.beq_cont.559204
.beq_else.559203:
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559217
	addi	$r2, $r0, 0
	j	.beq_cont.559218
.beq_else.559217:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559219
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559221
	addi	$r2, $r0, 0
	j	.beq_cont.559222
.beq_else.559221:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559223
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -344($r29)	! calldir
	addi	$r29, $r29, -344	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 344	! calldir
	lw	$r31, -344($r29)	! calldir
	j	.beq_cont.559224
.beq_else.559223:
	sll	$r9, $r8, 1
	sw	$r8, -344($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -348($r29)	! calldir
	addi	$r29, $r29, -348	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 348	! calldir
	lw	$r31, -348($r29)	! calldir
	lw	$r3, -344($r29)
	addu	$r2, $r2, $r3
.beq_cont.559224:
.beq_cont.559222:
	j	.beq_cont.559220
.beq_else.559219:
	sll	$r10, $r8, 1
	sw	$r8, -348($r29)
	bne	$r9, $r6, .beq_else.559225
	addi	$r2, $r0, 0
	j	.beq_cont.559226
.beq_else.559225:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559227
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -352($r29)	! calldir
	addi	$r29, $r29, -352	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 352	! calldir
	lw	$r31, -352($r29)	! calldir
	j	.beq_cont.559228
.beq_else.559227:
	sll	$r9, $r10, 1
	sw	$r10, -352($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -356($r29)	! calldir
	addi	$r29, $r29, -356	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 356	! calldir
	lw	$r31, -356($r29)	! calldir
	lw	$r3, -352($r29)
	addu	$r2, $r2, $r3
.beq_cont.559228:
.beq_cont.559226:
	lw	$r3, -348($r29)
	addu	$r2, $r2, $r3
.beq_cont.559220:
.beq_cont.559218:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559204:
	lw	$r3, -312($r29)
	bgt	$r3, $r2, .ble_else.559229
	bne	$r2, $r3, .beq_else.559231
	lw	$r2, -136($r29)
	j	.beq_cont.559232
.beq_else.559231:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -328($r29)
	sw	$r4, -356($r29)
	bne	$r6, $r5, .beq_else.559233
	sll	$r7, $r4, 1
	lw	$r8, -324($r29)
	bne	$r8, $r5, .beq_else.559235
	addi	$r2, $r0, 0
	j	.beq_cont.559236
.beq_else.559235:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559237
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -360($r29)	! calldir
	addi	$r29, $r29, -360	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 360	! calldir
	lw	$r31, -360($r29)	! calldir
	j	.beq_cont.559238
.beq_else.559237:
	sll	$r10, $r7, 1
	sw	$r7, -360($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -364($r29)	! calldir
	addi	$r29, $r29, -364	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 364	! calldir
	lw	$r31, -364($r29)	! calldir
	lw	$r3, -360($r29)
	addu	$r2, $r2, $r3
.beq_cont.559238:
.beq_cont.559236:
	j	.beq_cont.559234
.beq_else.559233:
	sll	$r7, $r4, 1
	lw	$r8, -324($r29)
	bne	$r8, $r5, .beq_else.559239
	addi	$r2, $r0, 0
	j	.beq_cont.559240
.beq_else.559239:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559241
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -364($r29)	! calldir
	addi	$r29, $r29, -364	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 364	! calldir
	lw	$r31, -364($r29)	! calldir
	j	.beq_cont.559242
.beq_else.559241:
	sll	$r10, $r7, 1
	sw	$r7, -364($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -368($r29)	! calldir
	addi	$r29, $r29, -368	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 368	! calldir
	lw	$r31, -368($r29)	! calldir
	lw	$r3, -364($r29)
	addu	$r2, $r2, $r3
.beq_cont.559242:
.beq_cont.559240:
	lw	$r3, -356($r29)
	addu	$r2, $r2, $r3
.beq_cont.559234:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559243
	addi	$r2, $r0, 0
	j	.ble_cont.559244
.ble_else.559243:
	lw	$r4, -312($r29)
	bgt	$r4, $r2, .ble_else.559245
	bne	$r2, $r4, .beq_else.559247
	lw	$r2, -356($r29)
	j	.beq_cont.559248
.beq_else.559247:
	lw	$r2, -356($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -328($r29)
	sw	$r6, -368($r29)
	bne	$r8, $r7, .beq_else.559249
	sll	$r9, $r6, 1
	lw	$r10, -324($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -372($r29)	! calldir
	addi	$r29, $r29, -372	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 372	! calldir
	lw	$r31, -372($r29)	! calldir
	j	.beq_cont.559250
.beq_else.559249:
	sll	$r9, $r6, 1
	lw	$r10, -324($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -372($r29)	! calldir
	addi	$r29, $r29, -372	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 372	! calldir
	lw	$r31, -372($r29)	! calldir
	lw	$r5, -368($r29)
	addu	$r2, $r2, $r5
.beq_cont.559250:
	lw	$r5, -356($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559251
	addi	$r2, $r0, 0
	j	.ble_cont.559252
.ble_else.559251:
	lw	$r3, -312($r29)
	bgt	$r3, $r2, .ble_else.559253
	bne	$r2, $r3, .beq_else.559255
	lw	$r2, -368($r29)
	j	.beq_cont.559256
.beq_else.559255:
	lw	$r2, -320($r29)
	lw	$r5, -20($r29)
	lw	$r6, -368($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -372($r29)	! calldir
	addi	$r29, $r29, -372	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 372	! calldir
	lw	$r31, -372($r29)	! calldir
.beq_cont.559256:
	j	.ble_cont.559254
.ble_else.559253:
	lw	$r2, -320($r29)
	lw	$r6, -368($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -372($r29)	! calldir
	addi	$r29, $r29, -372	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 372	! calldir
	lw	$r31, -372($r29)	! calldir
.ble_cont.559254:
.ble_cont.559252:
.beq_cont.559248:
	j	.ble_cont.559246
.ble_else.559245:
	lw	$r2, -356($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -328($r29)
	sw	$r6, -372($r29)
	bne	$r8, $r7, .beq_else.559257
	sll	$r9, $r6, 1
	lw	$r10, -324($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -376($r29)	! calldir
	addi	$r29, $r29, -376	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 376	! calldir
	lw	$r31, -376($r29)	! calldir
	j	.beq_cont.559258
.beq_else.559257:
	sll	$r9, $r6, 1
	lw	$r10, -324($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -376($r29)	! calldir
	addi	$r29, $r29, -376	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 376	! calldir
	lw	$r31, -376($r29)	! calldir
	lw	$r5, -372($r29)
	addu	$r2, $r2, $r5
.beq_cont.559258:
	lw	$r4, -356($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559259
	addi	$r2, $r4, 0
	j	.ble_cont.559260
.ble_else.559259:
	lw	$r3, -312($r29)
	bgt	$r3, $r2, .ble_else.559261
	bne	$r2, $r3, .beq_else.559263
	lw	$r2, -372($r29)
	j	.beq_cont.559264
.beq_else.559263:
	lw	$r2, -320($r29)
	lw	$r7, -372($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -376($r29)	! calldir
	addi	$r29, $r29, -376	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 376	! calldir
	lw	$r31, -376($r29)	! calldir
.beq_cont.559264:
	j	.ble_cont.559262
.ble_else.559261:
	lw	$r2, -320($r29)
	lw	$r4, -372($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -376($r29)	! calldir
	addi	$r29, $r29, -376	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 376	! calldir
	lw	$r31, -376($r29)	! calldir
.ble_cont.559262:
.ble_cont.559260:
.ble_cont.559246:
.ble_cont.559244:
.beq_cont.559232:
	j	.ble_cont.559230
.ble_else.559229:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -328($r29)
	sw	$r4, -376($r29)
	bne	$r6, $r5, .beq_else.559265
	sll	$r7, $r4, 1
	lw	$r8, -324($r29)
	bne	$r8, $r5, .beq_else.559267
	addi	$r2, $r0, 0
	j	.beq_cont.559268
.beq_else.559267:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559269
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -380($r29)	! calldir
	addi	$r29, $r29, -380	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 380	! calldir
	lw	$r31, -380($r29)	! calldir
	j	.beq_cont.559270
.beq_else.559269:
	sll	$r10, $r7, 1
	sw	$r7, -380($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -384($r29)	! calldir
	addi	$r29, $r29, -384	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 384	! calldir
	lw	$r31, -384($r29)	! calldir
	lw	$r3, -380($r29)
	addu	$r2, $r2, $r3
.beq_cont.559270:
.beq_cont.559268:
	j	.beq_cont.559266
.beq_else.559265:
	sll	$r7, $r4, 1
	lw	$r8, -324($r29)
	bne	$r8, $r5, .beq_else.559271
	addi	$r2, $r0, 0
	j	.beq_cont.559272
.beq_else.559271:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559273
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -384($r29)	! calldir
	addi	$r29, $r29, -384	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 384	! calldir
	lw	$r31, -384($r29)	! calldir
	j	.beq_cont.559274
.beq_else.559273:
	sll	$r10, $r7, 1
	sw	$r7, -384($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -388($r29)	! calldir
	addi	$r29, $r29, -388	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 388	! calldir
	lw	$r31, -388($r29)	! calldir
	lw	$r3, -384($r29)
	addu	$r2, $r2, $r3
.beq_cont.559274:
.beq_cont.559272:
	lw	$r3, -376($r29)
	addu	$r2, $r2, $r3
.beq_cont.559266:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559275
	addi	$r2, $r3, 0
	j	.ble_cont.559276
.ble_else.559275:
	lw	$r5, -312($r29)
	bgt	$r5, $r2, .ble_else.559277
	bne	$r2, $r5, .beq_else.559279
	lw	$r2, -376($r29)
	j	.beq_cont.559280
.beq_else.559279:
	lw	$r2, -376($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -328($r29)
	sw	$r7, -388($r29)
	bne	$r9, $r8, .beq_else.559281
	sll	$r10, $r7, 1
	lw	$r11, -324($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -392($r29)	! calldir
	addi	$r29, $r29, -392	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 392	! calldir
	lw	$r31, -392($r29)	! calldir
	j	.beq_cont.559282
.beq_else.559281:
	sll	$r10, $r7, 1
	lw	$r11, -324($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -392($r29)	! calldir
	addi	$r29, $r29, -392	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 392	! calldir
	lw	$r31, -392($r29)	! calldir
	lw	$r5, -388($r29)
	addu	$r2, $r2, $r5
.beq_cont.559282:
	lw	$r4, -136($r29)
	lw	$r5, -376($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559283
	addi	$r2, $r4, 0
	j	.ble_cont.559284
.ble_else.559283:
	lw	$r3, -312($r29)
	bgt	$r3, $r2, .ble_else.559285
	bne	$r2, $r3, .beq_else.559287
	lw	$r2, -388($r29)
	j	.beq_cont.559288
.beq_else.559287:
	lw	$r2, -320($r29)
	lw	$r5, -388($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -392($r29)	! calldir
	addi	$r29, $r29, -392	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 392	! calldir
	lw	$r31, -392($r29)	! calldir
.beq_cont.559288:
	j	.ble_cont.559286
.ble_else.559285:
	lw	$r2, -320($r29)
	lw	$r7, -388($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -392($r29)	! calldir
	addi	$r29, $r29, -392	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 392	! calldir
	lw	$r31, -392($r29)	! calldir
.ble_cont.559286:
.ble_cont.559284:
.beq_cont.559280:
	j	.ble_cont.559278
.ble_else.559277:
	lw	$r2, -376($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -328($r29)
	sw	$r7, -392($r29)
	bne	$r9, $r8, .beq_else.559289
	sll	$r10, $r7, 1
	lw	$r11, -324($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -396($r29)	! calldir
	addi	$r29, $r29, -396	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 396	! calldir
	lw	$r31, -396($r29)	! calldir
	j	.beq_cont.559290
.beq_else.559289:
	sll	$r10, $r7, 1
	lw	$r11, -324($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -396($r29)	! calldir
	addi	$r29, $r29, -396	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 396	! calldir
	lw	$r31, -396($r29)	! calldir
	lw	$r5, -392($r29)
	addu	$r2, $r2, $r5
.beq_cont.559290:
	lw	$r4, -376($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559291
	addi	$r2, $r4, 0
	j	.ble_cont.559292
.ble_else.559291:
	lw	$r3, -312($r29)
	bgt	$r3, $r2, .ble_else.559293
	bne	$r2, $r3, .beq_else.559295
	lw	$r2, -392($r29)
	j	.beq_cont.559296
.beq_else.559295:
	lw	$r2, -320($r29)
	lw	$r7, -392($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -396($r29)	! calldir
	addi	$r29, $r29, -396	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 396	! calldir
	lw	$r31, -396($r29)	! calldir
.beq_cont.559296:
	j	.ble_cont.559294
.ble_else.559293:
	lw	$r2, -320($r29)
	lw	$r4, -392($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -396($r29)	! calldir
	addi	$r29, $r29, -396	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 396	! calldir
	lw	$r31, -396($r29)	! calldir
.ble_cont.559294:
.ble_cont.559292:
.ble_cont.559278:
.ble_cont.559276:
.ble_cont.559230:
	lw	$r3, -20($r29)
	lw	$r4, -328($r29)
	sw	$r2, -396($r29)
	bne	$r4, $r3, .beq_else.559297
	sll	$r4, $r2, 1
	lw	$r5, -324($r29)
	bne	$r5, $r3, .beq_else.559299
	addi	$r2, $r0, 0
	j	.beq_cont.559300
.beq_else.559299:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559301
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -400($r29)	! calldir
	addi	$r29, $r29, -400	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 400	! calldir
	lw	$r31, -400($r29)	! calldir
	j	.beq_cont.559302
.beq_else.559301:
	sll	$r5, $r4, 1
	sw	$r4, -400($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -404($r29)	! calldir
	addi	$r29, $r29, -404	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 404	! calldir
	lw	$r31, -404($r29)	! calldir
	lw	$r3, -400($r29)
	addu	$r2, $r2, $r3
.beq_cont.559302:
.beq_cont.559300:
	j	.beq_cont.559298
.beq_else.559297:
	sll	$r4, $r2, 1
	lw	$r5, -324($r29)
	bne	$r5, $r3, .beq_else.559303
	addi	$r2, $r0, 0
	j	.beq_cont.559304
.beq_else.559303:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559305
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -404($r29)	! calldir
	addi	$r29, $r29, -404	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 404	! calldir
	lw	$r31, -404($r29)	! calldir
	j	.beq_cont.559306
.beq_else.559305:
	sll	$r5, $r4, 1
	sw	$r4, -404($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -408($r29)	! calldir
	addi	$r29, $r29, -408	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 408	! calldir
	lw	$r31, -408($r29)	! calldir
	lw	$r3, -404($r29)
	addu	$r2, $r2, $r3
.beq_cont.559306:
.beq_cont.559304:
	lw	$r3, -396($r29)
	addu	$r2, $r2, $r3
.beq_cont.559298:
	lw	$r3, -312($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -396($r29)
	sw	$r2, -408($r29)
	bgt	$r4, $r3, .ble_else.559307
	lw	$r5, -316($r29)
	bne	$r5, $r3, .beq_else.559309
	addi	$r2, $r0, 0
	j	.beq_cont.559310
.beq_else.559309:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559310:
	j	.ble_cont.559308
.ble_else.559307:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559308:
	addi	$r3, $r0, 10000
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -20($r29)
	sw	$r2, -412($r29)
	sw	$r3, -416($r29)
	sw	$r4, -420($r29)
	sw	$r5, -424($r29)
	bne	$r5, $r6, .beq_else.559311
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559313
	addi	$r2, $r0, 0
	j	.beq_cont.559314
.beq_else.559313:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559315
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559317
	addi	$r2, $r0, 0
	j	.beq_cont.559318
.beq_else.559317:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559319
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -428($r29)	! calldir
	addi	$r29, $r29, -428	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 428	! calldir
	lw	$r31, -428($r29)	! calldir
	j	.beq_cont.559320
.beq_else.559319:
	sll	$r9, $r8, 1
	sw	$r8, -428($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -432($r29)	! calldir
	addi	$r29, $r29, -432	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 432	! calldir
	lw	$r31, -432($r29)	! calldir
	lw	$r3, -428($r29)
	addu	$r2, $r2, $r3
.beq_cont.559320:
.beq_cont.559318:
	j	.beq_cont.559316
.beq_else.559315:
	sll	$r10, $r8, 1
	sw	$r8, -432($r29)
	bne	$r9, $r6, .beq_else.559321
	addi	$r2, $r0, 0
	j	.beq_cont.559322
.beq_else.559321:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559323
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -436($r29)	! calldir
	addi	$r29, $r29, -436	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 436	! calldir
	lw	$r31, -436($r29)	! calldir
	j	.beq_cont.559324
.beq_else.559323:
	sll	$r9, $r10, 1
	sw	$r10, -436($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -440($r29)	! calldir
	addi	$r29, $r29, -440	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 440	! calldir
	lw	$r31, -440($r29)	! calldir
	lw	$r3, -436($r29)
	addu	$r2, $r2, $r3
.beq_cont.559324:
.beq_cont.559322:
	lw	$r3, -432($r29)
	addu	$r2, $r2, $r3
.beq_cont.559316:
.beq_cont.559314:
	j	.beq_cont.559312
.beq_else.559311:
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559325
	addi	$r2, $r0, 0
	j	.beq_cont.559326
.beq_else.559325:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559327
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559329
	addi	$r2, $r0, 0
	j	.beq_cont.559330
.beq_else.559329:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559331
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -440($r29)	! calldir
	addi	$r29, $r29, -440	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 440	! calldir
	lw	$r31, -440($r29)	! calldir
	j	.beq_cont.559332
.beq_else.559331:
	sll	$r9, $r8, 1
	sw	$r8, -440($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -444($r29)	! calldir
	addi	$r29, $r29, -444	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 444	! calldir
	lw	$r31, -444($r29)	! calldir
	lw	$r3, -440($r29)
	addu	$r2, $r2, $r3
.beq_cont.559332:
.beq_cont.559330:
	j	.beq_cont.559328
.beq_else.559327:
	sll	$r10, $r8, 1
	sw	$r8, -444($r29)
	bne	$r9, $r6, .beq_else.559333
	addi	$r2, $r0, 0
	j	.beq_cont.559334
.beq_else.559333:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559335
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -448($r29)	! calldir
	addi	$r29, $r29, -448	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 448	! calldir
	lw	$r31, -448($r29)	! calldir
	j	.beq_cont.559336
.beq_else.559335:
	sll	$r9, $r10, 1
	sw	$r10, -448($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -452($r29)	! calldir
	addi	$r29, $r29, -452	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 452	! calldir
	lw	$r31, -452($r29)	! calldir
	lw	$r3, -448($r29)
	addu	$r2, $r2, $r3
.beq_cont.559336:
.beq_cont.559334:
	lw	$r3, -444($r29)
	addu	$r2, $r2, $r3
.beq_cont.559328:
.beq_cont.559326:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559312:
	lw	$r3, -408($r29)
	bgt	$r3, $r2, .ble_else.559337
	bne	$r2, $r3, .beq_else.559339
	lw	$r2, -136($r29)
	j	.beq_cont.559340
.beq_else.559339:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -424($r29)
	sw	$r4, -452($r29)
	bne	$r6, $r5, .beq_else.559341
	sll	$r7, $r4, 1
	lw	$r8, -420($r29)
	bne	$r8, $r5, .beq_else.559343
	addi	$r2, $r0, 0
	j	.beq_cont.559344
.beq_else.559343:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559345
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -456($r29)	! calldir
	addi	$r29, $r29, -456	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 456	! calldir
	lw	$r31, -456($r29)	! calldir
	j	.beq_cont.559346
.beq_else.559345:
	sll	$r10, $r7, 1
	sw	$r7, -456($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -460($r29)	! calldir
	addi	$r29, $r29, -460	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 460	! calldir
	lw	$r31, -460($r29)	! calldir
	lw	$r3, -456($r29)
	addu	$r2, $r2, $r3
.beq_cont.559346:
.beq_cont.559344:
	j	.beq_cont.559342
.beq_else.559341:
	sll	$r7, $r4, 1
	lw	$r8, -420($r29)
	bne	$r8, $r5, .beq_else.559347
	addi	$r2, $r0, 0
	j	.beq_cont.559348
.beq_else.559347:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559349
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -460($r29)	! calldir
	addi	$r29, $r29, -460	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 460	! calldir
	lw	$r31, -460($r29)	! calldir
	j	.beq_cont.559350
.beq_else.559349:
	sll	$r10, $r7, 1
	sw	$r7, -460($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -464($r29)	! calldir
	addi	$r29, $r29, -464	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 464	! calldir
	lw	$r31, -464($r29)	! calldir
	lw	$r3, -460($r29)
	addu	$r2, $r2, $r3
.beq_cont.559350:
.beq_cont.559348:
	lw	$r3, -452($r29)
	addu	$r2, $r2, $r3
.beq_cont.559342:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559351
	addi	$r2, $r0, 0
	j	.ble_cont.559352
.ble_else.559351:
	lw	$r4, -408($r29)
	bgt	$r4, $r2, .ble_else.559353
	bne	$r2, $r4, .beq_else.559355
	lw	$r2, -452($r29)
	j	.beq_cont.559356
.beq_else.559355:
	lw	$r2, -452($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -424($r29)
	sw	$r6, -464($r29)
	bne	$r8, $r7, .beq_else.559357
	sll	$r9, $r6, 1
	lw	$r10, -420($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -468($r29)	! calldir
	addi	$r29, $r29, -468	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 468	! calldir
	lw	$r31, -468($r29)	! calldir
	j	.beq_cont.559358
.beq_else.559357:
	sll	$r9, $r6, 1
	lw	$r10, -420($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -468($r29)	! calldir
	addi	$r29, $r29, -468	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 468	! calldir
	lw	$r31, -468($r29)	! calldir
	lw	$r5, -464($r29)
	addu	$r2, $r2, $r5
.beq_cont.559358:
	lw	$r5, -452($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559359
	addi	$r2, $r0, 0
	j	.ble_cont.559360
.ble_else.559359:
	lw	$r3, -408($r29)
	bgt	$r3, $r2, .ble_else.559361
	bne	$r2, $r3, .beq_else.559363
	lw	$r2, -464($r29)
	j	.beq_cont.559364
.beq_else.559363:
	lw	$r2, -416($r29)
	lw	$r5, -20($r29)
	lw	$r6, -464($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -468($r29)	! calldir
	addi	$r29, $r29, -468	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 468	! calldir
	lw	$r31, -468($r29)	! calldir
.beq_cont.559364:
	j	.ble_cont.559362
.ble_else.559361:
	lw	$r2, -416($r29)
	lw	$r6, -464($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -468($r29)	! calldir
	addi	$r29, $r29, -468	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 468	! calldir
	lw	$r31, -468($r29)	! calldir
.ble_cont.559362:
.ble_cont.559360:
.beq_cont.559356:
	j	.ble_cont.559354
.ble_else.559353:
	lw	$r2, -452($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -424($r29)
	sw	$r6, -468($r29)
	bne	$r8, $r7, .beq_else.559365
	sll	$r9, $r6, 1
	lw	$r10, -420($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -472($r29)	! calldir
	addi	$r29, $r29, -472	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 472	! calldir
	lw	$r31, -472($r29)	! calldir
	j	.beq_cont.559366
.beq_else.559365:
	sll	$r9, $r6, 1
	lw	$r10, -420($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -472($r29)	! calldir
	addi	$r29, $r29, -472	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 472	! calldir
	lw	$r31, -472($r29)	! calldir
	lw	$r5, -468($r29)
	addu	$r2, $r2, $r5
.beq_cont.559366:
	lw	$r4, -452($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559367
	addi	$r2, $r4, 0
	j	.ble_cont.559368
.ble_else.559367:
	lw	$r3, -408($r29)
	bgt	$r3, $r2, .ble_else.559369
	bne	$r2, $r3, .beq_else.559371
	lw	$r2, -468($r29)
	j	.beq_cont.559372
.beq_else.559371:
	lw	$r2, -416($r29)
	lw	$r7, -468($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -472($r29)	! calldir
	addi	$r29, $r29, -472	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 472	! calldir
	lw	$r31, -472($r29)	! calldir
.beq_cont.559372:
	j	.ble_cont.559370
.ble_else.559369:
	lw	$r2, -416($r29)
	lw	$r4, -468($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -472($r29)	! calldir
	addi	$r29, $r29, -472	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 472	! calldir
	lw	$r31, -472($r29)	! calldir
.ble_cont.559370:
.ble_cont.559368:
.ble_cont.559354:
.ble_cont.559352:
.beq_cont.559340:
	j	.ble_cont.559338
.ble_else.559337:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -424($r29)
	sw	$r4, -472($r29)
	bne	$r6, $r5, .beq_else.559373
	sll	$r7, $r4, 1
	lw	$r8, -420($r29)
	bne	$r8, $r5, .beq_else.559375
	addi	$r2, $r0, 0
	j	.beq_cont.559376
.beq_else.559375:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559377
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -476($r29)	! calldir
	addi	$r29, $r29, -476	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 476	! calldir
	lw	$r31, -476($r29)	! calldir
	j	.beq_cont.559378
.beq_else.559377:
	sll	$r10, $r7, 1
	sw	$r7, -476($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -480($r29)	! calldir
	addi	$r29, $r29, -480	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 480	! calldir
	lw	$r31, -480($r29)	! calldir
	lw	$r3, -476($r29)
	addu	$r2, $r2, $r3
.beq_cont.559378:
.beq_cont.559376:
	j	.beq_cont.559374
.beq_else.559373:
	sll	$r7, $r4, 1
	lw	$r8, -420($r29)
	bne	$r8, $r5, .beq_else.559379
	addi	$r2, $r0, 0
	j	.beq_cont.559380
.beq_else.559379:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559381
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -480($r29)	! calldir
	addi	$r29, $r29, -480	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 480	! calldir
	lw	$r31, -480($r29)	! calldir
	j	.beq_cont.559382
.beq_else.559381:
	sll	$r10, $r7, 1
	sw	$r7, -480($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -484($r29)	! calldir
	addi	$r29, $r29, -484	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 484	! calldir
	lw	$r31, -484($r29)	! calldir
	lw	$r3, -480($r29)
	addu	$r2, $r2, $r3
.beq_cont.559382:
.beq_cont.559380:
	lw	$r3, -472($r29)
	addu	$r2, $r2, $r3
.beq_cont.559374:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559383
	addi	$r2, $r3, 0
	j	.ble_cont.559384
.ble_else.559383:
	lw	$r5, -408($r29)
	bgt	$r5, $r2, .ble_else.559385
	bne	$r2, $r5, .beq_else.559387
	lw	$r2, -472($r29)
	j	.beq_cont.559388
.beq_else.559387:
	lw	$r2, -472($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -424($r29)
	sw	$r7, -484($r29)
	bne	$r9, $r8, .beq_else.559389
	sll	$r10, $r7, 1
	lw	$r11, -420($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -488($r29)	! calldir
	addi	$r29, $r29, -488	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 488	! calldir
	lw	$r31, -488($r29)	! calldir
	j	.beq_cont.559390
.beq_else.559389:
	sll	$r10, $r7, 1
	lw	$r11, -420($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -488($r29)	! calldir
	addi	$r29, $r29, -488	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 488	! calldir
	lw	$r31, -488($r29)	! calldir
	lw	$r5, -484($r29)
	addu	$r2, $r2, $r5
.beq_cont.559390:
	lw	$r4, -136($r29)
	lw	$r5, -472($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559391
	addi	$r2, $r4, 0
	j	.ble_cont.559392
.ble_else.559391:
	lw	$r3, -408($r29)
	bgt	$r3, $r2, .ble_else.559393
	bne	$r2, $r3, .beq_else.559395
	lw	$r2, -484($r29)
	j	.beq_cont.559396
.beq_else.559395:
	lw	$r2, -416($r29)
	lw	$r5, -484($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -488($r29)	! calldir
	addi	$r29, $r29, -488	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 488	! calldir
	lw	$r31, -488($r29)	! calldir
.beq_cont.559396:
	j	.ble_cont.559394
.ble_else.559393:
	lw	$r2, -416($r29)
	lw	$r7, -484($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -488($r29)	! calldir
	addi	$r29, $r29, -488	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 488	! calldir
	lw	$r31, -488($r29)	! calldir
.ble_cont.559394:
.ble_cont.559392:
.beq_cont.559388:
	j	.ble_cont.559386
.ble_else.559385:
	lw	$r2, -472($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -424($r29)
	sw	$r7, -488($r29)
	bne	$r9, $r8, .beq_else.559397
	sll	$r10, $r7, 1
	lw	$r11, -420($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -492($r29)	! calldir
	addi	$r29, $r29, -492	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 492	! calldir
	lw	$r31, -492($r29)	! calldir
	j	.beq_cont.559398
.beq_else.559397:
	sll	$r10, $r7, 1
	lw	$r11, -420($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -492($r29)	! calldir
	addi	$r29, $r29, -492	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 492	! calldir
	lw	$r31, -492($r29)	! calldir
	lw	$r5, -488($r29)
	addu	$r2, $r2, $r5
.beq_cont.559398:
	lw	$r4, -472($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559399
	addi	$r2, $r4, 0
	j	.ble_cont.559400
.ble_else.559399:
	lw	$r3, -408($r29)
	bgt	$r3, $r2, .ble_else.559401
	bne	$r2, $r3, .beq_else.559403
	lw	$r2, -488($r29)
	j	.beq_cont.559404
.beq_else.559403:
	lw	$r2, -416($r29)
	lw	$r7, -488($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -492($r29)	! calldir
	addi	$r29, $r29, -492	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 492	! calldir
	lw	$r31, -492($r29)	! calldir
.beq_cont.559404:
	j	.ble_cont.559402
.ble_else.559401:
	lw	$r2, -416($r29)
	lw	$r4, -488($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -492($r29)	! calldir
	addi	$r29, $r29, -492	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 492	! calldir
	lw	$r31, -492($r29)	! calldir
.ble_cont.559402:
.ble_cont.559400:
.ble_cont.559386:
.ble_cont.559384:
.ble_cont.559338:
	lw	$r3, -20($r29)
	lw	$r4, -424($r29)
	sw	$r2, -492($r29)
	bne	$r4, $r3, .beq_else.559405
	sll	$r4, $r2, 1
	lw	$r5, -420($r29)
	bne	$r5, $r3, .beq_else.559407
	addi	$r2, $r0, 0
	j	.beq_cont.559408
.beq_else.559407:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559409
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -496($r29)	! calldir
	addi	$r29, $r29, -496	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 496	! calldir
	lw	$r31, -496($r29)	! calldir
	j	.beq_cont.559410
.beq_else.559409:
	sll	$r5, $r4, 1
	sw	$r4, -496($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -500($r29)	! calldir
	addi	$r29, $r29, -500	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 500	! calldir
	lw	$r31, -500($r29)	! calldir
	lw	$r3, -496($r29)
	addu	$r2, $r2, $r3
.beq_cont.559410:
.beq_cont.559408:
	j	.beq_cont.559406
.beq_else.559405:
	sll	$r4, $r2, 1
	lw	$r5, -420($r29)
	bne	$r5, $r3, .beq_else.559411
	addi	$r2, $r0, 0
	j	.beq_cont.559412
.beq_else.559411:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559413
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -500($r29)	! calldir
	addi	$r29, $r29, -500	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 500	! calldir
	lw	$r31, -500($r29)	! calldir
	j	.beq_cont.559414
.beq_else.559413:
	sll	$r5, $r4, 1
	sw	$r4, -500($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -504($r29)	! calldir
	addi	$r29, $r29, -504	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 504	! calldir
	lw	$r31, -504($r29)	! calldir
	lw	$r3, -500($r29)
	addu	$r2, $r2, $r3
.beq_cont.559414:
.beq_cont.559412:
	lw	$r3, -492($r29)
	addu	$r2, $r2, $r3
.beq_cont.559406:
	lw	$r3, -408($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -492($r29)
	sw	$r2, -504($r29)
	bgt	$r4, $r3, .ble_else.559415
	lw	$r5, -412($r29)
	bne	$r5, $r3, .beq_else.559417
	addi	$r2, $r0, 0
	j	.beq_cont.559418
.beq_else.559417:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559418:
	j	.ble_cont.559416
.ble_else.559415:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559416:
	addi	$r3, $r0, 1000
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -20($r29)
	sw	$r2, -508($r29)
	sw	$r3, -512($r29)
	sw	$r4, -516($r29)
	sw	$r5, -520($r29)
	bne	$r5, $r6, .beq_else.559419
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559421
	addi	$r2, $r0, 0
	j	.beq_cont.559422
.beq_else.559421:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559423
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559425
	addi	$r2, $r0, 0
	j	.beq_cont.559426
.beq_else.559425:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559427
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -524($r29)	! calldir
	addi	$r29, $r29, -524	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 524	! calldir
	lw	$r31, -524($r29)	! calldir
	j	.beq_cont.559428
.beq_else.559427:
	sll	$r9, $r8, 1
	sw	$r8, -524($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -528($r29)	! calldir
	addi	$r29, $r29, -528	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 528	! calldir
	lw	$r31, -528($r29)	! calldir
	lw	$r3, -524($r29)
	addu	$r2, $r2, $r3
.beq_cont.559428:
.beq_cont.559426:
	j	.beq_cont.559424
.beq_else.559423:
	sll	$r10, $r8, 1
	sw	$r8, -528($r29)
	bne	$r9, $r6, .beq_else.559429
	addi	$r2, $r0, 0
	j	.beq_cont.559430
.beq_else.559429:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559431
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -532($r29)	! calldir
	addi	$r29, $r29, -532	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 532	! calldir
	lw	$r31, -532($r29)	! calldir
	j	.beq_cont.559432
.beq_else.559431:
	sll	$r9, $r10, 1
	sw	$r10, -532($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -536($r29)	! calldir
	addi	$r29, $r29, -536	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 536	! calldir
	lw	$r31, -536($r29)	! calldir
	lw	$r3, -532($r29)
	addu	$r2, $r2, $r3
.beq_cont.559432:
.beq_cont.559430:
	lw	$r3, -528($r29)
	addu	$r2, $r2, $r3
.beq_cont.559424:
.beq_cont.559422:
	j	.beq_cont.559420
.beq_else.559419:
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559433
	addi	$r2, $r0, 0
	j	.beq_cont.559434
.beq_else.559433:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559435
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559437
	addi	$r2, $r0, 0
	j	.beq_cont.559438
.beq_else.559437:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559439
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -536($r29)	! calldir
	addi	$r29, $r29, -536	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 536	! calldir
	lw	$r31, -536($r29)	! calldir
	j	.beq_cont.559440
.beq_else.559439:
	sll	$r9, $r8, 1
	sw	$r8, -536($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -540($r29)	! calldir
	addi	$r29, $r29, -540	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 540	! calldir
	lw	$r31, -540($r29)	! calldir
	lw	$r3, -536($r29)
	addu	$r2, $r2, $r3
.beq_cont.559440:
.beq_cont.559438:
	j	.beq_cont.559436
.beq_else.559435:
	sll	$r10, $r8, 1
	sw	$r8, -540($r29)
	bne	$r9, $r6, .beq_else.559441
	addi	$r2, $r0, 0
	j	.beq_cont.559442
.beq_else.559441:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559443
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -544($r29)	! calldir
	addi	$r29, $r29, -544	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 544	! calldir
	lw	$r31, -544($r29)	! calldir
	j	.beq_cont.559444
.beq_else.559443:
	sll	$r9, $r10, 1
	sw	$r10, -544($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -548($r29)	! calldir
	addi	$r29, $r29, -548	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 548	! calldir
	lw	$r31, -548($r29)	! calldir
	lw	$r3, -544($r29)
	addu	$r2, $r2, $r3
.beq_cont.559444:
.beq_cont.559442:
	lw	$r3, -540($r29)
	addu	$r2, $r2, $r3
.beq_cont.559436:
.beq_cont.559434:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559420:
	lw	$r3, -504($r29)
	bgt	$r3, $r2, .ble_else.559445
	bne	$r2, $r3, .beq_else.559447
	lw	$r2, -136($r29)
	j	.beq_cont.559448
.beq_else.559447:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -520($r29)
	sw	$r4, -548($r29)
	bne	$r6, $r5, .beq_else.559449
	sll	$r7, $r4, 1
	lw	$r8, -516($r29)
	bne	$r8, $r5, .beq_else.559451
	addi	$r2, $r0, 0
	j	.beq_cont.559452
.beq_else.559451:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559453
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -552($r29)	! calldir
	addi	$r29, $r29, -552	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 552	! calldir
	lw	$r31, -552($r29)	! calldir
	j	.beq_cont.559454
.beq_else.559453:
	sll	$r10, $r7, 1
	sw	$r7, -552($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -556($r29)	! calldir
	addi	$r29, $r29, -556	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 556	! calldir
	lw	$r31, -556($r29)	! calldir
	lw	$r3, -552($r29)
	addu	$r2, $r2, $r3
.beq_cont.559454:
.beq_cont.559452:
	j	.beq_cont.559450
.beq_else.559449:
	sll	$r7, $r4, 1
	lw	$r8, -516($r29)
	bne	$r8, $r5, .beq_else.559455
	addi	$r2, $r0, 0
	j	.beq_cont.559456
.beq_else.559455:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559457
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -556($r29)	! calldir
	addi	$r29, $r29, -556	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 556	! calldir
	lw	$r31, -556($r29)	! calldir
	j	.beq_cont.559458
.beq_else.559457:
	sll	$r10, $r7, 1
	sw	$r7, -556($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -560($r29)	! calldir
	addi	$r29, $r29, -560	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 560	! calldir
	lw	$r31, -560($r29)	! calldir
	lw	$r3, -556($r29)
	addu	$r2, $r2, $r3
.beq_cont.559458:
.beq_cont.559456:
	lw	$r3, -548($r29)
	addu	$r2, $r2, $r3
.beq_cont.559450:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559459
	addi	$r2, $r0, 0
	j	.ble_cont.559460
.ble_else.559459:
	lw	$r4, -504($r29)
	bgt	$r4, $r2, .ble_else.559461
	bne	$r2, $r4, .beq_else.559463
	lw	$r2, -548($r29)
	j	.beq_cont.559464
.beq_else.559463:
	lw	$r2, -548($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -520($r29)
	sw	$r6, -560($r29)
	bne	$r8, $r7, .beq_else.559465
	sll	$r9, $r6, 1
	lw	$r10, -516($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -564($r29)	! calldir
	addi	$r29, $r29, -564	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 564	! calldir
	lw	$r31, -564($r29)	! calldir
	j	.beq_cont.559466
.beq_else.559465:
	sll	$r9, $r6, 1
	lw	$r10, -516($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -564($r29)	! calldir
	addi	$r29, $r29, -564	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 564	! calldir
	lw	$r31, -564($r29)	! calldir
	lw	$r5, -560($r29)
	addu	$r2, $r2, $r5
.beq_cont.559466:
	lw	$r5, -548($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559467
	addi	$r2, $r0, 0
	j	.ble_cont.559468
.ble_else.559467:
	lw	$r3, -504($r29)
	bgt	$r3, $r2, .ble_else.559469
	bne	$r2, $r3, .beq_else.559471
	lw	$r2, -560($r29)
	j	.beq_cont.559472
.beq_else.559471:
	lw	$r2, -512($r29)
	lw	$r5, -20($r29)
	lw	$r6, -560($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -564($r29)	! calldir
	addi	$r29, $r29, -564	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 564	! calldir
	lw	$r31, -564($r29)	! calldir
.beq_cont.559472:
	j	.ble_cont.559470
.ble_else.559469:
	lw	$r2, -512($r29)
	lw	$r6, -560($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -564($r29)	! calldir
	addi	$r29, $r29, -564	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 564	! calldir
	lw	$r31, -564($r29)	! calldir
.ble_cont.559470:
.ble_cont.559468:
.beq_cont.559464:
	j	.ble_cont.559462
.ble_else.559461:
	lw	$r2, -548($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -520($r29)
	sw	$r6, -564($r29)
	bne	$r8, $r7, .beq_else.559473
	sll	$r9, $r6, 1
	lw	$r10, -516($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -568($r29)	! calldir
	addi	$r29, $r29, -568	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 568	! calldir
	lw	$r31, -568($r29)	! calldir
	j	.beq_cont.559474
.beq_else.559473:
	sll	$r9, $r6, 1
	lw	$r10, -516($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -568($r29)	! calldir
	addi	$r29, $r29, -568	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 568	! calldir
	lw	$r31, -568($r29)	! calldir
	lw	$r5, -564($r29)
	addu	$r2, $r2, $r5
.beq_cont.559474:
	lw	$r4, -548($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559475
	addi	$r2, $r4, 0
	j	.ble_cont.559476
.ble_else.559475:
	lw	$r3, -504($r29)
	bgt	$r3, $r2, .ble_else.559477
	bne	$r2, $r3, .beq_else.559479
	lw	$r2, -564($r29)
	j	.beq_cont.559480
.beq_else.559479:
	lw	$r2, -512($r29)
	lw	$r7, -564($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -568($r29)	! calldir
	addi	$r29, $r29, -568	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 568	! calldir
	lw	$r31, -568($r29)	! calldir
.beq_cont.559480:
	j	.ble_cont.559478
.ble_else.559477:
	lw	$r2, -512($r29)
	lw	$r4, -564($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -568($r29)	! calldir
	addi	$r29, $r29, -568	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 568	! calldir
	lw	$r31, -568($r29)	! calldir
.ble_cont.559478:
.ble_cont.559476:
.ble_cont.559462:
.ble_cont.559460:
.beq_cont.559448:
	j	.ble_cont.559446
.ble_else.559445:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -520($r29)
	sw	$r4, -568($r29)
	bne	$r6, $r5, .beq_else.559481
	sll	$r7, $r4, 1
	lw	$r8, -516($r29)
	bne	$r8, $r5, .beq_else.559483
	addi	$r2, $r0, 0
	j	.beq_cont.559484
.beq_else.559483:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559485
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -572($r29)	! calldir
	addi	$r29, $r29, -572	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 572	! calldir
	lw	$r31, -572($r29)	! calldir
	j	.beq_cont.559486
.beq_else.559485:
	sll	$r10, $r7, 1
	sw	$r7, -572($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -576($r29)	! calldir
	addi	$r29, $r29, -576	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 576	! calldir
	lw	$r31, -576($r29)	! calldir
	lw	$r3, -572($r29)
	addu	$r2, $r2, $r3
.beq_cont.559486:
.beq_cont.559484:
	j	.beq_cont.559482
.beq_else.559481:
	sll	$r7, $r4, 1
	lw	$r8, -516($r29)
	bne	$r8, $r5, .beq_else.559487
	addi	$r2, $r0, 0
	j	.beq_cont.559488
.beq_else.559487:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559489
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -576($r29)	! calldir
	addi	$r29, $r29, -576	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 576	! calldir
	lw	$r31, -576($r29)	! calldir
	j	.beq_cont.559490
.beq_else.559489:
	sll	$r10, $r7, 1
	sw	$r7, -576($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -580($r29)	! calldir
	addi	$r29, $r29, -580	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 580	! calldir
	lw	$r31, -580($r29)	! calldir
	lw	$r3, -576($r29)
	addu	$r2, $r2, $r3
.beq_cont.559490:
.beq_cont.559488:
	lw	$r3, -568($r29)
	addu	$r2, $r2, $r3
.beq_cont.559482:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559491
	addi	$r2, $r3, 0
	j	.ble_cont.559492
.ble_else.559491:
	lw	$r5, -504($r29)
	bgt	$r5, $r2, .ble_else.559493
	bne	$r2, $r5, .beq_else.559495
	lw	$r2, -568($r29)
	j	.beq_cont.559496
.beq_else.559495:
	lw	$r2, -568($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -520($r29)
	sw	$r7, -580($r29)
	bne	$r9, $r8, .beq_else.559497
	sll	$r10, $r7, 1
	lw	$r11, -516($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -584($r29)	! calldir
	addi	$r29, $r29, -584	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 584	! calldir
	lw	$r31, -584($r29)	! calldir
	j	.beq_cont.559498
.beq_else.559497:
	sll	$r10, $r7, 1
	lw	$r11, -516($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -584($r29)	! calldir
	addi	$r29, $r29, -584	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 584	! calldir
	lw	$r31, -584($r29)	! calldir
	lw	$r5, -580($r29)
	addu	$r2, $r2, $r5
.beq_cont.559498:
	lw	$r4, -136($r29)
	lw	$r5, -568($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559499
	addi	$r2, $r4, 0
	j	.ble_cont.559500
.ble_else.559499:
	lw	$r3, -504($r29)
	bgt	$r3, $r2, .ble_else.559501
	bne	$r2, $r3, .beq_else.559503
	lw	$r2, -580($r29)
	j	.beq_cont.559504
.beq_else.559503:
	lw	$r2, -512($r29)
	lw	$r5, -580($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -584($r29)	! calldir
	addi	$r29, $r29, -584	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 584	! calldir
	lw	$r31, -584($r29)	! calldir
.beq_cont.559504:
	j	.ble_cont.559502
.ble_else.559501:
	lw	$r2, -512($r29)
	lw	$r7, -580($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -584($r29)	! calldir
	addi	$r29, $r29, -584	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 584	! calldir
	lw	$r31, -584($r29)	! calldir
.ble_cont.559502:
.ble_cont.559500:
.beq_cont.559496:
	j	.ble_cont.559494
.ble_else.559493:
	lw	$r2, -568($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -520($r29)
	sw	$r7, -584($r29)
	bne	$r9, $r8, .beq_else.559505
	sll	$r10, $r7, 1
	lw	$r11, -516($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -588($r29)	! calldir
	addi	$r29, $r29, -588	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 588	! calldir
	lw	$r31, -588($r29)	! calldir
	j	.beq_cont.559506
.beq_else.559505:
	sll	$r10, $r7, 1
	lw	$r11, -516($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -588($r29)	! calldir
	addi	$r29, $r29, -588	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 588	! calldir
	lw	$r31, -588($r29)	! calldir
	lw	$r5, -584($r29)
	addu	$r2, $r2, $r5
.beq_cont.559506:
	lw	$r4, -568($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559507
	addi	$r2, $r4, 0
	j	.ble_cont.559508
.ble_else.559507:
	lw	$r3, -504($r29)
	bgt	$r3, $r2, .ble_else.559509
	bne	$r2, $r3, .beq_else.559511
	lw	$r2, -584($r29)
	j	.beq_cont.559512
.beq_else.559511:
	lw	$r2, -512($r29)
	lw	$r7, -584($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -588($r29)	! calldir
	addi	$r29, $r29, -588	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 588	! calldir
	lw	$r31, -588($r29)	! calldir
.beq_cont.559512:
	j	.ble_cont.559510
.ble_else.559509:
	lw	$r2, -512($r29)
	lw	$r4, -584($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -588($r29)	! calldir
	addi	$r29, $r29, -588	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 588	! calldir
	lw	$r31, -588($r29)	! calldir
.ble_cont.559510:
.ble_cont.559508:
.ble_cont.559494:
.ble_cont.559492:
.ble_cont.559446:
	lw	$r3, -20($r29)
	lw	$r4, -520($r29)
	sw	$r2, -588($r29)
	bne	$r4, $r3, .beq_else.559513
	sll	$r4, $r2, 1
	lw	$r5, -516($r29)
	bne	$r5, $r3, .beq_else.559515
	addi	$r2, $r0, 0
	j	.beq_cont.559516
.beq_else.559515:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559517
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -592($r29)	! calldir
	addi	$r29, $r29, -592	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 592	! calldir
	lw	$r31, -592($r29)	! calldir
	j	.beq_cont.559518
.beq_else.559517:
	sll	$r5, $r4, 1
	sw	$r4, -592($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -596($r29)	! calldir
	addi	$r29, $r29, -596	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 596	! calldir
	lw	$r31, -596($r29)	! calldir
	lw	$r3, -592($r29)
	addu	$r2, $r2, $r3
.beq_cont.559518:
.beq_cont.559516:
	j	.beq_cont.559514
.beq_else.559513:
	sll	$r4, $r2, 1
	lw	$r5, -516($r29)
	bne	$r5, $r3, .beq_else.559519
	addi	$r2, $r0, 0
	j	.beq_cont.559520
.beq_else.559519:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559521
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -596($r29)	! calldir
	addi	$r29, $r29, -596	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 596	! calldir
	lw	$r31, -596($r29)	! calldir
	j	.beq_cont.559522
.beq_else.559521:
	sll	$r5, $r4, 1
	sw	$r4, -596($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -600($r29)	! calldir
	addi	$r29, $r29, -600	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 600	! calldir
	lw	$r31, -600($r29)	! calldir
	lw	$r3, -596($r29)
	addu	$r2, $r2, $r3
.beq_cont.559522:
.beq_cont.559520:
	lw	$r3, -588($r29)
	addu	$r2, $r2, $r3
.beq_cont.559514:
	lw	$r3, -504($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -588($r29)
	sw	$r2, -600($r29)
	bgt	$r4, $r3, .ble_else.559523
	lw	$r5, -508($r29)
	bne	$r5, $r3, .beq_else.559525
	addi	$r2, $r0, 0
	j	.beq_cont.559526
.beq_else.559525:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559526:
	j	.ble_cont.559524
.ble_else.559523:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559524:
	addi	$r3, $r0, 100
	sra	$r4, $r3, 1
	sll	$r5, $r4, 1
	subu	$r5, $r3, $r5
	lw	$r6, -20($r29)
	sw	$r2, -604($r29)
	sw	$r3, -608($r29)
	sw	$r4, -612($r29)
	sw	$r5, -616($r29)
	bne	$r5, $r6, .beq_else.559527
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559529
	addi	$r2, $r0, 0
	j	.beq_cont.559530
.beq_else.559529:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559531
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559533
	addi	$r2, $r0, 0
	j	.beq_cont.559534
.beq_else.559533:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559535
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -620($r29)	! calldir
	addi	$r29, $r29, -620	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 620	! calldir
	lw	$r31, -620($r29)	! calldir
	j	.beq_cont.559536
.beq_else.559535:
	sll	$r9, $r8, 1
	sw	$r8, -620($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -624($r29)	! calldir
	addi	$r29, $r29, -624	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 624	! calldir
	lw	$r31, -624($r29)	! calldir
	lw	$r3, -620($r29)
	addu	$r2, $r2, $r3
.beq_cont.559536:
.beq_cont.559534:
	j	.beq_cont.559532
.beq_else.559531:
	sll	$r10, $r8, 1
	sw	$r8, -624($r29)
	bne	$r9, $r6, .beq_else.559537
	addi	$r2, $r0, 0
	j	.beq_cont.559538
.beq_else.559537:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559539
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -628($r29)	! calldir
	addi	$r29, $r29, -628	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 628	! calldir
	lw	$r31, -628($r29)	! calldir
	j	.beq_cont.559540
.beq_else.559539:
	sll	$r9, $r10, 1
	sw	$r10, -628($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -632($r29)	! calldir
	addi	$r29, $r29, -632	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 632	! calldir
	lw	$r31, -632($r29)	! calldir
	lw	$r3, -628($r29)
	addu	$r2, $r2, $r3
.beq_cont.559540:
.beq_cont.559538:
	lw	$r3, -624($r29)
	addu	$r2, $r2, $r3
.beq_cont.559532:
.beq_cont.559530:
	j	.beq_cont.559528
.beq_else.559527:
	lw	$r7, -136($r29)
	sll	$r8, $r7, 1
	bne	$r4, $r6, .beq_else.559541
	addi	$r2, $r0, 0
	j	.beq_cont.559542
.beq_else.559541:
	sra	$r9, $r4, 1
	sll	$r10, $r9, 1
	subu	$r10, $r4, $r10
	bne	$r10, $r6, .beq_else.559543
	sll	$r8, $r8, 1
	bne	$r9, $r6, .beq_else.559545
	addi	$r2, $r0, 0
	j	.beq_cont.559546
.beq_else.559545:
	sra	$r10, $r9, 1
	sll	$r11, $r10, 1
	subu	$r9, $r9, $r11
	bne	$r9, $r6, .beq_else.559547
	sll	$r8, $r8, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -632($r29)	! calldir
	addi	$r29, $r29, -632	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 632	! calldir
	lw	$r31, -632($r29)	! calldir
	j	.beq_cont.559548
.beq_else.559547:
	sll	$r9, $r8, 1
	sw	$r8, -632($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -636($r29)	! calldir
	addi	$r29, $r29, -636	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 636	! calldir
	lw	$r31, -636($r29)	! calldir
	lw	$r3, -632($r29)
	addu	$r2, $r2, $r3
.beq_cont.559548:
.beq_cont.559546:
	j	.beq_cont.559544
.beq_else.559543:
	sll	$r10, $r8, 1
	sw	$r8, -636($r29)
	bne	$r9, $r6, .beq_else.559549
	addi	$r2, $r0, 0
	j	.beq_cont.559550
.beq_else.559549:
	sra	$r11, $r9, 1
	sll	$r12, $r11, 1
	subu	$r9, $r9, $r12
	bne	$r9, $r6, .beq_else.559551
	sll	$r9, $r10, 1
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -640($r29)	! calldir
	addi	$r29, $r29, -640	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 640	! calldir
	lw	$r31, -640($r29)	! calldir
	j	.beq_cont.559552
.beq_else.559551:
	sll	$r9, $r10, 1
	sw	$r10, -640($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -644($r29)	! calldir
	addi	$r29, $r29, -644	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 644	! calldir
	lw	$r31, -644($r29)	! calldir
	lw	$r3, -640($r29)
	addu	$r2, $r2, $r3
.beq_cont.559552:
.beq_cont.559550:
	lw	$r3, -636($r29)
	addu	$r2, $r2, $r3
.beq_cont.559544:
.beq_cont.559542:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559528:
	lw	$r3, -600($r29)
	bgt	$r3, $r2, .ble_else.559553
	bne	$r2, $r3, .beq_else.559555
	lw	$r2, -136($r29)
	j	.beq_cont.559556
.beq_else.559555:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -616($r29)
	sw	$r4, -644($r29)
	bne	$r6, $r5, .beq_else.559557
	sll	$r7, $r4, 1
	lw	$r8, -612($r29)
	bne	$r8, $r5, .beq_else.559559
	addi	$r2, $r0, 0
	j	.beq_cont.559560
.beq_else.559559:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559561
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -648($r29)	! calldir
	addi	$r29, $r29, -648	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 648	! calldir
	lw	$r31, -648($r29)	! calldir
	j	.beq_cont.559562
.beq_else.559561:
	sll	$r10, $r7, 1
	sw	$r7, -648($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -652($r29)	! calldir
	addi	$r29, $r29, -652	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 652	! calldir
	lw	$r31, -652($r29)	! calldir
	lw	$r3, -648($r29)
	addu	$r2, $r2, $r3
.beq_cont.559562:
.beq_cont.559560:
	j	.beq_cont.559558
.beq_else.559557:
	sll	$r7, $r4, 1
	lw	$r8, -612($r29)
	bne	$r8, $r5, .beq_else.559563
	addi	$r2, $r0, 0
	j	.beq_cont.559564
.beq_else.559563:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559565
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -652($r29)	! calldir
	addi	$r29, $r29, -652	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 652	! calldir
	lw	$r31, -652($r29)	! calldir
	j	.beq_cont.559566
.beq_else.559565:
	sll	$r10, $r7, 1
	sw	$r7, -652($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -656($r29)	! calldir
	addi	$r29, $r29, -656	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 656	! calldir
	lw	$r31, -656($r29)	! calldir
	lw	$r3, -652($r29)
	addu	$r2, $r2, $r3
.beq_cont.559566:
.beq_cont.559564:
	lw	$r3, -644($r29)
	addu	$r2, $r2, $r3
.beq_cont.559558:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559567
	addi	$r2, $r0, 0
	j	.ble_cont.559568
.ble_else.559567:
	lw	$r4, -600($r29)
	bgt	$r4, $r2, .ble_else.559569
	bne	$r2, $r4, .beq_else.559571
	lw	$r2, -644($r29)
	j	.beq_cont.559572
.beq_else.559571:
	lw	$r2, -644($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -616($r29)
	sw	$r6, -656($r29)
	bne	$r8, $r7, .beq_else.559573
	sll	$r9, $r6, 1
	lw	$r10, -612($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -660($r29)	! calldir
	addi	$r29, $r29, -660	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 660	! calldir
	lw	$r31, -660($r29)	! calldir
	j	.beq_cont.559574
.beq_else.559573:
	sll	$r9, $r6, 1
	lw	$r10, -612($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -660($r29)	! calldir
	addi	$r29, $r29, -660	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 660	! calldir
	lw	$r31, -660($r29)	! calldir
	lw	$r5, -656($r29)
	addu	$r2, $r2, $r5
.beq_cont.559574:
	lw	$r5, -644($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559575
	addi	$r2, $r0, 0
	j	.ble_cont.559576
.ble_else.559575:
	lw	$r3, -600($r29)
	bgt	$r3, $r2, .ble_else.559577
	bne	$r2, $r3, .beq_else.559579
	lw	$r2, -656($r29)
	j	.beq_cont.559580
.beq_else.559579:
	lw	$r2, -608($r29)
	lw	$r5, -20($r29)
	lw	$r6, -656($r29)
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -660($r29)	! calldir
	addi	$r29, $r29, -660	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 660	! calldir
	lw	$r31, -660($r29)	! calldir
.beq_cont.559580:
	j	.ble_cont.559578
.ble_else.559577:
	lw	$r2, -608($r29)
	lw	$r6, -656($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -660($r29)	! calldir
	addi	$r29, $r29, -660	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 660	! calldir
	lw	$r31, -660($r29)	! calldir
.ble_cont.559578:
.ble_cont.559576:
.beq_cont.559572:
	j	.ble_cont.559570
.ble_else.559569:
	lw	$r2, -644($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -616($r29)
	sw	$r6, -660($r29)
	bne	$r8, $r7, .beq_else.559581
	sll	$r9, $r6, 1
	lw	$r10, -612($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -664($r29)	! calldir
	addi	$r29, $r29, -664	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 664	! calldir
	lw	$r31, -664($r29)	! calldir
	j	.beq_cont.559582
.beq_else.559581:
	sll	$r9, $r6, 1
	lw	$r10, -612($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -664($r29)	! calldir
	addi	$r29, $r29, -664	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 664	! calldir
	lw	$r31, -664($r29)	! calldir
	lw	$r5, -660($r29)
	addu	$r2, $r2, $r5
.beq_cont.559582:
	lw	$r4, -644($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559583
	addi	$r2, $r4, 0
	j	.ble_cont.559584
.ble_else.559583:
	lw	$r3, -600($r29)
	bgt	$r3, $r2, .ble_else.559585
	bne	$r2, $r3, .beq_else.559587
	lw	$r2, -660($r29)
	j	.beq_cont.559588
.beq_else.559587:
	lw	$r2, -608($r29)
	lw	$r7, -660($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -664($r29)	! calldir
	addi	$r29, $r29, -664	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 664	! calldir
	lw	$r31, -664($r29)	! calldir
.beq_cont.559588:
	j	.ble_cont.559586
.ble_else.559585:
	lw	$r2, -608($r29)
	lw	$r4, -660($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -664($r29)	! calldir
	addi	$r29, $r29, -664	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 664	! calldir
	lw	$r31, -664($r29)	! calldir
.ble_cont.559586:
.ble_cont.559584:
.ble_cont.559570:
.ble_cont.559568:
.beq_cont.559556:
	j	.ble_cont.559554
.ble_else.559553:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -616($r29)
	sw	$r4, -664($r29)
	bne	$r6, $r5, .beq_else.559589
	sll	$r7, $r4, 1
	lw	$r8, -612($r29)
	bne	$r8, $r5, .beq_else.559591
	addi	$r2, $r0, 0
	j	.beq_cont.559592
.beq_else.559591:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559593
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -668($r29)	! calldir
	addi	$r29, $r29, -668	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 668	! calldir
	lw	$r31, -668($r29)	! calldir
	j	.beq_cont.559594
.beq_else.559593:
	sll	$r10, $r7, 1
	sw	$r7, -668($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -672($r29)	! calldir
	addi	$r29, $r29, -672	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 672	! calldir
	lw	$r31, -672($r29)	! calldir
	lw	$r3, -668($r29)
	addu	$r2, $r2, $r3
.beq_cont.559594:
.beq_cont.559592:
	j	.beq_cont.559590
.beq_else.559589:
	sll	$r7, $r4, 1
	lw	$r8, -612($r29)
	bne	$r8, $r5, .beq_else.559595
	addi	$r2, $r0, 0
	j	.beq_cont.559596
.beq_else.559595:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r10, $r8, $r10
	bne	$r10, $r5, .beq_else.559597
	sll	$r7, $r7, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -672($r29)	! calldir
	addi	$r29, $r29, -672	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 672	! calldir
	lw	$r31, -672($r29)	! calldir
	j	.beq_cont.559598
.beq_else.559597:
	sll	$r10, $r7, 1
	sw	$r7, -672($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -676($r29)	! calldir
	addi	$r29, $r29, -676	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 676	! calldir
	lw	$r31, -676($r29)	! calldir
	lw	$r3, -672($r29)
	addu	$r2, $r2, $r3
.beq_cont.559598:
.beq_cont.559596:
	lw	$r3, -664($r29)
	addu	$r2, $r2, $r3
.beq_cont.559590:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559599
	addi	$r2, $r3, 0
	j	.ble_cont.559600
.ble_else.559599:
	lw	$r5, -600($r29)
	bgt	$r5, $r2, .ble_else.559601
	bne	$r2, $r5, .beq_else.559603
	lw	$r2, -664($r29)
	j	.beq_cont.559604
.beq_else.559603:
	lw	$r2, -664($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -616($r29)
	sw	$r7, -676($r29)
	bne	$r9, $r8, .beq_else.559605
	sll	$r10, $r7, 1
	lw	$r11, -612($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -680($r29)	! calldir
	addi	$r29, $r29, -680	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 680	! calldir
	lw	$r31, -680($r29)	! calldir
	j	.beq_cont.559606
.beq_else.559605:
	sll	$r10, $r7, 1
	lw	$r11, -612($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -680($r29)	! calldir
	addi	$r29, $r29, -680	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 680	! calldir
	lw	$r31, -680($r29)	! calldir
	lw	$r5, -676($r29)
	addu	$r2, $r2, $r5
.beq_cont.559606:
	lw	$r4, -136($r29)
	lw	$r5, -664($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559607
	addi	$r2, $r4, 0
	j	.ble_cont.559608
.ble_else.559607:
	lw	$r3, -600($r29)
	bgt	$r3, $r2, .ble_else.559609
	bne	$r2, $r3, .beq_else.559611
	lw	$r2, -676($r29)
	j	.beq_cont.559612
.beq_else.559611:
	lw	$r2, -608($r29)
	lw	$r5, -676($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -680($r29)	! calldir
	addi	$r29, $r29, -680	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 680	! calldir
	lw	$r31, -680($r29)	! calldir
.beq_cont.559612:
	j	.ble_cont.559610
.ble_else.559609:
	lw	$r2, -608($r29)
	lw	$r7, -676($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -680($r29)	! calldir
	addi	$r29, $r29, -680	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 680	! calldir
	lw	$r31, -680($r29)	! calldir
.ble_cont.559610:
.ble_cont.559608:
.beq_cont.559604:
	j	.ble_cont.559602
.ble_else.559601:
	lw	$r2, -664($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -616($r29)
	sw	$r7, -680($r29)
	bne	$r9, $r8, .beq_else.559613
	sll	$r10, $r7, 1
	lw	$r11, -612($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -684($r29)	! calldir
	addi	$r29, $r29, -684	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 684	! calldir
	lw	$r31, -684($r29)	! calldir
	j	.beq_cont.559614
.beq_else.559613:
	sll	$r10, $r7, 1
	lw	$r11, -612($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -684($r29)	! calldir
	addi	$r29, $r29, -684	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 684	! calldir
	lw	$r31, -684($r29)	! calldir
	lw	$r5, -680($r29)
	addu	$r2, $r2, $r5
.beq_cont.559614:
	lw	$r4, -664($r29)
	lw	$r5, -120($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559615
	addi	$r2, $r4, 0
	j	.ble_cont.559616
.ble_else.559615:
	lw	$r3, -600($r29)
	bgt	$r3, $r2, .ble_else.559617
	bne	$r2, $r3, .beq_else.559619
	lw	$r2, -680($r29)
	j	.beq_cont.559620
.beq_else.559619:
	lw	$r2, -608($r29)
	lw	$r7, -680($r29)
	addi	$r5, $r7, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -684($r29)	! calldir
	addi	$r29, $r29, -684	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 684	! calldir
	lw	$r31, -684($r29)	! calldir
.beq_cont.559620:
	j	.ble_cont.559618
.ble_else.559617:
	lw	$r2, -608($r29)
	lw	$r4, -680($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -684($r29)	! calldir
	addi	$r29, $r29, -684	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 684	! calldir
	lw	$r31, -684($r29)	! calldir
.ble_cont.559618:
.ble_cont.559616:
.ble_cont.559602:
.ble_cont.559600:
.ble_cont.559554:
	lw	$r3, -20($r29)
	lw	$r4, -616($r29)
	sw	$r2, -684($r29)
	bne	$r4, $r3, .beq_else.559621
	sll	$r4, $r2, 1
	lw	$r5, -612($r29)
	bne	$r5, $r3, .beq_else.559623
	addi	$r2, $r0, 0
	j	.beq_cont.559624
.beq_else.559623:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559625
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -688($r29)	! calldir
	addi	$r29, $r29, -688	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 688	! calldir
	lw	$r31, -688($r29)	! calldir
	j	.beq_cont.559626
.beq_else.559625:
	sll	$r5, $r4, 1
	sw	$r4, -688($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -692($r29)	! calldir
	addi	$r29, $r29, -692	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 692	! calldir
	lw	$r31, -692($r29)	! calldir
	lw	$r3, -688($r29)
	addu	$r2, $r2, $r3
.beq_cont.559626:
.beq_cont.559624:
	j	.beq_cont.559622
.beq_else.559621:
	sll	$r4, $r2, 1
	lw	$r5, -612($r29)
	bne	$r5, $r3, .beq_else.559627
	addi	$r2, $r0, 0
	j	.beq_cont.559628
.beq_else.559627:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559629
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -692($r29)	! calldir
	addi	$r29, $r29, -692	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 692	! calldir
	lw	$r31, -692($r29)	! calldir
	j	.beq_cont.559630
.beq_else.559629:
	sll	$r5, $r4, 1
	sw	$r4, -692($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -696($r29)	! calldir
	addi	$r29, $r29, -696	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 696	! calldir
	lw	$r31, -696($r29)	! calldir
	lw	$r3, -692($r29)
	addu	$r2, $r2, $r3
.beq_cont.559630:
.beq_cont.559628:
	lw	$r3, -684($r29)
	addu	$r2, $r2, $r3
.beq_cont.559622:
	lw	$r3, -600($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -684($r29)
	sw	$r2, -696($r29)
	bgt	$r4, $r3, .ble_else.559631
	lw	$r5, -604($r29)
	bne	$r5, $r3, .beq_else.559633
	addi	$r2, $r0, 0
	j	.beq_cont.559634
.beq_else.559633:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559634:
	j	.ble_cont.559632
.ble_else.559631:
	addi	$r4, $r4, 48
	addi	$r2, $r4, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559632:
	lw	$r3, -136($r29)
	sll	$r4, $r3, 1
	lw	$r5, -120($r29)
	subu	$r6, $r5, $r4
	lw	$r7, -20($r29)
	sw	$r2, -700($r29)
	sw	$r6, -704($r29)
	bne	$r6, $r7, .beq_else.559635
	bne	$r3, $r7, .beq_else.559637
	addi	$r2, $r0, 0
	j	.beq_cont.559638
.beq_else.559637:
	sra	$r8, $r3, 1
	sll	$r9, $r8, 1
	subu	$r9, $r3, $r9
	bne	$r9, $r7, .beq_else.559639
	sll	$r4, $r4, 1
	bne	$r8, $r7, .beq_else.559641
	addi	$r2, $r0, 0
	j	.beq_cont.559642
.beq_else.559641:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r8, $r8, $r10
	bne	$r8, $r7, .beq_else.559643
	sll	$r4, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -708($r29)	! calldir
	addi	$r29, $r29, -708	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 708	! calldir
	lw	$r31, -708($r29)	! calldir
	j	.beq_cont.559644
.beq_else.559643:
	sll	$r8, $r4, 1
	sw	$r4, -708($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -712($r29)	! calldir
	addi	$r29, $r29, -712	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 712	! calldir
	lw	$r31, -712($r29)	! calldir
	lw	$r3, -708($r29)
	addu	$r2, $r2, $r3
.beq_cont.559644:
.beq_cont.559642:
	j	.beq_cont.559640
.beq_else.559639:
	sll	$r9, $r4, 1
	sw	$r4, -712($r29)
	bne	$r8, $r7, .beq_else.559645
	addi	$r2, $r0, 0
	j	.beq_cont.559646
.beq_else.559645:
	sra	$r10, $r8, 1
	sll	$r11, $r10, 1
	subu	$r8, $r8, $r11
	bne	$r8, $r7, .beq_else.559647
	sll	$r8, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -716($r29)	! calldir
	addi	$r29, $r29, -716	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 716	! calldir
	lw	$r31, -716($r29)	! calldir
	j	.beq_cont.559648
.beq_else.559647:
	sll	$r8, $r9, 1
	sw	$r9, -716($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -720($r29)	! calldir
	addi	$r29, $r29, -720	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 720	! calldir
	lw	$r31, -720($r29)	! calldir
	lw	$r3, -716($r29)
	addu	$r2, $r2, $r3
.beq_cont.559648:
.beq_cont.559646:
	lw	$r3, -712($r29)
	addu	$r2, $r2, $r3
.beq_cont.559640:
.beq_cont.559638:
	j	.beq_cont.559636
.beq_else.559635:
	bne	$r3, $r7, .beq_else.559649
	addi	$r2, $r0, 0
	j	.beq_cont.559650
.beq_else.559649:
	sra	$r8, $r3, 1
	sll	$r9, $r8, 1
	subu	$r9, $r3, $r9
	bne	$r9, $r7, .beq_else.559651
	sll	$r4, $r4, 1
	bne	$r8, $r7, .beq_else.559653
	addi	$r2, $r0, 0
	j	.beq_cont.559654
.beq_else.559653:
	sra	$r9, $r8, 1
	sll	$r10, $r9, 1
	subu	$r8, $r8, $r10
	bne	$r8, $r7, .beq_else.559655
	sll	$r4, $r4, 1
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -720($r29)	! calldir
	addi	$r29, $r29, -720	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 720	! calldir
	lw	$r31, -720($r29)	! calldir
	j	.beq_cont.559656
.beq_else.559655:
	sll	$r8, $r4, 1
	sw	$r4, -720($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -724($r29)	! calldir
	addi	$r29, $r29, -724	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 724	! calldir
	lw	$r31, -724($r29)	! calldir
	lw	$r3, -720($r29)
	addu	$r2, $r2, $r3
.beq_cont.559656:
.beq_cont.559654:
	j	.beq_cont.559652
.beq_else.559651:
	sll	$r9, $r4, 1
	sw	$r4, -712($r29)
	bne	$r8, $r7, .beq_else.559657
	addi	$r2, $r0, 0
	j	.beq_cont.559658
.beq_else.559657:
	sra	$r10, $r8, 1
	sll	$r11, $r10, 1
	subu	$r8, $r8, $r11
	bne	$r8, $r7, .beq_else.559659
	sll	$r8, $r9, 1
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -724($r29)	! calldir
	addi	$r29, $r29, -724	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 724	! calldir
	lw	$r31, -724($r29)	! calldir
	j	.beq_cont.559660
.beq_else.559659:
	sll	$r8, $r9, 1
	sw	$r9, -724($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -728($r29)	! calldir
	addi	$r29, $r29, -728	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 728	! calldir
	lw	$r31, -728($r29)	! calldir
	lw	$r3, -724($r29)
	addu	$r2, $r2, $r3
.beq_cont.559660:
.beq_cont.559658:
	lw	$r3, -712($r29)
	addu	$r2, $r2, $r3
.beq_cont.559652:
.beq_cont.559650:
	lw	$r3, -136($r29)
	addu	$r2, $r2, $r3
.beq_cont.559636:
	lw	$r3, -696($r29)
	bgt	$r3, $r2, .ble_else.559661
	bne	$r2, $r3, .beq_else.559663
	lw	$r2, -136($r29)
	j	.beq_cont.559664
.beq_else.559663:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 0
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -704($r29)
	sw	$r4, -728($r29)
	bne	$r6, $r5, .beq_else.559665
	sll	$r7, $r4, 1
	bne	$r2, $r5, .beq_else.559667
	addi	$r2, $r0, 0
	j	.beq_cont.559668
.beq_else.559667:
	sra	$r8, $r2, 1
	sll	$r9, $r8, 1
	subu	$r9, $r2, $r9
	bne	$r9, $r5, .beq_else.559669
	sll	$r7, $r7, 1
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -732($r29)	! calldir
	addi	$r29, $r29, -732	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 732	! calldir
	lw	$r31, -732($r29)	! calldir
	j	.beq_cont.559670
.beq_else.559669:
	sll	$r9, $r7, 1
	sw	$r7, -732($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -736($r29)	! calldir
	addi	$r29, $r29, -736	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 736	! calldir
	lw	$r31, -736($r29)	! calldir
	lw	$r3, -732($r29)
	addu	$r2, $r2, $r3
.beq_cont.559670:
.beq_cont.559668:
	j	.beq_cont.559666
.beq_else.559665:
	sll	$r7, $r4, 1
	bne	$r2, $r5, .beq_else.559671
	addi	$r2, $r0, 0
	j	.beq_cont.559672
.beq_else.559671:
	sra	$r8, $r2, 1
	sll	$r9, $r8, 1
	subu	$r9, $r2, $r9
	bne	$r9, $r5, .beq_else.559673
	sll	$r7, $r7, 1
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -736($r29)	! calldir
	addi	$r29, $r29, -736	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 736	! calldir
	lw	$r31, -736($r29)	! calldir
	j	.beq_cont.559674
.beq_else.559673:
	sll	$r9, $r7, 1
	sw	$r7, -736($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -740($r29)	! calldir
	addi	$r29, $r29, -740	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 740	! calldir
	lw	$r31, -740($r29)	! calldir
	lw	$r3, -736($r29)
	addu	$r2, $r2, $r3
.beq_cont.559674:
.beq_cont.559672:
	lw	$r3, -728($r29)
	addu	$r2, $r2, $r3
.beq_cont.559666:
	lw	$r3, -136($r29)
	addi	$r4, $r3, 0
	lw	$r5, -12($r29)
	bgt	$r4, $r5, .ble_else.559675
	addi	$r2, $r0, 0
	j	.ble_cont.559676
.ble_else.559675:
	lw	$r4, -696($r29)
	bgt	$r4, $r2, .ble_else.559677
	bne	$r2, $r4, .beq_else.559679
	lw	$r2, -728($r29)
	j	.beq_cont.559680
.beq_else.559679:
	lw	$r2, -728($r29)
	addi	$r6, $r2, 0
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -704($r29)
	sw	$r6, -740($r29)
	bne	$r8, $r7, .beq_else.559681
	sll	$r9, $r6, 1
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -744($r29)	! calldir
	addi	$r29, $r29, -744	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 744	! calldir
	lw	$r31, -744($r29)	! calldir
	j	.beq_cont.559682
.beq_else.559681:
	sll	$r9, $r6, 1
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -744($r29)	! calldir
	addi	$r29, $r29, -744	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 744	! calldir
	lw	$r31, -744($r29)	! calldir
	lw	$r5, -740($r29)
	addu	$r2, $r2, $r5
.beq_cont.559682:
	lw	$r5, -728($r29)
	addi	$r3, $r5, 0
	lw	$r4, -12($r29)
	bgt	$r3, $r4, .ble_else.559683
	addi	$r2, $r0, 0
	j	.ble_cont.559684
.ble_else.559683:
	lw	$r3, -696($r29)
	bgt	$r3, $r2, .ble_else.559685
	bne	$r2, $r3, .beq_else.559687
	lw	$r2, -740($r29)
	j	.beq_cont.559688
.beq_else.559687:
	lw	$r2, -120($r29)
	lw	$r4, -20($r29)
	lw	$r5, -740($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -744($r29)	! calldir
	addi	$r29, $r29, -744	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 744	! calldir
	lw	$r31, -744($r29)	! calldir
.beq_cont.559688:
	j	.ble_cont.559686
.ble_else.559685:
	lw	$r2, -120($r29)
	lw	$r4, -740($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -744($r29)	! calldir
	addi	$r29, $r29, -744	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 744	! calldir
	lw	$r31, -744($r29)	! calldir
.ble_cont.559686:
.ble_cont.559684:
.beq_cont.559680:
	j	.ble_cont.559678
.ble_else.559677:
	lw	$r2, -728($r29)
	addu	$r6, $r2, $r3
	sra	$r6, $r6, 1
	lw	$r7, -20($r29)
	lw	$r8, -704($r29)
	sw	$r6, -744($r29)
	bne	$r8, $r7, .beq_else.559689
	sll	$r9, $r6, 1
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -748($r29)	! calldir
	addi	$r29, $r29, -748	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 748	! calldir
	lw	$r31, -748($r29)	! calldir
	j	.beq_cont.559690
.beq_else.559689:
	sll	$r9, $r6, 1
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -748($r29)	! calldir
	addi	$r29, $r29, -748	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 748	! calldir
	lw	$r31, -748($r29)	! calldir
	lw	$r5, -744($r29)
	addu	$r2, $r2, $r5
.beq_cont.559690:
	lw	$r4, -728($r29)
	lw	$r5, -136($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559691
	addi	$r2, $r4, 0
	j	.ble_cont.559692
.ble_else.559691:
	lw	$r3, -696($r29)
	bgt	$r3, $r2, .ble_else.559693
	bne	$r2, $r3, .beq_else.559695
	lw	$r2, -744($r29)
	j	.beq_cont.559696
.beq_else.559695:
	lw	$r2, -120($r29)
	lw	$r6, -744($r29)
	addi	$r5, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -748($r29)	! calldir
	addi	$r29, $r29, -748	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 748	! calldir
	lw	$r31, -748($r29)	! calldir
.beq_cont.559696:
	j	.ble_cont.559694
.ble_else.559693:
	lw	$r2, -120($r29)
	lw	$r4, -744($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -748($r29)	! calldir
	addi	$r29, $r29, -748	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 748	! calldir
	lw	$r31, -748($r29)	! calldir
.ble_cont.559694:
.ble_cont.559692:
.ble_cont.559678:
.ble_cont.559676:
.beq_cont.559664:
	j	.ble_cont.559662
.ble_else.559661:
	lw	$r2, -136($r29)
	addi	$r4, $r2, 10
	sra	$r4, $r4, 1
	lw	$r5, -20($r29)
	lw	$r6, -704($r29)
	sw	$r4, -748($r29)
	bne	$r6, $r5, .beq_else.559697
	sll	$r7, $r4, 1
	bne	$r2, $r5, .beq_else.559699
	addi	$r2, $r0, 0
	j	.beq_cont.559700
.beq_else.559699:
	sra	$r8, $r2, 1
	sll	$r9, $r8, 1
	subu	$r9, $r2, $r9
	bne	$r9, $r5, .beq_else.559701
	sll	$r7, $r7, 1
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -752($r29)	! calldir
	addi	$r29, $r29, -752	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 752	! calldir
	lw	$r31, -752($r29)	! calldir
	j	.beq_cont.559702
.beq_else.559701:
	sll	$r9, $r7, 1
	sw	$r7, -752($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -756($r29)	! calldir
	addi	$r29, $r29, -756	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 756	! calldir
	lw	$r31, -756($r29)	! calldir
	lw	$r3, -752($r29)
	addu	$r2, $r2, $r3
.beq_cont.559702:
.beq_cont.559700:
	j	.beq_cont.559698
.beq_else.559697:
	sll	$r7, $r4, 1
	bne	$r2, $r5, .beq_else.559703
	addi	$r2, $r0, 0
	j	.beq_cont.559704
.beq_else.559703:
	sra	$r8, $r2, 1
	sll	$r9, $r8, 1
	subu	$r9, $r2, $r9
	bne	$r9, $r5, .beq_else.559705
	sll	$r7, $r7, 1
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -756($r29)	! calldir
	addi	$r29, $r29, -756	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 756	! calldir
	lw	$r31, -756($r29)	! calldir
	j	.beq_cont.559706
.beq_else.559705:
	sll	$r9, $r7, 1
	sw	$r7, -756($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -760($r29)	! calldir
	addi	$r29, $r29, -760	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 760	! calldir
	lw	$r31, -760($r29)	! calldir
	lw	$r3, -756($r29)
	addu	$r2, $r2, $r3
.beq_cont.559706:
.beq_cont.559704:
	lw	$r3, -748($r29)
	addu	$r2, $r2, $r3
.beq_cont.559698:
	lw	$r3, -136($r29)
	lw	$r4, -120($r29)
	subu	$r5, $r4, $r3
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559707
	addi	$r2, $r3, 0
	j	.ble_cont.559708
.ble_else.559707:
	lw	$r5, -696($r29)
	bgt	$r5, $r2, .ble_else.559709
	bne	$r2, $r5, .beq_else.559711
	lw	$r2, -748($r29)
	j	.beq_cont.559712
.beq_else.559711:
	lw	$r2, -748($r29)
	addu	$r7, $r3, $r2
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -704($r29)
	sw	$r7, -760($r29)
	bne	$r9, $r8, .beq_else.559713
	sll	$r10, $r7, 1
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -764($r29)	! calldir
	addi	$r29, $r29, -764	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 764	! calldir
	lw	$r31, -764($r29)	! calldir
	j	.beq_cont.559714
.beq_else.559713:
	sll	$r10, $r7, 1
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -764($r29)	! calldir
	addi	$r29, $r29, -764	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 764	! calldir
	lw	$r31, -764($r29)	! calldir
	lw	$r5, -760($r29)
	addu	$r2, $r2, $r5
.beq_cont.559714:
	lw	$r4, -136($r29)
	lw	$r5, -748($r29)
	subu	$r3, $r5, $r4
	lw	$r6, -12($r29)
	bgt	$r3, $r6, .ble_else.559715
	addi	$r2, $r4, 0
	j	.ble_cont.559716
.ble_else.559715:
	lw	$r3, -696($r29)
	bgt	$r3, $r2, .ble_else.559717
	bne	$r2, $r3, .beq_else.559719
	lw	$r2, -760($r29)
	j	.beq_cont.559720
.beq_else.559719:
	lw	$r2, -120($r29)
	lw	$r5, -760($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -764($r29)	! calldir
	addi	$r29, $r29, -764	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 764	! calldir
	lw	$r31, -764($r29)	! calldir
.beq_cont.559720:
	j	.ble_cont.559718
.ble_else.559717:
	lw	$r2, -120($r29)
	lw	$r6, -760($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -764($r29)	! calldir
	addi	$r29, $r29, -764	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 764	! calldir
	lw	$r31, -764($r29)	! calldir
.ble_cont.559718:
.ble_cont.559716:
.beq_cont.559712:
	j	.ble_cont.559710
.ble_else.559709:
	lw	$r2, -748($r29)
	addi	$r7, $r2, 10
	sra	$r7, $r7, 1
	lw	$r8, -20($r29)
	lw	$r9, -704($r29)
	sw	$r7, -764($r29)
	bne	$r9, $r8, .beq_else.559721
	sll	$r10, $r7, 1
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -768($r29)	! calldir
	addi	$r29, $r29, -768	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 768	! calldir
	lw	$r31, -768($r29)	! calldir
	j	.beq_cont.559722
.beq_else.559721:
	sll	$r10, $r7, 1
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -768($r29)	! calldir
	addi	$r29, $r29, -768	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 768	! calldir
	lw	$r31, -768($r29)	! calldir
	lw	$r5, -764($r29)
	addu	$r2, $r2, $r5
.beq_cont.559722:
	lw	$r4, -748($r29)
	lw	$r3, -120($r29)
	subu	$r5, $r3, $r4
	lw	$r6, -12($r29)
	bgt	$r5, $r6, .ble_else.559723
	addi	$r2, $r4, 0
	j	.ble_cont.559724
.ble_else.559723:
	lw	$r5, -696($r29)
	bgt	$r5, $r2, .ble_else.559725
	bne	$r2, $r5, .beq_else.559727
	lw	$r2, -764($r29)
	j	.beq_cont.559728
.beq_else.559727:
	lw	$r2, -764($r29)
	addi	$r27, $r5, 0	! g'_args
	addi	$r5, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -768($r29)	! calldir
	addi	$r29, $r29, -768	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 768	! calldir
	lw	$r31, -768($r29)	! calldir
.beq_cont.559728:
	j	.ble_cont.559726
.ble_else.559725:
	lw	$r4, -764($r29)
	addi	$r2, $r5, 0	! g'_args
	addi	$r5, $r3, 0	! g'_args
	sw	$r31, -768($r29)	! calldir
	addi	$r29, $r29, -768	! calldir
	jal	.div_binary_search.2848	! calldir
	addi	$r29, $r29, 768	! calldir
	lw	$r31, -768($r29)	! calldir
.ble_cont.559726:
.ble_cont.559724:
.ble_cont.559710:
.ble_cont.559708:
.ble_cont.559662:
	lw	$r3, -20($r29)
	lw	$r4, -704($r29)
	sw	$r2, -768($r29)
	bne	$r4, $r3, .beq_else.559729
	sll	$r4, $r2, 1
	lw	$r5, -136($r29)
	bne	$r5, $r3, .beq_else.559731
	addi	$r2, $r0, 0
	j	.beq_cont.559732
.beq_else.559731:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559733
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -772($r29)	! calldir
	addi	$r29, $r29, -772	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 772	! calldir
	lw	$r31, -772($r29)	! calldir
	j	.beq_cont.559734
.beq_else.559733:
	sll	$r5, $r4, 1
	sw	$r4, -772($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -776($r29)	! calldir
	addi	$r29, $r29, -776	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 776	! calldir
	lw	$r31, -776($r29)	! calldir
	lw	$r3, -772($r29)
	addu	$r2, $r2, $r3
.beq_cont.559734:
.beq_cont.559732:
	j	.beq_cont.559730
.beq_else.559729:
	sll	$r4, $r2, 1
	lw	$r5, -136($r29)
	bne	$r5, $r3, .beq_else.559735
	addi	$r2, $r0, 0
	j	.beq_cont.559736
.beq_else.559735:
	sra	$r6, $r5, 1
	sll	$r7, $r6, 1
	subu	$r5, $r5, $r7
	bne	$r5, $r3, .beq_else.559737
	sll	$r4, $r4, 1
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -776($r29)	! calldir
	addi	$r29, $r29, -776	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 776	! calldir
	lw	$r31, -776($r29)	! calldir
	j	.beq_cont.559738
.beq_else.559737:
	sll	$r5, $r4, 1
	sw	$r4, -776($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -780($r29)	! calldir
	addi	$r29, $r29, -780	! calldir
	jal	.mul_sub.2842	! calldir
	addi	$r29, $r29, 780	! calldir
	lw	$r31, -780($r29)	! calldir
	lw	$r3, -776($r29)
	addu	$r2, $r2, $r3
.beq_cont.559738:
.beq_cont.559736:
	lw	$r3, -768($r29)
	addu	$r2, $r2, $r3
.beq_cont.559730:
	lw	$r3, -696($r29)
	subu	$r2, $r3, $r2
	lw	$r3, -20($r29)
	lw	$r4, -768($r29)
	sw	$r2, -780($r29)
	bgt	$r4, $r3, .ble_else.559739
	lw	$r5, -700($r29)
	bne	$r5, $r3, .beq_else.559741
	addi	$r2, $r0, 0
	j	.beq_cont.559742
.beq_else.559741:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.beq_cont.559742:
	j	.ble_cont.559740
.ble_else.559739:
	addi	$r3, $r4, 48
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	addi	$r2, $r0, 1
.ble_cont.559740:
	lw	$r2, -780($r29)
	addi	$r2, $r2, 48
	output	$r2
	jr	$r31
.ble_else.558880:
	addi	$r3, $r0, 45
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	output	$r2
	lw	$r2, -32($r29)
	subu	$r2, $r0, $r2
	j	.print_int.2860	! calldir-tail
.vecunit_sgn.2925:
	addi	$r4, $r0, 0
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
	sw	$r4, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lfh	$f2, 0
	lfl	$f2, 0
	c.eq.s	$f0, $f2
	bclf	.bclt_else.559743
	addi	$r2, $r0, 1
	j	.bclt_cont.559744
.bclt_else.559743:
	addi	$r2, $r0, 0
.bclt_cont.559744:
	lw	$r3, -12($r29)
	bne	$r2, $r3, .beq_else.559745
	lw	$r2, -8($r29)
	bne	$r2, $r3, .beq_else.559747
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
	j	.beq_cont.559748
.beq_else.559747:
	lfh	$f2, 49024
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
.beq_cont.559748:
	j	.beq_cont.559746
.beq_else.559745:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.559746:
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
	jal	.mendoi2.559751	! callcls
	j	.mendoi1.559750	! callcls
.mendoi2.559751:	! callcls
	jr	$r27	! callcls
.mendoi1.559750:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.559753	! callcls
	j	.mendoi1.559752	! callcls
.mendoi2.559753:	! callcls
	jr	$r27	! callcls
.mendoi1.559752:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.559755	! callcls
	j	.mendoi1.559754	! callcls
.mendoi2.559755:	! callcls
	jr	$r27	! callcls
.mendoi1.559754:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lw	$r2, -24($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -20($r29)
	sw	$r31, -28($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -28	! callcls
	jal	.mendoi2.559757	! callcls
	j	.mendoi1.559756	! callcls
.mendoi2.559757:	! callcls
	jr	$r27	! callcls
.mendoi1.559756:	! callcls
	addi	$r29, $r29, 28	! callcls
	lw	$r31, -28($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lfh	$f4, 16329
	lfl	$f4, 4059
	sub.s	$f6, $f4, $f0
	swcl	$f4, -28($r29)
	swcl	$f2, -32($r29)
	swcl	$f0, -36($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f2, -36($r29)
	swcl	$f0, -40($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r28, -20($r29)
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.559759	! callcls
	j	.mendoi1.559758	! callcls
.mendoi2.559759:	! callcls
	jr	$r27	! callcls
.mendoi1.559758:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -28($r29)
	sub.s	$f2, $f2, $f0
	swcl	$f0, -48($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	swcl	$f0, -52($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f2, -40($r29)
	mul.s	$f4, $f2, $f0
	lfh	$f6, 17224
	lfl	$f6, 0
	mul.s	$f4, $f4, $f6
	lw	$r2, -16($r29)
	swcl	$f4, 0($r2)
	lfh	$f4, 49992
	lfl	$f4, 0
	lwcl	$f8, -44($r29)
	mul.s	$f4, $f8, $f4
	swcl	$f4, 4($r2)
	lwcl	$f4, -52($r29)
	mul.s	$f10, $f2, $f4
	mul.s	$f6, $f10, $f6
	swcl	$f6, 8($r2)
	lw	$r3, -12($r29)
	swcl	$f4, 0($r3)
	lfh	$f6, 0
	lfl	$f6, 0
	swcl	$f6, 4($r3)
	fneg	$f6, $f0
	swcl	$f6, 8($r3)
	fneg	$f6, $f8
	mul.s	$f0, $f6, $f0
	lw	$r3, -8($r29)
	swcl	$f0, 0($r3)
	fneg	$f0, $f2
	swcl	$f0, 4($r3)
	mul.s	$f0, $f6, $f4
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
.read_light.3028:
	lw	$r2, 24($r28)
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r4)
	sw	$r8, 0($r3)
	addi	$r3, $r0, 32
	sw	$r7, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	addi	$r28, $r2, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.559762	! callcls
	j	.mendoi1.559761	! callcls
.mendoi2.559762:	! callcls
	jr	$r27	! callcls
.mendoi1.559761:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lw	$r28, -12($r29)
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.559764	! callcls
	j	.mendoi1.559763	! callcls
.mendoi2.559764:	! callcls
	jr	$r27	! callcls
.mendoi1.559763:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	swcl	$f0, -16($r29)
	swcl	$f2, -20($r29)
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	fneg	$f0, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.559766	! callcls
	j	.mendoi1.559765	! callcls
.mendoi2.559766:	! callcls
	jr	$r27	! callcls
.mendoi1.559765:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	lwcl	$f2, -20($r29)
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	lwcl	$f4, -16($r29)
	sub.s	$f4, $f2, $f4
	swcl	$f2, -24($r29)
	swcl	$f0, -28($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2818	! calldir
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
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -28($r29)
	lwcl	$f4, -24($r29)
	sub.s	$f0, $f4, $f0
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.559768	! callcls
	j	.mendoi1.559767	! callcls
.mendoi2.559768:	! callcls
	jr	$r27	! callcls
.mendoi1.559767:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	jr	$r31
.rotate_quadratic_matrix.3030:
	lwcl	$f0, 0($r3)
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	sw	$r2, -4($r29)
	swcl	$f2, -8($r29)
	sw	$r3, -12($r29)
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, 0($r2)
	swcl	$f0, -16($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, 4($r2)
	lwcl	$f4, -8($r29)
	sub.s	$f2, $f4, $f2
	swcl	$f0, -20($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, 4($r2)
	swcl	$f0, -24($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, 8($r2)
	lwcl	$f4, -8($r29)
	sub.s	$f2, $f4, $f2
	swcl	$f0, -28($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r2, -12($r29)
	lwcl	$f2, 8($r2)
	swcl	$f0, -32($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	lwcl	$f4, -24($r29)
	mul.s	$f6, $f4, $f2
	lwcl	$f8, -28($r29)
	lwcl	$f10, -20($r29)
	mul.s	$f12, $f10, $f8
	mul.s	$f14, $f12, $f2
	lwcl	$f16, -16($r29)
	mul.s	$f18, $f16, $f0
	sub.s	$f14, $f14, $f18
	mul.s	$f18, $f16, $f8
	mul.s	$f20, $f18, $f2
	mul.s	$f22, $f10, $f0
	add.s	$f20, $f20, $f22
	mul.s	$f22, $f4, $f0
	mul.s	$f12, $f12, $f0
	mul.s	$f24, $f16, $f2
	add.s	$f12, $f12, $f24
	mul.s	$f0, $f18, $f0
	mul.s	$f2, $f10, $f2
	sub.s	$f0, $f0, $f2
	fneg	$f2, $f8
	mul.s	$f8, $f10, $f4
	mul.s	$f4, $f16, $f4
	lw	$r2, -4($r29)
	lwcl	$f10, 0($r2)
	lwcl	$f16, 4($r2)
	lwcl	$f18, 8($r2)
	mul.s	$f24, $f6, $f6
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f22, $f22
	mul.s	$f26, $f16, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f2, $f2
	mul.s	$f26, $f18, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 0($r2)
	mul.s	$f24, $f14, $f14
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f12, $f12
	mul.s	$f26, $f16, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f8, $f8
	mul.s	$f26, $f18, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 4($r2)
	mul.s	$f24, $f20, $f20
	mul.s	$f24, $f10, $f24
	mul.s	$f26, $f0, $f0
	mul.s	$f26, $f16, $f26
	add.s	$f24, $f24, $f26
	mul.s	$f26, $f4, $f4
	mul.s	$f26, $f18, $f26
	add.s	$f24, $f24, $f26
	swcl	$f24, 8($r2)
	lfh	$f24, 16384
	lfl	$f24, 0
	mul.s	$f26, $f10, $f14
	mul.s	$f26, $f26, $f20
	mul.s	$f28, $f16, $f12
	mul.s	$f28, $f28, $f0
	add.s	$f26, $f26, $f28
	mul.s	$f28, $f18, $f8
	mul.s	$f28, $f28, $f4
	add.s	$f26, $f26, $f28
	mul.s	$f26, $f24, $f26
	lw	$r2, -12($r29)
	swcl	$f26, 0($r2)
	mul.s	$f6, $f10, $f6
	mul.s	$f10, $f6, $f20
	mul.s	$f16, $f16, $f22
	mul.s	$f0, $f16, $f0
	add.s	$f0, $f10, $f0
	mul.s	$f2, $f18, $f2
	mul.s	$f4, $f2, $f4
	add.s	$f0, $f0, $f4
	mul.s	$f0, $f24, $f0
	swcl	$f0, 4($r2)
	mul.s	$f0, $f6, $f14
	mul.s	$f4, $f16, $f12
	add.s	$f0, $f0, $f4
	mul.s	$f2, $f2, $f8
	add.s	$f0, $f0, $f2
	mul.s	$f0, $f24, $f0
	swcl	$f0, 8($r2)
	jr	$r31
.read_nth_object.3033:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r5)
	sw	$r8, 0($r4)
	addi	$r9, $r0, 32
	sw	$r7, -4($r29)
	sw	$r2, -8($r29)
	sw	$r6, -12($r29)
	sw	$r9, -16($r29)
	sw	$r3, -20($r29)
	sw	$r4, -24($r29)
	sw	$r5, -28($r29)
	sw	$r8, -32($r29)
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.559772	! callcls
	j	.mendoi1.559771	! callcls
.mendoi2.559772:	! callcls
	jr	$r27	! callcls
.mendoi1.559771:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.559773
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.559773:
	lw	$r3, -28($r29)
	lw	$r4, -32($r29)
	sw	$r4, 0($r3)
	lw	$r5, -24($r29)
	sw	$r4, 0($r5)
	lw	$r6, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -36($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.559775	! callcls
	j	.mendoi1.559774	! callcls
.mendoi2.559775:	! callcls
	jr	$r27	! callcls
.mendoi1.559774:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -28($r29)
	lw	$r4, -32($r29)
	sw	$r4, 0($r3)
	lw	$r5, -24($r29)
	sw	$r4, 0($r5)
	lw	$r6, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -40($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.559777	! callcls
	j	.mendoi1.559776	! callcls
.mendoi2.559777:	! callcls
	jr	$r27	! callcls
.mendoi1.559776:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -28($r29)
	lw	$r4, -32($r29)
	sw	$r4, 0($r3)
	lw	$r3, -24($r29)
	sw	$r4, 0($r3)
	lw	$r3, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.559779	! callcls
	j	.mendoi1.559778	! callcls
.mendoi2.559779:	! callcls
	jr	$r27	! callcls
.mendoi1.559778:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r3, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -48($r29)
	swcl	$f0, -52($r29)
	sw	$r3, -56($r29)
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
	jal	.mendoi2.559781	! callcls
	j	.mendoi1.559780	! callcls
.mendoi2.559781:	! callcls
	jr	$r27	! callcls
.mendoi1.559780:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.559783	! callcls
	j	.mendoi1.559782	! callcls
.mendoi2.559783:	! callcls
	jr	$r27	! callcls
.mendoi1.559782:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 4($r2)
	addi	$r3, $r0, 2
	lw	$r28, -12($r29)
	sw	$r3, -64($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.559785	! callcls
	j	.mendoi1.559784	! callcls
.mendoi2.559785:	! callcls
	jr	$r27	! callcls
.mendoi1.559784:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -60($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -52($r29)
	lw	$r3, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -68($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559787	! callcls
	j	.mendoi1.559786	! callcls
.mendoi2.559787:	! callcls
	jr	$r27	! callcls
.mendoi1.559786:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559789	! callcls
	j	.mendoi1.559788	! callcls
.mendoi2.559789:	! callcls
	jr	$r27	! callcls
.mendoi1.559788:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559791	! callcls
	j	.mendoi1.559790	! callcls
.mendoi2.559791:	! callcls
	jr	$r27	! callcls
.mendoi1.559790:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	swcl	$f0, 8($r2)
	lw	$r28, -12($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559793	! callcls
	j	.mendoi1.559792	! callcls
.mendoi2.559793:	! callcls
	jr	$r27	! callcls
.mendoi1.559792:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lwcl	$f2, -52($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.559794
	addi	$r2, $r0, 0
	j	.bclt_cont.559795
.bclt_else.559794:
	addi	$r2, $r0, 1
.bclt_cont.559795:
	lw	$r3, -64($r29)
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	fmove	$f0, $f2	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -76($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.559797	! callcls
	j	.mendoi1.559796	! callcls
.mendoi2.559797:	! callcls
	jr	$r27	! callcls
.mendoi1.559796:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -76($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.559799	! callcls
	j	.mendoi1.559798	! callcls
.mendoi2.559799:	! callcls
	jr	$r27	! callcls
.mendoi1.559798:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -76($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -52($r29)
	lw	$r3, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r28, -12($r29)
	sw	$r2, -80($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.559801	! callcls
	j	.mendoi1.559800	! callcls
.mendoi2.559801:	! callcls
	jr	$r27	! callcls
.mendoi1.559800:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.559803	! callcls
	j	.mendoi1.559802	! callcls
.mendoi2.559803:	! callcls
	jr	$r27	! callcls
.mendoi1.559802:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.559805	! callcls
	j	.mendoi1.559804	! callcls
.mendoi2.559805:	! callcls
	jr	$r27	! callcls
.mendoi1.559804:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	swcl	$f0, 8($r2)
	lwcl	$f0, -52($r29)
	lw	$r3, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -32($r29)
	lw	$r4, -48($r29)
	bne	$r4, $r3, .beq_else.559806
	j	.beq_cont.559807
.beq_else.559806:
	lw	$r28, -12($r29)
	sw	$r2, -84($r29)
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.559809	! callcls
	j	.mendoi1.559808	! callcls
.mendoi2.559809:	! callcls
	jr	$r27	! callcls
.mendoi1.559808:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	lfh	$f2, 15502
	lfl	$f2, 64053
	mul.s	$f0, $f0, $f2
	lw	$r2, -84($r29)
	swcl	$f0, 0($r2)
	lw	$r28, -12($r29)
	swcl	$f2, -88($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.559811	! callcls
	j	.mendoi1.559810	! callcls
.mendoi2.559811:	! callcls
	jr	$r27	! callcls
.mendoi1.559810:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -84($r29)
	swcl	$f0, 4($r2)
	lw	$r28, -12($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.559813	! callcls
	j	.mendoi1.559812	! callcls
.mendoi2.559813:	! callcls
	jr	$r27	! callcls
.mendoi1.559812:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lwcl	$f2, -88($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -84($r29)
	swcl	$f0, 8($r2)
.beq_cont.559807:
	lw	$r3, -64($r29)
	lw	$r4, -40($r29)
	bne	$r4, $r3, .beq_else.559814
	addi	$r5, $r0, 1
	j	.beq_cont.559815
.beq_else.559814:
	lw	$r5, -72($r29)
.beq_cont.559815:
	addi	$r6, $r0, 4
	lwcl	$f0, -52($r29)
	sw	$r5, -92($r29)
	sw	$r2, -84($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r3)
	lw	$r2, -84($r29)
	sw	$r2, 36($r3)
	lw	$r4, -80($r29)
	sw	$r4, 32($r3)
	lw	$r4, -76($r29)
	sw	$r4, 28($r3)
	lw	$r4, -92($r29)
	sw	$r4, 24($r3)
	lw	$r4, -68($r29)
	sw	$r4, 20($r3)
	lw	$r4, -60($r29)
	sw	$r4, 16($r3)
	lw	$r5, -48($r29)
	sw	$r5, 12($r3)
	lw	$r6, -44($r29)
	sw	$r6, 8($r3)
	lw	$r6, -40($r29)
	sw	$r6, 4($r3)
	lw	$r7, -36($r29)
	sw	$r7, 0($r3)
	lw	$r7, -8($r29)
	sll	$r7, $r7, 2
	lw	$r8, -4($r29)
	addu	$r1, $r8, $r7
	sw	$r3, 0($r1)
	lw	$r3, -56($r29)
	bne	$r6, $r3, .beq_else.559816
	lwcl	$f0, 0($r4)
	lwcl	$f2, -52($r29)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.559818
	addi	$r3, $r0, 1
	j	.bclt_cont.559819
.bclt_else.559818:
	addi	$r3, $r0, 0
.bclt_cont.559819:
	lw	$r6, -32($r29)
	bne	$r3, $r6, .beq_else.559820
	bne	$r3, $r6, .beq_else.559822
	c.le.s	$f0, $f2
	bclf	.bclt_else.559824
	addi	$r3, $r0, 0
	j	.bclt_cont.559825
.bclt_else.559824:
	addi	$r3, $r0, 1
.bclt_cont.559825:
	bne	$r3, $r6, .beq_else.559826
	lfh	$f4, 49024
	lfl	$f4, 0
	j	.beq_cont.559827
.beq_else.559826:
	lfh	$f4, 16256
	lfl	$f4, 0
.beq_cont.559827:
	j	.beq_cont.559823
.beq_else.559822:
	lfh	$f4, 0
	lfl	$f4, 0
.beq_cont.559823:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f4, $f0
	j	.beq_cont.559821
.beq_else.559820:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.559821:
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.559828
	addi	$r3, $r0, 1
	j	.bclt_cont.559829
.bclt_else.559828:
	addi	$r3, $r0, 0
.bclt_cont.559829:
	bne	$r3, $r6, .beq_else.559830
	bne	$r3, $r6, .beq_else.559832
	c.le.s	$f0, $f2
	bclf	.bclt_else.559834
	addi	$r3, $r0, 0
	j	.bclt_cont.559835
.bclt_else.559834:
	addi	$r3, $r0, 1
.bclt_cont.559835:
	bne	$r3, $r6, .beq_else.559836
	lfh	$f4, 49024
	lfl	$f4, 0
	j	.beq_cont.559837
.beq_else.559836:
	lfh	$f4, 16256
	lfl	$f4, 0
.beq_cont.559837:
	j	.beq_cont.559833
.beq_else.559832:
	lfh	$f4, 0
	lfl	$f4, 0
.beq_cont.559833:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f4, $f0
	j	.beq_cont.559831
.beq_else.559830:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.559831:
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.559838
	addi	$r3, $r0, 1
	j	.bclt_cont.559839
.bclt_else.559838:
	addi	$r3, $r0, 0
.bclt_cont.559839:
	bne	$r3, $r6, .beq_else.559840
	bne	$r3, $r6, .beq_else.559842
	c.le.s	$f0, $f2
	bclf	.bclt_else.559844
	addi	$r3, $r0, 0
	j	.bclt_cont.559845
.bclt_else.559844:
	addi	$r3, $r0, 1
.bclt_cont.559845:
	bne	$r3, $r6, .beq_else.559846
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.559847
.beq_else.559846:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.559847:
	j	.beq_cont.559843
.beq_else.559842:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.559843:
	mul.s	$f0, $f0, $f0
	div.s	$f0, $f2, $f0
	j	.beq_cont.559841
.beq_else.559840:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.559841:
	swcl	$f0, 8($r4)
	j	.beq_cont.559817
.beq_else.559816:
	lw	$r3, -64($r29)
	bne	$r6, $r3, .beq_else.559848
	lw	$r3, -32($r29)
	lw	$r6, -72($r29)
	bne	$r6, $r3, .beq_else.559850
	addi	$r6, $r0, 1
	j	.beq_cont.559851
.beq_else.559850:
	addi	$r6, $r0, 0
.beq_cont.559851:
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.vecunit_sgn.2925	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	j	.beq_cont.559849
.beq_else.559848:
.beq_cont.559849:
.beq_cont.559817:
	lw	$r2, -32($r29)
	lw	$r3, -48($r29)
	bne	$r3, $r2, .beq_else.559852
	j	.beq_cont.559853
.beq_else.559852:
	lw	$r2, -60($r29)
	lw	$r3, -84($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.rotate_quadratic_matrix.3030	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
.beq_cont.559853:
	addi	$r2, $r0, 1
	jr	$r31
.read_object.3035:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 60
	bgt	$r5, $r2, .ble_else.559854
	jr	$r31
.ble_else.559854:
	sw	$r28, -4($r29)
	sw	$r3, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r2, -20($r29)
	addi	$r28, $r3, 0	! g'_args
	sw	$r31, -24($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -24	! callcls
	jal	.mendoi2.559857	! callcls
	j	.mendoi1.559856	! callcls
.mendoi2.559857:	! callcls
	jr	$r27	! callcls
.mendoi1.559856:	! callcls
	addi	$r29, $r29, 24	! callcls
	lw	$r31, -24($r29)	! callcls
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.559858
	lw	$r2, -16($r29)
	lw	$r3, -20($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559858:
	lw	$r2, -20($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559860
	jr	$r31
.ble_else.559860:
	lw	$r28, -8($r29)
	sw	$r2, -24($r29)
	sw	$r3, -28($r29)
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.559863	! callcls
	j	.mendoi1.559862	! callcls
.mendoi2.559863:	! callcls
	jr	$r27	! callcls
.mendoi1.559862:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559864
	lw	$r2, -16($r29)
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559864:
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559866
	jr	$r31
.ble_else.559866:
	lw	$r28, -8($r29)
	sw	$r2, -32($r29)
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.559869	! callcls
	j	.mendoi1.559868	! callcls
.mendoi2.559869:	! callcls
	jr	$r27	! callcls
.mendoi1.559868:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559870
	lw	$r2, -16($r29)
	lw	$r3, -32($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559870:
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559872
	jr	$r31
.ble_else.559872:
	lw	$r28, -8($r29)
	sw	$r2, -36($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.559875	! callcls
	j	.mendoi1.559874	! callcls
.mendoi2.559875:	! callcls
	jr	$r27	! callcls
.mendoi1.559874:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559876
	lw	$r2, -16($r29)
	lw	$r3, -36($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559876:
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559878
	jr	$r31
.ble_else.559878:
	lw	$r28, -8($r29)
	sw	$r2, -40($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.559881	! callcls
	j	.mendoi1.559880	! callcls
.mendoi2.559881:	! callcls
	jr	$r27	! callcls
.mendoi1.559880:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559882
	lw	$r2, -16($r29)
	lw	$r3, -40($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559882:
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559884
	jr	$r31
.ble_else.559884:
	lw	$r28, -8($r29)
	sw	$r2, -44($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.559887	! callcls
	j	.mendoi1.559886	! callcls
.mendoi2.559887:	! callcls
	jr	$r27	! callcls
.mendoi1.559886:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559888
	lw	$r2, -16($r29)
	lw	$r3, -44($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559888:
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559890
	jr	$r31
.ble_else.559890:
	lw	$r28, -8($r29)
	sw	$r2, -48($r29)
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.559893	! callcls
	j	.mendoi1.559892	! callcls
.mendoi2.559893:	! callcls
	jr	$r27	! callcls
.mendoi1.559892:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559894
	lw	$r2, -16($r29)
	lw	$r3, -48($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559894:
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	lw	$r4, -12($r29)
	bgt	$r4, $r2, .ble_else.559896
	jr	$r31
.ble_else.559896:
	lw	$r28, -8($r29)
	sw	$r2, -52($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.559899	! callcls
	j	.mendoi1.559898	! callcls
.mendoi2.559899:	! callcls
	jr	$r27	! callcls
.mendoi1.559898:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.559900
	lw	$r2, -16($r29)
	lw	$r3, -52($r29)
	sw	$r3, 0($r2)
	jr	$r31
.beq_else.559900:
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.read_net_item.3039:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	sw	$r6, 0($r5)
	sw	$r6, 0($r4)
	addi	$r7, $r0, 32
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r3, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	sw	$r6, -24($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	addi	$r28, $r3, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.559903	! callcls
	j	.mendoi1.559902	! callcls
.mendoi2.559903:	! callcls
	jr	$r27	! callcls
.mendoi1.559902:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	addi	$r3, $r0, -1
	bne	$r2, $r3, .beq_else.559904
	lw	$r2, -28($r29)
	addi	$r2, $r2, 1
	j	.min_caml_create_array	! calldir-tail
.beq_else.559904:
	lw	$r4, -28($r29)
	addi	$r5, $r4, 1
	lw	$r6, -20($r29)
	lw	$r7, -24($r29)
	sw	$r7, 0($r6)
	lw	$r8, -16($r29)
	sw	$r7, 0($r8)
	lw	$r9, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -32($r29)
	sw	$r5, -36($r29)
	sw	$r3, -40($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.559906	! callcls
	j	.mendoi1.559905	! callcls
.mendoi2.559906:	! callcls
	jr	$r27	! callcls
.mendoi1.559905:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559907
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.559908
.beq_else.559907:
	lw	$r4, -36($r29)
	addi	$r5, $r4, 1
	lw	$r6, -20($r29)
	lw	$r7, -24($r29)
	sw	$r7, 0($r6)
	lw	$r8, -16($r29)
	sw	$r7, 0($r8)
	lw	$r9, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -44($r29)
	sw	$r5, -48($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.559910	! callcls
	j	.mendoi1.559909	! callcls
.mendoi2.559910:	! callcls
	jr	$r27	! callcls
.mendoi1.559909:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559911
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	j	.beq_cont.559912
.beq_else.559911:
	lw	$r4, -48($r29)
	addi	$r5, $r4, 1
	lw	$r6, -20($r29)
	lw	$r7, -24($r29)
	sw	$r7, 0($r6)
	lw	$r6, -16($r29)
	sw	$r7, 0($r6)
	lw	$r6, -8($r29)
	lw	$r28, -12($r29)
	sw	$r2, -52($r29)
	sw	$r5, -56($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.559914	! callcls
	j	.mendoi1.559913	! callcls
.mendoi2.559914:	! callcls
	jr	$r27	! callcls
.mendoi1.559913:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559915
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	j	.beq_cont.559916
.beq_else.559915:
	lw	$r3, -56($r29)
	addi	$r4, $r3, 1
	lw	$r28, -4($r29)
	sw	$r2, -60($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.559918	! callcls
	j	.mendoi1.559917	! callcls
.mendoi2.559918:	! callcls
	jr	$r27	! callcls
.mendoi1.559917:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r3, -56($r29)
	sll	$r3, $r3, 2
	lw	$r4, -60($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559916:
	lw	$r3, -48($r29)
	sll	$r3, $r3, 2
	lw	$r4, -52($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559912:
	lw	$r3, -36($r29)
	sll	$r3, $r3, 2
	lw	$r4, -44($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559908:
	lw	$r3, -28($r29)
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_or_network.3041:
	lw	$r3, 16($r28)
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	sw	$r7, 0($r6)
	sw	$r7, 0($r5)
	addi	$r8, $r0, 32
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r3, -12($r29)
	sw	$r8, -16($r29)
	sw	$r4, -20($r29)
	sw	$r5, -24($r29)
	sw	$r6, -28($r29)
	sw	$r7, -32($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.559920	! callcls
	j	.mendoi1.559919	! callcls
.mendoi2.559920:	! callcls
	jr	$r27	! callcls
.mendoi1.559919:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	addi	$r3, $r0, -1
	sw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559921
	addi	$r2, $r0, 1
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	j	.beq_cont.559922
.beq_else.559921:
	lw	$r4, -28($r29)
	lw	$r5, -32($r29)
	sw	$r5, 0($r4)
	lw	$r6, -24($r29)
	sw	$r5, 0($r6)
	lw	$r7, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -40($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.559924	! callcls
	j	.mendoi1.559923	! callcls
.mendoi2.559924:	! callcls
	jr	$r27	! callcls
.mendoi1.559923:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559925
	addi	$r2, $r0, 2
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.559926
.beq_else.559925:
	lw	$r4, -28($r29)
	lw	$r5, -32($r29)
	sw	$r5, 0($r4)
	lw	$r6, -24($r29)
	sw	$r5, 0($r6)
	lw	$r7, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.559928	! callcls
	j	.mendoi1.559927	! callcls
.mendoi2.559928:	! callcls
	jr	$r27	! callcls
.mendoi1.559927:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559929
	addi	$r2, $r0, 3
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	j	.beq_cont.559930
.beq_else.559929:
	addi	$r4, $r0, 3
	lw	$r28, -12($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.559932	! callcls
	j	.mendoi1.559931	! callcls
.mendoi2.559932:	! callcls
	jr	$r27	! callcls
.mendoi1.559931:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r3, -48($r29)
	sw	$r3, 8($r2)
.beq_cont.559930:
	lw	$r3, -44($r29)
	sw	$r3, 4($r2)
.beq_cont.559926:
	lw	$r3, -40($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
.beq_cont.559922:
	lw	$r2, 0($r3)
	lw	$r4, -36($r29)
	bne	$r2, $r4, .beq_else.559933
	lw	$r2, -8($r29)
	addi	$r2, $r2, 1
	j	.min_caml_create_array	! calldir-tail
.beq_else.559933:
	addi	$r2, $r0, 1
	lw	$r5, -8($r29)
	addi	$r6, $r5, 1
	lw	$r7, -28($r29)
	lw	$r8, -32($r29)
	sw	$r8, 0($r7)
	lw	$r9, -24($r29)
	sw	$r8, 0($r9)
	lw	$r10, -16($r29)
	lw	$r28, -20($r29)
	sw	$r3, -52($r29)
	sw	$r6, -56($r29)
	sw	$r2, -60($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.559935	! callcls
	j	.mendoi1.559934	! callcls
.mendoi2.559935:	! callcls
	jr	$r27	! callcls
.mendoi1.559934:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559936
	lw	$r2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	j	.beq_cont.559937
.beq_else.559936:
	lw	$r4, -28($r29)
	lw	$r5, -32($r29)
	sw	$r5, 0($r4)
	lw	$r6, -24($r29)
	sw	$r5, 0($r6)
	lw	$r7, -16($r29)
	lw	$r28, -20($r29)
	sw	$r2, -64($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.559939	! callcls
	j	.mendoi1.559938	! callcls
.mendoi2.559939:	! callcls
	jr	$r27	! callcls
.mendoi1.559938:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559940
	addi	$r2, $r0, 2
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	j	.beq_cont.559941
.beq_else.559940:
	addi	$r4, $r0, 2
	lw	$r28, -12($r29)
	sw	$r2, -68($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559943	! callcls
	j	.mendoi1.559942	! callcls
.mendoi2.559943:	! callcls
	jr	$r27	! callcls
.mendoi1.559942:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r3, -68($r29)
	sw	$r3, 4($r2)
.beq_cont.559941:
	lw	$r3, -64($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
.beq_cont.559937:
	lw	$r2, 0($r3)
	lw	$r4, -36($r29)
	bne	$r2, $r4, .beq_else.559944
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	j	.beq_cont.559945
.beq_else.559944:
	lw	$r2, -56($r29)
	addi	$r5, $r2, 1
	lw	$r6, -28($r29)
	lw	$r7, -32($r29)
	sw	$r7, 0($r6)
	lw	$r6, -24($r29)
	sw	$r7, 0($r6)
	lw	$r6, -16($r29)
	lw	$r28, -20($r29)
	sw	$r3, -72($r29)
	sw	$r5, -76($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.559947	! callcls
	j	.mendoi1.559946	! callcls
.mendoi2.559947:	! callcls
	jr	$r27	! callcls
.mendoi1.559946:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.559948
	lw	$r2, -60($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	j	.beq_cont.559949
.beq_else.559948:
	lw	$r4, -60($r29)
	lw	$r28, -12($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.559951	! callcls
	j	.mendoi1.559950	! callcls
.mendoi2.559951:	! callcls
	jr	$r27	! callcls
.mendoi1.559950:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r3, -80($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
.beq_cont.559949:
	lw	$r2, 0($r3)
	lw	$r4, -36($r29)
	bne	$r2, $r4, .beq_else.559952
	lw	$r2, -76($r29)
	addi	$r2, $r2, 1
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	j	.beq_cont.559953
.beq_else.559952:
	lw	$r2, -76($r29)
	addi	$r5, $r2, 1
	lw	$r6, -32($r29)
	lw	$r28, -12($r29)
	sw	$r3, -84($r29)
	sw	$r5, -88($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.559955	! callcls
	j	.mendoi1.559954	! callcls
.mendoi2.559955:	! callcls
	jr	$r27	! callcls
.mendoi1.559954:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, 0($r3)
	lw	$r4, -36($r29)
	bne	$r2, $r4, .beq_else.559956
	lw	$r2, -88($r29)
	addi	$r2, $r2, 1
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	j	.beq_cont.559957
.beq_else.559956:
	lw	$r2, -88($r29)
	addi	$r4, $r2, 1
	lw	$r28, -4($r29)
	sw	$r3, -92($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -96	! callcls
	jal	.mendoi2.559959	! callcls
	j	.mendoi1.559958	! callcls
.mendoi2.559959:	! callcls
	jr	$r27	! callcls
.mendoi1.559958:	! callcls
	addi	$r29, $r29, 96	! callcls
	lw	$r31, -96($r29)	! callcls
	lw	$r3, -88($r29)
	sll	$r3, $r3, 2
	lw	$r4, -92($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559957:
	lw	$r3, -76($r29)
	sll	$r3, $r3, 2
	lw	$r4, -84($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559953:
	lw	$r3, -56($r29)
	sll	$r3, $r3, 2
	lw	$r4, -72($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
.beq_cont.559945:
	lw	$r3, -8($r29)
	sll	$r3, $r3, 2
	lw	$r4, -52($r29)
	addu	$r1, $r2, $r3
	sw	$r4, 0($r1)
	jr	$r31
.read_and_network.3043:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	sw	$r8, 0($r6)
	sw	$r8, 0($r5)
	addi	$r9, $r0, 32
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r2, -12($r29)
	sw	$r3, -16($r29)
	sw	$r9, -20($r29)
	sw	$r4, -24($r29)
	sw	$r5, -28($r29)
	sw	$r6, -32($r29)
	sw	$r8, -36($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.559961	! callcls
	j	.mendoi1.559960	! callcls
.mendoi2.559961:	! callcls
	jr	$r27	! callcls
.mendoi1.559960:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	addi	$r3, $r0, -1
	sw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559962
	addi	$r2, $r0, 1
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	j	.beq_cont.559963
.beq_else.559962:
	lw	$r4, -32($r29)
	lw	$r5, -36($r29)
	sw	$r5, 0($r4)
	lw	$r6, -28($r29)
	sw	$r5, 0($r6)
	lw	$r7, -20($r29)
	lw	$r28, -24($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.559965	! callcls
	j	.mendoi1.559964	! callcls
.mendoi2.559965:	! callcls
	jr	$r27	! callcls
.mendoi1.559964:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559966
	addi	$r2, $r0, 2
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	j	.beq_cont.559967
.beq_else.559966:
	lw	$r4, -32($r29)
	lw	$r5, -36($r29)
	sw	$r5, 0($r4)
	lw	$r6, -28($r29)
	sw	$r5, 0($r6)
	lw	$r7, -20($r29)
	lw	$r28, -24($r29)
	sw	$r2, -48($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.559969	! callcls
	j	.mendoi1.559968	! callcls
.mendoi2.559969:	! callcls
	jr	$r27	! callcls
.mendoi1.559968:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559970
	addi	$r2, $r0, 3
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	j	.beq_cont.559971
.beq_else.559970:
	addi	$r4, $r0, 3
	lw	$r28, -16($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.559973	! callcls
	j	.mendoi1.559972	! callcls
.mendoi2.559973:	! callcls
	jr	$r27	! callcls
.mendoi1.559972:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r3, -52($r29)
	sw	$r3, 8($r2)
.beq_cont.559971:
	lw	$r3, -48($r29)
	sw	$r3, 4($r2)
.beq_cont.559967:
	lw	$r3, -44($r29)
	sw	$r3, 0($r2)
.beq_cont.559963:
	lw	$r3, 0($r2)
	lw	$r4, -40($r29)
	bne	$r3, $r4, .beq_else.559974
	jr	$r31
.beq_else.559974:
	lw	$r3, -12($r29)
	sll	$r5, $r3, 2
	lw	$r6, -8($r29)
	addu	$r1, $r6, $r5
	sw	$r2, 0($r1)
	addi	$r2, $r0, 1
	addi	$r3, $r3, 1
	lw	$r5, -32($r29)
	lw	$r7, -36($r29)
	sw	$r7, 0($r5)
	lw	$r8, -28($r29)
	sw	$r7, 0($r8)
	lw	$r9, -20($r29)
	lw	$r28, -24($r29)
	sw	$r3, -56($r29)
	sw	$r2, -60($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.559977	! callcls
	j	.mendoi1.559976	! callcls
.mendoi2.559977:	! callcls
	jr	$r27	! callcls
.mendoi1.559976:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559978
	lw	$r2, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	j	.beq_cont.559979
.beq_else.559978:
	lw	$r4, -32($r29)
	lw	$r5, -36($r29)
	sw	$r5, 0($r4)
	lw	$r6, -28($r29)
	sw	$r5, 0($r6)
	lw	$r7, -20($r29)
	lw	$r28, -24($r29)
	sw	$r2, -64($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.559981	! callcls
	j	.mendoi1.559980	! callcls
.mendoi2.559981:	! callcls
	jr	$r27	! callcls
.mendoi1.559980:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559982
	addi	$r2, $r0, 2
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	j	.beq_cont.559983
.beq_else.559982:
	addi	$r4, $r0, 2
	lw	$r28, -16($r29)
	sw	$r2, -68($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.559985	! callcls
	j	.mendoi1.559984	! callcls
.mendoi2.559985:	! callcls
	jr	$r27	! callcls
.mendoi1.559984:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r3, -68($r29)
	sw	$r3, 4($r2)
.beq_cont.559983:
	lw	$r3, -64($r29)
	sw	$r3, 0($r2)
.beq_cont.559979:
	lw	$r3, 0($r2)
	lw	$r4, -40($r29)
	bne	$r3, $r4, .beq_else.559986
	jr	$r31
.beq_else.559986:
	lw	$r3, -56($r29)
	sll	$r5, $r3, 2
	lw	$r6, -8($r29)
	addu	$r1, $r6, $r5
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r3, -32($r29)
	lw	$r5, -36($r29)
	sw	$r5, 0($r3)
	lw	$r3, -28($r29)
	sw	$r5, 0($r3)
	lw	$r3, -20($r29)
	lw	$r28, -24($r29)
	sw	$r2, -72($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.559989	! callcls
	j	.mendoi1.559988	! callcls
.mendoi2.559989:	! callcls
	jr	$r27	! callcls
.mendoi1.559988:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r3, -40($r29)
	bne	$r2, $r3, .beq_else.559990
	lw	$r2, -60($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	j	.beq_cont.559991
.beq_else.559990:
	lw	$r4, -60($r29)
	lw	$r28, -16($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.559993	! callcls
	j	.mendoi1.559992	! callcls
.mendoi2.559993:	! callcls
	jr	$r27	! callcls
.mendoi1.559992:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r3, -76($r29)
	sw	$r3, 0($r2)
.beq_cont.559991:
	lw	$r3, 0($r2)
	lw	$r4, -40($r29)
	bne	$r3, $r4, .beq_else.559994
	jr	$r31
.beq_else.559994:
	lw	$r3, -72($r29)
	sll	$r5, $r3, 2
	lw	$r6, -8($r29)
	addu	$r1, $r6, $r5
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r3, -36($r29)
	lw	$r28, -16($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.559997	! callcls
	j	.mendoi1.559996	! callcls
.mendoi2.559997:	! callcls
	jr	$r27	! callcls
.mendoi1.559996:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r3, 0($r2)
	lw	$r4, -40($r29)
	bne	$r3, $r4, .beq_else.559998
	jr	$r31
.beq_else.559998:
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -8($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_rect_surface.3047:
	lw	$r7, 4($r28)
	sll	$r8, $r4, 2
	addu	$r1, $r3, $r8
	lwcl	$f6, 0($r1)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.560000
	addi	$r8, $r0, 1
	j	.bclt_cont.560001
.bclt_else.560000:
	addi	$r8, $r0, 0
.bclt_cont.560001:
	addi	$r9, $r0, 0
	bne	$r8, $r9, .beq_else.560002
	lw	$r8, 16($r2)
	lw	$r2, 24($r2)
	sll	$r10, $r4, 2
	addu	$r1, $r3, $r10
	lwcl	$f6, 0($r1)
	c.le.s	$f8, $f6
	bclf	.bclt_else.560003
	addi	$r10, $r0, 0
	j	.bclt_cont.560004
.bclt_else.560003:
	addi	$r10, $r0, 1
.bclt_cont.560004:
	bne	$r2, $r9, .beq_else.560005
	addi	$r2, $r10, 0
	j	.beq_cont.560006
.beq_else.560005:
	bne	$r10, $r9, .beq_else.560007
	addi	$r2, $r0, 1
	j	.beq_cont.560008
.beq_else.560007:
	addi	$r2, $r0, 0
.beq_cont.560008:
.beq_cont.560006:
	sll	$r10, $r4, 2
	addu	$r1, $r8, $r10
	lwcl	$f6, 0($r1)
	bne	$r2, $r9, .beq_else.560009
	fneg	$f6, $f6
	j	.beq_cont.560010
.beq_else.560009:
.beq_cont.560010:
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
	c.le.s	$f8, $f2
	bclf	.bclt_else.560011
	j	.bclt_cont.560012
.bclt_else.560011:
	fneg	$f2, $f2
.bclt_cont.560012:
	sll	$r2, $r5, 2
	addu	$r1, $r8, $r2
	lwcl	$f6, 0($r1)
	c.le.s	$f6, $f2
	bclf	.bclt_else.560013
	addi	$r2, $r0, 0
	j	.bclt_cont.560014
.bclt_else.560013:
	addi	$r2, $r0, 1
.bclt_cont.560014:
	bne	$r2, $r9, .beq_else.560015
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560015:
	sll	$r2, $r6, 2
	addu	$r1, $r3, $r2
	lwcl	$f2, 0($r1)
	mul.s	$f2, $f0, $f2
	add.s	$f2, $f2, $f4
	c.le.s	$f8, $f2
	bclf	.bclt_else.560016
	j	.bclt_cont.560017
.bclt_else.560016:
	fneg	$f2, $f2
.bclt_cont.560017:
	sll	$r2, $r6, 2
	addu	$r1, $r8, $r2
	lwcl	$f4, 0($r1)
	c.le.s	$f4, $f2
	bclf	.bclt_else.560018
	addi	$r2, $r0, 0
	j	.bclt_cont.560019
.bclt_else.560018:
	addi	$r2, $r0, 1
.bclt_cont.560019:
	bne	$r2, $r9, .beq_else.560020
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560020:
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560002:
	addi	$r2, $r0, 0
	jr	$r31
.solver_surface.3062:
	lw	$r4, 4($r28)
	lw	$r2, 16($r2)
	addi	$r5, $r0, 0
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
	bclf	.bclt_else.560021
	addi	$r3, $r0, 0
	j	.bclt_cont.560022
.bclt_else.560021:
	addi	$r3, $r0, 1
.bclt_cont.560022:
	bne	$r3, $r5, .beq_else.560023
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560023:
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
.quadratic.3068:
	mul.s	$f6, $f0, $f0
	lw	$r3, 16($r2)
	addi	$r4, $r0, 0
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
	bne	$r3, $r4, .beq_else.560024
	fmove	$f0, $f6
	jr	$r31
.beq_else.560024:
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
.bilinear.3073:
	mul.s	$f12, $f0, $f6
	lw	$r3, 16($r2)
	addi	$r4, $r0, 0
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
	bne	$r3, $r4, .beq_else.560025
	fmove	$f0, $f12
	jr	$r31
.beq_else.560025:
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
.solver_second.3081:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	lwcl	$f6, 0($r3)
	lwcl	$f8, 4($r3)
	lwcl	$f10, 8($r3)
	mul.s	$f12, $f6, $f6
	lw	$r6, 16($r2)
	lwcl	$f14, 0($r6)
	mul.s	$f12, $f12, $f14
	mul.s	$f14, $f8, $f8
	lw	$r6, 16($r2)
	lwcl	$f16, 4($r6)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	mul.s	$f14, $f10, $f10
	lw	$r6, 16($r2)
	lwcl	$f16, 8($r6)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	lw	$r6, 12($r2)
	bne	$r6, $r5, .beq_else.560026
	fmove	$f6, $f12
	j	.beq_cont.560027
.beq_else.560026:
	mul.s	$f14, $f8, $f10
	lw	$r6, 36($r2)
	lwcl	$f16, 0($r6)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	mul.s	$f10, $f10, $f6
	lw	$r6, 36($r2)
	lwcl	$f14, 4($r6)
	mul.s	$f10, $f10, $f14
	add.s	$f10, $f12, $f10
	mul.s	$f6, $f6, $f8
	lw	$r6, 36($r2)
	lwcl	$f8, 8($r6)
	mul.s	$f6, $f6, $f8
	add.s	$f6, $f10, $f6
.beq_cont.560027:
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.560028
	addi	$r6, $r0, 1
	j	.bclt_cont.560029
.bclt_else.560028:
	addi	$r6, $r0, 0
.bclt_cont.560029:
	bne	$r6, $r5, .beq_else.560030
	lwcl	$f10, 0($r3)
	lwcl	$f12, 4($r3)
	lwcl	$f14, 8($r3)
	sw	$r4, -4($r29)
	swcl	$f8, -8($r29)
	swcl	$f6, -12($r29)
	sw	$r5, -16($r29)
	swcl	$f4, -20($r29)
	swcl	$f2, -24($r29)
	sw	$r2, -28($r29)
	swcl	$f0, -32($r29)
	fmove	$f8, $f2	! g'_args
	fmove	$f6, $f0	! g'_args
	fmove	$f2, $f12	! g'_args
	fmove	$f0, $f10	! g'_args
	fmove	$f10, $f4	! g'_args
	fmove	$f4, $f14	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.bilinear.3073	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f2, -32($r29)
	mul.s	$f4, $f2, $f2
	lw	$r2, -28($r29)
	lw	$r3, 16($r2)
	lwcl	$f6, 0($r3)
	mul.s	$f4, $f4, $f6
	lwcl	$f6, -24($r29)
	mul.s	$f8, $f6, $f6
	lw	$r3, 16($r2)
	lwcl	$f10, 4($r3)
	mul.s	$f8, $f8, $f10
	add.s	$f4, $f4, $f8
	lwcl	$f8, -20($r29)
	mul.s	$f10, $f8, $f8
	lw	$r3, 16($r2)
	lwcl	$f12, 8($r3)
	mul.s	$f10, $f10, $f12
	add.s	$f4, $f4, $f10
	lw	$r3, 12($r2)
	lw	$r4, -16($r29)
	bne	$r3, $r4, .beq_else.560031
	fmove	$f2, $f4
	j	.beq_cont.560032
.beq_else.560031:
	mul.s	$f10, $f6, $f8
	lw	$r3, 36($r2)
	lwcl	$f12, 0($r3)
	mul.s	$f10, $f10, $f12
	add.s	$f4, $f4, $f10
	mul.s	$f8, $f8, $f2
	lw	$r3, 36($r2)
	lwcl	$f10, 4($r3)
	mul.s	$f8, $f8, $f10
	add.s	$f4, $f4, $f8
	mul.s	$f2, $f2, $f6
	lw	$r3, 36($r2)
	lwcl	$f6, 8($r3)
	mul.s	$f2, $f2, $f6
	add.s	$f2, $f4, $f2
.beq_cont.560032:
	lw	$r3, 4($r2)
	addi	$r5, $r0, 3
	bne	$r3, $r5, .beq_else.560033
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f2, $f2, $f4
	j	.beq_cont.560034
.beq_else.560033:
.beq_cont.560034:
	mul.s	$f4, $f0, $f0
	lwcl	$f6, -12($r29)
	mul.s	$f2, $f6, $f2
	sub.s	$f2, $f4, $f2
	lwcl	$f4, -8($r29)
	c.le.s	$f2, $f4
	bclf	.bclt_else.560035
	addi	$r3, $r0, 0
	j	.bclt_cont.560036
.bclt_else.560035:
	addi	$r3, $r0, 1
.bclt_cont.560036:
	bne	$r3, $r4, .beq_else.560037
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560037:
	swcl	$f0, -36($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r2, -28($r29)
	lw	$r2, 24($r2)
	lw	$r3, -16($r29)
	bne	$r2, $r3, .beq_else.560038
	fneg	$f0, $f0
	j	.beq_cont.560039
.beq_else.560038:
.beq_cont.560039:
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, -12($r29)
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560030:
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
	addi	$r8, $r0, 0
	lwcl	$f0, 0($r4)
	lw	$r9, 20($r2)
	lwcl	$f2, 0($r9)
	sub.s	$f0, $f0, $f2
	addi	$r9, $r0, 1
	lwcl	$f2, 4($r4)
	lw	$r10, 20($r2)
	lwcl	$f4, 4($r10)
	sub.s	$f2, $f2, $f4
	addi	$r10, $r0, 2
	lwcl	$f4, 8($r4)
	lw	$r4, 20($r2)
	lwcl	$f6, 8($r4)
	sub.s	$f4, $f4, $f6
	lw	$r4, 4($r2)
	bne	$r4, $r9, .beq_else.560040
	swcl	$f0, -4($r29)
	swcl	$f4, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r10, -16($r29)
	sw	$r9, -20($r29)
	sw	$r3, -24($r29)
	sw	$r2, -28($r29)
	sw	$r6, -32($r29)
	sw	$r8, -36($r29)
	addi	$r5, $r9, 0	! g'_args
	addi	$r4, $r8, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	addi	$r6, $r10, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560042	! callcls
	j	.mendoi1.560041	! callcls
.mendoi2.560042:	! callcls
	jr	$r27	! callcls
.mendoi1.560041:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r6, -36($r29)
	bne	$r2, $r6, .beq_else.560043
	lwcl	$f0, -12($r29)
	lwcl	$f2, -8($r29)
	lwcl	$f4, -4($r29)
	lw	$r2, -28($r29)
	lw	$r3, -24($r29)
	lw	$r4, -20($r29)
	lw	$r5, -16($r29)
	lw	$r28, -32($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560045	! callcls
	j	.mendoi1.560044	! callcls
.mendoi2.560045:	! callcls
	jr	$r27	! callcls
.mendoi1.560044:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r5, -36($r29)
	bne	$r2, $r5, .beq_else.560046
	lwcl	$f0, -8($r29)
	lwcl	$f2, -4($r29)
	lwcl	$f4, -12($r29)
	lw	$r2, -28($r29)
	lw	$r3, -24($r29)
	lw	$r4, -16($r29)
	lw	$r6, -20($r29)
	lw	$r28, -32($r29)
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560048	! callcls
	j	.mendoi1.560047	! callcls
.mendoi2.560048:	! callcls
	jr	$r27	! callcls
.mendoi1.560047:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560049
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560049:
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.560046:
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.560043:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560040:
	bne	$r4, $r10, .beq_else.560050
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
	bclf	.bclt_else.560051
	addi	$r3, $r0, 0
	j	.bclt_cont.560052
.bclt_else.560051:
	addi	$r3, $r0, 1
.bclt_cont.560052:
	bne	$r3, $r8, .beq_else.560053
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560053:
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
.beq_else.560050:
	addi	$r28, $r5, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solver_rect_fast.3091:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
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
	bclf	.bclt_else.560054
	j	.bclt_cont.560055
.bclt_else.560054:
	fneg	$f8, $f8
.bclt_cont.560055:
	lw	$r7, 16($r2)
	lwcl	$f12, 4($r7)
	c.le.s	$f12, $f8
	bclf	.bclt_else.560056
	addi	$r7, $r0, 0
	j	.bclt_cont.560057
.bclt_else.560056:
	addi	$r7, $r0, 1
.bclt_cont.560057:
	bne	$r7, $r6, .beq_else.560058
	addi	$r7, $r0, 0
	j	.beq_cont.560059
.beq_else.560058:
	lwcl	$f8, 8($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f4
	c.le.s	$f10, $f8
	bclf	.bclt_else.560060
	j	.bclt_cont.560061
.bclt_else.560060:
	fneg	$f8, $f8
.bclt_cont.560061:
	lw	$r7, 16($r2)
	lwcl	$f12, 8($r7)
	c.le.s	$f12, $f8
	bclf	.bclt_else.560062
	addi	$r7, $r0, 0
	j	.bclt_cont.560063
.bclt_else.560062:
	addi	$r7, $r0, 1
.bclt_cont.560063:
	bne	$r7, $r6, .beq_else.560064
	addi	$r7, $r0, 0
	j	.beq_cont.560065
.beq_else.560064:
	lwcl	$f8, 4($r4)
	c.eq.s	$f8, $f10
	bclf	.bclt_else.560066
	addi	$r7, $r0, 1
	j	.bclt_cont.560067
.bclt_else.560066:
	addi	$r7, $r0, 0
.bclt_cont.560067:
	bne	$r7, $r6, .beq_else.560068
	addi	$r7, $r0, 1
	j	.beq_cont.560069
.beq_else.560068:
	addi	$r7, $r0, 0
.beq_cont.560069:
.beq_cont.560065:
.beq_cont.560059:
	bne	$r7, $r6, .beq_else.560070
	lwcl	$f6, 8($r4)
	sub.s	$f6, $f6, $f2
	lwcl	$f8, 12($r4)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 0($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f0
	c.le.s	$f10, $f8
	bclf	.bclt_else.560071
	j	.bclt_cont.560072
.bclt_else.560071:
	fneg	$f8, $f8
.bclt_cont.560072:
	lw	$r7, 16($r2)
	lwcl	$f12, 0($r7)
	c.le.s	$f12, $f8
	bclf	.bclt_else.560073
	addi	$r7, $r0, 0
	j	.bclt_cont.560074
.bclt_else.560073:
	addi	$r7, $r0, 1
.bclt_cont.560074:
	bne	$r7, $r6, .beq_else.560075
	addi	$r7, $r0, 0
	j	.beq_cont.560076
.beq_else.560075:
	lwcl	$f8, 8($r3)
	mul.s	$f8, $f6, $f8
	add.s	$f8, $f8, $f4
	c.le.s	$f10, $f8
	bclf	.bclt_else.560077
	j	.bclt_cont.560078
.bclt_else.560077:
	fneg	$f8, $f8
.bclt_cont.560078:
	lw	$r7, 16($r2)
	lwcl	$f12, 8($r7)
	c.le.s	$f12, $f8
	bclf	.bclt_else.560079
	addi	$r7, $r0, 0
	j	.bclt_cont.560080
.bclt_else.560079:
	addi	$r7, $r0, 1
.bclt_cont.560080:
	bne	$r7, $r6, .beq_else.560081
	addi	$r7, $r0, 0
	j	.beq_cont.560082
.beq_else.560081:
	lwcl	$f8, 12($r4)
	c.eq.s	$f8, $f10
	bclf	.bclt_else.560083
	addi	$r7, $r0, 1
	j	.bclt_cont.560084
.bclt_else.560083:
	addi	$r7, $r0, 0
.bclt_cont.560084:
	bne	$r7, $r6, .beq_else.560085
	addi	$r7, $r0, 1
	j	.beq_cont.560086
.beq_else.560085:
	addi	$r7, $r0, 0
.beq_cont.560086:
.beq_cont.560082:
.beq_cont.560076:
	bne	$r7, $r6, .beq_else.560087
	lwcl	$f6, 16($r4)
	sub.s	$f4, $f6, $f4
	lwcl	$f6, 20($r4)
	mul.s	$f4, $f4, $f6
	lwcl	$f6, 0($r3)
	mul.s	$f6, $f4, $f6
	add.s	$f0, $f6, $f0
	c.le.s	$f10, $f0
	bclf	.bclt_else.560088
	j	.bclt_cont.560089
.bclt_else.560088:
	fneg	$f0, $f0
.bclt_cont.560089:
	lw	$r7, 16($r2)
	lwcl	$f6, 0($r7)
	c.le.s	$f6, $f0
	bclf	.bclt_else.560090
	addi	$r7, $r0, 0
	j	.bclt_cont.560091
.bclt_else.560090:
	addi	$r7, $r0, 1
.bclt_cont.560091:
	bne	$r7, $r6, .beq_else.560092
	addi	$r2, $r0, 0
	j	.beq_cont.560093
.beq_else.560092:
	lwcl	$f0, 4($r3)
	mul.s	$f0, $f4, $f0
	add.s	$f0, $f0, $f2
	c.le.s	$f10, $f0
	bclf	.bclt_else.560094
	j	.bclt_cont.560095
.bclt_else.560094:
	fneg	$f0, $f0
.bclt_cont.560095:
	lw	$r2, 16($r2)
	lwcl	$f2, 4($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560096
	addi	$r2, $r0, 0
	j	.bclt_cont.560097
.bclt_else.560096:
	addi	$r2, $r0, 1
.bclt_cont.560097:
	bne	$r2, $r6, .beq_else.560098
	addi	$r2, $r0, 0
	j	.beq_cont.560099
.beq_else.560098:
	lwcl	$f0, 20($r4)
	c.eq.s	$f0, $f10
	bclf	.bclt_else.560100
	addi	$r2, $r0, 1
	j	.bclt_cont.560101
.bclt_else.560100:
	addi	$r2, $r0, 0
.bclt_cont.560101:
	bne	$r2, $r6, .beq_else.560102
	addi	$r2, $r0, 1
	j	.beq_cont.560103
.beq_else.560102:
	addi	$r2, $r0, 0
.beq_cont.560103:
.beq_cont.560099:
.beq_cont.560093:
	bne	$r2, $r6, .beq_else.560104
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560104:
	swcl	$f4, 0($r5)
	addi	$r2, $r0, 3
	jr	$r31
.beq_else.560087:
	swcl	$f6, 0($r5)
	addi	$r2, $r0, 2
	jr	$r31
.beq_else.560070:
	swcl	$f6, 0($r5)
	addi	$r2, $r0, 1
	jr	$r31
.solver_second_fast.3104:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	lwcl	$f6, 0($r3)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.560105
	addi	$r6, $r0, 1
	j	.bclt_cont.560106
.bclt_else.560105:
	addi	$r6, $r0, 0
.bclt_cont.560106:
	bne	$r6, $r5, .beq_else.560107
	lwcl	$f10, 4($r3)
	mul.s	$f10, $f10, $f0
	lwcl	$f12, 8($r3)
	mul.s	$f12, $f12, $f2
	add.s	$f10, $f10, $f12
	addi	$r6, $r0, 3
	lwcl	$f12, 12($r3)
	mul.s	$f12, $f12, $f4
	add.s	$f10, $f10, $f12
	mul.s	$f12, $f0, $f0
	lw	$r7, 16($r2)
	lwcl	$f14, 0($r7)
	mul.s	$f12, $f12, $f14
	mul.s	$f14, $f2, $f2
	lw	$r7, 16($r2)
	lwcl	$f16, 4($r7)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	mul.s	$f14, $f4, $f4
	lw	$r7, 16($r2)
	lwcl	$f16, 8($r7)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	lw	$r7, 12($r2)
	bne	$r7, $r5, .beq_else.560108
	fmove	$f0, $f12
	j	.beq_cont.560109
.beq_else.560108:
	mul.s	$f14, $f2, $f4
	lw	$r7, 36($r2)
	lwcl	$f16, 0($r7)
	mul.s	$f14, $f14, $f16
	add.s	$f12, $f12, $f14
	mul.s	$f4, $f4, $f0
	lw	$r7, 36($r2)
	lwcl	$f14, 4($r7)
	mul.s	$f4, $f4, $f14
	add.s	$f4, $f12, $f4
	mul.s	$f0, $f0, $f2
	lw	$r7, 36($r2)
	lwcl	$f2, 8($r7)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
.beq_cont.560109:
	lw	$r7, 4($r2)
	bne	$r7, $r6, .beq_else.560110
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.560111
.beq_else.560110:
.beq_cont.560111:
	mul.s	$f2, $f10, $f10
	mul.s	$f0, $f6, $f0
	sub.s	$f0, $f2, $f0
	c.le.s	$f0, $f8
	bclf	.bclt_else.560112
	addi	$r6, $r0, 0
	j	.bclt_cont.560113
.bclt_else.560112:
	addi	$r6, $r0, 1
.bclt_cont.560113:
	bne	$r6, $r5, .beq_else.560114
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560114:
	lw	$r2, 24($r2)
	bne	$r2, $r5, .beq_else.560115
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f10, -12($r29)
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
	j	.beq_cont.560116
.beq_else.560115:
	sw	$r4, -4($r29)
	sw	$r3, -8($r29)
	swcl	$f10, -12($r29)
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
.beq_cont.560116:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560107:
	addi	$r2, $r0, 0
	jr	$r31
.solver_second_fast2.3121:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	lwcl	$f6, 0($r3)
	lfh	$f8, 0
	lfl	$f8, 0
	c.eq.s	$f6, $f8
	bclf	.bclt_else.560117
	addi	$r7, $r0, 1
	j	.bclt_cont.560118
.bclt_else.560117:
	addi	$r7, $r0, 0
.bclt_cont.560118:
	bne	$r7, $r6, .beq_else.560119
	lwcl	$f10, 4($r3)
	mul.s	$f0, $f10, $f0
	lwcl	$f10, 8($r3)
	mul.s	$f2, $f10, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 12($r4)
	mul.s	$f4, $f0, $f0
	mul.s	$f2, $f6, $f2
	sub.s	$f2, $f4, $f2
	c.le.s	$f2, $f8
	bclf	.bclt_else.560120
	addi	$r4, $r0, 0
	j	.bclt_cont.560121
.bclt_else.560120:
	addi	$r4, $r0, 1
.bclt_cont.560121:
	bne	$r4, $r6, .beq_else.560122
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560122:
	lw	$r2, 24($r2)
	bne	$r2, $r6, .beq_else.560123
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
	j	.beq_cont.560124
.beq_else.560123:
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
.beq_cont.560124:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560119:
	addi	$r2, $r0, 0
	jr	$r31
.setup_rect_table.3131:
	addi	$r4, $r0, 6
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r3, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -12($r29)
	lwcl	$f0, 0($r4)
	lwcl	$f2, -8($r29)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.560125
	addi	$r5, $r0, 1
	j	.bclt_cont.560126
.bclt_else.560125:
	addi	$r5, $r0, 0
.bclt_cont.560126:
	bne	$r5, $r3, .beq_else.560127
	lw	$r5, -4($r29)
	lw	$r6, 24($r5)
	lwcl	$f0, 0($r4)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560129
	addi	$r7, $r0, 0
	j	.bclt_cont.560130
.bclt_else.560129:
	addi	$r7, $r0, 1
.bclt_cont.560130:
	bne	$r6, $r3, .beq_else.560131
	addi	$r6, $r7, 0
	j	.beq_cont.560132
.beq_else.560131:
	bne	$r7, $r3, .beq_else.560133
	addi	$r6, $r0, 1
	j	.beq_cont.560134
.beq_else.560133:
	addi	$r6, $r0, 0
.beq_cont.560134:
.beq_cont.560132:
	lw	$r7, 16($r5)
	lwcl	$f0, 0($r7)
	bne	$r6, $r3, .beq_else.560135
	fneg	$f0, $f0
	j	.beq_cont.560136
.beq_else.560135:
.beq_cont.560136:
	swcl	$f0, 0($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f4, 0($r4)
	div.s	$f0, $f0, $f4
	swcl	$f0, 4($r2)
	j	.beq_cont.560128
.beq_else.560127:
	swcl	$f2, 4($r2)
.beq_cont.560128:
	lwcl	$f0, 4($r4)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.560137
	addi	$r5, $r0, 1
	j	.bclt_cont.560138
.bclt_else.560137:
	addi	$r5, $r0, 0
.bclt_cont.560138:
	bne	$r5, $r3, .beq_else.560139
	lw	$r5, -4($r29)
	lw	$r6, 24($r5)
	lwcl	$f0, 4($r4)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560141
	addi	$r7, $r0, 0
	j	.bclt_cont.560142
.bclt_else.560141:
	addi	$r7, $r0, 1
.bclt_cont.560142:
	bne	$r6, $r3, .beq_else.560143
	addi	$r6, $r7, 0
	j	.beq_cont.560144
.beq_else.560143:
	bne	$r7, $r3, .beq_else.560145
	addi	$r6, $r0, 1
	j	.beq_cont.560146
.beq_else.560145:
	addi	$r6, $r0, 0
.beq_cont.560146:
.beq_cont.560144:
	lw	$r7, 16($r5)
	lwcl	$f0, 4($r7)
	bne	$r6, $r3, .beq_else.560147
	fneg	$f0, $f0
	j	.beq_cont.560148
.beq_else.560147:
.beq_cont.560148:
	swcl	$f0, 8($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f4, 4($r4)
	div.s	$f0, $f0, $f4
	swcl	$f0, 12($r2)
	j	.beq_cont.560140
.beq_else.560139:
	swcl	$f2, 12($r2)
.beq_cont.560140:
	lwcl	$f0, 8($r4)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.560149
	addi	$r5, $r0, 1
	j	.bclt_cont.560150
.bclt_else.560149:
	addi	$r5, $r0, 0
.bclt_cont.560150:
	bne	$r5, $r3, .beq_else.560151
	lw	$r5, -4($r29)
	lw	$r6, 24($r5)
	lwcl	$f0, 8($r4)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560153
	addi	$r7, $r0, 0
	j	.bclt_cont.560154
.bclt_else.560153:
	addi	$r7, $r0, 1
.bclt_cont.560154:
	bne	$r6, $r3, .beq_else.560155
	addi	$r6, $r7, 0
	j	.beq_cont.560156
.beq_else.560155:
	bne	$r7, $r3, .beq_else.560157
	addi	$r6, $r0, 1
	j	.beq_cont.560158
.beq_else.560157:
	addi	$r6, $r0, 0
.beq_cont.560158:
.beq_cont.560156:
	lw	$r5, 16($r5)
	lwcl	$f0, 8($r5)
	bne	$r6, $r3, .beq_else.560159
	fneg	$f0, $f0
	j	.beq_cont.560160
.beq_else.560159:
.beq_cont.560160:
	swcl	$f0, 16($r2)
	lfh	$f0, 16256
	lfl	$f0, 0
	lwcl	$f2, 8($r4)
	div.s	$f0, $f0, $f2
	swcl	$f0, 20($r2)
	j	.beq_cont.560152
.beq_else.560151:
	swcl	$f2, 20($r2)
.beq_cont.560152:
	jr	$r31
.setup_surface_table.3134:
	addi	$r4, $r0, 4
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -12($r29)
	lwcl	$f0, 0($r4)
	lw	$r5, -8($r29)
	lw	$r6, 16($r5)
	lwcl	$f2, 0($r6)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lw	$r6, 16($r5)
	lwcl	$f4, 4($r6)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r4)
	lw	$r4, 16($r5)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, -4($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.560161
	addi	$r4, $r0, 0
	j	.bclt_cont.560162
.bclt_else.560161:
	addi	$r4, $r0, 1
.bclt_cont.560162:
	bne	$r4, $r3, .beq_else.560163
	swcl	$f2, 0($r2)
	j	.beq_cont.560164
.beq_else.560163:
	lfh	$f2, 49024
	lfl	$f2, 0
	div.s	$f2, $f2, $f0
	swcl	$f2, 0($r2)
	lw	$r3, 16($r5)
	lwcl	$f2, 0($r3)
	div.s	$f2, $f2, $f0
	fneg	$f2, $f2
	swcl	$f2, 4($r2)
	lw	$r3, 16($r5)
	lwcl	$f2, 4($r3)
	div.s	$f2, $f2, $f0
	fneg	$f2, $f2
	swcl	$f2, 8($r2)
	lw	$r3, 16($r5)
	lwcl	$f2, 8($r3)
	div.s	$f0, $f2, $f0
	fneg	$f0, $f0
	swcl	$f0, 12($r2)
.beq_cont.560164:
	jr	$r31
.setup_second_table.3137:
	addi	$r4, $r0, 5
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, -4($r29)
	sw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r0, 0
	lw	$r4, -12($r29)
	lwcl	$f0, 0($r4)
	lwcl	$f2, 4($r4)
	lwcl	$f4, 8($r4)
	mul.s	$f6, $f0, $f0
	lw	$r5, -8($r29)
	lw	$r6, 16($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f6, $f6, $f8
	mul.s	$f8, $f2, $f2
	lw	$r6, 16($r5)
	lwcl	$f10, 4($r6)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f8, $f4, $f4
	lw	$r6, 16($r5)
	lwcl	$f10, 8($r6)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lw	$r6, 12($r5)
	bne	$r6, $r3, .beq_else.560165
	fmove	$f0, $f6
	j	.beq_cont.560166
.beq_else.560165:
	mul.s	$f8, $f2, $f4
	lw	$r6, 36($r5)
	lwcl	$f10, 0($r6)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f4, $f4, $f0
	lw	$r6, 36($r5)
	lwcl	$f8, 4($r6)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f6, $f4
	mul.s	$f0, $f0, $f2
	lw	$r6, 36($r5)
	lwcl	$f2, 8($r6)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
.beq_cont.560166:
	lwcl	$f2, 0($r4)
	lw	$r6, 16($r5)
	lwcl	$f4, 0($r6)
	mul.s	$f2, $f2, $f4
	fneg	$f2, $f2
	lwcl	$f4, 4($r4)
	lw	$r6, 16($r5)
	lwcl	$f6, 4($r6)
	mul.s	$f4, $f4, $f6
	fneg	$f4, $f4
	lwcl	$f6, 8($r4)
	lw	$r6, 16($r5)
	lwcl	$f8, 8($r6)
	mul.s	$f6, $f6, $f8
	fneg	$f6, $f6
	swcl	$f0, 0($r2)
	lw	$r6, 12($r5)
	bne	$r6, $r3, .beq_else.560167
	swcl	$f2, 4($r2)
	swcl	$f4, 8($r2)
	swcl	$f6, 12($r2)
	j	.beq_cont.560168
.beq_else.560167:
	lwcl	$f8, 8($r4)
	lw	$r6, 36($r5)
	lwcl	$f10, 4($r6)
	mul.s	$f8, $f8, $f10
	lwcl	$f10, 4($r4)
	lw	$r6, 36($r5)
	lwcl	$f12, 8($r6)
	mul.s	$f10, $f10, $f12
	add.s	$f8, $f8, $f10
	lfh	$f10, 16128
	lfl	$f10, 0
	mul.s	$f8, $f8, $f10
	sub.s	$f2, $f2, $f8
	swcl	$f2, 4($r2)
	lwcl	$f2, 8($r4)
	lw	$r6, 36($r5)
	lwcl	$f8, 0($r6)
	mul.s	$f2, $f2, $f8
	lwcl	$f8, 0($r4)
	lw	$r6, 36($r5)
	lwcl	$f12, 8($r6)
	mul.s	$f8, $f8, $f12
	add.s	$f2, $f2, $f8
	mul.s	$f2, $f2, $f10
	sub.s	$f2, $f4, $f2
	swcl	$f2, 8($r2)
	lwcl	$f2, 4($r4)
	lw	$r6, 36($r5)
	lwcl	$f4, 0($r6)
	mul.s	$f2, $f2, $f4
	lwcl	$f4, 0($r4)
	lw	$r4, 36($r5)
	lwcl	$f8, 4($r4)
	mul.s	$f4, $f4, $f8
	add.s	$f2, $f2, $f4
	mul.s	$f2, $f2, $f10
	sub.s	$f2, $f6, $f2
	swcl	$f2, 12($r2)
.beq_cont.560168:
	lwcl	$f2, -4($r29)
	c.eq.s	$f0, $f2
	bclf	.bclt_else.560169
	addi	$r4, $r0, 1
	j	.bclt_cont.560170
.bclt_else.560169:
	addi	$r4, $r0, 0
.bclt_cont.560170:
	bne	$r4, $r3, .beq_else.560171
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f0, $f2, $f0
	swcl	$f0, 16($r2)
	j	.beq_cont.560172
.beq_else.560171:
.beq_cont.560172:
	jr	$r31
.iter_setup_dirvec_constants.3140:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.560173
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r6, 0($r1)
	lw	$r7, 4($r2)
	lw	$r8, 0($r2)
	lw	$r9, 4($r6)
	addi	$r10, $r0, 1
	sw	$r28, -4($r29)
	sw	$r10, -8($r29)
	sw	$r2, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	bne	$r9, $r10, .beq_else.560174
	sw	$r7, -24($r29)
	sw	$r3, -28($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560175
.beq_else.560174:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.560176
	sw	$r7, -24($r29)
	sw	$r3, -28($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560177
.beq_else.560176:
	sw	$r7, -24($r29)
	sw	$r3, -28($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.560177:
.beq_cont.560175:
	addi	$r2, $r3, -1
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.560178
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -12($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -8($r29)
	bne	$r9, $r10, .beq_else.560179
	sw	$r7, -32($r29)
	sw	$r2, -36($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560180
.beq_else.560179:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.560181
	sw	$r7, -32($r29)
	sw	$r2, -36($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560182
.beq_else.560181:
	sw	$r7, -32($r29)
	sw	$r2, -36($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.560182:
.beq_cont.560180:
	addi	$r2, $r3, -1
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.560183
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -12($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -8($r29)
	bne	$r9, $r10, .beq_else.560184
	sw	$r7, -40($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560185
.beq_else.560184:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.560186
	sw	$r7, -40($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560187
.beq_else.560186:
	sw	$r7, -40($r29)
	sw	$r2, -44($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.560187:
.beq_cont.560185:
	addi	$r2, $r3, -1
	lw	$r3, -20($r29)
	bgt	$r3, $r2, .ble_else.560188
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -12($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	lw	$r8, -8($r29)
	bne	$r7, $r8, .beq_else.560189
	sw	$r5, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560190
.beq_else.560189:
	addi	$r8, $r0, 2
	bne	$r7, $r8, .beq_else.560191
	sw	$r5, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.560192
.beq_else.560191:
	sw	$r5, -48($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.560192:
.beq_cont.560190:
	addi	$r3, $r3, -1
	lw	$r2, -12($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.560188:
	jr	$r31
.ble_else.560183:
	jr	$r31
.ble_else.560178:
	jr	$r31
.ble_else.560173:
	jr	$r31
.setup_startp_constants.3145:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.560197
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	lw	$r6, 40($r4)
	lw	$r7, 4($r4)
	lwcl	$f0, 0($r2)
	lw	$r8, 20($r4)
	lwcl	$f2, 0($r8)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r2)
	lw	$r8, 20($r4)
	lwcl	$f2, 4($r8)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 4($r6)
	addi	$r8, $r0, 2
	lwcl	$f0, 8($r2)
	lw	$r9, 20($r4)
	lwcl	$f2, 8($r9)
	sub.s	$f0, $f0, $f2
	swcl	$f0, 8($r6)
	bne	$r7, $r8, .beq_else.560198
	lw	$r4, 16($r4)
	lwcl	$f0, 0($r6)
	lwcl	$f2, 4($r6)
	lwcl	$f4, 8($r6)
	lwcl	$f6, 0($r4)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 4($r4)
	mul.s	$f2, $f6, $f2
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 12($r6)
	j	.beq_cont.560199
.beq_else.560198:
	bgt	$r7, $r8, .ble_else.560200
	j	.ble_cont.560201
.ble_else.560200:
	lwcl	$f0, 0($r6)
	lwcl	$f2, 4($r6)
	lwcl	$f4, 8($r6)
	mul.s	$f6, $f0, $f0
	lw	$r8, 16($r4)
	lwcl	$f8, 0($r8)
	mul.s	$f6, $f6, $f8
	mul.s	$f8, $f2, $f2
	lw	$r8, 16($r4)
	lwcl	$f10, 4($r8)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f8, $f4, $f4
	lw	$r8, 16($r4)
	lwcl	$f10, 8($r8)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lw	$r8, 12($r4)
	bne	$r8, $r5, .beq_else.560202
	fmove	$f0, $f6
	j	.beq_cont.560203
.beq_else.560202:
	mul.s	$f8, $f2, $f4
	lw	$r5, 36($r4)
	lwcl	$f10, 0($r5)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f4, $f4, $f0
	lw	$r5, 36($r4)
	lwcl	$f8, 4($r5)
	mul.s	$f4, $f4, $f8
	add.s	$f4, $f6, $f4
	mul.s	$f0, $f0, $f2
	lw	$r4, 36($r4)
	lwcl	$f2, 8($r4)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
.beq_cont.560203:
	addi	$r4, $r0, 3
	bne	$r7, $r4, .beq_else.560204
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.560205
.beq_else.560204:
.beq_cont.560205:
	swcl	$f0, 12($r6)
.ble_cont.560201:
.beq_cont.560199:
	addi	$r3, $r3, -1
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.560197:
	jr	$r31
.is_second_outside.3160:
	mul.s	$f6, $f0, $f0
	lw	$r3, 16($r2)
	addi	$r4, $r0, 0
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
	bne	$r3, $r4, .beq_else.560207
	fmove	$f0, $f6
	j	.beq_cont.560208
.beq_else.560207:
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
	lw	$r3, 36($r2)
	lwcl	$f2, 8($r3)
	mul.s	$f0, $f0, $f2
	add.s	$f0, $f4, $f0
.beq_cont.560208:
	lw	$r3, 4($r2)
	addi	$r5, $r0, 3
	bne	$r3, $r5, .beq_else.560209
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.560210
.beq_else.560209:
.beq_cont.560210:
	lw	$r2, 24($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.560211
	addi	$r3, $r0, 0
	j	.bclt_cont.560212
.bclt_else.560211:
	addi	$r3, $r0, 1
.bclt_cont.560212:
	bne	$r2, $r4, .beq_else.560213
	addi	$r2, $r3, 0
	j	.beq_cont.560214
.beq_else.560213:
	bne	$r3, $r4, .beq_else.560215
	addi	$r2, $r0, 1
	j	.beq_cont.560216
.beq_else.560215:
	addi	$r2, $r0, 0
.beq_cont.560216:
.beq_cont.560214:
	bne	$r2, $r4, .beq_else.560217
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560217:
	addi	$r2, $r0, 0
	jr	$r31
.is_outside.3165:
	lw	$r3, 20($r2)
	addi	$r4, $r0, 0
	lwcl	$f6, 0($r3)
	sub.s	$f0, $f0, $f6
	lw	$r3, 20($r2)
	addi	$r5, $r0, 1
	lwcl	$f6, 4($r3)
	sub.s	$f2, $f2, $f6
	lw	$r3, 20($r2)
	addi	$r6, $r0, 2
	lwcl	$f6, 8($r3)
	sub.s	$f4, $f4, $f6
	lw	$r3, 4($r2)
	bne	$r3, $r5, .beq_else.560218
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.560219
	j	.bclt_cont.560220
.bclt_else.560219:
	fneg	$f0, $f0
.bclt_cont.560220:
	lw	$r3, 16($r2)
	lwcl	$f8, 0($r3)
	c.le.s	$f8, $f0
	bclf	.bclt_else.560221
	addi	$r3, $r0, 0
	j	.bclt_cont.560222
.bclt_else.560221:
	addi	$r3, $r0, 1
.bclt_cont.560222:
	bne	$r3, $r4, .beq_else.560223
	addi	$r3, $r0, 0
	j	.beq_cont.560224
.beq_else.560223:
	c.le.s	$f6, $f2
	bclf	.bclt_else.560225
	fmove	$f0, $f2
	j	.bclt_cont.560226
.bclt_else.560225:
	fneg	$f0, $f2
.bclt_cont.560226:
	lw	$r3, 16($r2)
	lwcl	$f2, 4($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560227
	addi	$r3, $r0, 0
	j	.bclt_cont.560228
.bclt_else.560227:
	addi	$r3, $r0, 1
.bclt_cont.560228:
	bne	$r3, $r4, .beq_else.560229
	addi	$r3, $r0, 0
	j	.beq_cont.560230
.beq_else.560229:
	c.le.s	$f6, $f4
	bclf	.bclt_else.560231
	fmove	$f0, $f4
	j	.bclt_cont.560232
.bclt_else.560231:
	fneg	$f0, $f4
.bclt_cont.560232:
	lw	$r3, 16($r2)
	lwcl	$f2, 8($r3)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560233
	addi	$r3, $r0, 0
	j	.bclt_cont.560234
.bclt_else.560233:
	addi	$r3, $r0, 1
.bclt_cont.560234:
.beq_cont.560230:
.beq_cont.560224:
	bne	$r3, $r4, .beq_else.560235
	lw	$r2, 24($r2)
	bne	$r2, $r4, .beq_else.560236
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560236:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560235:
	lw	$r2, 24($r2)
	jr	$r31
.beq_else.560218:
	bne	$r3, $r6, .beq_else.560237
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
	bclf	.bclt_else.560238
	addi	$r3, $r0, 0
	j	.bclt_cont.560239
.bclt_else.560238:
	addi	$r3, $r0, 1
.bclt_cont.560239:
	bne	$r2, $r4, .beq_else.560240
	addi	$r2, $r3, 0
	j	.beq_cont.560241
.beq_else.560240:
	bne	$r3, $r4, .beq_else.560242
	addi	$r2, $r0, 1
	j	.beq_cont.560243
.beq_else.560242:
	addi	$r2, $r0, 0
.beq_cont.560243:
.beq_cont.560241:
	bne	$r2, $r4, .beq_else.560244
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560244:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560237:
	sw	$r4, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.quadratic.3068	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lw	$r2, -8($r29)
	lw	$r3, 4($r2)
	addi	$r4, $r0, 3
	bne	$r3, $r4, .beq_else.560245
	lfh	$f2, 16256
	lfl	$f2, 0
	sub.s	$f0, $f0, $f2
	j	.beq_cont.560246
.beq_else.560245:
.beq_cont.560246:
	lw	$r2, 24($r2)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.560247
	addi	$r3, $r0, 0
	j	.bclt_cont.560248
.bclt_else.560247:
	addi	$r3, $r0, 1
.bclt_cont.560248:
	lw	$r4, -4($r29)
	bne	$r2, $r4, .beq_else.560249
	addi	$r2, $r3, 0
	j	.beq_cont.560250
.beq_else.560249:
	bne	$r3, $r4, .beq_else.560251
	addi	$r2, $r0, 1
	j	.beq_cont.560252
.beq_else.560251:
	addi	$r2, $r0, 0
.beq_cont.560252:
.beq_cont.560250:
	bne	$r2, $r4, .beq_else.560253
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560253:
	addi	$r2, $r0, 0
	jr	$r31
.check_all_inside.3170:
	lw	$r4, 4($r28)
	sll	$r5, $r2, 2
	addu	$r1, $r3, $r5
	lw	$r5, 0($r1)
	addi	$r6, $r0, -1
	bne	$r5, $r6, .beq_else.560254
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560254:
	sll	$r5, $r5, 2
	addu	$r1, $r4, $r5
	lw	$r5, 0($r1)
	lw	$r7, 20($r5)
	addi	$r8, $r0, 0
	lwcl	$f6, 0($r7)
	sub.s	$f6, $f0, $f6
	lw	$r7, 20($r5)
	addi	$r9, $r0, 1
	lwcl	$f8, 4($r7)
	sub.s	$f8, $f2, $f8
	lw	$r7, 20($r5)
	addi	$r10, $r0, 2
	lwcl	$f10, 8($r7)
	sub.s	$f10, $f4, $f10
	lw	$r7, 4($r5)
	sw	$r28, -4($r29)
	sw	$r10, -8($r29)
	sw	$r9, -12($r29)
	swcl	$f4, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	sw	$r4, -28($r29)
	sw	$r6, -32($r29)
	sw	$r3, -36($r29)
	sw	$r2, -40($r29)
	sw	$r8, -44($r29)
	bne	$r7, $r9, .beq_else.560255
	lfh	$f12, 0
	lfl	$f12, 0
	c.le.s	$f12, $f6
	bclf	.bclt_else.560257
	j	.bclt_cont.560258
.bclt_else.560257:
	fneg	$f6, $f6
.bclt_cont.560258:
	lw	$r7, 16($r5)
	lwcl	$f14, 0($r7)
	c.le.s	$f14, $f6
	bclf	.bclt_else.560259
	addi	$r7, $r0, 0
	j	.bclt_cont.560260
.bclt_else.560259:
	addi	$r7, $r0, 1
.bclt_cont.560260:
	bne	$r7, $r8, .beq_else.560261
	addi	$r7, $r0, 0
	j	.beq_cont.560262
.beq_else.560261:
	c.le.s	$f12, $f8
	bclf	.bclt_else.560263
	fmove	$f6, $f8
	j	.bclt_cont.560264
.bclt_else.560263:
	fneg	$f6, $f8
.bclt_cont.560264:
	lw	$r7, 16($r5)
	lwcl	$f8, 4($r7)
	c.le.s	$f8, $f6
	bclf	.bclt_else.560265
	addi	$r7, $r0, 0
	j	.bclt_cont.560266
.bclt_else.560265:
	addi	$r7, $r0, 1
.bclt_cont.560266:
	bne	$r7, $r8, .beq_else.560267
	addi	$r7, $r0, 0
	j	.beq_cont.560268
.beq_else.560267:
	c.le.s	$f12, $f10
	bclf	.bclt_else.560269
	fmove	$f6, $f10
	j	.bclt_cont.560270
.bclt_else.560269:
	fneg	$f6, $f10
.bclt_cont.560270:
	lw	$r7, 16($r5)
	lwcl	$f8, 8($r7)
	c.le.s	$f8, $f6
	bclf	.bclt_else.560271
	addi	$r7, $r0, 0
	j	.bclt_cont.560272
.bclt_else.560271:
	addi	$r7, $r0, 1
.bclt_cont.560272:
.beq_cont.560268:
.beq_cont.560262:
	bne	$r7, $r8, .beq_else.560273
	lw	$r5, 24($r5)
	bne	$r5, $r8, .beq_else.560275
	addi	$r2, $r0, 1
	j	.beq_cont.560276
.beq_else.560275:
	addi	$r2, $r0, 0
.beq_cont.560276:
	j	.beq_cont.560274
.beq_else.560273:
	lw	$r5, 24($r5)
	addi	$r2, $r5, 0
.beq_cont.560274:
	j	.beq_cont.560256
.beq_else.560255:
	bne	$r7, $r10, .beq_else.560277
	lw	$r7, 16($r5)
	lwcl	$f12, 0($r7)
	mul.s	$f6, $f12, $f6
	lwcl	$f12, 4($r7)
	mul.s	$f8, $f12, $f8
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r7)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lw	$r5, 24($r5)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.560279
	addi	$r7, $r0, 0
	j	.bclt_cont.560280
.bclt_else.560279:
	addi	$r7, $r0, 1
.bclt_cont.560280:
	bne	$r5, $r8, .beq_else.560281
	addi	$r5, $r7, 0
	j	.beq_cont.560282
.beq_else.560281:
	bne	$r7, $r8, .beq_else.560283
	addi	$r5, $r0, 1
	j	.beq_cont.560284
.beq_else.560283:
	addi	$r5, $r0, 0
.beq_cont.560284:
.beq_cont.560282:
	bne	$r5, $r8, .beq_else.560285
	addi	$r2, $r0, 1
	j	.beq_cont.560286
.beq_else.560285:
	addi	$r2, $r0, 0
.beq_cont.560286:
	j	.beq_cont.560278
.beq_else.560277:
	addi	$r2, $r5, 0	! g'_args
	fmove	$f4, $f10	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f6	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.is_second_outside.3160	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
.beq_cont.560278:
.beq_cont.560256:
	lw	$r3, -44($r29)
	bne	$r2, $r3, .beq_else.560287
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -32($r29)
	bne	$r4, $r6, .beq_else.560288
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560288:
	sll	$r4, $r4, 2
	lw	$r7, -28($r29)
	addu	$r1, $r7, $r4
	lw	$r4, 0($r1)
	lwcl	$f0, -24($r29)
	lwcl	$f2, -20($r29)
	lwcl	$f4, -16($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -44($r29)
	bne	$r2, $r3, .beq_else.560289
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -32($r29)
	bne	$r4, $r6, .beq_else.560290
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560290:
	sll	$r4, $r4, 2
	lw	$r7, -28($r29)
	addu	$r1, $r7, $r4
	lw	$r4, 0($r1)
	lw	$r8, 20($r4)
	lwcl	$f0, 0($r8)
	lwcl	$f2, -24($r29)
	sub.s	$f0, $f2, $f0
	lw	$r8, 20($r4)
	lwcl	$f4, 4($r8)
	lwcl	$f6, -20($r29)
	sub.s	$f4, $f6, $f4
	lw	$r8, 20($r4)
	lwcl	$f8, 8($r8)
	lwcl	$f10, -16($r29)
	sub.s	$f8, $f10, $f8
	lw	$r8, 4($r4)
	lw	$r9, -12($r29)
	sw	$r2, -52($r29)
	bne	$r8, $r9, .beq_else.560291
	lfh	$f12, 0
	lfl	$f12, 0
	c.le.s	$f12, $f0
	bclf	.bclt_else.560293
	j	.bclt_cont.560294
.bclt_else.560293:
	fneg	$f0, $f0
.bclt_cont.560294:
	lw	$r8, 16($r4)
	lwcl	$f14, 0($r8)
	c.le.s	$f14, $f0
	bclf	.bclt_else.560295
	addi	$r8, $r0, 0
	j	.bclt_cont.560296
.bclt_else.560295:
	addi	$r8, $r0, 1
.bclt_cont.560296:
	bne	$r8, $r3, .beq_else.560297
	addi	$r8, $r0, 0
	j	.beq_cont.560298
.beq_else.560297:
	c.le.s	$f12, $f4
	bclf	.bclt_else.560299
	fmove	$f0, $f4
	j	.bclt_cont.560300
.bclt_else.560299:
	fneg	$f0, $f4
.bclt_cont.560300:
	lw	$r8, 16($r4)
	lwcl	$f4, 4($r8)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560301
	addi	$r8, $r0, 0
	j	.bclt_cont.560302
.bclt_else.560301:
	addi	$r8, $r0, 1
.bclt_cont.560302:
	bne	$r8, $r3, .beq_else.560303
	addi	$r8, $r0, 0
	j	.beq_cont.560304
.beq_else.560303:
	c.le.s	$f12, $f8
	bclf	.bclt_else.560305
	fmove	$f0, $f8
	j	.bclt_cont.560306
.bclt_else.560305:
	fneg	$f0, $f8
.bclt_cont.560306:
	lw	$r8, 16($r4)
	lwcl	$f4, 8($r8)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560307
	addi	$r8, $r0, 0
	j	.bclt_cont.560308
.bclt_else.560307:
	addi	$r8, $r0, 1
.bclt_cont.560308:
.beq_cont.560304:
.beq_cont.560298:
	bne	$r8, $r3, .beq_else.560309
	lw	$r4, 24($r4)
	bne	$r4, $r3, .beq_else.560311
	addi	$r2, $r0, 1
	j	.beq_cont.560312
.beq_else.560311:
	addi	$r2, $r0, 0
.beq_cont.560312:
	j	.beq_cont.560310
.beq_else.560309:
	lw	$r4, 24($r4)
	addi	$r2, $r4, 0
.beq_cont.560310:
	j	.beq_cont.560292
.beq_else.560291:
	lw	$r9, -8($r29)
	bne	$r8, $r9, .beq_else.560313
	lw	$r8, 16($r4)
	lwcl	$f12, 0($r8)
	mul.s	$f0, $f12, $f0
	lwcl	$f12, 4($r8)
	mul.s	$f4, $f12, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 8($r8)
	mul.s	$f4, $f4, $f8
	add.s	$f0, $f0, $f4
	lw	$r4, 24($r4)
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.560315
	addi	$r8, $r0, 0
	j	.bclt_cont.560316
.bclt_else.560315:
	addi	$r8, $r0, 1
.bclt_cont.560316:
	bne	$r4, $r3, .beq_else.560317
	addi	$r4, $r8, 0
	j	.beq_cont.560318
.beq_else.560317:
	bne	$r8, $r3, .beq_else.560319
	addi	$r4, $r0, 1
	j	.beq_cont.560320
.beq_else.560319:
	addi	$r4, $r0, 0
.beq_cont.560320:
.beq_cont.560318:
	bne	$r4, $r3, .beq_else.560321
	addi	$r2, $r0, 1
	j	.beq_cont.560322
.beq_else.560321:
	addi	$r2, $r0, 0
.beq_cont.560322:
	j	.beq_cont.560314
.beq_else.560313:
	addi	$r2, $r4, 0	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.is_second_outside.3160	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
.beq_cont.560314:
.beq_cont.560292:
	lw	$r3, -44($r29)
	bne	$r2, $r3, .beq_else.560323
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -32($r29)
	bne	$r4, $r6, .beq_else.560324
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560324:
	sll	$r4, $r4, 2
	lw	$r6, -28($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lwcl	$f0, -24($r29)
	lwcl	$f2, -20($r29)
	lwcl	$f4, -16($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -44($r29)
	bne	$r2, $r3, .beq_else.560325
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	lwcl	$f0, -24($r29)
	lwcl	$f2, -20($r29)
	lwcl	$f4, -16($r29)
	lw	$r3, -36($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560325:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560323:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560289:
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560287:
	addi	$r2, $r0, 0
	jr	$r31
.shadow_check_and_group.3176:
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
	bne	$r13, $r14, .beq_else.560326
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560326:
	sll	$r13, $r2, 2
	addu	$r1, $r3, $r13
	lw	$r13, 0($r1)
	sll	$r15, $r13, 2
	addu	$r1, $r8, $r15
	lw	$r15, 0($r1)
	addi	$r16, $r0, 0
	lwcl	$f0, 0($r10)
	lw	$r17, 20($r15)
	lwcl	$f2, 0($r17)
	sub.s	$f0, $f0, $f2
	addi	$r17, $r0, 1
	lwcl	$f2, 4($r10)
	lw	$r18, 20($r15)
	lwcl	$f4, 4($r18)
	sub.s	$f2, $f2, $f4
	addi	$r18, $r0, 2
	lwcl	$f4, 8($r10)
	lw	$r19, 20($r15)
	lwcl	$f6, 8($r19)
	sub.s	$f4, $f4, $f6
	sll	$r19, $r13, 2
	addu	$r1, $r11, $r19
	lw	$r11, 0($r1)
	lw	$r19, 4($r15)
	sw	$r12, -4($r29)
	sw	$r18, -8($r29)
	sw	$r17, -12($r29)
	sw	$r14, -16($r29)
	sw	$r10, -20($r29)
	sw	$r9, -24($r29)
	sw	$r3, -28($r29)
	sw	$r28, -32($r29)
	sw	$r2, -36($r29)
	sw	$r8, -40($r29)
	sw	$r13, -44($r29)
	sw	$r16, -48($r29)
	sw	$r7, -52($r29)
	bne	$r19, $r17, .beq_else.560327
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r15, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	addi	$r4, $r11, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.560330	! callcls
	j	.mendoi1.560329	! callcls
.mendoi2.560330:	! callcls
	jr	$r27	! callcls
.mendoi1.560329:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	j	.beq_cont.560328
.beq_else.560327:
	bne	$r19, $r18, .beq_else.560331
	lwcl	$f6, 0($r11)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.560333
	addi	$r4, $r0, 0
	j	.bclt_cont.560334
.bclt_else.560333:
	addi	$r4, $r0, 1
.bclt_cont.560334:
	bne	$r4, $r16, .beq_else.560335
	addi	$r2, $r0, 0
	j	.beq_cont.560336
.beq_else.560335:
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
.beq_cont.560336:
	j	.beq_cont.560332
.beq_else.560331:
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r15, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.560338	! callcls
	j	.mendoi1.560337	! callcls
.mendoi2.560338:	! callcls
	jr	$r27	! callcls
.mendoi1.560337:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.560332:
.beq_cont.560328:
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lw	$r3, -48($r29)
	bne	$r2, $r3, .beq_else.560339
	addi	$r2, $r0, 0
	j	.beq_cont.560340
.beq_else.560339:
	lfh	$f2, 48716
	lfl	$f2, 52429
	c.le.s	$f2, $f0
	bclf	.bclt_else.560341
	addi	$r2, $r0, 0
	j	.bclt_cont.560342
.bclt_else.560341:
	addi	$r2, $r0, 1
.bclt_cont.560342:
.beq_cont.560340:
	bne	$r2, $r3, .beq_else.560343
	lw	$r2, -44($r29)
	sll	$r2, $r2, 2
	lw	$r4, -40($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	bne	$r2, $r3, .beq_else.560344
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560344:
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560343:
	lfh	$f2, 15395
	lfl	$f2, 55050
	add.s	$f0, $f0, $f2
	lw	$r2, -24($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f2, $f0
	lw	$r4, -20($r29)
	lwcl	$f4, 0($r4)
	add.s	$f2, $f2, $f4
	lwcl	$f4, 4($r2)
	mul.s	$f4, $f4, $f0
	lwcl	$f6, 4($r4)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	mul.s	$f0, $f6, $f0
	lwcl	$f6, 8($r4)
	add.s	$f0, $f0, $f6
	lw	$r2, -28($r29)
	lw	$r4, 0($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560345
	addi	$r2, $r0, 1
	j	.beq_cont.560346
.beq_else.560345:
	sll	$r4, $r4, 2
	lw	$r6, -40($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	swcl	$f0, -56($r29)
	swcl	$f4, -60($r29)
	swcl	$f2, -64($r29)
	addi	$r2, $r4, 0	! g'_args
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -48($r29)
	bne	$r2, $r3, .beq_else.560347
	lw	$r2, -28($r29)
	lw	$r4, 4($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560349
	addi	$r2, $r0, 1
	j	.beq_cont.560350
.beq_else.560349:
	sll	$r4, $r4, 2
	lw	$r6, -40($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 20($r4)
	lwcl	$f0, 0($r7)
	lwcl	$f2, -64($r29)
	sub.s	$f0, $f2, $f0
	lw	$r7, 20($r4)
	lwcl	$f4, 4($r7)
	lwcl	$f6, -60($r29)
	sub.s	$f4, $f6, $f4
	lw	$r7, 20($r4)
	lwcl	$f8, 8($r7)
	lwcl	$f10, -56($r29)
	sub.s	$f8, $f10, $f8
	lw	$r7, 4($r4)
	lw	$r8, -12($r29)
	bne	$r7, $r8, .beq_else.560351
	lfh	$f12, 0
	lfl	$f12, 0
	c.le.s	$f12, $f0
	bclf	.bclt_else.560353
	j	.bclt_cont.560354
.bclt_else.560353:
	fneg	$f0, $f0
.bclt_cont.560354:
	lw	$r7, 16($r4)
	lwcl	$f14, 0($r7)
	c.le.s	$f14, $f0
	bclf	.bclt_else.560355
	addi	$r7, $r0, 0
	j	.bclt_cont.560356
.bclt_else.560355:
	addi	$r7, $r0, 1
.bclt_cont.560356:
	bne	$r7, $r3, .beq_else.560357
	addi	$r7, $r0, 0
	j	.beq_cont.560358
.beq_else.560357:
	c.le.s	$f12, $f4
	bclf	.bclt_else.560359
	fmove	$f0, $f4
	j	.bclt_cont.560360
.bclt_else.560359:
	fneg	$f0, $f4
.bclt_cont.560360:
	lw	$r7, 16($r4)
	lwcl	$f4, 4($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560361
	addi	$r7, $r0, 0
	j	.bclt_cont.560362
.bclt_else.560361:
	addi	$r7, $r0, 1
.bclt_cont.560362:
	bne	$r7, $r3, .beq_else.560363
	addi	$r7, $r0, 0
	j	.beq_cont.560364
.beq_else.560363:
	c.le.s	$f12, $f8
	bclf	.bclt_else.560365
	fmove	$f0, $f8
	j	.bclt_cont.560366
.bclt_else.560365:
	fneg	$f0, $f8
.bclt_cont.560366:
	lw	$r7, 16($r4)
	lwcl	$f4, 8($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560367
	addi	$r7, $r0, 0
	j	.bclt_cont.560368
.bclt_else.560367:
	addi	$r7, $r0, 1
.bclt_cont.560368:
.beq_cont.560364:
.beq_cont.560358:
	bne	$r7, $r3, .beq_else.560369
	lw	$r4, 24($r4)
	bne	$r4, $r3, .beq_else.560371
	addi	$r2, $r0, 1
	j	.beq_cont.560372
.beq_else.560371:
	addi	$r2, $r0, 0
.beq_cont.560372:
	j	.beq_cont.560370
.beq_else.560369:
	lw	$r4, 24($r4)
	addi	$r2, $r4, 0
.beq_cont.560370:
	j	.beq_cont.560352
.beq_else.560351:
	lw	$r8, -8($r29)
	bne	$r7, $r8, .beq_else.560373
	lw	$r7, 16($r4)
	lwcl	$f12, 0($r7)
	mul.s	$f0, $f12, $f0
	lwcl	$f12, 4($r7)
	mul.s	$f4, $f12, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 8($r7)
	mul.s	$f4, $f4, $f8
	add.s	$f0, $f0, $f4
	lw	$r4, 24($r4)
	lfh	$f4, 0
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.560375
	addi	$r7, $r0, 0
	j	.bclt_cont.560376
.bclt_else.560375:
	addi	$r7, $r0, 1
.bclt_cont.560376:
	bne	$r4, $r3, .beq_else.560377
	addi	$r4, $r7, 0
	j	.beq_cont.560378
.beq_else.560377:
	bne	$r7, $r3, .beq_else.560379
	addi	$r4, $r0, 1
	j	.beq_cont.560380
.beq_else.560379:
	addi	$r4, $r0, 0
.beq_cont.560380:
.beq_cont.560378:
	bne	$r4, $r3, .beq_else.560381
	addi	$r2, $r0, 1
	j	.beq_cont.560382
.beq_else.560381:
	addi	$r2, $r0, 0
.beq_cont.560382:
	j	.beq_cont.560374
.beq_else.560373:
	addi	$r2, $r4, 0	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.is_second_outside.3160	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
.beq_cont.560374:
.beq_cont.560352:
	lw	$r3, -48($r29)
	bne	$r2, $r3, .beq_else.560383
	lw	$r2, -28($r29)
	lw	$r4, 8($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560385
	addi	$r2, $r0, 1
	j	.beq_cont.560386
.beq_else.560385:
	sll	$r4, $r4, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lwcl	$f0, -64($r29)
	lwcl	$f2, -60($r29)
	lwcl	$f4, -56($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -48($r29)
	bne	$r2, $r3, .beq_else.560387
	addi	$r2, $r0, 3
	lwcl	$f0, -64($r29)
	lwcl	$f2, -60($r29)
	lwcl	$f4, -56($r29)
	lw	$r4, -28($r29)
	lw	$r28, -4($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560390	! callcls
	j	.mendoi1.560389	! callcls
.mendoi2.560390:	! callcls
	jr	$r27	! callcls
.mendoi1.560389:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	j	.beq_cont.560388
.beq_else.560387:
	addi	$r2, $r0, 0
.beq_cont.560388:
.beq_cont.560386:
	j	.beq_cont.560384
.beq_else.560383:
	addi	$r2, $r0, 0
.beq_cont.560384:
.beq_cont.560350:
	j	.beq_cont.560348
.beq_else.560347:
	addi	$r2, $r0, 0
.beq_cont.560348:
.beq_cont.560346:
	lw	$r3, -48($r29)
	bne	$r2, $r3, .beq_else.560391
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	lw	$r28, -32($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560391:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_group.3179:
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	sll	$r6, $r2, 2
	addu	$r1, $r3, $r6
	lw	$r6, 0($r1)
	addi	$r7, $r0, -1
	bne	$r6, $r7, .beq_else.560392
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560392:
	sll	$r6, $r6, 2
	addu	$r1, $r5, $r6
	lw	$r6, 0($r1)
	addi	$r8, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r5, -12($r29)
	sw	$r7, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r8, -28($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -32	! callcls
	jal	.mendoi2.560394	! callcls
	j	.mendoi1.560393	! callcls
.mendoi2.560394:	! callcls
	jr	$r27	! callcls
.mendoi1.560393:	! callcls
	addi	$r29, $r29, 32	! callcls
	lw	$r31, -32($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.560395
	lw	$r2, -24($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -16($r29)
	bne	$r4, $r6, .beq_else.560396
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560396:
	sll	$r4, $r4, 2
	lw	$r7, -12($r29)
	addu	$r1, $r7, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.560398	! callcls
	j	.mendoi1.560397	! callcls
.mendoi2.560398:	! callcls
	jr	$r27	! callcls
.mendoi1.560397:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.560399
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -16($r29)
	bne	$r4, $r6, .beq_else.560400
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560400:
	sll	$r4, $r4, 2
	lw	$r7, -12($r29)
	addu	$r1, $r7, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560402	! callcls
	j	.mendoi1.560401	! callcls
.mendoi2.560402:	! callcls
	jr	$r27	! callcls
.mendoi1.560401:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.560403
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r4, $r2, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -16($r29)
	bne	$r4, $r6, .beq_else.560404
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560404:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560406	! callcls
	j	.mendoi1.560405	! callcls
.mendoi2.560406:	! callcls
	jr	$r27	! callcls
.mendoi1.560405:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -28($r29)
	bne	$r2, $r3, .beq_else.560407
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -20($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560407:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560403:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560399:
	addi	$r2, $r0, 1
	jr	$r31
.beq_else.560395:
	addi	$r2, $r0, 1
	jr	$r31
.shadow_check_one_or_matrix.3182:
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
	addi	$r15, $r0, 0
	lw	$r16, 0($r14)
	addi	$r17, $r0, -1
	bne	$r16, $r17, .beq_else.560408
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.560408:
	addi	$r18, $r0, 99
	sw	$r8, -4($r29)
	sw	$r9, -8($r29)
	sw	$r13, -12($r29)
	sw	$r17, -16($r29)
	sw	$r14, -20($r29)
	sw	$r3, -24($r29)
	sw	$r28, -28($r29)
	sw	$r2, -32($r29)
	sw	$r15, -36($r29)
	bne	$r16, $r18, .beq_else.560409
	addi	$r2, $r0, 1
	j	.beq_cont.560410
.beq_else.560409:
	sll	$r18, $r16, 2
	addu	$r1, $r10, $r18
	lw	$r10, 0($r1)
	lwcl	$f0, 0($r11)
	lw	$r18, 20($r10)
	lwcl	$f2, 0($r18)
	sub.s	$f0, $f0, $f2
	addi	$r18, $r0, 1
	lwcl	$f2, 4($r11)
	lw	$r19, 20($r10)
	lwcl	$f4, 4($r19)
	sub.s	$f2, $f2, $f4
	addi	$r19, $r0, 2
	lwcl	$f4, 8($r11)
	lw	$r11, 20($r10)
	lwcl	$f6, 8($r11)
	sub.s	$f4, $f4, $f6
	sll	$r11, $r16, 2
	addu	$r1, $r12, $r11
	lw	$r11, 0($r1)
	lw	$r12, 4($r10)
	sw	$r7, -40($r29)
	bne	$r12, $r18, .beq_else.560411
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	addi	$r4, $r11, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560414	! callcls
	j	.mendoi1.560413	! callcls
.mendoi2.560414:	! callcls
	jr	$r27	! callcls
.mendoi1.560413:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	j	.beq_cont.560412
.beq_else.560411:
	bne	$r12, $r19, .beq_else.560415
	lwcl	$f6, 0($r11)
	lfh	$f8, 0
	lfl	$f8, 0
	c.le.s	$f8, $f6
	bclf	.bclt_else.560417
	addi	$r4, $r0, 0
	j	.bclt_cont.560418
.bclt_else.560417:
	addi	$r4, $r0, 1
.bclt_cont.560418:
	bne	$r4, $r15, .beq_else.560419
	addi	$r2, $r0, 0
	j	.beq_cont.560420
.beq_else.560419:
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
.beq_cont.560420:
	j	.beq_cont.560416
.beq_else.560415:
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560422	! callcls
	j	.mendoi1.560421	! callcls
.mendoi2.560422:	! callcls
	jr	$r27	! callcls
.mendoi1.560421:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.560416:
.beq_cont.560412:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560423
	addi	$r2, $r0, 0
	j	.beq_cont.560424
.beq_else.560423:
	lw	$r2, -40($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f2, $f0
	bclf	.bclt_else.560425
	addi	$r2, $r0, 0
	j	.bclt_cont.560426
.bclt_else.560425:
	addi	$r2, $r0, 1
.bclt_cont.560426:
	bne	$r2, $r3, .beq_else.560427
	addi	$r2, $r0, 0
	j	.beq_cont.560428
.beq_else.560427:
	lw	$r2, -20($r29)
	lw	$r4, 4($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560429
	addi	$r2, $r0, 0
	j	.beq_cont.560430
.beq_else.560429:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560432	! callcls
	j	.mendoi1.560431	! callcls
.mendoi2.560432:	! callcls
	jr	$r27	! callcls
.mendoi1.560431:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560433
	lw	$r2, -20($r29)
	lw	$r4, 8($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560435
	addi	$r2, $r0, 0
	j	.beq_cont.560436
.beq_else.560435:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560438	! callcls
	j	.mendoi1.560437	! callcls
.mendoi2.560438:	! callcls
	jr	$r27	! callcls
.mendoi1.560437:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560439
	lw	$r2, -20($r29)
	lw	$r4, 12($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560441
	addi	$r2, $r0, 0
	j	.beq_cont.560442
.beq_else.560441:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560444	! callcls
	j	.mendoi1.560443	! callcls
.mendoi2.560444:	! callcls
	jr	$r27	! callcls
.mendoi1.560443:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560445
	addi	$r2, $r0, 4
	lw	$r4, -20($r29)
	lw	$r28, -4($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560448	! callcls
	j	.mendoi1.560447	! callcls
.mendoi2.560448:	! callcls
	jr	$r27	! callcls
.mendoi1.560447:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	j	.beq_cont.560446
.beq_else.560445:
	addi	$r2, $r0, 1
.beq_cont.560446:
.beq_cont.560442:
	j	.beq_cont.560440
.beq_else.560439:
	addi	$r2, $r0, 1
.beq_cont.560440:
.beq_cont.560436:
	j	.beq_cont.560434
.beq_else.560433:
	addi	$r2, $r0, 1
.beq_cont.560434:
.beq_cont.560430:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560449
	addi	$r2, $r0, 0
	j	.beq_cont.560450
.beq_else.560449:
	addi	$r2, $r0, 1
.beq_cont.560450:
.beq_cont.560428:
.beq_cont.560424:
.beq_cont.560410:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560451
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -24($r29)
	lw	$r28, -28($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560451:
	lw	$r2, -20($r29)
	lw	$r4, 4($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560452
	addi	$r2, $r0, 0
	j	.beq_cont.560453
.beq_else.560452:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560455	! callcls
	j	.mendoi1.560454	! callcls
.mendoi2.560455:	! callcls
	jr	$r27	! callcls
.mendoi1.560454:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560456
	lw	$r2, -20($r29)
	lw	$r4, 8($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560458
	addi	$r2, $r0, 0
	j	.beq_cont.560459
.beq_else.560458:
	sll	$r4, $r4, 2
	lw	$r6, -12($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560461	! callcls
	j	.mendoi1.560460	! callcls
.mendoi2.560461:	! callcls
	jr	$r27	! callcls
.mendoi1.560460:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560462
	lw	$r2, -20($r29)
	lw	$r4, 12($r2)
	lw	$r5, -16($r29)
	bne	$r4, $r5, .beq_else.560464
	addi	$r2, $r0, 0
	j	.beq_cont.560465
.beq_else.560464:
	sll	$r4, $r4, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r28, -8($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560467	! callcls
	j	.mendoi1.560466	! callcls
.mendoi2.560467:	! callcls
	jr	$r27	! callcls
.mendoi1.560466:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560468
	addi	$r2, $r0, 4
	lw	$r4, -20($r29)
	lw	$r28, -4($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560471	! callcls
	j	.mendoi1.560470	! callcls
.mendoi2.560471:	! callcls
	jr	$r27	! callcls
.mendoi1.560470:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	j	.beq_cont.560469
.beq_else.560468:
	addi	$r2, $r0, 1
.beq_cont.560469:
.beq_cont.560465:
	j	.beq_cont.560463
.beq_else.560462:
	addi	$r2, $r0, 1
.beq_cont.560463:
.beq_cont.560459:
	j	.beq_cont.560457
.beq_else.560456:
	addi	$r2, $r0, 1
.beq_cont.560457:
.beq_cont.560453:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560472
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	lw	$r3, -24($r29)
	lw	$r28, -28($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560472:
	addi	$r2, $r0, 1
	jr	$r31
.solve_each_element.3185:
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
	bne	$r16, $r17, .beq_else.560473
	jr	$r31
.beq_else.560473:
	sll	$r18, $r16, 2
	addu	$r1, $r11, $r18
	lw	$r18, 0($r1)
	addi	$r19, $r0, 0
	lwcl	$f0, 0($r6)
	lw	$r20, 20($r18)
	lwcl	$f2, 0($r20)
	sub.s	$f0, $f0, $f2
	addi	$r20, $r0, 1
	lwcl	$f2, 4($r6)
	lw	$r21, 20($r18)
	lwcl	$f4, 4($r21)
	sub.s	$f2, $f2, $f4
	addi	$r21, $r0, 2
	lwcl	$f4, 8($r6)
	lw	$r22, 20($r18)
	lwcl	$f6, 8($r22)
	sub.s	$f4, $f4, $f6
	lw	$r22, 4($r18)
	sw	$r12, -4($r29)
	sw	$r14, -8($r29)
	sw	$r13, -12($r29)
	sw	$r15, -16($r29)
	sw	$r21, -20($r29)
	sw	$r20, -24($r29)
	sw	$r17, -28($r29)
	sw	$r6, -32($r29)
	sw	$r5, -36($r29)
	sw	$r10, -40($r29)
	sw	$r4, -44($r29)
	sw	$r3, -48($r29)
	sw	$r28, -52($r29)
	sw	$r2, -56($r29)
	sw	$r11, -60($r29)
	sw	$r16, -64($r29)
	sw	$r19, -68($r29)
	bne	$r22, $r20, .beq_else.560475
	swcl	$f0, -72($r29)
	swcl	$f4, -76($r29)
	swcl	$f2, -80($r29)
	sw	$r18, -84($r29)
	sw	$r9, -88($r29)
	addi	$r6, $r21, 0	! g'_args
	addi	$r5, $r20, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r19, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560478	! callcls
	j	.mendoi1.560477	! callcls
.mendoi2.560478:	! callcls
	jr	$r27	! callcls
.mendoi1.560477:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r6, -68($r29)
	bne	$r2, $r6, .beq_else.560479
	lwcl	$f0, -80($r29)
	lwcl	$f2, -76($r29)
	lwcl	$f4, -72($r29)
	lw	$r2, -84($r29)
	lw	$r3, -44($r29)
	lw	$r4, -24($r29)
	lw	$r5, -20($r29)
	lw	$r28, -88($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560482	! callcls
	j	.mendoi1.560481	! callcls
.mendoi2.560482:	! callcls
	jr	$r27	! callcls
.mendoi1.560481:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r5, -68($r29)
	bne	$r2, $r5, .beq_else.560483
	lwcl	$f0, -76($r29)
	lwcl	$f2, -72($r29)
	lwcl	$f4, -80($r29)
	lw	$r2, -84($r29)
	lw	$r3, -44($r29)
	lw	$r4, -20($r29)
	lw	$r6, -24($r29)
	lw	$r28, -88($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560486	! callcls
	j	.mendoi1.560485	! callcls
.mendoi2.560486:	! callcls
	jr	$r27	! callcls
.mendoi1.560485:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560487
	addi	$r2, $r0, 0
	j	.beq_cont.560488
.beq_else.560487:
	addi	$r2, $r0, 3
.beq_cont.560488:
	j	.beq_cont.560484
.beq_else.560483:
	addi	$r2, $r0, 2
.beq_cont.560484:
	j	.beq_cont.560480
.beq_else.560479:
	addi	$r2, $r0, 1
.beq_cont.560480:
	j	.beq_cont.560476
.beq_else.560475:
	bne	$r22, $r21, .beq_else.560489
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560492	! callcls
	j	.mendoi1.560491	! callcls
.mendoi2.560492:	! callcls
	jr	$r27	! callcls
.mendoi1.560491:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	j	.beq_cont.560490
.beq_else.560489:
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560494	! callcls
	j	.mendoi1.560493	! callcls
.mendoi2.560494:	! callcls
	jr	$r27	! callcls
.mendoi1.560493:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
.beq_cont.560490:
.beq_cont.560476:
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560495
	lw	$r2, -64($r29)
	sll	$r2, $r2, 2
	lw	$r4, -60($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	bne	$r2, $r3, .beq_else.560496
	jr	$r31
.beq_else.560496:
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	lw	$r28, -52($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560495:
	lw	$r4, -40($r29)
	lwcl	$f0, 0($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.560498
	addi	$r4, $r0, 0
	j	.bclt_cont.560499
.bclt_else.560498:
	addi	$r4, $r0, 1
.bclt_cont.560499:
	bne	$r4, $r3, .beq_else.560500
	j	.beq_cont.560501
.beq_else.560500:
	lw	$r4, -36($r29)
	lwcl	$f4, 0($r4)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560502
	addi	$r5, $r0, 0
	j	.bclt_cont.560503
.bclt_else.560502:
	addi	$r5, $r0, 1
.bclt_cont.560503:
	bne	$r5, $r3, .beq_else.560504
	j	.beq_cont.560505
.beq_else.560504:
	lfh	$f4, 15395
	lfl	$f4, 55050
	add.s	$f0, $f0, $f4
	lw	$r5, -44($r29)
	lwcl	$f4, 0($r5)
	mul.s	$f4, $f4, $f0
	lw	$r6, -32($r29)
	lwcl	$f6, 0($r6)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 4($r5)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 4($r6)
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r5)
	mul.s	$f8, $f8, $f0
	lwcl	$f10, 8($r6)
	add.s	$f8, $f8, $f10
	lw	$r6, -48($r29)
	lw	$r7, 0($r6)
	lw	$r8, -28($r29)
	sw	$r2, -92($r29)
	swcl	$f8, -96($r29)
	swcl	$f6, -100($r29)
	swcl	$f4, -104($r29)
	swcl	$f0, -108($r29)
	bne	$r7, $r8, .beq_else.560506
	addi	$r2, $r0, 1
	j	.beq_cont.560507
.beq_else.560506:
	sll	$r7, $r7, 2
	lw	$r9, -60($r29)
	addu	$r1, $r9, $r7
	lw	$r7, 0($r1)
	swcl	$f2, -112($r29)
	addi	$r2, $r7, 0	! g'_args
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560508
	lw	$r2, -48($r29)
	lw	$r4, 4($r2)
	lw	$r5, -28($r29)
	bne	$r4, $r5, .beq_else.560510
	addi	$r2, $r0, 1
	j	.beq_cont.560511
.beq_else.560510:
	sll	$r4, $r4, 2
	lw	$r6, -60($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 20($r4)
	lwcl	$f0, 0($r7)
	lwcl	$f2, -104($r29)
	sub.s	$f0, $f2, $f0
	lw	$r7, 20($r4)
	lwcl	$f4, 4($r7)
	lwcl	$f6, -100($r29)
	sub.s	$f4, $f6, $f4
	lw	$r7, 20($r4)
	lwcl	$f8, 8($r7)
	lwcl	$f10, -96($r29)
	sub.s	$f8, $f10, $f8
	lw	$r7, 4($r4)
	lw	$r8, -24($r29)
	bne	$r7, $r8, .beq_else.560512
	lwcl	$f12, -112($r29)
	c.le.s	$f12, $f0
	bclf	.bclt_else.560514
	j	.bclt_cont.560515
.bclt_else.560514:
	fneg	$f0, $f0
.bclt_cont.560515:
	lw	$r7, 16($r4)
	lwcl	$f14, 0($r7)
	c.le.s	$f14, $f0
	bclf	.bclt_else.560516
	addi	$r7, $r0, 0
	j	.bclt_cont.560517
.bclt_else.560516:
	addi	$r7, $r0, 1
.bclt_cont.560517:
	bne	$r7, $r3, .beq_else.560518
	addi	$r7, $r0, 0
	j	.beq_cont.560519
.beq_else.560518:
	c.le.s	$f12, $f4
	bclf	.bclt_else.560520
	fmove	$f0, $f4
	j	.bclt_cont.560521
.bclt_else.560520:
	fneg	$f0, $f4
.bclt_cont.560521:
	lw	$r7, 16($r4)
	lwcl	$f4, 4($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560522
	addi	$r7, $r0, 0
	j	.bclt_cont.560523
.bclt_else.560522:
	addi	$r7, $r0, 1
.bclt_cont.560523:
	bne	$r7, $r3, .beq_else.560524
	addi	$r7, $r0, 0
	j	.beq_cont.560525
.beq_else.560524:
	c.le.s	$f12, $f8
	bclf	.bclt_else.560526
	fmove	$f0, $f8
	j	.bclt_cont.560527
.bclt_else.560526:
	fneg	$f0, $f8
.bclt_cont.560527:
	lw	$r7, 16($r4)
	lwcl	$f4, 8($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560528
	addi	$r7, $r0, 0
	j	.bclt_cont.560529
.bclt_else.560528:
	addi	$r7, $r0, 1
.bclt_cont.560529:
.beq_cont.560525:
.beq_cont.560519:
	bne	$r7, $r3, .beq_else.560530
	lw	$r4, 24($r4)
	bne	$r4, $r3, .beq_else.560532
	addi	$r2, $r0, 1
	j	.beq_cont.560533
.beq_else.560532:
	addi	$r2, $r0, 0
.beq_cont.560533:
	j	.beq_cont.560531
.beq_else.560530:
	lw	$r4, 24($r4)
	addi	$r2, $r4, 0
.beq_cont.560531:
	j	.beq_cont.560513
.beq_else.560512:
	lw	$r8, -20($r29)
	bne	$r7, $r8, .beq_else.560534
	lw	$r7, 16($r4)
	lwcl	$f12, 0($r7)
	mul.s	$f0, $f12, $f0
	lwcl	$f12, 4($r7)
	mul.s	$f4, $f12, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 8($r7)
	mul.s	$f4, $f4, $f8
	add.s	$f0, $f0, $f4
	lw	$r4, 24($r4)
	lwcl	$f4, -112($r29)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560536
	addi	$r7, $r0, 0
	j	.bclt_cont.560537
.bclt_else.560536:
	addi	$r7, $r0, 1
.bclt_cont.560537:
	bne	$r4, $r3, .beq_else.560538
	addi	$r4, $r7, 0
	j	.beq_cont.560539
.beq_else.560538:
	bne	$r7, $r3, .beq_else.560540
	addi	$r4, $r0, 1
	j	.beq_cont.560541
.beq_else.560540:
	addi	$r4, $r0, 0
.beq_cont.560541:
.beq_cont.560539:
	bne	$r4, $r3, .beq_else.560542
	addi	$r2, $r0, 1
	j	.beq_cont.560543
.beq_else.560542:
	addi	$r2, $r0, 0
.beq_cont.560543:
	j	.beq_cont.560535
.beq_else.560534:
	addi	$r2, $r4, 0	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.is_second_outside.3160	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
.beq_cont.560535:
.beq_cont.560513:
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560544
	lw	$r2, -48($r29)
	lw	$r4, 8($r2)
	lw	$r5, -28($r29)
	bne	$r4, $r5, .beq_else.560546
	addi	$r2, $r0, 1
	j	.beq_cont.560547
.beq_else.560546:
	sll	$r4, $r4, 2
	lw	$r5, -60($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lwcl	$f0, -104($r29)
	lwcl	$f2, -100($r29)
	lwcl	$f4, -96($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560548
	addi	$r2, $r0, 3
	lwcl	$f0, -104($r29)
	lwcl	$f2, -100($r29)
	lwcl	$f4, -96($r29)
	lw	$r4, -48($r29)
	lw	$r28, -16($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -116($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -116	! callcls
	jal	.mendoi2.560551	! callcls
	j	.mendoi1.560550	! callcls
.mendoi2.560551:	! callcls
	jr	$r27	! callcls
.mendoi1.560550:	! callcls
	addi	$r29, $r29, 116	! callcls
	lw	$r31, -116($r29)	! callcls
	j	.beq_cont.560549
.beq_else.560548:
	addi	$r2, $r0, 0
.beq_cont.560549:
.beq_cont.560547:
	j	.beq_cont.560545
.beq_else.560544:
	addi	$r2, $r0, 0
.beq_cont.560545:
.beq_cont.560511:
	j	.beq_cont.560509
.beq_else.560508:
	addi	$r2, $r0, 0
.beq_cont.560509:
.beq_cont.560507:
	lw	$r3, -68($r29)
	bne	$r2, $r3, .beq_else.560552
	j	.beq_cont.560553
.beq_else.560552:
	lw	$r2, -36($r29)
	lwcl	$f0, -108($r29)
	swcl	$f0, 0($r2)
	lw	$r2, -12($r29)
	lwcl	$f0, -104($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, -100($r29)
	swcl	$f0, 4($r2)
	lwcl	$f0, -96($r29)
	swcl	$f0, 8($r2)
	lw	$r2, -8($r29)
	lw	$r3, -64($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -92($r29)
	sw	$r3, 0($r2)
.beq_cont.560553:
.beq_cont.560505:
.beq_cont.560501:
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	lw	$r3, -48($r29)
	lw	$r4, -44($r29)
	lw	$r28, -52($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network.3189:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.560554
	jr	$r31
.beq_else.560554:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r7, 0($r1)
	addi	$r9, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r9, -12($r29)
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	sw	$r8, -24($r29)
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.560557	! callcls
	j	.mendoi1.560556	! callcls
.mendoi2.560557:	! callcls
	jr	$r27	! callcls
.mendoi1.560556:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560558
	jr	$r31
.beq_else.560558:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -36($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560561	! callcls
	j	.mendoi1.560560	! callcls
.mendoi2.560561:	! callcls
	jr	$r27	! callcls
.mendoi1.560560:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560562
	jr	$r31
.beq_else.560562:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -40($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560565	! callcls
	j	.mendoi1.560564	! callcls
.mendoi2.560565:	! callcls
	jr	$r27	! callcls
.mendoi1.560564:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560566
	jr	$r31
.beq_else.560566:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -44($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.560569	! callcls
	j	.mendoi1.560568	! callcls
.mendoi2.560569:	! callcls
	jr	$r27	! callcls
.mendoi1.560568:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560570
	jr	$r31
.beq_else.560570:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -48($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.560573	! callcls
	j	.mendoi1.560572	! callcls
.mendoi2.560573:	! callcls
	jr	$r27	! callcls
.mendoi1.560572:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560574
	jr	$r31
.beq_else.560574:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -52($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.560577	! callcls
	j	.mendoi1.560576	! callcls
.mendoi2.560577:	! callcls
	jr	$r27	! callcls
.mendoi1.560576:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560578
	jr	$r31
.beq_else.560578:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -56($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.560581	! callcls
	j	.mendoi1.560580	! callcls
.mendoi2.560581:	! callcls
	jr	$r27	! callcls
.mendoi1.560580:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560582
	jr	$r31
.beq_else.560582:
	sll	$r3, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r5, -12($r29)
	lw	$r6, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -60($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560585	! callcls
	j	.mendoi1.560584	! callcls
.mendoi2.560585:	! callcls
	jr	$r27	! callcls
.mendoi1.560584:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	lw	$r4, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix.3193:
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
	addi	$r17, $r0, 0
	lw	$r18, 0($r16)
	addi	$r19, $r0, -1
	bne	$r18, $r19, .beq_else.560586
	jr	$r31
.beq_else.560586:
	addi	$r20, $r0, 99
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r10, -12($r29)
	sw	$r6, -16($r29)
	sw	$r11, -20($r29)
	sw	$r12, -24($r29)
	sw	$r4, -28($r29)
	sw	$r17, -32($r29)
	sw	$r13, -36($r29)
	sw	$r15, -40($r29)
	sw	$r20, -44($r29)
	sw	$r19, -48($r29)
	sw	$r3, -52($r29)
	sw	$r2, -56($r29)
	bne	$r18, $r20, .beq_else.560588
	lw	$r7, 4($r16)
	bne	$r7, $r19, .beq_else.560590
	j	.beq_cont.560591
.beq_else.560590:
	sll	$r7, $r7, 2
	addu	$r1, $r15, $r7
	lw	$r7, 0($r1)
	sw	$r16, -60($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	addi	$r28, $r13, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560593	! callcls
	j	.mendoi1.560592	! callcls
.mendoi2.560593:	! callcls
	jr	$r27	! callcls
.mendoi1.560592:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 8($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560594
	j	.beq_cont.560595
.beq_else.560594:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560597	! callcls
	j	.mendoi1.560596	! callcls
.mendoi2.560597:	! callcls
	jr	$r27	! callcls
.mendoi1.560596:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 12($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560598
	j	.beq_cont.560599
.beq_else.560598:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560601	! callcls
	j	.mendoi1.560600	! callcls
.mendoi2.560601:	! callcls
	jr	$r27	! callcls
.mendoi1.560600:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 16($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560602
	j	.beq_cont.560603
.beq_else.560602:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560605	! callcls
	j	.mendoi1.560604	! callcls
.mendoi2.560605:	! callcls
	jr	$r27	! callcls
.mendoi1.560604:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 20($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560606
	j	.beq_cont.560607
.beq_else.560606:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560609	! callcls
	j	.mendoi1.560608	! callcls
.mendoi2.560609:	! callcls
	jr	$r27	! callcls
.mendoi1.560608:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 24($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560610
	j	.beq_cont.560611
.beq_else.560610:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560613	! callcls
	j	.mendoi1.560612	! callcls
.mendoi2.560613:	! callcls
	jr	$r27	! callcls
.mendoi1.560612:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 28($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560614
	j	.beq_cont.560615
.beq_else.560614:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560617	! callcls
	j	.mendoi1.560616	! callcls
.mendoi2.560617:	! callcls
	jr	$r27	! callcls
.mendoi1.560616:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r2, $r0, 8
	lw	$r3, -60($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560619	! callcls
	j	.mendoi1.560618	! callcls
.mendoi2.560619:	! callcls
	jr	$r27	! callcls
.mendoi1.560618:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
.beq_cont.560615:
.beq_cont.560611:
.beq_cont.560607:
.beq_cont.560603:
.beq_cont.560599:
.beq_cont.560595:
.beq_cont.560591:
	j	.beq_cont.560589
.beq_else.560588:
	sll	$r18, $r18, 2
	addu	$r1, $r14, $r18
	lw	$r14, 0($r1)
	lwcl	$f0, 0($r6)
	lw	$r18, 20($r14)
	lwcl	$f2, 0($r18)
	sub.s	$f0, $f0, $f2
	addi	$r18, $r0, 1
	lwcl	$f2, 4($r6)
	lw	$r21, 20($r14)
	lwcl	$f4, 4($r21)
	sub.s	$f2, $f2, $f4
	addi	$r21, $r0, 2
	lwcl	$f4, 8($r6)
	lw	$r22, 20($r14)
	lwcl	$f6, 8($r22)
	sub.s	$f4, $f4, $f6
	lw	$r22, 4($r14)
	sw	$r16, -60($r29)
	bne	$r22, $r18, .beq_else.560620
	swcl	$f0, -64($r29)
	swcl	$f4, -68($r29)
	swcl	$f2, -72($r29)
	sw	$r21, -76($r29)
	sw	$r18, -80($r29)
	sw	$r14, -84($r29)
	sw	$r9, -88($r29)
	addi	$r6, $r21, 0	! g'_args
	addi	$r5, $r18, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r17, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560623	! callcls
	j	.mendoi1.560622	! callcls
.mendoi2.560623:	! callcls
	jr	$r27	! callcls
.mendoi1.560622:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r6, -32($r29)
	bne	$r2, $r6, .beq_else.560624
	lwcl	$f0, -72($r29)
	lwcl	$f2, -68($r29)
	lwcl	$f4, -64($r29)
	lw	$r2, -84($r29)
	lw	$r3, -28($r29)
	lw	$r4, -80($r29)
	lw	$r5, -76($r29)
	lw	$r28, -88($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560627	! callcls
	j	.mendoi1.560626	! callcls
.mendoi2.560627:	! callcls
	jr	$r27	! callcls
.mendoi1.560626:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r5, -32($r29)
	bne	$r2, $r5, .beq_else.560628
	lwcl	$f0, -68($r29)
	lwcl	$f2, -64($r29)
	lwcl	$f4, -72($r29)
	lw	$r2, -84($r29)
	lw	$r3, -28($r29)
	lw	$r4, -76($r29)
	lw	$r6, -80($r29)
	lw	$r28, -88($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560631	! callcls
	j	.mendoi1.560630	! callcls
.mendoi2.560631:	! callcls
	jr	$r27	! callcls
.mendoi1.560630:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r3, -32($r29)
	bne	$r2, $r3, .beq_else.560632
	addi	$r2, $r0, 0
	j	.beq_cont.560633
.beq_else.560632:
	addi	$r2, $r0, 3
.beq_cont.560633:
	j	.beq_cont.560629
.beq_else.560628:
	addi	$r2, $r0, 2
.beq_cont.560629:
	j	.beq_cont.560625
.beq_else.560624:
	addi	$r2, $r0, 1
.beq_cont.560625:
	j	.beq_cont.560621
.beq_else.560620:
	bne	$r22, $r21, .beq_else.560634
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560637	! callcls
	j	.mendoi1.560636	! callcls
.mendoi2.560637:	! callcls
	jr	$r27	! callcls
.mendoi1.560636:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	j	.beq_cont.560635
.beq_else.560634:
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560639	! callcls
	j	.mendoi1.560638	! callcls
.mendoi2.560639:	! callcls
	jr	$r27	! callcls
.mendoi1.560638:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
.beq_cont.560635:
.beq_cont.560621:
	lw	$r3, -32($r29)
	bne	$r2, $r3, .beq_else.560640
	j	.beq_cont.560641
.beq_else.560640:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -8($r29)
	lwcl	$f2, 0($r4)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560642
	addi	$r5, $r0, 0
	j	.bclt_cont.560643
.bclt_else.560642:
	addi	$r5, $r0, 1
.bclt_cont.560643:
	bne	$r5, $r3, .beq_else.560644
	j	.beq_cont.560645
.beq_else.560644:
	lw	$r5, -60($r29)
	lw	$r6, 4($r5)
	lw	$r7, -48($r29)
	bne	$r6, $r7, .beq_else.560646
	j	.beq_cont.560647
.beq_else.560646:
	sll	$r6, $r6, 2
	lw	$r8, -40($r29)
	addu	$r1, $r8, $r6
	lw	$r6, 0($r1)
	lw	$r9, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r9, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560649	! callcls
	j	.mendoi1.560648	! callcls
.mendoi2.560649:	! callcls
	jr	$r27	! callcls
.mendoi1.560648:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 8($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560650
	j	.beq_cont.560651
.beq_else.560650:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560653	! callcls
	j	.mendoi1.560652	! callcls
.mendoi2.560653:	! callcls
	jr	$r27	! callcls
.mendoi1.560652:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 12($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560654
	j	.beq_cont.560655
.beq_else.560654:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560657	! callcls
	j	.mendoi1.560656	! callcls
.mendoi2.560657:	! callcls
	jr	$r27	! callcls
.mendoi1.560656:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 16($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560658
	j	.beq_cont.560659
.beq_else.560658:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560661	! callcls
	j	.mendoi1.560660	! callcls
.mendoi2.560661:	! callcls
	jr	$r27	! callcls
.mendoi1.560660:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 20($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560662
	j	.beq_cont.560663
.beq_else.560662:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560665	! callcls
	j	.mendoi1.560664	! callcls
.mendoi2.560665:	! callcls
	jr	$r27	! callcls
.mendoi1.560664:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 24($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560666
	j	.beq_cont.560667
.beq_else.560666:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560669	! callcls
	j	.mendoi1.560668	! callcls
.mendoi2.560669:	! callcls
	jr	$r27	! callcls
.mendoi1.560668:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	lw	$r2, -60($r29)
	lw	$r3, 28($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560670
	j	.beq_cont.560671
.beq_else.560670:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560673	! callcls
	j	.mendoi1.560672	! callcls
.mendoi2.560673:	! callcls
	jr	$r27	! callcls
.mendoi1.560672:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
	addi	$r2, $r0, 8
	lw	$r3, -60($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -92($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -92	! callcls
	jal	.mendoi2.560675	! callcls
	j	.mendoi1.560674	! callcls
.mendoi2.560675:	! callcls
	jr	$r27	! callcls
.mendoi1.560674:	! callcls
	addi	$r29, $r29, 92	! callcls
	lw	$r31, -92($r29)	! callcls
.beq_cont.560671:
.beq_cont.560667:
.beq_cont.560663:
.beq_cont.560659:
.beq_cont.560655:
.beq_cont.560651:
.beq_cont.560647:
.beq_cont.560645:
.beq_cont.560641:
.beq_cont.560589:
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -52($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, 0($r3)
	lw	$r6, -48($r29)
	bne	$r5, $r6, .beq_else.560676
	jr	$r31
.beq_else.560676:
	lw	$r7, -44($r29)
	sw	$r2, -92($r29)
	bne	$r5, $r7, .beq_else.560678
	lw	$r5, 4($r3)
	bne	$r5, $r6, .beq_else.560680
	j	.beq_cont.560681
.beq_else.560680:
	sll	$r5, $r5, 2
	lw	$r7, -40($r29)
	addu	$r1, $r7, $r5
	lw	$r5, 0($r1)
	lw	$r8, -32($r29)
	lw	$r9, -28($r29)
	lw	$r28, -36($r29)
	sw	$r3, -96($r29)
	addi	$r4, $r9, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560683	! callcls
	j	.mendoi1.560682	! callcls
.mendoi2.560683:	! callcls
	jr	$r27	! callcls
.mendoi1.560682:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 8($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560684
	j	.beq_cont.560685
.beq_else.560684:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560687	! callcls
	j	.mendoi1.560686	! callcls
.mendoi2.560687:	! callcls
	jr	$r27	! callcls
.mendoi1.560686:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 12($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560688
	j	.beq_cont.560689
.beq_else.560688:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560691	! callcls
	j	.mendoi1.560690	! callcls
.mendoi2.560691:	! callcls
	jr	$r27	! callcls
.mendoi1.560690:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 16($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560692
	j	.beq_cont.560693
.beq_else.560692:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560695	! callcls
	j	.mendoi1.560694	! callcls
.mendoi2.560695:	! callcls
	jr	$r27	! callcls
.mendoi1.560694:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 20($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560696
	j	.beq_cont.560697
.beq_else.560696:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560699	! callcls
	j	.mendoi1.560698	! callcls
.mendoi2.560699:	! callcls
	jr	$r27	! callcls
.mendoi1.560698:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 24($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560700
	j	.beq_cont.560701
.beq_else.560700:
	sll	$r3, $r3, 2
	lw	$r4, -40($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r28, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560703	! callcls
	j	.mendoi1.560702	! callcls
.mendoi2.560703:	! callcls
	jr	$r27	! callcls
.mendoi1.560702:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -96($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560705	! callcls
	j	.mendoi1.560704	! callcls
.mendoi2.560705:	! callcls
	jr	$r27	! callcls
.mendoi1.560704:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
.beq_cont.560701:
.beq_cont.560697:
.beq_cont.560693:
.beq_cont.560689:
.beq_cont.560685:
.beq_cont.560681:
	j	.beq_cont.560679
.beq_else.560678:
	lw	$r7, -28($r29)
	lw	$r8, -16($r29)
	lw	$r28, -20($r29)
	sw	$r3, -96($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560707	! callcls
	j	.mendoi1.560706	! callcls
.mendoi2.560707:	! callcls
	jr	$r27	! callcls
.mendoi1.560706:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r3, -32($r29)
	bne	$r2, $r3, .beq_else.560708
	j	.beq_cont.560709
.beq_else.560708:
	lw	$r2, -12($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560710
	addi	$r2, $r0, 0
	j	.bclt_cont.560711
.bclt_else.560710:
	addi	$r2, $r0, 1
.bclt_cont.560711:
	bne	$r2, $r3, .beq_else.560712
	j	.beq_cont.560713
.beq_else.560712:
	lw	$r2, -96($r29)
	lw	$r4, 4($r2)
	lw	$r5, -48($r29)
	bne	$r4, $r5, .beq_else.560714
	j	.beq_cont.560715
.beq_else.560714:
	sll	$r4, $r4, 2
	lw	$r6, -40($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r4, $r7, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560717	! callcls
	j	.mendoi1.560716	! callcls
.mendoi2.560717:	! callcls
	jr	$r27	! callcls
.mendoi1.560716:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 8($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560718
	j	.beq_cont.560719
.beq_else.560718:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560721	! callcls
	j	.mendoi1.560720	! callcls
.mendoi2.560721:	! callcls
	jr	$r27	! callcls
.mendoi1.560720:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 12($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560722
	j	.beq_cont.560723
.beq_else.560722:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560725	! callcls
	j	.mendoi1.560724	! callcls
.mendoi2.560725:	! callcls
	jr	$r27	! callcls
.mendoi1.560724:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 16($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560726
	j	.beq_cont.560727
.beq_else.560726:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560729	! callcls
	j	.mendoi1.560728	! callcls
.mendoi2.560729:	! callcls
	jr	$r27	! callcls
.mendoi1.560728:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 20($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560730
	j	.beq_cont.560731
.beq_else.560730:
	sll	$r3, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -32($r29)
	lw	$r7, -28($r29)
	lw	$r28, -36($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560733	! callcls
	j	.mendoi1.560732	! callcls
.mendoi2.560733:	! callcls
	jr	$r27	! callcls
.mendoi1.560732:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r2, -96($r29)
	lw	$r3, 24($r2)
	lw	$r4, -48($r29)
	bne	$r3, $r4, .beq_else.560734
	j	.beq_cont.560735
.beq_else.560734:
	sll	$r3, $r3, 2
	lw	$r4, -40($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -32($r29)
	lw	$r5, -28($r29)
	lw	$r28, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560737	! callcls
	j	.mendoi1.560736	! callcls
.mendoi2.560737:	! callcls
	jr	$r27	! callcls
.mendoi1.560736:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -96($r29)
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560739	! callcls
	j	.mendoi1.560738	! callcls
.mendoi2.560739:	! callcls
	jr	$r27	! callcls
.mendoi1.560738:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
.beq_cont.560735:
.beq_cont.560731:
.beq_cont.560727:
.beq_cont.560723:
.beq_cont.560719:
.beq_cont.560715:
.beq_cont.560713:
.beq_cont.560709:
.beq_cont.560679:
	lw	$r2, -92($r29)
	addi	$r2, $r2, 1
	lw	$r3, -52($r29)
	lw	$r4, -28($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_each_element_fast.3199:
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
	bne	$r16, $r17, .beq_else.560740
	jr	$r31
.beq_else.560740:
	sll	$r18, $r16, 2
	addu	$r1, $r10, $r18
	lw	$r18, 0($r1)
	lw	$r19, 40($r18)
	addi	$r20, $r0, 0
	lwcl	$f0, 0($r19)
	addi	$r21, $r0, 1
	lwcl	$f2, 4($r19)
	addi	$r22, $r0, 2
	lwcl	$f4, 8($r19)
	lw	$r23, 4($r4)
	sll	$r24, $r16, 2
	addu	$r1, $r23, $r24
	lw	$r23, 0($r1)
	lw	$r24, 4($r18)
	sw	$r11, -4($r29)
	sw	$r13, -8($r29)
	sw	$r12, -12($r29)
	sw	$r14, -16($r29)
	sw	$r22, -20($r29)
	sw	$r21, -24($r29)
	sw	$r17, -28($r29)
	sw	$r6, -32($r29)
	sw	$r15, -36($r29)
	sw	$r5, -40($r29)
	sw	$r9, -44($r29)
	sw	$r4, -48($r29)
	sw	$r3, -52($r29)
	sw	$r28, -56($r29)
	sw	$r2, -60($r29)
	sw	$r10, -64($r29)
	sw	$r16, -68($r29)
	sw	$r20, -72($r29)
	bne	$r24, $r21, .beq_else.560742
	lw	$r7, 0($r4)
	addi	$r4, $r23, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560745	! callcls
	j	.mendoi1.560744	! callcls
.mendoi2.560745:	! callcls
	jr	$r27	! callcls
.mendoi1.560744:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.560743
.beq_else.560742:
	bne	$r24, $r22, .beq_else.560746
	lwcl	$f0, 0($r23)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.560748
	addi	$r7, $r0, 0
	j	.bclt_cont.560749
.bclt_else.560748:
	addi	$r7, $r0, 1
.bclt_cont.560749:
	bne	$r7, $r20, .beq_else.560750
	addi	$r2, $r0, 0
	j	.beq_cont.560751
.beq_else.560750:
	lwcl	$f0, 0($r23)
	lwcl	$f2, 12($r19)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r9)
	addi	$r2, $r0, 1
.beq_cont.560751:
	j	.beq_cont.560747
.beq_else.560746:
	addi	$r4, $r19, 0	! g'_args
	addi	$r3, $r23, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560753	! callcls
	j	.mendoi1.560752	! callcls
.mendoi2.560753:	! callcls
	jr	$r27	! callcls
.mendoi1.560752:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.560747:
.beq_cont.560743:
	lw	$r3, -72($r29)
	bne	$r2, $r3, .beq_else.560754
	lw	$r2, -68($r29)
	sll	$r2, $r2, 2
	lw	$r4, -64($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r2, 24($r2)
	bne	$r2, $r3, .beq_else.560755
	jr	$r31
.beq_else.560755:
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	lw	$r3, -52($r29)
	lw	$r4, -48($r29)
	lw	$r28, -56($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.560754:
	lw	$r4, -44($r29)
	lwcl	$f0, 0($r4)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.560757
	addi	$r4, $r0, 0
	j	.bclt_cont.560758
.bclt_else.560757:
	addi	$r4, $r0, 1
.bclt_cont.560758:
	bne	$r4, $r3, .beq_else.560759
	j	.beq_cont.560760
.beq_else.560759:
	lw	$r4, -40($r29)
	lwcl	$f4, 0($r4)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560761
	addi	$r5, $r0, 0
	j	.bclt_cont.560762
.bclt_else.560761:
	addi	$r5, $r0, 1
.bclt_cont.560762:
	bne	$r5, $r3, .beq_else.560763
	j	.beq_cont.560764
.beq_else.560763:
	lfh	$f4, 15395
	lfl	$f4, 55050
	add.s	$f0, $f0, $f4
	lw	$r5, -36($r29)
	lwcl	$f4, 0($r5)
	mul.s	$f4, $f4, $f0
	lw	$r6, -32($r29)
	lwcl	$f6, 0($r6)
	add.s	$f4, $f4, $f6
	lwcl	$f6, 4($r5)
	mul.s	$f6, $f6, $f0
	lwcl	$f8, 4($r6)
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r5)
	mul.s	$f8, $f8, $f0
	lwcl	$f10, 8($r6)
	add.s	$f8, $f8, $f10
	lw	$r5, -52($r29)
	lw	$r6, 0($r5)
	lw	$r7, -28($r29)
	sw	$r2, -76($r29)
	swcl	$f8, -80($r29)
	swcl	$f6, -84($r29)
	swcl	$f4, -88($r29)
	swcl	$f0, -92($r29)
	bne	$r6, $r7, .beq_else.560765
	addi	$r2, $r0, 1
	j	.beq_cont.560766
.beq_else.560765:
	sll	$r6, $r6, 2
	lw	$r8, -64($r29)
	addu	$r1, $r8, $r6
	lw	$r6, 0($r1)
	swcl	$f2, -96($r29)
	addi	$r2, $r6, 0	! g'_args
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -72($r29)
	bne	$r2, $r3, .beq_else.560767
	lw	$r2, -52($r29)
	lw	$r4, 4($r2)
	lw	$r5, -28($r29)
	bne	$r4, $r5, .beq_else.560769
	addi	$r2, $r0, 1
	j	.beq_cont.560770
.beq_else.560769:
	sll	$r4, $r4, 2
	lw	$r6, -64($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 20($r4)
	lwcl	$f0, 0($r7)
	lwcl	$f2, -88($r29)
	sub.s	$f0, $f2, $f0
	lw	$r7, 20($r4)
	lwcl	$f4, 4($r7)
	lwcl	$f6, -84($r29)
	sub.s	$f4, $f6, $f4
	lw	$r7, 20($r4)
	lwcl	$f8, 8($r7)
	lwcl	$f10, -80($r29)
	sub.s	$f8, $f10, $f8
	lw	$r7, 4($r4)
	lw	$r8, -24($r29)
	bne	$r7, $r8, .beq_else.560771
	lwcl	$f12, -96($r29)
	c.le.s	$f12, $f0
	bclf	.bclt_else.560773
	j	.bclt_cont.560774
.bclt_else.560773:
	fneg	$f0, $f0
.bclt_cont.560774:
	lw	$r7, 16($r4)
	lwcl	$f14, 0($r7)
	c.le.s	$f14, $f0
	bclf	.bclt_else.560775
	addi	$r7, $r0, 0
	j	.bclt_cont.560776
.bclt_else.560775:
	addi	$r7, $r0, 1
.bclt_cont.560776:
	bne	$r7, $r3, .beq_else.560777
	addi	$r7, $r0, 0
	j	.beq_cont.560778
.beq_else.560777:
	c.le.s	$f12, $f4
	bclf	.bclt_else.560779
	fmove	$f0, $f4
	j	.bclt_cont.560780
.bclt_else.560779:
	fneg	$f0, $f4
.bclt_cont.560780:
	lw	$r7, 16($r4)
	lwcl	$f4, 4($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560781
	addi	$r7, $r0, 0
	j	.bclt_cont.560782
.bclt_else.560781:
	addi	$r7, $r0, 1
.bclt_cont.560782:
	bne	$r7, $r3, .beq_else.560783
	addi	$r7, $r0, 0
	j	.beq_cont.560784
.beq_else.560783:
	c.le.s	$f12, $f8
	bclf	.bclt_else.560785
	fmove	$f0, $f8
	j	.bclt_cont.560786
.bclt_else.560785:
	fneg	$f0, $f8
.bclt_cont.560786:
	lw	$r7, 16($r4)
	lwcl	$f4, 8($r7)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560787
	addi	$r7, $r0, 0
	j	.bclt_cont.560788
.bclt_else.560787:
	addi	$r7, $r0, 1
.bclt_cont.560788:
.beq_cont.560784:
.beq_cont.560778:
	bne	$r7, $r3, .beq_else.560789
	lw	$r4, 24($r4)
	bne	$r4, $r3, .beq_else.560791
	addi	$r2, $r0, 1
	j	.beq_cont.560792
.beq_else.560791:
	addi	$r2, $r0, 0
.beq_cont.560792:
	j	.beq_cont.560790
.beq_else.560789:
	lw	$r4, 24($r4)
	addi	$r2, $r4, 0
.beq_cont.560790:
	j	.beq_cont.560772
.beq_else.560771:
	lw	$r8, -20($r29)
	bne	$r7, $r8, .beq_else.560793
	lw	$r7, 16($r4)
	lwcl	$f12, 0($r7)
	mul.s	$f0, $f12, $f0
	lwcl	$f12, 4($r7)
	mul.s	$f4, $f12, $f4
	add.s	$f0, $f0, $f4
	lwcl	$f4, 8($r7)
	mul.s	$f4, $f4, $f8
	add.s	$f0, $f0, $f4
	lw	$r4, 24($r4)
	lwcl	$f4, -96($r29)
	c.le.s	$f4, $f0
	bclf	.bclt_else.560795
	addi	$r7, $r0, 0
	j	.bclt_cont.560796
.bclt_else.560795:
	addi	$r7, $r0, 1
.bclt_cont.560796:
	bne	$r4, $r3, .beq_else.560797
	addi	$r4, $r7, 0
	j	.beq_cont.560798
.beq_else.560797:
	bne	$r7, $r3, .beq_else.560799
	addi	$r4, $r0, 1
	j	.beq_cont.560800
.beq_else.560799:
	addi	$r4, $r0, 0
.beq_cont.560800:
.beq_cont.560798:
	bne	$r4, $r3, .beq_else.560801
	addi	$r2, $r0, 1
	j	.beq_cont.560802
.beq_else.560801:
	addi	$r2, $r0, 0
.beq_cont.560802:
	j	.beq_cont.560794
.beq_else.560793:
	addi	$r2, $r4, 0	! g'_args
	fmove	$f2, $f4	! g'_args
	fmove	$f4, $f8	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.is_second_outside.3160	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
.beq_cont.560794:
.beq_cont.560772:
	lw	$r3, -72($r29)
	bne	$r2, $r3, .beq_else.560803
	lw	$r2, -52($r29)
	lw	$r4, 8($r2)
	lw	$r5, -28($r29)
	bne	$r4, $r5, .beq_else.560805
	addi	$r2, $r0, 1
	j	.beq_cont.560806
.beq_else.560805:
	sll	$r4, $r4, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lwcl	$f0, -88($r29)
	lwcl	$f2, -84($r29)
	lwcl	$f4, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.is_outside.3165	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -72($r29)
	bne	$r2, $r3, .beq_else.560807
	addi	$r2, $r0, 3
	lwcl	$f0, -88($r29)
	lwcl	$f2, -84($r29)
	lwcl	$f4, -80($r29)
	lw	$r4, -52($r29)
	lw	$r28, -16($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.560810	! callcls
	j	.mendoi1.560809	! callcls
.mendoi2.560810:	! callcls
	jr	$r27	! callcls
.mendoi1.560809:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	j	.beq_cont.560808
.beq_else.560807:
	addi	$r2, $r0, 0
.beq_cont.560808:
.beq_cont.560806:
	j	.beq_cont.560804
.beq_else.560803:
	addi	$r2, $r0, 0
.beq_cont.560804:
.beq_cont.560770:
	j	.beq_cont.560768
.beq_else.560767:
	addi	$r2, $r0, 0
.beq_cont.560768:
.beq_cont.560766:
	lw	$r3, -72($r29)
	bne	$r2, $r3, .beq_else.560811
	j	.beq_cont.560812
.beq_else.560811:
	lw	$r2, -40($r29)
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
	lw	$r3, -68($r29)
	sw	$r3, 0($r2)
	lw	$r2, -4($r29)
	lw	$r3, -76($r29)
	sw	$r3, 0($r2)
.beq_cont.560812:
.beq_cont.560764:
.beq_cont.560760:
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	lw	$r3, -52($r29)
	lw	$r4, -48($r29)
	lw	$r28, -56($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.solve_one_or_network_fast.3203:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	sll	$r7, $r2, 2
	addu	$r1, $r3, $r7
	lw	$r7, 0($r1)
	addi	$r8, $r0, -1
	bne	$r7, $r8, .beq_else.560813
	jr	$r31
.beq_else.560813:
	sll	$r7, $r7, 2
	addu	$r1, $r6, $r7
	lw	$r7, 0($r1)
	addi	$r9, $r0, 0
	sw	$r28, -4($r29)
	sw	$r4, -8($r29)
	sw	$r9, -12($r29)
	sw	$r5, -16($r29)
	sw	$r6, -20($r29)
	sw	$r8, -24($r29)
	sw	$r3, -28($r29)
	sw	$r2, -32($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -36($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -36	! callcls
	jal	.mendoi2.560816	! callcls
	j	.mendoi1.560815	! callcls
.mendoi2.560816:	! callcls
	jr	$r27	! callcls
.mendoi1.560815:	! callcls
	addi	$r29, $r29, 36	! callcls
	lw	$r31, -36($r29)	! callcls
	lw	$r2, -32($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560817
	jr	$r31
.beq_else.560817:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -36($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.560820	! callcls
	j	.mendoi1.560819	! callcls
.mendoi2.560820:	! callcls
	jr	$r27	! callcls
.mendoi1.560819:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -36($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560821
	jr	$r31
.beq_else.560821:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -40($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.560824	! callcls
	j	.mendoi1.560823	! callcls
.mendoi2.560824:	! callcls
	jr	$r27	! callcls
.mendoi1.560823:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560825
	jr	$r31
.beq_else.560825:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -44($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.560828	! callcls
	j	.mendoi1.560827	! callcls
.mendoi2.560828:	! callcls
	jr	$r27	! callcls
.mendoi1.560827:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -44($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560829
	jr	$r31
.beq_else.560829:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -48($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.560832	! callcls
	j	.mendoi1.560831	! callcls
.mendoi2.560832:	! callcls
	jr	$r27	! callcls
.mendoi1.560831:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
	lw	$r2, -48($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560833
	jr	$r31
.beq_else.560833:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -52($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.560836	! callcls
	j	.mendoi1.560835	! callcls
.mendoi2.560836:	! callcls
	jr	$r27	! callcls
.mendoi1.560835:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -52($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560837
	jr	$r31
.beq_else.560837:
	sll	$r3, $r3, 2
	lw	$r6, -20($r29)
	addu	$r1, $r6, $r3
	lw	$r3, 0($r1)
	lw	$r7, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -56($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.560840	! callcls
	j	.mendoi1.560839	! callcls
.mendoi2.560840:	! callcls
	jr	$r27	! callcls
.mendoi1.560839:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -56($r29)
	addi	$r2, $r2, 1
	sll	$r3, $r2, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r5, -24($r29)
	bne	$r3, $r5, .beq_else.560841
	jr	$r31
.beq_else.560841:
	sll	$r3, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r5, -12($r29)
	lw	$r6, -8($r29)
	lw	$r28, -16($r29)
	sw	$r2, -60($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.560844	! callcls
	j	.mendoi1.560843	! callcls
.mendoi2.560844:	! callcls
	jr	$r27	! callcls
.mendoi1.560843:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, 1
	lw	$r3, -28($r29)
	lw	$r4, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.trace_or_matrix_fast.3207:
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
	addi	$r14, $r0, 0
	lw	$r15, 0($r13)
	addi	$r16, $r0, -1
	bne	$r15, $r16, .beq_else.560845
	jr	$r31
.beq_else.560845:
	addi	$r17, $r0, 99
	sw	$r28, -4($r29)
	sw	$r5, -8($r29)
	sw	$r6, -12($r29)
	sw	$r8, -16($r29)
	sw	$r7, -20($r29)
	sw	$r11, -24($r29)
	sw	$r9, -28($r29)
	sw	$r4, -32($r29)
	sw	$r14, -36($r29)
	sw	$r10, -40($r29)
	sw	$r12, -44($r29)
	sw	$r17, -48($r29)
	sw	$r16, -52($r29)
	sw	$r3, -56($r29)
	sw	$r2, -60($r29)
	bne	$r15, $r17, .beq_else.560847
	lw	$r15, 4($r13)
	bne	$r15, $r16, .beq_else.560849
	j	.beq_cont.560850
.beq_else.560849:
	sll	$r15, $r15, 2
	addu	$r1, $r12, $r15
	lw	$r15, 0($r1)
	sw	$r13, -64($r29)
	addi	$r3, $r15, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r10, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560852	! callcls
	j	.mendoi1.560851	! callcls
.mendoi2.560852:	! callcls
	jr	$r27	! callcls
.mendoi1.560851:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 8($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560853
	j	.beq_cont.560854
.beq_else.560853:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560856	! callcls
	j	.mendoi1.560855	! callcls
.mendoi2.560856:	! callcls
	jr	$r27	! callcls
.mendoi1.560855:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 12($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560857
	j	.beq_cont.560858
.beq_else.560857:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560860	! callcls
	j	.mendoi1.560859	! callcls
.mendoi2.560860:	! callcls
	jr	$r27	! callcls
.mendoi1.560859:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 16($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560861
	j	.beq_cont.560862
.beq_else.560861:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560864	! callcls
	j	.mendoi1.560863	! callcls
.mendoi2.560864:	! callcls
	jr	$r27	! callcls
.mendoi1.560863:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 20($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560865
	j	.beq_cont.560866
.beq_else.560865:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560868	! callcls
	j	.mendoi1.560867	! callcls
.mendoi2.560868:	! callcls
	jr	$r27	! callcls
.mendoi1.560867:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 24($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560869
	j	.beq_cont.560870
.beq_else.560869:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560872	! callcls
	j	.mendoi1.560871	! callcls
.mendoi2.560872:	! callcls
	jr	$r27	! callcls
.mendoi1.560871:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 28($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560873
	j	.beq_cont.560874
.beq_else.560873:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560876	! callcls
	j	.mendoi1.560875	! callcls
.mendoi2.560876:	! callcls
	jr	$r27	! callcls
.mendoi1.560875:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r2, $r0, 8
	lw	$r3, -64($r29)
	lw	$r4, -32($r29)
	lw	$r28, -28($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560878	! callcls
	j	.mendoi1.560877	! callcls
.mendoi2.560878:	! callcls
	jr	$r27	! callcls
.mendoi1.560877:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.560874:
.beq_cont.560870:
.beq_cont.560866:
.beq_cont.560862:
.beq_cont.560858:
.beq_cont.560854:
.beq_cont.560850:
	j	.beq_cont.560848
.beq_else.560847:
	sll	$r18, $r15, 2
	addu	$r1, $r11, $r18
	lw	$r18, 0($r1)
	lw	$r19, 40($r18)
	lwcl	$f0, 0($r19)
	addi	$r20, $r0, 1
	lwcl	$f2, 4($r19)
	addi	$r21, $r0, 2
	lwcl	$f4, 8($r19)
	lw	$r22, 4($r4)
	sll	$r15, $r15, 2
	addu	$r1, $r22, $r15
	lw	$r15, 0($r1)
	lw	$r22, 4($r18)
	sw	$r13, -64($r29)
	bne	$r22, $r20, .beq_else.560879
	lw	$r19, 0($r4)
	addi	$r4, $r15, 0	! g'_args
	addi	$r3, $r19, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560882	! callcls
	j	.mendoi1.560881	! callcls
.mendoi2.560882:	! callcls
	jr	$r27	! callcls
.mendoi1.560881:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	j	.beq_cont.560880
.beq_else.560879:
	bne	$r22, $r21, .beq_else.560883
	lwcl	$f0, 0($r15)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.560885
	addi	$r18, $r0, 0
	j	.bclt_cont.560886
.bclt_else.560885:
	addi	$r18, $r0, 1
.bclt_cont.560886:
	bne	$r18, $r14, .beq_else.560887
	addi	$r2, $r0, 0
	j	.beq_cont.560888
.beq_else.560887:
	lwcl	$f0, 0($r15)
	lwcl	$f2, 12($r19)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r8)
	addi	$r2, $r0, 1
.beq_cont.560888:
	j	.beq_cont.560884
.beq_else.560883:
	addi	$r4, $r19, 0	! g'_args
	addi	$r3, $r15, 0	! g'_args
	addi	$r2, $r18, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560890	! callcls
	j	.mendoi1.560889	! callcls
.mendoi2.560890:	! callcls
	jr	$r27	! callcls
.mendoi1.560889:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.560884:
.beq_cont.560880:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560891
	j	.beq_cont.560892
.beq_else.560891:
	lw	$r2, -16($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -8($r29)
	lwcl	$f2, 0($r4)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560893
	addi	$r5, $r0, 0
	j	.bclt_cont.560894
.bclt_else.560893:
	addi	$r5, $r0, 1
.bclt_cont.560894:
	bne	$r5, $r3, .beq_else.560895
	j	.beq_cont.560896
.beq_else.560895:
	lw	$r5, -64($r29)
	lw	$r6, 4($r5)
	lw	$r7, -52($r29)
	bne	$r6, $r7, .beq_else.560897
	j	.beq_cont.560898
.beq_else.560897:
	sll	$r6, $r6, 2
	lw	$r8, -44($r29)
	addu	$r1, $r8, $r6
	lw	$r6, 0($r1)
	lw	$r9, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r9, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560900	! callcls
	j	.mendoi1.560899	! callcls
.mendoi2.560900:	! callcls
	jr	$r27	! callcls
.mendoi1.560899:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 8($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560901
	j	.beq_cont.560902
.beq_else.560901:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560904	! callcls
	j	.mendoi1.560903	! callcls
.mendoi2.560904:	! callcls
	jr	$r27	! callcls
.mendoi1.560903:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 12($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560905
	j	.beq_cont.560906
.beq_else.560905:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560908	! callcls
	j	.mendoi1.560907	! callcls
.mendoi2.560908:	! callcls
	jr	$r27	! callcls
.mendoi1.560907:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 16($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560909
	j	.beq_cont.560910
.beq_else.560909:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560912	! callcls
	j	.mendoi1.560911	! callcls
.mendoi2.560912:	! callcls
	jr	$r27	! callcls
.mendoi1.560911:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 20($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560913
	j	.beq_cont.560914
.beq_else.560913:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560916	! callcls
	j	.mendoi1.560915	! callcls
.mendoi2.560916:	! callcls
	jr	$r27	! callcls
.mendoi1.560915:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 24($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560917
	j	.beq_cont.560918
.beq_else.560917:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560920	! callcls
	j	.mendoi1.560919	! callcls
.mendoi2.560920:	! callcls
	jr	$r27	! callcls
.mendoi1.560919:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lw	$r3, 28($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560921
	j	.beq_cont.560922
.beq_else.560921:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560924	! callcls
	j	.mendoi1.560923	! callcls
.mendoi2.560924:	! callcls
	jr	$r27	! callcls
.mendoi1.560923:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	addi	$r2, $r0, 8
	lw	$r3, -64($r29)
	lw	$r4, -32($r29)
	lw	$r28, -28($r29)
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.560926	! callcls
	j	.mendoi1.560925	! callcls
.mendoi2.560926:	! callcls
	jr	$r27	! callcls
.mendoi1.560925:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
.beq_cont.560922:
.beq_cont.560918:
.beq_cont.560914:
.beq_cont.560910:
.beq_cont.560906:
.beq_cont.560902:
.beq_cont.560898:
.beq_cont.560896:
.beq_cont.560892:
.beq_cont.560848:
	addi	$r2, $r0, 1
	lw	$r3, -60($r29)
	addi	$r3, $r3, 1
	sll	$r4, $r3, 2
	lw	$r5, -56($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, 0($r4)
	lw	$r7, -52($r29)
	bne	$r6, $r7, .beq_else.560927
	jr	$r31
.beq_else.560927:
	lw	$r8, -48($r29)
	sw	$r3, -68($r29)
	bne	$r6, $r8, .beq_else.560929
	lw	$r2, 4($r4)
	bne	$r2, $r7, .beq_else.560931
	j	.beq_cont.560932
.beq_else.560931:
	sll	$r2, $r2, 2
	lw	$r6, -44($r29)
	addu	$r1, $r6, $r2
	lw	$r2, 0($r1)
	lw	$r8, -36($r29)
	lw	$r9, -32($r29)
	lw	$r28, -40($r29)
	sw	$r4, -72($r29)
	addi	$r4, $r9, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560934	! callcls
	j	.mendoi1.560933	! callcls
.mendoi2.560934:	! callcls
	jr	$r27	! callcls
.mendoi1.560933:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 8($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560935
	j	.beq_cont.560936
.beq_else.560935:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560938	! callcls
	j	.mendoi1.560937	! callcls
.mendoi2.560938:	! callcls
	jr	$r27	! callcls
.mendoi1.560937:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 12($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560939
	j	.beq_cont.560940
.beq_else.560939:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560942	! callcls
	j	.mendoi1.560941	! callcls
.mendoi2.560942:	! callcls
	jr	$r27	! callcls
.mendoi1.560941:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 16($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560943
	j	.beq_cont.560944
.beq_else.560943:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560946	! callcls
	j	.mendoi1.560945	! callcls
.mendoi2.560946:	! callcls
	jr	$r27	! callcls
.mendoi1.560945:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 20($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560947
	j	.beq_cont.560948
.beq_else.560947:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560950	! callcls
	j	.mendoi1.560949	! callcls
.mendoi2.560950:	! callcls
	jr	$r27	! callcls
.mendoi1.560949:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 24($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560951
	j	.beq_cont.560952
.beq_else.560951:
	sll	$r3, $r3, 2
	lw	$r4, -44($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -36($r29)
	lw	$r5, -32($r29)
	lw	$r28, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560954	! callcls
	j	.mendoi1.560953	! callcls
.mendoi2.560954:	! callcls
	jr	$r27	! callcls
.mendoi1.560953:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -72($r29)
	lw	$r4, -32($r29)
	lw	$r28, -28($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560956	! callcls
	j	.mendoi1.560955	! callcls
.mendoi2.560956:	! callcls
	jr	$r27	! callcls
.mendoi1.560955:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.560952:
.beq_cont.560948:
.beq_cont.560944:
.beq_cont.560940:
.beq_cont.560936:
.beq_cont.560932:
	j	.beq_cont.560930
.beq_else.560929:
	sll	$r8, $r6, 2
	lw	$r9, -24($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r9, 40($r8)
	lwcl	$f0, 0($r9)
	lwcl	$f2, 4($r9)
	addi	$r10, $r0, 2
	lwcl	$f4, 8($r9)
	lw	$r11, -32($r29)
	lw	$r12, 4($r11)
	sll	$r6, $r6, 2
	addu	$r1, $r12, $r6
	lw	$r6, 0($r1)
	lw	$r12, 4($r8)
	sw	$r4, -72($r29)
	bne	$r12, $r2, .beq_else.560957
	lw	$r2, 0($r11)
	lw	$r28, -20($r29)
	addi	$r4, $r6, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560960	! callcls
	j	.mendoi1.560959	! callcls
.mendoi2.560960:	! callcls
	jr	$r27	! callcls
.mendoi1.560959:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.560958
.beq_else.560957:
	bne	$r12, $r10, .beq_else.560961
	lwcl	$f0, 0($r6)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.560963
	addi	$r2, $r0, 0
	j	.bclt_cont.560964
.bclt_else.560963:
	addi	$r2, $r0, 1
.bclt_cont.560964:
	lw	$r8, -36($r29)
	bne	$r2, $r8, .beq_else.560965
	addi	$r2, $r0, 0
	j	.beq_cont.560966
.beq_else.560965:
	lwcl	$f0, 0($r6)
	lwcl	$f2, 12($r9)
	mul.s	$f0, $f0, $f2
	lw	$r2, -16($r29)
	swcl	$f0, 0($r2)
	addi	$r2, $r0, 1
.beq_cont.560966:
	j	.beq_cont.560962
.beq_else.560961:
	lw	$r28, -12($r29)
	addi	$r4, $r9, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560968	! callcls
	j	.mendoi1.560967	! callcls
.mendoi2.560968:	! callcls
	jr	$r27	! callcls
.mendoi1.560967:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.560962:
.beq_cont.560958:
	lw	$r3, -36($r29)
	bne	$r2, $r3, .beq_else.560969
	j	.beq_cont.560970
.beq_else.560969:
	lw	$r2, -16($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.560971
	addi	$r2, $r0, 0
	j	.bclt_cont.560972
.bclt_else.560971:
	addi	$r2, $r0, 1
.bclt_cont.560972:
	bne	$r2, $r3, .beq_else.560973
	j	.beq_cont.560974
.beq_else.560973:
	lw	$r2, -72($r29)
	lw	$r4, 4($r2)
	lw	$r5, -52($r29)
	bne	$r4, $r5, .beq_else.560975
	j	.beq_cont.560976
.beq_else.560975:
	sll	$r4, $r4, 2
	lw	$r6, -44($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	addi	$r4, $r7, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560978	! callcls
	j	.mendoi1.560977	! callcls
.mendoi2.560978:	! callcls
	jr	$r27	! callcls
.mendoi1.560977:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 8($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560979
	j	.beq_cont.560980
.beq_else.560979:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560982	! callcls
	j	.mendoi1.560981	! callcls
.mendoi2.560982:	! callcls
	jr	$r27	! callcls
.mendoi1.560981:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 12($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560983
	j	.beq_cont.560984
.beq_else.560983:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560986	! callcls
	j	.mendoi1.560985	! callcls
.mendoi2.560986:	! callcls
	jr	$r27	! callcls
.mendoi1.560985:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 16($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560987
	j	.beq_cont.560988
.beq_else.560987:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560990	! callcls
	j	.mendoi1.560989	! callcls
.mendoi2.560990:	! callcls
	jr	$r27	! callcls
.mendoi1.560989:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 20($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560991
	j	.beq_cont.560992
.beq_else.560991:
	sll	$r3, $r3, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, -32($r29)
	lw	$r28, -40($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560994	! callcls
	j	.mendoi1.560993	! callcls
.mendoi2.560994:	! callcls
	jr	$r27	! callcls
.mendoi1.560993:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 24($r2)
	lw	$r4, -52($r29)
	bne	$r3, $r4, .beq_else.560995
	j	.beq_cont.560996
.beq_else.560995:
	sll	$r3, $r3, 2
	lw	$r4, -44($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -36($r29)
	lw	$r5, -32($r29)
	lw	$r28, -40($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.560998	! callcls
	j	.mendoi1.560997	! callcls
.mendoi2.560998:	! callcls
	jr	$r27	! callcls
.mendoi1.560997:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -72($r29)
	lw	$r4, -32($r29)
	lw	$r28, -28($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561000	! callcls
	j	.mendoi1.560999	! callcls
.mendoi2.561000:	! callcls
	jr	$r27	! callcls
.mendoi1.560999:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.560996:
.beq_cont.560992:
.beq_cont.560988:
.beq_cont.560984:
.beq_cont.560980:
.beq_cont.560976:
.beq_cont.560974:
.beq_cont.560970:
.beq_cont.560930:
	lw	$r2, -68($r29)
	addi	$r2, $r2, 1
	lw	$r3, -56($r29)
	lw	$r4, -32($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.judge_intersection_fast.3211:
	lw	$r3, 40($r28)
	lw	$r4, 36($r28)
	lw	$r5, 32($r28)
	lw	$r6, 28($r28)
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	addi	$r13, $r0, 0
	lfh	$f0, 20078
	lfl	$f0, 27432
	swcl	$f0, 0($r4)
	lw	$r10, 0($r10)
	lw	$r14, 0($r10)
	lw	$r15, 0($r14)
	addi	$r16, $r0, -1
	sw	$r13, -4($r29)
	sw	$r4, -8($r29)
	bne	$r15, $r16, .beq_else.561001
	j	.beq_cont.561002
.beq_else.561001:
	addi	$r17, $r0, 99
	sw	$r2, -12($r29)
	sw	$r10, -16($r29)
	sw	$r3, -20($r29)
	bne	$r15, $r17, .beq_else.561003
	lw	$r5, 4($r14)
	bne	$r5, $r16, .beq_else.561005
	j	.beq_cont.561006
.beq_else.561005:
	sll	$r5, $r5, 2
	addu	$r1, $r12, $r5
	lw	$r5, 0($r1)
	sw	$r8, -24($r29)
	sw	$r9, -28($r29)
	sw	$r12, -32($r29)
	sw	$r16, -36($r29)
	sw	$r14, -40($r29)
	addi	$r4, $r2, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561008	! callcls
	j	.mendoi1.561007	! callcls
.mendoi2.561008:	! callcls
	jr	$r27	! callcls
.mendoi1.561007:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 8($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561009
	j	.beq_cont.561010
.beq_else.561009:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561012	! callcls
	j	.mendoi1.561011	! callcls
.mendoi2.561012:	! callcls
	jr	$r27	! callcls
.mendoi1.561011:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 12($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561013
	j	.beq_cont.561014
.beq_else.561013:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561016	! callcls
	j	.mendoi1.561015	! callcls
.mendoi2.561016:	! callcls
	jr	$r27	! callcls
.mendoi1.561015:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 16($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561017
	j	.beq_cont.561018
.beq_else.561017:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561020	! callcls
	j	.mendoi1.561019	! callcls
.mendoi2.561020:	! callcls
	jr	$r27	! callcls
.mendoi1.561019:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 20($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561021
	j	.beq_cont.561022
.beq_else.561021:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561024	! callcls
	j	.mendoi1.561023	! callcls
.mendoi2.561024:	! callcls
	jr	$r27	! callcls
.mendoi1.561023:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 24($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561025
	j	.beq_cont.561026
.beq_else.561025:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -4($r29)
	lw	$r5, -12($r29)
	lw	$r28, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561028	! callcls
	j	.mendoi1.561027	! callcls
.mendoi2.561028:	! callcls
	jr	$r27	! callcls
.mendoi1.561027:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -40($r29)
	lw	$r4, -12($r29)
	lw	$r28, -24($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561030	! callcls
	j	.mendoi1.561029	! callcls
.mendoi2.561030:	! callcls
	jr	$r27	! callcls
.mendoi1.561029:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.561026:
.beq_cont.561022:
.beq_cont.561018:
.beq_cont.561014:
.beq_cont.561010:
.beq_cont.561006:
	j	.beq_cont.561004
.beq_else.561003:
	sll	$r17, $r15, 2
	addu	$r1, $r11, $r17
	lw	$r11, 0($r1)
	lw	$r17, 40($r11)
	lwcl	$f0, 0($r17)
	addi	$r18, $r0, 1
	lwcl	$f2, 4($r17)
	addi	$r19, $r0, 2
	lwcl	$f4, 8($r17)
	lw	$r20, 4($r2)
	sll	$r15, $r15, 2
	addu	$r1, $r20, $r15
	lw	$r15, 0($r1)
	lw	$r20, 4($r11)
	sw	$r8, -24($r29)
	sw	$r9, -28($r29)
	sw	$r12, -32($r29)
	sw	$r16, -36($r29)
	sw	$r14, -40($r29)
	sw	$r7, -44($r29)
	bne	$r20, $r18, .beq_else.561031
	lw	$r5, 0($r2)
	addi	$r4, $r15, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561034	! callcls
	j	.mendoi1.561033	! callcls
.mendoi2.561034:	! callcls
	jr	$r27	! callcls
.mendoi1.561033:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	j	.beq_cont.561032
.beq_else.561031:
	bne	$r20, $r19, .beq_else.561035
	lwcl	$f0, 0($r15)
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.561037
	addi	$r5, $r0, 0
	j	.bclt_cont.561038
.bclt_else.561037:
	addi	$r5, $r0, 1
.bclt_cont.561038:
	bne	$r5, $r13, .beq_else.561039
	addi	$r2, $r0, 0
	j	.beq_cont.561040
.beq_else.561039:
	lwcl	$f0, 0($r15)
	lwcl	$f2, 12($r17)
	mul.s	$f0, $f0, $f2
	swcl	$f0, 0($r7)
	addi	$r2, $r0, 1
.beq_cont.561040:
	j	.beq_cont.561036
.beq_else.561035:
	addi	$r4, $r17, 0	! g'_args
	addi	$r3, $r15, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561042	! callcls
	j	.mendoi1.561041	! callcls
.mendoi2.561042:	! callcls
	jr	$r27	! callcls
.mendoi1.561041:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.561036:
.beq_cont.561032:
	lw	$r3, -4($r29)
	bne	$r2, $r3, .beq_else.561043
	j	.beq_cont.561044
.beq_else.561043:
	lw	$r2, -44($r29)
	lwcl	$f0, 0($r2)
	lw	$r2, -8($r29)
	lwcl	$f2, 0($r2)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561045
	addi	$r4, $r0, 0
	j	.bclt_cont.561046
.bclt_else.561045:
	addi	$r4, $r0, 1
.bclt_cont.561046:
	bne	$r4, $r3, .beq_else.561047
	j	.beq_cont.561048
.beq_else.561047:
	lw	$r4, -40($r29)
	lw	$r5, 4($r4)
	lw	$r6, -36($r29)
	bne	$r5, $r6, .beq_else.561049
	j	.beq_cont.561050
.beq_else.561049:
	sll	$r5, $r5, 2
	lw	$r7, -32($r29)
	addu	$r1, $r7, $r5
	lw	$r5, 0($r1)
	lw	$r8, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r8, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561052	! callcls
	j	.mendoi1.561051	! callcls
.mendoi2.561052:	! callcls
	jr	$r27	! callcls
.mendoi1.561051:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 8($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561053
	j	.beq_cont.561054
.beq_else.561053:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561056	! callcls
	j	.mendoi1.561055	! callcls
.mendoi2.561056:	! callcls
	jr	$r27	! callcls
.mendoi1.561055:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 12($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561057
	j	.beq_cont.561058
.beq_else.561057:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561060	! callcls
	j	.mendoi1.561059	! callcls
.mendoi2.561060:	! callcls
	jr	$r27	! callcls
.mendoi1.561059:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 16($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561061
	j	.beq_cont.561062
.beq_else.561061:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561064	! callcls
	j	.mendoi1.561063	! callcls
.mendoi2.561064:	! callcls
	jr	$r27	! callcls
.mendoi1.561063:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 20($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561065
	j	.beq_cont.561066
.beq_else.561065:
	sll	$r3, $r3, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r6, -4($r29)
	lw	$r7, -12($r29)
	lw	$r28, -28($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561068	! callcls
	j	.mendoi1.561067	! callcls
.mendoi2.561068:	! callcls
	jr	$r27	! callcls
.mendoi1.561067:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lw	$r2, -40($r29)
	lw	$r3, 24($r2)
	lw	$r4, -36($r29)
	bne	$r3, $r4, .beq_else.561069
	j	.beq_cont.561070
.beq_else.561069:
	sll	$r3, $r3, 2
	lw	$r4, -32($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -4($r29)
	lw	$r5, -12($r29)
	lw	$r28, -28($r29)
	addi	$r2, $r4, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561072	! callcls
	j	.mendoi1.561071	! callcls
.mendoi2.561072:	! callcls
	jr	$r27	! callcls
.mendoi1.561071:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	addi	$r2, $r0, 7
	lw	$r3, -40($r29)
	lw	$r4, -12($r29)
	lw	$r28, -24($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561074	! callcls
	j	.mendoi1.561073	! callcls
.mendoi2.561074:	! callcls
	jr	$r27	! callcls
.mendoi1.561073:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.561070:
.beq_cont.561066:
.beq_cont.561062:
.beq_cont.561058:
.beq_cont.561054:
.beq_cont.561050:
.beq_cont.561048:
.beq_cont.561044:
.beq_cont.561004:
	addi	$r2, $r0, 1
	lw	$r3, -16($r29)
	lw	$r4, -12($r29)
	lw	$r28, -20($r29)
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561076	! callcls
	j	.mendoi1.561075	! callcls
.mendoi2.561076:	! callcls
	jr	$r27	! callcls
.mendoi1.561075:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.561002:
	lw	$r2, -8($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.561077
	addi	$r2, $r0, 0
	j	.bclt_cont.561078
.bclt_else.561077:
	addi	$r2, $r0, 1
.bclt_cont.561078:
	lw	$r3, -4($r29)
	bne	$r2, $r3, .beq_else.561079
	addi	$r2, $r0, 0
	jr	$r31
.beq_else.561079:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.561080
	addi	$r2, $r0, 0
	jr	$r31
.bclt_else.561080:
	addi	$r2, $r0, 1
	jr	$r31
.get_nvector_second.3217:
	lw	$r3, 8($r28)
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	lwcl	$f0, 0($r4)
	lw	$r6, 20($r2)
	lwcl	$f2, 0($r6)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lw	$r6, 20($r2)
	lwcl	$f4, 4($r6)
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
	bne	$r4, $r5, .beq_else.561081
	swcl	$f6, 0($r3)
	swcl	$f8, 4($r3)
	swcl	$f10, 8($r3)
	j	.beq_cont.561082
.beq_else.561081:
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
	mul.s	$f4, $f4, $f14
	add.s	$f4, $f8, $f4
	swcl	$f4, 4($r3)
	lw	$r4, 36($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f0, $f0, $f4
	lw	$r4, 36($r2)
	lwcl	$f4, 0($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	mul.s	$f0, $f0, $f14
	add.s	$f0, $f10, $f0
	swcl	$f0, 8($r3)
.beq_cont.561082:
	lw	$r2, 24($r2)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	j	.vecunit_sgn.2925	! calldir-tail
.utexture.3222:
	lw	$r4, 4($r28)
	lw	$r5, 0($r2)
	addi	$r6, $r0, 0
	lw	$r7, 32($r2)
	lwcl	$f0, 0($r7)
	swcl	$f0, 0($r4)
	addi	$r7, $r0, 1
	lw	$r8, 32($r2)
	lwcl	$f0, 4($r8)
	swcl	$f0, 4($r4)
	addi	$r8, $r0, 2
	lw	$r9, 32($r2)
	lwcl	$f0, 8($r9)
	swcl	$f0, 8($r4)
	bne	$r5, $r7, .beq_else.561083
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lfh	$f2, 15692
	lfl	$f2, 52429
	mul.s	$f4, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r6, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lfh	$f2, 16800
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lwcl	$f4, -24($r29)
	sub.s	$f0, $f4, $f0
	lfh	$f4, 16672
	lfl	$f4, 0
	c.le.s	$f4, $f0
	bclf	.bclt_else.561084
	addi	$r2, $r0, 0
	j	.bclt_cont.561085
.bclt_else.561084:
	addi	$r2, $r0, 1
.bclt_cont.561085:
	lw	$r3, -20($r29)
	lwcl	$f0, 8($r3)
	lw	$r3, -16($r29)
	lw	$r3, 20($r3)
	lwcl	$f6, 8($r3)
	sub.s	$f0, $f0, $f6
	lwcl	$f6, -12($r29)
	mul.s	$f6, $f0, $f6
	sw	$r2, -28($r29)
	swcl	$f4, -32($r29)
	swcl	$f0, -36($r29)
	swcl	$f2, -40($r29)
	fmove	$f0, $f6	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f2, -40($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -36($r29)
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -32($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561086
	addi	$r2, $r0, 0
	j	.bclt_cont.561087
.bclt_else.561086:
	addi	$r2, $r0, 1
.bclt_cont.561087:
	lw	$r3, -8($r29)
	lw	$r4, -28($r29)
	bne	$r4, $r3, .beq_else.561088
	bne	$r2, $r3, .beq_else.561090
	lfh	$f0, 17279
	lfl	$f0, 0
	j	.beq_cont.561091
.beq_else.561090:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.561091:
	j	.beq_cont.561089
.beq_else.561088:
	bne	$r2, $r3, .beq_else.561092
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.561093
.beq_else.561092:
	lfh	$f0, 17279
	lfl	$f0, 0
.beq_cont.561093:
.beq_cont.561089:
	lw	$r2, -4($r29)
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.561083:
	bne	$r5, $r8, .beq_else.561095
	lwcl	$f0, 4($r3)
	lfh	$f2, 16000
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	mul.s	$f0, $f0, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f4, $f2, $f0
	lw	$r2, -4($r29)
	swcl	$f4, 0($r2)
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f2, $f0
	swcl	$f0, 4($r2)
	jr	$r31
.beq_else.561095:
	addi	$r7, $r0, 3
	bne	$r5, $r7, .beq_else.561097
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
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lfh	$f2, 16672
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	swcl	$f0, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 16457
	lfl	$f2, 4059
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	mul.s	$f0, $f0, $f0
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f4, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f4, 4($r2)
	lfh	$f4, 16256
	lfl	$f4, 0
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f0, $f2
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.561097:
	addi	$r7, $r0, 4
	bne	$r5, $r7, .beq_else.561099
	lwcl	$f0, 0($r3)
	lw	$r5, 20($r2)
	lwcl	$f2, 0($r5)
	sub.s	$f0, $f0, $f2
	lw	$r5, 16($r2)
	lwcl	$f2, 0($r5)
	sw	$r4, -4($r29)
	sw	$r6, -8($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	swcl	$f0, -48($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f2, -48($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	lwcl	$f2, 8($r2)
	lw	$r3, -16($r29)
	lw	$r4, 20($r3)
	lwcl	$f4, 8($r4)
	sub.s	$f2, $f2, $f4
	lw	$r4, 16($r3)
	lwcl	$f4, 8($r4)
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
	lwcl	$f2, -52($r29)
	mul.s	$f4, $f2, $f2
	mul.s	$f6, $f0, $f0
	add.s	$f4, $f4, $f6
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f6, $f2
	bclf	.bclt_else.561100
	fmove	$f8, $f2
	j	.bclt_cont.561101
.bclt_else.561100:
	fneg	$f8, $f2
.bclt_cont.561101:
	lfh	$f10, 14545
	lfl	$f10, 46871
	c.le.s	$f10, $f8
	bclf	.bclt_else.561102
	addi	$r2, $r0, 0
	j	.bclt_cont.561103
.bclt_else.561102:
	addi	$r2, $r0, 1
.bclt_cont.561103:
	lw	$r3, -8($r29)
	swcl	$f10, -60($r29)
	swcl	$f4, -64($r29)
	swcl	$f6, -68($r29)
	bne	$r2, $r3, .beq_else.561104
	div.s	$f0, $f0, $f2
	c.le.s	$f6, $f0
	bclf	.bclt_else.561106
	j	.bclt_cont.561107
.bclt_else.561106:
	fneg	$f0, $f0
.bclt_cont.561107:
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.561108
	lfh	$f8, 49024
	lfl	$f8, 0
	c.le.s	$f8, $f0
	bclf	.bclt_else.561110
	addi	$r2, $r0, 0
	j	.bclt_cont.561111
.bclt_else.561110:
	addi	$r2, $r0, -1
.bclt_cont.561111:
	j	.bclt_cont.561109
.bclt_else.561108:
	addi	$r2, $r0, 1
.bclt_cont.561109:
	bne	$r2, $r3, .beq_else.561112
	j	.beq_cont.561113
.beq_else.561112:
	div.s	$f0, $f2, $f0
.beq_cont.561113:
	mul.s	$f8, $f0, $f0
	lfh	$f12, 17138
	lfl	$f12, 0
	mul.s	$f12, $f12, $f8
	lfh	$f14, 16824
	lfl	$f14, 0
	div.s	$f12, $f12, $f14
	lfh	$f14, 16656
	lfl	$f14, 0
	lfh	$f16, 17096
	lfl	$f16, 0
	mul.s	$f16, $f16, $f8
	lfh	$f18, 16808
	lfl	$f18, 0
	add.s	$f12, $f18, $f12
	div.s	$f12, $f16, $f12
	sw	$r2, -72($r29)
	swcl	$f0, -76($r29)
	swcl	$f2, -80($r29)
	fmove	$f4, $f12	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f14	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.atan_sub.2808	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f2, -80($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -76($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lw	$r3, -72($r29)
	bgt	$r3, $r2, .ble_else.561114
	bgt	$r2, $r3, .ble_else.561116
	j	.ble_cont.561117
.ble_else.561116:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
.ble_cont.561117:
	j	.ble_cont.561115
.ble_else.561114:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
.ble_cont.561115:
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.561105
.beq_else.561104:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.561105:
	swcl	$f0, -84($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	lwcl	$f2, 4($r2)
	lw	$r2, -16($r29)
	lw	$r3, 20($r2)
	lwcl	$f4, 4($r3)
	sub.s	$f2, $f2, $f4
	lw	$r2, 16($r2)
	lwcl	$f4, 4($r2)
	swcl	$f0, -88($r29)
	swcl	$f2, -92($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f2, -92($r29)
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -64($r29)
	lwcl	$f4, -68($r29)
	c.le.s	$f4, $f2
	bclf	.bclt_else.561118
	fmove	$f6, $f2
	j	.bclt_cont.561119
.bclt_else.561118:
	fneg	$f6, $f2
.bclt_cont.561119:
	lwcl	$f8, -60($r29)
	c.le.s	$f8, $f6
	bclf	.bclt_else.561120
	addi	$r2, $r0, 0
	j	.bclt_cont.561121
.bclt_else.561120:
	addi	$r2, $r0, 1
.bclt_cont.561121:
	lw	$r3, -8($r29)
	bne	$r2, $r3, .beq_else.561122
	div.s	$f0, $f0, $f2
	c.le.s	$f4, $f0
	bclf	.bclt_else.561124
	j	.bclt_cont.561125
.bclt_else.561124:
	fneg	$f0, $f0
.bclt_cont.561125:
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.561126
	lfh	$f6, 49024
	lfl	$f6, 0
	c.le.s	$f6, $f0
	bclf	.bclt_else.561128
	addi	$r2, $r0, 0
	j	.bclt_cont.561129
.bclt_else.561128:
	addi	$r2, $r0, -1
.bclt_cont.561129:
	j	.bclt_cont.561127
.bclt_else.561126:
	addi	$r2, $r0, 1
.bclt_cont.561127:
	bne	$r2, $r3, .beq_else.561130
	j	.beq_cont.561131
.beq_else.561130:
	div.s	$f0, $f2, $f0
.beq_cont.561131:
	mul.s	$f6, $f0, $f0
	lfh	$f8, 17138
	lfl	$f8, 0
	mul.s	$f8, $f8, $f6
	lfh	$f10, 16824
	lfl	$f10, 0
	div.s	$f8, $f8, $f10
	lfh	$f10, 16656
	lfl	$f10, 0
	lfh	$f12, 17096
	lfl	$f12, 0
	mul.s	$f12, $f12, $f6
	lfh	$f14, 16808
	lfl	$f14, 0
	add.s	$f8, $f14, $f8
	div.s	$f8, $f12, $f8
	sw	$r2, -96($r29)
	swcl	$f0, -100($r29)
	swcl	$f2, -104($r29)
	fmove	$f4, $f8	! g'_args
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f10	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.atan_sub.2808	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lwcl	$f2, -104($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -100($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -8($r29)
	lw	$r3, -96($r29)
	bgt	$r3, $r2, .ble_else.561132
	bgt	$r2, $r3, .ble_else.561134
	j	.ble_cont.561135
.ble_else.561134:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
.ble_cont.561135:
	j	.ble_cont.561133
.ble_else.561132:
	lfh	$f2, 16329
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
.ble_cont.561133:
	lfh	$f2, 16880
	lfl	$f2, 0
	mul.s	$f0, $f0, $f2
	lfh	$f2, 16457
	lfl	$f2, 4059
	div.s	$f0, $f0, $f2
	j	.beq_cont.561123
.beq_else.561122:
	lfh	$f0, 16752
	lfl	$f0, 0
.beq_cont.561123:
	swcl	$f0, -108($r29)
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_floor	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lwcl	$f2, -108($r29)
	sub.s	$f0, $f2, $f0
	lfh	$f2, 15897
	lfl	$f2, 39322
	lfh	$f4, 16128
	lfl	$f4, 0
	lwcl	$f6, -88($r29)
	sub.s	$f6, $f4, $f6
	mul.s	$f6, $f6, $f6
	sub.s	$f2, $f2, $f6
	sub.s	$f0, $f4, $f0
	mul.s	$f0, $f0, $f0
	sub.s	$f0, $f2, $f0
	lwcl	$f2, -68($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561136
	addi	$r2, $r0, 0
	j	.bclt_cont.561137
.bclt_else.561136:
	addi	$r2, $r0, 1
.bclt_cont.561137:
	lw	$r3, -8($r29)
	bne	$r2, $r3, .beq_else.561138
	j	.beq_cont.561139
.beq_else.561138:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.561139:
	lfh	$f2, 17279
	lfl	$f2, 0
	mul.s	$f0, $f2, $f0
	lfh	$f2, 16025
	lfl	$f2, 39322
	div.s	$f0, $f0, $f2
	lw	$r2, -4($r29)
	swcl	$f0, 8($r2)
	jr	$r31
.beq_else.561099:
	jr	$r31
.trace_reflections.3229:
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
	bgt	$r14, $r2, .ble_else.561142
	sll	$r15, $r2, 2
	addu	$r1, $r9, $r15
	lw	$r9, 0($r1)
	lw	$r15, 4($r9)
	lfh	$f4, 20078
	lfl	$f4, 27432
	swcl	$f4, 0($r5)
	lw	$r16, 0($r10)
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f2, -12($r29)
	sw	$r6, -16($r29)
	sw	$r8, -20($r29)
	sw	$r3, -24($r29)
	swcl	$f0, -28($r29)
	sw	$r11, -32($r29)
	sw	$r15, -36($r29)
	sw	$r7, -40($r29)
	sw	$r10, -44($r29)
	sw	$r9, -48($r29)
	sw	$r12, -52($r29)
	sw	$r13, -56($r29)
	sw	$r14, -60($r29)
	sw	$r5, -64($r29)
	addi	$r3, $r16, 0	! g'_args
	addi	$r2, $r14, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r15, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.561144	! callcls
	j	.mendoi1.561143	! callcls
.mendoi2.561144:	! callcls
	jr	$r27	! callcls
.mendoi1.561143:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.561145
	addi	$r2, $r0, 0
	j	.bclt_cont.561146
.bclt_else.561145:
	addi	$r2, $r0, 1
.bclt_cont.561146:
	lw	$r3, -60($r29)
	bne	$r2, $r3, .beq_else.561147
	addi	$r2, $r0, 0
	j	.beq_cont.561148
.beq_else.561147:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.561149
	addi	$r2, $r0, 0
	j	.bclt_cont.561150
.bclt_else.561149:
	addi	$r2, $r0, 1
.bclt_cont.561150:
.beq_cont.561148:
	bne	$r2, $r3, .beq_else.561151
	j	.beq_cont.561152
.beq_else.561151:
	lw	$r2, -56($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r4, -52($r29)
	lw	$r4, 0($r4)
	addu	$r2, $r2, $r4
	lw	$r4, -48($r29)
	lw	$r5, 0($r4)
	bne	$r2, $r5, .beq_else.561153
	lw	$r2, -44($r29)
	lw	$r2, 0($r2)
	lw	$r28, -40($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.561156	! callcls
	j	.mendoi1.561155	! callcls
.mendoi2.561156:	! callcls
	jr	$r27	! callcls
.mendoi1.561155:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r3, -60($r29)
	bne	$r2, $r3, .beq_else.561157
	lw	$r2, -36($r29)
	lw	$r4, 0($r2)
	lw	$r5, -32($r29)
	lwcl	$f0, 0($r5)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r5)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r5)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lw	$r4, -48($r29)
	lwcl	$f2, 8($r4)
	lwcl	$f4, -28($r29)
	mul.s	$f6, $f2, $f4
	mul.s	$f0, $f6, $f0
	lw	$r2, 0($r2)
	lw	$r4, -24($r29)
	lwcl	$f6, 0($r4)
	lwcl	$f8, 0($r2)
	mul.s	$f6, $f6, $f8
	lwcl	$f8, 4($r4)
	lwcl	$f10, 4($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	lwcl	$f8, 8($r4)
	lwcl	$f10, 8($r2)
	mul.s	$f8, $f8, $f10
	add.s	$f6, $f6, $f8
	mul.s	$f2, $f2, $f6
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f0, $f6
	bclf	.bclt_else.561159
	addi	$r2, $r0, 0
	j	.bclt_cont.561160
.bclt_else.561159:
	addi	$r2, $r0, 1
.bclt_cont.561160:
	bne	$r2, $r3, .beq_else.561161
	j	.beq_cont.561162
.beq_else.561161:
	lw	$r2, -20($r29)
	lwcl	$f8, 0($r2)
	lw	$r5, -16($r29)
	lwcl	$f10, 0($r5)
	mul.s	$f10, $f0, $f10
	add.s	$f8, $f8, $f10
	swcl	$f8, 0($r2)
	lwcl	$f8, 4($r2)
	lwcl	$f10, 4($r5)
	mul.s	$f10, $f0, $f10
	add.s	$f8, $f8, $f10
	swcl	$f8, 4($r2)
	lwcl	$f8, 8($r2)
	lwcl	$f10, 8($r5)
	mul.s	$f0, $f0, $f10
	add.s	$f0, $f8, $f0
	swcl	$f0, 8($r2)
.beq_cont.561162:
	c.le.s	$f2, $f6
	bclf	.bclt_else.561163
	addi	$r2, $r0, 0
	j	.bclt_cont.561164
.bclt_else.561163:
	addi	$r2, $r0, 1
.bclt_cont.561164:
	bne	$r2, $r3, .beq_else.561165
	j	.beq_cont.561166
.beq_else.561165:
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
.beq_cont.561166:
	j	.beq_cont.561158
.beq_else.561157:
.beq_cont.561158:
	j	.beq_cont.561154
.beq_else.561153:
.beq_cont.561154:
.beq_cont.561152:
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lwcl	$f0, -28($r29)
	lwcl	$f2, -12($r29)
	lw	$r3, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561142:
	jr	$r31
.trace_ray.3234:
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
	bgt	$r2, $r26, .ble_else.561168
	lw	$r27, 8($r4)
	sw	$r28, -4($r29)
	addi	$r28, $r0, 0
	lfh	$f4, 20078
	lfl	$f4, 27432
	swcl	$f4, 0($r8)
	sw	$r26, -8($r29)
	lw	$r26, 0($r15)
	swcl	$f2, -12($r29)
	sw	$r6, -16($r29)
	sw	$r18, -20($r29)
	sw	$r13, -24($r29)
	sw	$r19, -28($r29)
	sw	$r10, -32($r29)
	sw	$r12, -36($r29)
	sw	$r15, -40($r29)
	sw	$r9, -44($r29)
	sw	$r4, -48($r29)
	sw	$r5, -52($r29)
	sw	$r11, -56($r29)
	sw	$r22, -60($r29)
	sw	$r24, -64($r29)
	sw	$r17, -68($r29)
	sw	$r21, -72($r29)
	sw	$r16, -76($r29)
	sw	$r23, -80($r29)
	sw	$r14, -84($r29)
	sw	$r25, -88($r29)
	swcl	$f0, -92($r29)
	sw	$r20, -96($r29)
	sw	$r3, -100($r29)
	sw	$r27, -104($r29)
	sw	$r2, -108($r29)
	sw	$r28, -112($r29)
	sw	$r8, -116($r29)
	addi	$r4, $r3, 0	! g'_args
	addi	$r2, $r28, 0	! g'_args
	addi	$r3, $r26, 0	! g'_args
	addi	$r28, $r7, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561170	! callcls
	j	.mendoi1.561169	! callcls
.mendoi2.561170:	! callcls
	jr	$r27	! callcls
.mendoi1.561169:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	lw	$r2, -116($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.561171
	addi	$r3, $r0, 0
	j	.bclt_cont.561172
.bclt_else.561171:
	addi	$r3, $r0, 1
.bclt_cont.561172:
	lw	$r4, -112($r29)
	bne	$r3, $r4, .beq_else.561173
	addi	$r3, $r0, 0
	j	.beq_cont.561174
.beq_else.561173:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.561175
	addi	$r3, $r0, 0
	j	.bclt_cont.561176
.bclt_else.561175:
	addi	$r3, $r0, 1
.bclt_cont.561176:
.beq_cont.561174:
	bne	$r3, $r4, .beq_else.561177
	addi	$r2, $r0, -1
	lw	$r3, -108($r29)
	sll	$r5, $r3, 2
	lw	$r6, -104($r29)
	addu	$r1, $r6, $r5
	sw	$r2, 0($r1)
	bne	$r3, $r4, .beq_else.561178
	jr	$r31
.beq_else.561178:
	lw	$r2, -100($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -96($r29)
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
	bclf	.bclt_else.561180
	addi	$r2, $r0, 0
	j	.bclt_cont.561181
.bclt_else.561180:
	addi	$r2, $r0, 1
.bclt_cont.561181:
	bne	$r2, $r4, .beq_else.561182
	jr	$r31
.beq_else.561182:
	mul.s	$f2, $f0, $f0
	mul.s	$f0, $f2, $f0
	lwcl	$f2, -92($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -88($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f0, $f0, $f2
	lw	$r2, -84($r29)
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
.beq_else.561177:
	lw	$r3, -80($r29)
	lw	$r3, 0($r3)
	sll	$r5, $r3, 2
	lw	$r6, -76($r29)
	addu	$r1, $r6, $r5
	lw	$r5, 0($r1)
	lw	$r6, 8($r5)
	lw	$r7, 28($r5)
	lwcl	$f0, 0($r7)
	lwcl	$f2, -92($r29)
	mul.s	$f0, $f0, $f2
	lw	$r7, 4($r5)
	addi	$r8, $r0, 1
	sw	$r6, -120($r29)
	swcl	$f0, -124($r29)
	sw	$r8, -128($r29)
	sw	$r3, -132($r29)
	sw	$r5, -136($r29)
	bne	$r7, $r8, .beq_else.561185
	lw	$r7, -72($r29)
	lw	$r9, 0($r7)
	lfh	$f4, 0
	lfl	$f4, 0
	lw	$r10, -68($r29)
	swcl	$f4, 0($r10)
	swcl	$f4, 4($r10)
	swcl	$f4, 8($r10)
	addi	$r9, $r9, -1
	sll	$r11, $r9, 2
	lw	$r12, -100($r29)
	addu	$r1, $r12, $r11
	lwcl	$f6, 0($r1)
	c.eq.s	$f6, $f4
	bclf	.bclt_else.561187
	addi	$r11, $r0, 1
	j	.bclt_cont.561188
.bclt_else.561187:
	addi	$r11, $r0, 0
.bclt_cont.561188:
	bne	$r11, $r4, .beq_else.561189
	c.le.s	$f6, $f4
	bclf	.bclt_else.561191
	addi	$r11, $r0, 0
	j	.bclt_cont.561192
.bclt_else.561191:
	addi	$r11, $r0, 1
.bclt_cont.561192:
	bne	$r11, $r4, .beq_else.561193
	lfh	$f4, 49024
	lfl	$f4, 0
	j	.beq_cont.561194
.beq_else.561193:
	lfh	$f4, 16256
	lfl	$f4, 0
.beq_cont.561194:
	j	.beq_cont.561190
.beq_else.561189:
	lfh	$f4, 0
	lfl	$f4, 0
.beq_cont.561190:
	fneg	$f4, $f4
	sll	$r9, $r9, 2
	addu	$r1, $r10, $r9
	swcl	$f4, 0($r1)
	j	.beq_cont.561186
.beq_else.561185:
	addi	$r9, $r0, 2
	bne	$r7, $r9, .beq_else.561195
	lw	$r7, 16($r5)
	lwcl	$f4, 0($r7)
	fneg	$f4, $f4
	lw	$r7, -68($r29)
	swcl	$f4, 0($r7)
	lw	$r9, 16($r5)
	lwcl	$f4, 4($r9)
	fneg	$f4, $f4
	swcl	$f4, 4($r7)
	lw	$r9, 16($r5)
	lwcl	$f4, 8($r9)
	fneg	$f4, $f4
	swcl	$f4, 8($r7)
	j	.beq_cont.561196
.beq_else.561195:
	lw	$r28, -64($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -140($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -140	! callcls
	jal	.mendoi2.561198	! callcls
	j	.mendoi1.561197	! callcls
.mendoi2.561198:	! callcls
	jr	$r27	! callcls
.mendoi1.561197:	! callcls
	addi	$r29, $r29, 140	! callcls
	lw	$r31, -140($r29)	! callcls
.beq_cont.561196:
.beq_cont.561186:
	lw	$r3, -60($r29)
	lwcl	$f0, 0($r3)
	lw	$r2, -56($r29)
	swcl	$f0, 0($r2)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r2)
	addi	$r4, $r0, 2
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r2)
	lw	$r2, -136($r29)
	lw	$r28, -52($r29)
	sw	$r4, -140($r29)
	sw	$r31, -144($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -144	! callcls
	jal	.mendoi2.561200	! callcls
	j	.mendoi1.561199	! callcls
.mendoi2.561200:	! callcls
	jr	$r27	! callcls
.mendoi1.561199:	! callcls
	addi	$r29, $r29, 144	! callcls
	lw	$r31, -144($r29)	! callcls
	lw	$r2, -132($r29)
	sll	$r2, $r2, 2
	lw	$r3, -72($r29)
	lw	$r3, 0($r3)
	addu	$r2, $r2, $r3
	lw	$r3, -108($r29)
	sll	$r4, $r3, 2
	lw	$r5, -104($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	lw	$r2, -48($r29)
	lw	$r4, 4($r2)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	lw	$r6, -60($r29)
	lwcl	$f0, 0($r6)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r6)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r6)
	swcl	$f0, 8($r4)
	lw	$r4, 12($r2)
	lw	$r7, -136($r29)
	lw	$r8, 28($r7)
	lwcl	$f0, 0($r8)
	lfh	$f2, 16128
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.561201
	addi	$r8, $r0, 0
	j	.bclt_cont.561202
.bclt_else.561201:
	addi	$r8, $r0, 1
.bclt_cont.561202:
	lw	$r9, -112($r29)
	bne	$r8, $r9, .beq_else.561203
	sll	$r8, $r3, 2
	lw	$r10, -128($r29)
	addu	$r1, $r4, $r8
	sw	$r10, 0($r1)
	lw	$r4, 16($r2)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	lw	$r8, 0($r1)
	lw	$r10, -44($r29)
	lwcl	$f0, 0($r10)
	swcl	$f0, 0($r8)
	lwcl	$f0, 4($r10)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r10)
	swcl	$f0, 8($r8)
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	lw	$r4, 0($r1)
	lfh	$f0, 15232
	lfl	$f0, 0
	lwcl	$f2, -124($r29)
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
	lw	$r8, -68($r29)
	lwcl	$f0, 0($r8)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r8)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r8)
	swcl	$f0, 8($r4)
	j	.beq_cont.561204
.beq_else.561203:
	sll	$r8, $r3, 2
	addu	$r1, $r4, $r8
	sw	$r9, 0($r1)
.beq_cont.561204:
	lfh	$f0, 49152
	lfl	$f0, 0
	lw	$r4, -100($r29)
	lwcl	$f2, 0($r4)
	lw	$r8, -68($r29)
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
	lw	$r10, 28($r7)
	lwcl	$f0, 4($r10)
	lwcl	$f2, -92($r29)
	mul.s	$f0, $f2, $f0
	lw	$r10, -40($r29)
	lw	$r10, 0($r10)
	lw	$r28, -36($r29)
	swcl	$f0, -144($r29)
	addi	$r3, $r10, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	sw	$r31, -148($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -148	! callcls
	jal	.mendoi2.561206	! callcls
	j	.mendoi1.561205	! callcls
.mendoi2.561206:	! callcls
	jr	$r27	! callcls
.mendoi1.561205:	! callcls
	addi	$r29, $r29, 148	! callcls
	lw	$r31, -148($r29)	! callcls
	lw	$r3, -112($r29)
	bne	$r2, $r3, .beq_else.561207
	lw	$r2, -68($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -96($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	lwcl	$f2, -124($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -100($r29)
	lwcl	$f4, 0($r2)
	lwcl	$f6, 0($r4)
	mul.s	$f4, $f4, $f6
	lwcl	$f6, 4($r2)
	lwcl	$f8, 4($r4)
	mul.s	$f6, $f6, $f8
	add.s	$f4, $f4, $f6
	lwcl	$f6, 8($r2)
	lwcl	$f8, 8($r4)
	mul.s	$f6, $f6, $f8
	add.s	$f4, $f4, $f6
	fneg	$f4, $f4
	lfh	$f6, 0
	lfl	$f6, 0
	c.le.s	$f0, $f6
	bclf	.bclt_else.561209
	addi	$r4, $r0, 0
	j	.bclt_cont.561210
.bclt_else.561209:
	addi	$r4, $r0, 1
.bclt_cont.561210:
	bne	$r4, $r3, .beq_else.561211
	j	.beq_cont.561212
.beq_else.561211:
	lw	$r4, -84($r29)
	lwcl	$f8, 0($r4)
	lw	$r5, -44($r29)
	lwcl	$f10, 0($r5)
	mul.s	$f10, $f0, $f10
	add.s	$f8, $f8, $f10
	swcl	$f8, 0($r4)
	lwcl	$f8, 4($r4)
	lwcl	$f10, 4($r5)
	mul.s	$f10, $f0, $f10
	add.s	$f8, $f8, $f10
	swcl	$f8, 4($r4)
	lwcl	$f8, 8($r4)
	lwcl	$f10, 8($r5)
	mul.s	$f0, $f0, $f10
	add.s	$f0, $f8, $f0
	swcl	$f0, 8($r4)
.beq_cont.561212:
	c.le.s	$f4, $f6
	bclf	.bclt_else.561213
	addi	$r4, $r0, 0
	j	.bclt_cont.561214
.bclt_else.561213:
	addi	$r4, $r0, 1
.bclt_cont.561214:
	bne	$r4, $r3, .beq_else.561215
	j	.beq_cont.561216
.beq_else.561215:
	mul.s	$f0, $f4, $f4
	mul.s	$f0, $f0, $f0
	lwcl	$f4, -144($r29)
	mul.s	$f0, $f0, $f4
	lw	$r4, -84($r29)
	lwcl	$f6, 0($r4)
	add.s	$f6, $f6, $f0
	swcl	$f6, 0($r4)
	lwcl	$f6, 4($r4)
	add.s	$f6, $f6, $f0
	swcl	$f6, 4($r4)
	lwcl	$f6, 8($r4)
	add.s	$f0, $f6, $f0
	swcl	$f0, 8($r4)
.beq_cont.561216:
	j	.beq_cont.561208
.beq_else.561207:
.beq_cont.561208:
	lw	$r2, -60($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -32($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r4)
	lw	$r4, -28($r29)
	lw	$r4, 0($r4)
	addi	$r4, $r4, -1
	lw	$r28, -24($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -148($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -148	! callcls
	jal	.mendoi2.561218	! callcls
	j	.mendoi1.561217	! callcls
.mendoi2.561218:	! callcls
	jr	$r27	! callcls
.mendoi1.561217:	! callcls
	addi	$r29, $r29, 148	! callcls
	lw	$r31, -148($r29)	! callcls
	lw	$r2, -20($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lwcl	$f0, -124($r29)
	lwcl	$f2, -144($r29)
	lw	$r3, -100($r29)
	lw	$r28, -16($r29)
	sw	$r31, -148($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -148	! callcls
	jal	.mendoi2.561220	! callcls
	j	.mendoi1.561219	! callcls
.mendoi2.561220:	! callcls
	jr	$r27	! callcls
.mendoi1.561219:	! callcls
	addi	$r29, $r29, 148	! callcls
	lw	$r31, -148($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -92($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561221
	addi	$r2, $r0, 0
	j	.bclt_cont.561222
.bclt_else.561221:
	addi	$r2, $r0, 1
.bclt_cont.561222:
	lw	$r3, -112($r29)
	bne	$r2, $r3, .beq_else.561223
	jr	$r31
.beq_else.561223:
	lw	$r2, -108($r29)
	lw	$r3, -8($r29)
	bgt	$r3, $r2, .ble_else.561225
	j	.ble_cont.561226
.ble_else.561225:
	addi	$r3, $r2, 1
	addi	$r4, $r0, -1
	sll	$r3, $r3, 2
	lw	$r5, -104($r29)
	addu	$r1, $r5, $r3
	sw	$r4, 0($r1)
.ble_cont.561226:
	lw	$r3, -140($r29)
	lw	$r4, -120($r29)
	bne	$r4, $r3, .beq_else.561227
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -136($r29)
	lw	$r3, 28($r3)
	lwcl	$f4, 0($r3)
	sub.s	$f0, $f0, $f4
	mul.s	$f0, $f2, $f0
	addi	$r2, $r2, 1
	lw	$r3, -116($r29)
	lwcl	$f2, 0($r3)
	lwcl	$f4, -12($r29)
	add.s	$f2, $f4, $f2
	lw	$r3, -100($r29)
	lw	$r4, -48($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.561227:
	jr	$r31
.ble_else.561168:
	jr	$r31
.trace_diffuse_ray.3240:
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
	addi	$r17, $r0, 0
	lfh	$f2, 20078
	lfl	$f2, 27432
	swcl	$f2, 0($r5)
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
	sw	$r17, -60($r29)
	sw	$r5, -64($r29)
	addi	$r3, $r18, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r2, 0	! g'_args
	addi	$r2, $r17, 0	! g'_args
	sw	$r31, -68($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -68	! callcls
	jal	.mendoi2.561231	! callcls
	j	.mendoi1.561230	! callcls
.mendoi2.561231:	! callcls
	jr	$r27	! callcls
.mendoi1.561230:	! callcls
	addi	$r29, $r29, 68	! callcls
	lw	$r31, -68($r29)	! callcls
	lw	$r2, -64($r29)
	lwcl	$f0, 0($r2)
	lfh	$f2, 48588
	lfl	$f2, 52429
	c.le.s	$f0, $f2
	bclf	.bclt_else.561232
	addi	$r2, $r0, 0
	j	.bclt_cont.561233
.bclt_else.561232:
	addi	$r2, $r0, 1
.bclt_cont.561233:
	lw	$r3, -60($r29)
	bne	$r2, $r3, .beq_else.561234
	addi	$r2, $r0, 0
	j	.beq_cont.561235
.beq_else.561234:
	lfh	$f2, 19646
	lfl	$f2, 48160
	c.le.s	$f2, $f0
	bclf	.bclt_else.561236
	addi	$r2, $r0, 0
	j	.bclt_cont.561237
.bclt_else.561236:
	addi	$r2, $r0, 1
.bclt_cont.561237:
.beq_cont.561235:
	bne	$r2, $r3, .beq_else.561238
	jr	$r31
.beq_else.561238:
	lw	$r2, -56($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r4, -52($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r4, -48($r29)
	lw	$r4, 0($r4)
	lw	$r5, 4($r2)
	addi	$r6, $r0, 1
	sw	$r2, -68($r29)
	bne	$r5, $r6, .beq_else.561240
	lw	$r5, -44($r29)
	lw	$r5, 0($r5)
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r6, -40($r29)
	swcl	$f0, 0($r6)
	swcl	$f0, 4($r6)
	swcl	$f0, 8($r6)
	addi	$r5, $r5, -1
	sll	$r7, $r5, 2
	addu	$r1, $r4, $r7
	lwcl	$f2, 0($r1)
	c.eq.s	$f2, $f0
	bclf	.bclt_else.561242
	addi	$r4, $r0, 1
	j	.bclt_cont.561243
.bclt_else.561242:
	addi	$r4, $r0, 0
.bclt_cont.561243:
	bne	$r4, $r3, .beq_else.561244
	c.le.s	$f2, $f0
	bclf	.bclt_else.561246
	addi	$r4, $r0, 0
	j	.bclt_cont.561247
.bclt_else.561246:
	addi	$r4, $r0, 1
.bclt_cont.561247:
	bne	$r4, $r3, .beq_else.561248
	lfh	$f0, 49024
	lfl	$f0, 0
	j	.beq_cont.561249
.beq_else.561248:
	lfh	$f0, 16256
	lfl	$f0, 0
.beq_cont.561249:
	j	.beq_cont.561245
.beq_else.561244:
	lfh	$f0, 0
	lfl	$f0, 0
.beq_cont.561245:
	fneg	$f0, $f0
	sll	$r4, $r5, 2
	addu	$r1, $r6, $r4
	swcl	$f0, 0($r1)
	j	.beq_cont.561241
.beq_else.561240:
	addi	$r4, $r0, 2
	bne	$r5, $r4, .beq_else.561250
	lw	$r4, 16($r2)
	lwcl	$f0, 0($r4)
	fneg	$f0, $f0
	lw	$r4, -40($r29)
	swcl	$f0, 0($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 4($r5)
	fneg	$f0, $f0
	swcl	$f0, 4($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 8($r5)
	fneg	$f0, $f0
	swcl	$f0, 8($r4)
	j	.beq_cont.561251
.beq_else.561250:
	lw	$r28, -36($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561253	! callcls
	j	.mendoi1.561252	! callcls
.mendoi2.561253:	! callcls
	jr	$r27	! callcls
.mendoi1.561252:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.561251:
.beq_cont.561241:
	lw	$r2, -68($r29)
	lw	$r3, -28($r29)
	lw	$r28, -32($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561255	! callcls
	j	.mendoi1.561254	! callcls
.mendoi2.561255:	! callcls
	jr	$r27	! callcls
.mendoi1.561254:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -24($r29)
	lw	$r3, 0($r2)
	lw	$r2, -60($r29)
	lw	$r28, -20($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561257	! callcls
	j	.mendoi1.561256	! callcls
.mendoi2.561257:	! callcls
	jr	$r27	! callcls
.mendoi1.561256:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r3, -60($r29)
	bne	$r2, $r3, .beq_else.561258
	lw	$r2, -40($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -16($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f0, $f2
	bclf	.bclt_else.561259
	addi	$r2, $r0, 0
	j	.bclt_cont.561260
.bclt_else.561259:
	addi	$r2, $r0, 1
.bclt_cont.561260:
	bne	$r2, $r3, .beq_else.561261
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.561262
.beq_else.561261:
.beq_cont.561262:
	lwcl	$f2, -12($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -68($r29)
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
.beq_else.561258:
	jr	$r31
.iter_trace_diffuse_rays.3243:
	lw	$r6, 56($r28)
	lw	$r7, 52($r28)
	lw	$r8, 48($r28)
	lw	$r9, 44($r28)
	lw	$r10, 40($r28)
	lw	$r11, 36($r28)
	lw	$r12, 32($r28)
	lw	$r13, 28($r28)
	lw	$r14, 24($r28)
	lw	$r15, 20($r28)
	lw	$r16, 16($r28)
	lw	$r17, 12($r28)
	lw	$r18, 8($r28)
	lw	$r19, 4($r28)
	addi	$r20, $r0, 0
	bgt	$r20, $r5, .ble_else.561265
	sll	$r21, $r5, 2
	addu	$r1, $r2, $r21
	lw	$r21, 0($r1)
	lw	$r21, 0($r21)
	lwcl	$f0, 0($r21)
	lwcl	$f2, 0($r3)
	mul.s	$f0, $f0, $f2
	addi	$r22, $r0, 1
	lwcl	$f2, 4($r21)
	lwcl	$f4, 4($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	addi	$r23, $r0, 2
	lwcl	$f2, 8($r21)
	lwcl	$f4, 8($r3)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lfh	$f2, 0
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.561266
	addi	$r21, $r0, 0
	j	.bclt_cont.561267
.bclt_else.561266:
	addi	$r21, $r0, 1
.bclt_cont.561267:
	sw	$r4, -4($r29)
	sw	$r28, -8($r29)
	sw	$r7, -12($r29)
	swcl	$f2, -16($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	sw	$r5, -28($r29)
	bne	$r21, $r20, .beq_else.561268
	sll	$r21, $r5, 2
	addu	$r1, $r2, $r21
	lw	$r21, 0($r1)
	lfh	$f4, 17174
	lfl	$f4, 0
	div.s	$f0, $f0, $f4
	sw	$r8, -32($r29)
	sw	$r19, -36($r29)
	swcl	$f0, -40($r29)
	sw	$r13, -44($r29)
	sw	$r9, -48($r29)
	sw	$r10, -52($r29)
	sw	$r16, -56($r29)
	sw	$r6, -60($r29)
	sw	$r18, -64($r29)
	sw	$r23, -68($r29)
	sw	$r12, -72($r29)
	sw	$r15, -76($r29)
	sw	$r22, -80($r29)
	sw	$r21, -84($r29)
	sw	$r11, -88($r29)
	sw	$r17, -92($r29)
	sw	$r20, -96($r29)
	addi	$r2, $r21, 0	! g'_args
	addi	$r28, $r14, 0	! g'_args
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.561271	! callcls
	j	.mendoi1.561270	! callcls
.mendoi2.561271:	! callcls
	jr	$r27	! callcls
.mendoi1.561270:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	lw	$r3, -96($r29)
	bne	$r2, $r3, .beq_else.561272
	j	.beq_cont.561273
.beq_else.561272:
	lw	$r2, -92($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r4, -88($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r4, -84($r29)
	lw	$r4, 0($r4)
	lw	$r5, 4($r2)
	lw	$r6, -80($r29)
	sw	$r2, -100($r29)
	bne	$r5, $r6, .beq_else.561274
	lw	$r5, -76($r29)
	lw	$r5, 0($r5)
	lw	$r6, -72($r29)
	lwcl	$f0, -16($r29)
	swcl	$f0, 0($r6)
	swcl	$f0, 4($r6)
	swcl	$f0, 8($r6)
	addi	$r5, $r5, -1
	sll	$r7, $r5, 2
	addu	$r1, $r4, $r7
	lwcl	$f2, 0($r1)
	c.eq.s	$f2, $f0
	bclf	.bclt_else.561276
	addi	$r4, $r0, 1
	j	.bclt_cont.561277
.bclt_else.561276:
	addi	$r4, $r0, 0
.bclt_cont.561277:
	bne	$r4, $r3, .beq_else.561278
	c.le.s	$f2, $f0
	bclf	.bclt_else.561280
	addi	$r4, $r0, 0
	j	.bclt_cont.561281
.bclt_else.561280:
	addi	$r4, $r0, 1
.bclt_cont.561281:
	bne	$r4, $r3, .beq_else.561282
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.561283
.beq_else.561282:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.561283:
	j	.beq_cont.561279
.beq_else.561278:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.561279:
	fneg	$f2, $f2
	sll	$r4, $r5, 2
	addu	$r1, $r6, $r4
	swcl	$f2, 0($r1)
	j	.beq_cont.561275
.beq_else.561274:
	lw	$r4, -68($r29)
	bne	$r5, $r4, .beq_else.561284
	lw	$r4, 16($r2)
	lwcl	$f0, 0($r4)
	fneg	$f0, $f0
	lw	$r4, -72($r29)
	swcl	$f0, 0($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 4($r5)
	fneg	$f0, $f0
	swcl	$f0, 4($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 8($r5)
	fneg	$f0, $f0
	swcl	$f0, 8($r4)
	j	.beq_cont.561285
.beq_else.561284:
	lw	$r28, -64($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561287	! callcls
	j	.mendoi1.561286	! callcls
.mendoi2.561287:	! callcls
	jr	$r27	! callcls
.mendoi1.561286:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
.beq_cont.561285:
.beq_cont.561275:
	lw	$r2, -100($r29)
	lw	$r3, -56($r29)
	lw	$r28, -60($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561289	! callcls
	j	.mendoi1.561288	! callcls
.mendoi2.561289:	! callcls
	jr	$r27	! callcls
.mendoi1.561288:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r3, 0($r2)
	lw	$r2, -96($r29)
	lw	$r28, -48($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561291	! callcls
	j	.mendoi1.561290	! callcls
.mendoi2.561291:	! callcls
	jr	$r27	! callcls
.mendoi1.561290:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	lw	$r3, -96($r29)
	bne	$r2, $r3, .beq_else.561292
	lw	$r2, -72($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -44($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.561294
	addi	$r2, $r0, 0
	j	.bclt_cont.561295
.bclt_else.561294:
	addi	$r2, $r0, 1
.bclt_cont.561295:
	bne	$r2, $r3, .beq_else.561296
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.561297
.beq_else.561296:
.beq_cont.561297:
	lwcl	$f4, -40($r29)
	mul.s	$f0, $f4, $f0
	lw	$r2, -100($r29)
	lw	$r2, 28($r2)
	lwcl	$f4, 0($r2)
	mul.s	$f0, $f0, $f4
	lw	$r2, -36($r29)
	lwcl	$f4, 0($r2)
	lw	$r4, -32($r29)
	lwcl	$f6, 0($r4)
	mul.s	$f6, $f0, $f6
	add.s	$f4, $f4, $f6
	swcl	$f4, 0($r2)
	lwcl	$f4, 4($r2)
	lwcl	$f6, 4($r4)
	mul.s	$f6, $f0, $f6
	add.s	$f4, $f4, $f6
	swcl	$f4, 4($r2)
	lwcl	$f4, 8($r2)
	lwcl	$f6, 8($r4)
	mul.s	$f0, $f0, $f6
	add.s	$f0, $f4, $f0
	swcl	$f0, 8($r2)
	j	.beq_cont.561293
.beq_else.561292:
.beq_cont.561293:
.beq_cont.561273:
	j	.beq_cont.561269
.beq_else.561268:
	addi	$r21, $r5, 1
	sll	$r21, $r21, 2
	addu	$r1, $r2, $r21
	lw	$r21, 0($r1)
	lfh	$f4, 49942
	lfl	$f4, 0
	div.s	$f0, $f0, $f4
	sw	$r8, -32($r29)
	sw	$r19, -36($r29)
	swcl	$f0, -104($r29)
	sw	$r13, -44($r29)
	sw	$r9, -48($r29)
	sw	$r10, -52($r29)
	sw	$r16, -56($r29)
	sw	$r6, -60($r29)
	sw	$r18, -64($r29)
	sw	$r23, -68($r29)
	sw	$r12, -72($r29)
	sw	$r15, -76($r29)
	sw	$r22, -80($r29)
	sw	$r21, -108($r29)
	sw	$r11, -88($r29)
	sw	$r17, -92($r29)
	sw	$r20, -96($r29)
	addi	$r2, $r21, 0	! g'_args
	addi	$r28, $r14, 0	! g'_args
	sw	$r31, -112($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -112	! callcls
	jal	.mendoi2.561299	! callcls
	j	.mendoi1.561298	! callcls
.mendoi2.561299:	! callcls
	jr	$r27	! callcls
.mendoi1.561298:	! callcls
	addi	$r29, $r29, 112	! callcls
	lw	$r31, -112($r29)	! callcls
	lw	$r3, -96($r29)
	bne	$r2, $r3, .beq_else.561300
	j	.beq_cont.561301
.beq_else.561300:
	lw	$r2, -92($r29)
	lw	$r2, 0($r2)
	sll	$r2, $r2, 2
	lw	$r4, -88($r29)
	addu	$r1, $r4, $r2
	lw	$r2, 0($r1)
	lw	$r4, -108($r29)
	lw	$r4, 0($r4)
	lw	$r5, 4($r2)
	lw	$r6, -80($r29)
	sw	$r2, -112($r29)
	bne	$r5, $r6, .beq_else.561302
	lw	$r5, -76($r29)
	lw	$r5, 0($r5)
	lw	$r6, -72($r29)
	lwcl	$f0, -16($r29)
	swcl	$f0, 0($r6)
	swcl	$f0, 4($r6)
	swcl	$f0, 8($r6)
	addi	$r5, $r5, -1
	sll	$r7, $r5, 2
	addu	$r1, $r4, $r7
	lwcl	$f2, 0($r1)
	c.eq.s	$f2, $f0
	bclf	.bclt_else.561304
	addi	$r4, $r0, 1
	j	.bclt_cont.561305
.bclt_else.561304:
	addi	$r4, $r0, 0
.bclt_cont.561305:
	bne	$r4, $r3, .beq_else.561306
	c.le.s	$f2, $f0
	bclf	.bclt_else.561308
	addi	$r4, $r0, 0
	j	.bclt_cont.561309
.bclt_else.561308:
	addi	$r4, $r0, 1
.bclt_cont.561309:
	bne	$r4, $r3, .beq_else.561310
	lfh	$f2, 49024
	lfl	$f2, 0
	j	.beq_cont.561311
.beq_else.561310:
	lfh	$f2, 16256
	lfl	$f2, 0
.beq_cont.561311:
	j	.beq_cont.561307
.beq_else.561306:
	lfh	$f2, 0
	lfl	$f2, 0
.beq_cont.561307:
	fneg	$f2, $f2
	sll	$r4, $r5, 2
	addu	$r1, $r6, $r4
	swcl	$f2, 0($r1)
	j	.beq_cont.561303
.beq_else.561302:
	lw	$r4, -68($r29)
	bne	$r5, $r4, .beq_else.561312
	lw	$r4, 16($r2)
	lwcl	$f0, 0($r4)
	fneg	$f0, $f0
	lw	$r4, -72($r29)
	swcl	$f0, 0($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 4($r5)
	fneg	$f0, $f0
	swcl	$f0, 4($r4)
	lw	$r5, 16($r2)
	lwcl	$f0, 8($r5)
	fneg	$f0, $f0
	swcl	$f0, 8($r4)
	j	.beq_cont.561313
.beq_else.561312:
	lw	$r28, -64($r29)
	sw	$r31, -116($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -116	! callcls
	jal	.mendoi2.561315	! callcls
	j	.mendoi1.561314	! callcls
.mendoi2.561315:	! callcls
	jr	$r27	! callcls
.mendoi1.561314:	! callcls
	addi	$r29, $r29, 116	! callcls
	lw	$r31, -116($r29)	! callcls
.beq_cont.561313:
.beq_cont.561303:
	lw	$r2, -112($r29)
	lw	$r3, -56($r29)
	lw	$r28, -60($r29)
	sw	$r31, -116($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -116	! callcls
	jal	.mendoi2.561317	! callcls
	j	.mendoi1.561316	! callcls
.mendoi2.561317:	! callcls
	jr	$r27	! callcls
.mendoi1.561316:	! callcls
	addi	$r29, $r29, 116	! callcls
	lw	$r31, -116($r29)	! callcls
	lw	$r2, -52($r29)
	lw	$r3, 0($r2)
	lw	$r2, -96($r29)
	lw	$r28, -48($r29)
	sw	$r31, -116($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -116	! callcls
	jal	.mendoi2.561319	! callcls
	j	.mendoi1.561318	! callcls
.mendoi2.561319:	! callcls
	jr	$r27	! callcls
.mendoi1.561318:	! callcls
	addi	$r29, $r29, 116	! callcls
	lw	$r31, -116($r29)	! callcls
	lw	$r3, -96($r29)
	bne	$r2, $r3, .beq_else.561320
	lw	$r2, -72($r29)
	lwcl	$f0, 0($r2)
	lw	$r4, -44($r29)
	lwcl	$f2, 0($r4)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	fneg	$f0, $f0
	lwcl	$f2, -16($r29)
	c.le.s	$f0, $f2
	bclf	.bclt_else.561322
	addi	$r2, $r0, 0
	j	.bclt_cont.561323
.bclt_else.561322:
	addi	$r2, $r0, 1
.bclt_cont.561323:
	bne	$r2, $r3, .beq_else.561324
	lfh	$f0, 0
	lfl	$f0, 0
	j	.beq_cont.561325
.beq_else.561324:
.beq_cont.561325:
	lwcl	$f4, -104($r29)
	mul.s	$f0, $f4, $f0
	lw	$r2, -112($r29)
	lw	$r2, 28($r2)
	lwcl	$f4, 0($r2)
	mul.s	$f0, $f0, $f4
	lw	$r2, -36($r29)
	lwcl	$f4, 0($r2)
	lw	$r4, -32($r29)
	lwcl	$f6, 0($r4)
	mul.s	$f6, $f0, $f6
	add.s	$f4, $f4, $f6
	swcl	$f4, 0($r2)
	lwcl	$f4, 4($r2)
	lwcl	$f6, 4($r4)
	mul.s	$f6, $f0, $f6
	add.s	$f4, $f4, $f6
	swcl	$f4, 4($r2)
	lwcl	$f4, 8($r2)
	lwcl	$f6, 8($r4)
	mul.s	$f0, $f0, $f6
	add.s	$f0, $f4, $f0
	swcl	$f0, 8($r2)
	j	.beq_cont.561321
.beq_else.561320:
.beq_cont.561321:
.beq_cont.561301:
.beq_cont.561269:
	lw	$r2, -28($r29)
	addi	$r2, $r2, -2
	bgt	$r3, $r2, .ble_else.561326
	sll	$r4, $r2, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	lwcl	$f0, 0($r4)
	lw	$r6, -20($r29)
	lwcl	$f2, 0($r6)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, 4($r4)
	lwcl	$f4, 4($r6)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, 8($r4)
	lwcl	$f4, 8($r6)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	lwcl	$f2, -16($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561327
	addi	$r4, $r0, 0
	j	.bclt_cont.561328
.bclt_else.561327:
	addi	$r4, $r0, 1
.bclt_cont.561328:
	sw	$r2, -116($r29)
	bne	$r4, $r3, .beq_else.561329
	sll	$r3, $r2, 2
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561332	! callcls
	j	.mendoi1.561331	! callcls
.mendoi2.561332:	! callcls
	jr	$r27	! callcls
.mendoi1.561331:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	j	.beq_cont.561330
.beq_else.561329:
	addi	$r3, $r2, 1
	sll	$r3, $r3, 2
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561334	! callcls
	j	.mendoi1.561333	! callcls
.mendoi2.561334:	! callcls
	jr	$r27	! callcls
.mendoi1.561333:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
.beq_cont.561330:
	lw	$r2, -116($r29)
	addi	$r5, $r2, -2
	lw	$r2, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561326:
	jr	$r31
.ble_else.561265:
	jr	$r31
.trace_diffuse_ray_80percent.3252:
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
	bne	$r2, $r10, .beq_else.561337
	j	.beq_cont.561338
.beq_else.561337:
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
	jal	.mendoi2.561340	! callcls
	j	.mendoi1.561339	! callcls
.mendoi2.561340:	! callcls
	jr	$r27	! callcls
.mendoi1.561339:	! callcls
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
	jal	.mendoi2.561342	! callcls
	j	.mendoi1.561341	! callcls
.mendoi2.561342:	! callcls
	jr	$r27	! callcls
.mendoi1.561341:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
.beq_cont.561338:
	addi	$r2, $r0, 1
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.561343
	j	.beq_cont.561344
.beq_else.561343:
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
	jal	.mendoi2.561346	! callcls
	j	.mendoi1.561345	! callcls
.mendoi2.561346:	! callcls
	jr	$r27	! callcls
.mendoi1.561345:	! callcls
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
	jal	.mendoi2.561348	! callcls
	j	.mendoi1.561347	! callcls
.mendoi2.561348:	! callcls
	jr	$r27	! callcls
.mendoi1.561347:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.561344:
	addi	$r2, $r0, 2
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.561349
	j	.beq_cont.561350
.beq_else.561349:
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
	jal	.mendoi2.561352	! callcls
	j	.mendoi1.561351	! callcls
.mendoi2.561352:	! callcls
	jr	$r27	! callcls
.mendoi1.561351:	! callcls
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
	jal	.mendoi2.561354	! callcls
	j	.mendoi1.561353	! callcls
.mendoi2.561354:	! callcls
	jr	$r27	! callcls
.mendoi1.561353:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
.beq_cont.561350:
	addi	$r2, $r0, 3
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.561355
	j	.beq_cont.561356
.beq_else.561355:
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
	jal	.mendoi2.561358	! callcls
	j	.mendoi1.561357	! callcls
.mendoi2.561358:	! callcls
	jr	$r27	! callcls
.mendoi1.561357:	! callcls
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
	jal	.mendoi2.561360	! callcls
	j	.mendoi1.561359	! callcls
.mendoi2.561360:	! callcls
	jr	$r27	! callcls
.mendoi1.561359:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.561356:
	addi	$r2, $r0, 4
	lw	$r3, -32($r29)
	bne	$r3, $r2, .beq_else.561361
	jr	$r31
.beq_else.561361:
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
	jal	.mendoi2.561364	! callcls
	j	.mendoi1.561363	! callcls
.mendoi2.561364:	! callcls
	jr	$r27	! callcls
.mendoi1.561363:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -52($r29)
	lw	$r3, -4($r29)
	lw	$r4, -24($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_diffuse_using_1point.3256:
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
	addi	$r16, $r0, 0
	lwcl	$f0, 0($r12)
	swcl	$f0, 0($r11)
	addi	$r17, $r0, 1
	lwcl	$f0, 4($r12)
	swcl	$f0, 4($r11)
	addi	$r18, $r0, 2
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
	sw	$r11, -4($r29)
	sw	$r7, -8($r29)
	sw	$r15, -12($r29)
	sw	$r3, -16($r29)
	sw	$r18, -20($r29)
	sw	$r9, -24($r29)
	sw	$r4, -28($r29)
	sw	$r16, -32($r29)
	sw	$r12, -36($r29)
	sw	$r6, -40($r29)
	sw	$r8, -44($r29)
	sw	$r5, -48($r29)
	sw	$r13, -52($r29)
	sw	$r10, -56($r29)
	sw	$r17, -60($r29)
	sw	$r2, -64($r29)
	bne	$r2, $r16, .beq_else.561365
	j	.beq_cont.561366
.beq_else.561365:
	lw	$r14, 0($r10)
	lwcl	$f0, 0($r13)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r13)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r13)
	swcl	$f0, 8($r5)
	lw	$r19, 0($r8)
	addi	$r19, $r19, -1
	sw	$r14, -68($r29)
	addi	$r3, $r19, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561368	! callcls
	j	.mendoi1.561367	! callcls
.mendoi2.561368:	! callcls
	jr	$r27	! callcls
.mendoi1.561367:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -68($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -36($r29)
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
	bclf	.bclt_else.561369
	addi	$r3, $r0, 0
	j	.bclt_cont.561370
.bclt_else.561369:
	addi	$r3, $r0, 1
.bclt_cont.561370:
	lw	$r5, -32($r29)
	bne	$r3, $r5, .beq_else.561371
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561374	! callcls
	j	.mendoi1.561373	! callcls
.mendoi2.561374:	! callcls
	jr	$r27	! callcls
.mendoi1.561373:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	j	.beq_cont.561372
.beq_else.561371:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561376	! callcls
	j	.mendoi1.561375	! callcls
.mendoi2.561376:	! callcls
	jr	$r27	! callcls
.mendoi1.561375:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.561372:
	addi	$r5, $r0, 116
	lw	$r2, -68($r29)
	lw	$r3, -36($r29)
	lw	$r4, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561378	! callcls
	j	.mendoi1.561377	! callcls
.mendoi2.561378:	! callcls
	jr	$r27	! callcls
.mendoi1.561377:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
.beq_cont.561366:
	lw	$r2, -60($r29)
	lw	$r3, -64($r29)
	bne	$r3, $r2, .beq_else.561379
	j	.beq_cont.561380
.beq_else.561379:
	lw	$r2, -56($r29)
	lw	$r4, 4($r2)
	lw	$r5, -52($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -48($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -44($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -40($r29)
	sw	$r4, -72($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561382	! callcls
	j	.mendoi1.561381	! callcls
.mendoi2.561382:	! callcls
	jr	$r27	! callcls
.mendoi1.561381:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	lw	$r2, -72($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -36($r29)
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
	bclf	.bclt_else.561383
	addi	$r3, $r0, 0
	j	.bclt_cont.561384
.bclt_else.561383:
	addi	$r3, $r0, 1
.bclt_cont.561384:
	lw	$r5, -32($r29)
	bne	$r3, $r5, .beq_else.561385
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561388	! callcls
	j	.mendoi1.561387	! callcls
.mendoi2.561388:	! callcls
	jr	$r27	! callcls
.mendoi1.561387:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.561386
.beq_else.561385:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561390	! callcls
	j	.mendoi1.561389	! callcls
.mendoi2.561390:	! callcls
	jr	$r27	! callcls
.mendoi1.561389:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.561386:
	addi	$r5, $r0, 116
	lw	$r2, -72($r29)
	lw	$r3, -36($r29)
	lw	$r4, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561392	! callcls
	j	.mendoi1.561391	! callcls
.mendoi2.561392:	! callcls
	jr	$r27	! callcls
.mendoi1.561391:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.561380:
	lw	$r2, -20($r29)
	lw	$r3, -64($r29)
	bne	$r3, $r2, .beq_else.561393
	j	.beq_cont.561394
.beq_else.561393:
	lw	$r2, -56($r29)
	lw	$r4, 8($r2)
	lw	$r5, -52($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -48($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -44($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -40($r29)
	sw	$r4, -76($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561396	! callcls
	j	.mendoi1.561395	! callcls
.mendoi2.561396:	! callcls
	jr	$r27	! callcls
.mendoi1.561395:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	lw	$r2, -76($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -36($r29)
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
	bclf	.bclt_else.561397
	addi	$r3, $r0, 0
	j	.bclt_cont.561398
.bclt_else.561397:
	addi	$r3, $r0, 1
.bclt_cont.561398:
	lw	$r5, -32($r29)
	bne	$r3, $r5, .beq_else.561399
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561402	! callcls
	j	.mendoi1.561401	! callcls
.mendoi2.561402:	! callcls
	jr	$r27	! callcls
.mendoi1.561401:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	j	.beq_cont.561400
.beq_else.561399:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561404	! callcls
	j	.mendoi1.561403	! callcls
.mendoi2.561404:	! callcls
	jr	$r27	! callcls
.mendoi1.561403:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
.beq_cont.561400:
	addi	$r5, $r0, 116
	lw	$r2, -76($r29)
	lw	$r3, -36($r29)
	lw	$r4, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561406	! callcls
	j	.mendoi1.561405	! callcls
.mendoi2.561406:	! callcls
	jr	$r27	! callcls
.mendoi1.561405:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
.beq_cont.561394:
	addi	$r2, $r0, 3
	lw	$r3, -64($r29)
	bne	$r3, $r2, .beq_else.561407
	j	.beq_cont.561408
.beq_else.561407:
	lw	$r2, -56($r29)
	lw	$r4, 12($r2)
	lw	$r5, -52($r29)
	lwcl	$f0, 0($r5)
	lw	$r6, -48($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r5)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r5)
	swcl	$f0, 8($r6)
	lw	$r7, -44($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	lw	$r28, -40($r29)
	sw	$r4, -80($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561410	! callcls
	j	.mendoi1.561409	! callcls
.mendoi2.561410:	! callcls
	jr	$r27	! callcls
.mendoi1.561409:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -36($r29)
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
	bclf	.bclt_else.561411
	addi	$r3, $r0, 0
	j	.bclt_cont.561412
.bclt_else.561411:
	addi	$r3, $r0, 1
.bclt_cont.561412:
	lw	$r5, -32($r29)
	bne	$r3, $r5, .beq_else.561413
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561416	! callcls
	j	.mendoi1.561415	! callcls
.mendoi2.561416:	! callcls
	jr	$r27	! callcls
.mendoi1.561415:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	j	.beq_cont.561414
.beq_else.561413:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561418	! callcls
	j	.mendoi1.561417	! callcls
.mendoi2.561418:	! callcls
	jr	$r27	! callcls
.mendoi1.561417:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
.beq_cont.561414:
	addi	$r5, $r0, 116
	lw	$r2, -80($r29)
	lw	$r3, -36($r29)
	lw	$r4, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561420	! callcls
	j	.mendoi1.561419	! callcls
.mendoi2.561420:	! callcls
	jr	$r27	! callcls
.mendoi1.561419:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
.beq_cont.561408:
	addi	$r2, $r0, 4
	lw	$r3, -64($r29)
	bne	$r3, $r2, .beq_else.561421
	j	.beq_cont.561422
.beq_else.561421:
	lw	$r2, -56($r29)
	lw	$r2, 16($r2)
	lw	$r3, -52($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -48($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r4)
	lw	$r4, -44($r29)
	lw	$r4, 0($r4)
	addi	$r4, $r4, -1
	lw	$r28, -40($r29)
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561424	! callcls
	j	.mendoi1.561423	! callcls
.mendoi2.561424:	! callcls
	jr	$r27	! callcls
.mendoi1.561423:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	lw	$r2, -84($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -36($r29)
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
	bclf	.bclt_else.561425
	addi	$r3, $r0, 0
	j	.bclt_cont.561426
.bclt_else.561425:
	addi	$r3, $r0, 1
.bclt_cont.561426:
	lw	$r5, -32($r29)
	bne	$r3, $r5, .beq_else.561427
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561430	! callcls
	j	.mendoi1.561429	! callcls
.mendoi2.561430:	! callcls
	jr	$r27	! callcls
.mendoi1.561429:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	j	.beq_cont.561428
.beq_else.561427:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561432	! callcls
	j	.mendoi1.561431	! callcls
.mendoi2.561432:	! callcls
	jr	$r27	! callcls
.mendoi1.561431:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
.beq_cont.561428:
	addi	$r5, $r0, 116
	lw	$r2, -84($r29)
	lw	$r3, -36($r29)
	lw	$r4, -52($r29)
	lw	$r28, -24($r29)
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561434	! callcls
	j	.mendoi1.561433	! callcls
.mendoi2.561434:	! callcls
	jr	$r27	! callcls
.mendoi1.561433:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
.beq_cont.561422:
	lw	$r2, -16($r29)
	sll	$r2, $r2, 2
	lw	$r3, -12($r29)
	addu	$r1, $r3, $r2
	lw	$r2, 0($r1)
	lw	$r3, -8($r29)
	lwcl	$f0, 0($r3)
	lwcl	$f2, 0($r2)
	lw	$r4, -4($r29)
	lwcl	$f4, 0($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r3)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r3)
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r4)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r3)
	jr	$r31
.calc_diffuse_using_5points.3259:
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
	lw	$r2, 0($r1)
	lwcl	$f0, 0($r7)
	lwcl	$f2, 0($r2)
	lwcl	$f4, 0($r8)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r7)
	lwcl	$f0, 4($r7)
	lwcl	$f2, 4($r2)
	lwcl	$f4, 4($r8)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r7)
	lwcl	$f0, 8($r7)
	lwcl	$f2, 8($r2)
	lwcl	$f4, 8($r8)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r7)
	jr	$r31
.do_without_neighbors.3265:
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 4
	bgt	$r3, $r8, .ble_else.561437
	lw	$r9, 8($r2)
	addi	$r10, $r0, 0
	sll	$r11, $r3, 2
	addu	$r1, $r9, $r11
	lw	$r9, 0($r1)
	bgt	$r10, $r9, .ble_else.561438
	lw	$r9, 12($r2)
	sll	$r11, $r3, 2
	addu	$r1, $r9, $r11
	lw	$r9, 0($r1)
	sw	$r28, -4($r29)
	sw	$r7, -8($r29)
	sw	$r10, -12($r29)
	sw	$r2, -16($r29)
	sw	$r8, -20($r29)
	sw	$r3, -24($r29)
	bne	$r9, $r10, .beq_else.561439
	j	.beq_cont.561440
.beq_else.561439:
	lw	$r9, 20($r2)
	lw	$r11, 28($r2)
	lw	$r12, 4($r2)
	lw	$r13, 16($r2)
	sll	$r14, $r3, 2
	addu	$r1, $r9, $r14
	lw	$r9, 0($r1)
	lwcl	$f0, 0($r9)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r9)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r9)
	swcl	$f0, 8($r6)
	lw	$r9, 24($r2)
	lw	$r9, 0($r9)
	sll	$r14, $r3, 2
	addu	$r1, $r11, $r14
	lw	$r11, 0($r1)
	sll	$r14, $r3, 2
	addu	$r1, $r12, $r14
	lw	$r12, 0($r1)
	sw	$r6, -28($r29)
	sw	$r5, -32($r29)
	sw	$r13, -36($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r9, 0	! g'_args
	addi	$r28, $r4, 0	! g'_args
	addi	$r4, $r12, 0	! g'_args
	sw	$r31, -40($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -40	! callcls
	jal	.mendoi2.561442	! callcls
	j	.mendoi1.561441	! callcls
.mendoi2.561442:	! callcls
	jr	$r27	! callcls
.mendoi1.561441:	! callcls
	addi	$r29, $r29, 40	! callcls
	lw	$r31, -40($r29)	! callcls
	lw	$r2, -24($r29)
	sll	$r3, $r2, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -32($r29)
	lwcl	$f0, 0($r4)
	lwcl	$f2, 0($r3)
	lw	$r5, -28($r29)
	lwcl	$f4, 0($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r4)
	lwcl	$f2, 4($r3)
	lwcl	$f4, 4($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r4)
	lwcl	$f2, 8($r3)
	lwcl	$f4, 8($r5)
	mul.s	$f2, $f2, $f4
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r4)
.beq_cont.561440:
	lw	$r2, -24($r29)
	addi	$r3, $r2, 1
	lw	$r2, -20($r29)
	bgt	$r3, $r2, .ble_else.561443
	lw	$r2, -16($r29)
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	lw	$r5, -12($r29)
	bgt	$r5, $r4, .ble_else.561444
	lw	$r4, 12($r2)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	sw	$r3, -40($r29)
	bne	$r4, $r5, .beq_else.561445
	j	.beq_cont.561446
.beq_else.561445:
	lw	$r28, -8($r29)
	sw	$r31, -44($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -44	! callcls
	jal	.mendoi2.561448	! callcls
	j	.mendoi1.561447	! callcls
.mendoi2.561448:	! callcls
	jr	$r27	! callcls
.mendoi1.561447:	! callcls
	addi	$r29, $r29, 44	! callcls
	lw	$r31, -44($r29)	! callcls
.beq_cont.561446:
	lw	$r2, -40($r29)
	addi	$r3, $r2, 1
	lw	$r2, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561444:
	jr	$r31
.ble_else.561443:
	jr	$r31
.ble_else.561438:
	jr	$r31
.ble_else.561437:
	jr	$r31
.try_exploit_neighbors.3281:
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	sll	$r11, $r2, 2
	addu	$r1, $r5, $r11
	lw	$r11, 0($r1)
	addi	$r12, $r0, 4
	bgt	$r7, $r12, .ble_else.561453
	addi	$r13, $r0, 0
	lw	$r14, 8($r11)
	sll	$r15, $r7, 2
	addu	$r1, $r14, $r15
	lw	$r14, 0($r1)
	bgt	$r13, $r14, .ble_else.561454
	sll	$r14, $r2, 2
	addu	$r1, $r5, $r14
	lw	$r14, 0($r1)
	lw	$r14, 8($r14)
	sll	$r15, $r7, 2
	addu	$r1, $r14, $r15
	lw	$r14, 0($r1)
	sll	$r15, $r2, 2
	addu	$r1, $r4, $r15
	lw	$r15, 0($r1)
	lw	$r15, 8($r15)
	sll	$r16, $r7, 2
	addu	$r1, $r15, $r16
	lw	$r15, 0($r1)
	bne	$r15, $r14, .beq_else.561455
	sll	$r15, $r2, 2
	addu	$r1, $r6, $r15
	lw	$r15, 0($r1)
	lw	$r15, 8($r15)
	sll	$r16, $r7, 2
	addu	$r1, $r15, $r16
	lw	$r15, 0($r1)
	bne	$r15, $r14, .beq_else.561457
	addi	$r15, $r2, -1
	sll	$r15, $r15, 2
	addu	$r1, $r5, $r15
	lw	$r15, 0($r1)
	lw	$r15, 8($r15)
	sll	$r16, $r7, 2
	addu	$r1, $r15, $r16
	lw	$r15, 0($r1)
	bne	$r15, $r14, .beq_else.561459
	addi	$r15, $r2, 1
	sll	$r15, $r15, 2
	addu	$r1, $r5, $r15
	lw	$r15, 0($r1)
	lw	$r15, 8($r15)
	sll	$r16, $r7, 2
	addu	$r1, $r15, $r16
	lw	$r15, 0($r1)
	bne	$r15, $r14, .beq_else.561461
	addi	$r14, $r0, 1
	j	.beq_cont.561462
.beq_else.561461:
	addi	$r14, $r0, 0
.beq_cont.561462:
	j	.beq_cont.561460
.beq_else.561459:
	addi	$r14, $r0, 0
.beq_cont.561460:
	j	.beq_cont.561458
.beq_else.561457:
	addi	$r14, $r0, 0
.beq_cont.561458:
	j	.beq_cont.561456
.beq_else.561455:
	addi	$r14, $r0, 0
.beq_cont.561456:
	bne	$r14, $r13, .beq_else.561463
	sll	$r2, $r2, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	bgt	$r7, $r12, .ble_else.561464
	lw	$r3, 8($r2)
	sll	$r4, $r7, 2
	addu	$r1, $r3, $r4
	lw	$r3, 0($r1)
	bgt	$r13, $r3, .ble_else.561465
	lw	$r3, 12($r2)
	sll	$r4, $r7, 2
	addu	$r1, $r3, $r4
	lw	$r3, 0($r1)
	sw	$r2, -4($r29)
	sw	$r8, -8($r29)
	sw	$r7, -12($r29)
	bne	$r3, $r13, .beq_else.561466
	j	.beq_cont.561467
.beq_else.561466:
	addi	$r3, $r7, 0	! g'_args
	addi	$r28, $r10, 0	! g'_args
	sw	$r31, -16($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -16	! callcls
	jal	.mendoi2.561469	! callcls
	j	.mendoi1.561468	! callcls
.mendoi2.561469:	! callcls
	jr	$r27	! callcls
.mendoi1.561468:	! callcls
	addi	$r29, $r29, 16	! callcls
	lw	$r31, -16($r29)	! callcls
.beq_cont.561467:
	lw	$r2, -12($r29)
	addi	$r3, $r2, 1
	lw	$r2, -4($r29)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561465:
	jr	$r31
.ble_else.561464:
	jr	$r31
.beq_else.561463:
	lw	$r10, 12($r11)
	sll	$r11, $r7, 2
	addu	$r1, $r10, $r11
	lw	$r10, 0($r1)
	sw	$r3, -16($r29)
	sw	$r28, -20($r29)
	sw	$r9, -24($r29)
	sw	$r8, -8($r29)
	sw	$r6, -28($r29)
	sw	$r4, -32($r29)
	sw	$r13, -36($r29)
	sw	$r12, -40($r29)
	sw	$r5, -44($r29)
	sw	$r2, -48($r29)
	sw	$r7, -12($r29)
	bne	$r10, $r13, .beq_else.561472
	j	.beq_cont.561473
.beq_else.561472:
	addi	$r3, $r4, 0	! g'_args
	addi	$r28, $r9, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r6, $r7, 0	! g'_args
	sw	$r31, -52($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -52	! callcls
	jal	.mendoi2.561475	! callcls
	j	.mendoi1.561474	! callcls
.mendoi2.561475:	! callcls
	jr	$r27	! callcls
.mendoi1.561474:	! callcls
	addi	$r29, $r29, 52	! callcls
	lw	$r31, -52($r29)	! callcls
.beq_cont.561473:
	lw	$r2, -12($r29)
	addi	$r3, $r2, 1
	lw	$r2, -48($r29)
	sll	$r4, $r2, 2
	lw	$r5, -44($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -40($r29)
	bgt	$r3, $r6, .ble_else.561476
	lw	$r6, 8($r4)
	sll	$r7, $r3, 2
	addu	$r1, $r6, $r7
	lw	$r6, 0($r1)
	lw	$r7, -36($r29)
	bgt	$r7, $r6, .ble_else.561477
	sll	$r6, $r2, 2
	addu	$r1, $r5, $r6
	lw	$r6, 0($r1)
	lw	$r6, 8($r6)
	sll	$r8, $r3, 2
	addu	$r1, $r6, $r8
	lw	$r6, 0($r1)
	sll	$r8, $r2, 2
	lw	$r9, -32($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r8, 8($r8)
	sll	$r10, $r3, 2
	addu	$r1, $r8, $r10
	lw	$r8, 0($r1)
	bne	$r8, $r6, .beq_else.561478
	sll	$r8, $r2, 2
	lw	$r10, -28($r29)
	addu	$r1, $r10, $r8
	lw	$r8, 0($r1)
	lw	$r8, 8($r8)
	sll	$r11, $r3, 2
	addu	$r1, $r8, $r11
	lw	$r8, 0($r1)
	bne	$r8, $r6, .beq_else.561480
	addi	$r8, $r2, -1
	sll	$r8, $r8, 2
	addu	$r1, $r5, $r8
	lw	$r8, 0($r1)
	lw	$r8, 8($r8)
	sll	$r11, $r3, 2
	addu	$r1, $r8, $r11
	lw	$r8, 0($r1)
	bne	$r8, $r6, .beq_else.561482
	addi	$r8, $r2, 1
	sll	$r8, $r8, 2
	addu	$r1, $r5, $r8
	lw	$r8, 0($r1)
	lw	$r8, 8($r8)
	sll	$r11, $r3, 2
	addu	$r1, $r8, $r11
	lw	$r8, 0($r1)
	bne	$r8, $r6, .beq_else.561484
	addi	$r6, $r0, 1
	j	.beq_cont.561485
.beq_else.561484:
	addi	$r6, $r0, 0
.beq_cont.561485:
	j	.beq_cont.561483
.beq_else.561482:
	addi	$r6, $r0, 0
.beq_cont.561483:
	j	.beq_cont.561481
.beq_else.561480:
	addi	$r6, $r0, 0
.beq_cont.561481:
	j	.beq_cont.561479
.beq_else.561478:
	addi	$r6, $r0, 0
.beq_cont.561479:
	bne	$r6, $r7, .beq_else.561486
	sll	$r2, $r2, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	lw	$r28, -8($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.beq_else.561486:
	lw	$r4, 12($r4)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	sw	$r3, -52($r29)
	bne	$r4, $r7, .beq_else.561487
	j	.beq_cont.561488
.beq_else.561487:
	lw	$r4, -28($r29)
	lw	$r28, -24($r29)
	addi	$r6, $r3, 0	! g'_args
	addi	$r3, $r9, 0	! g'_args
	addi	$r27, $r5, 0	! g'_args
	addi	$r5, $r4, 0	! g'_args
	addi	$r4, $r27, 0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.561490	! callcls
	j	.mendoi1.561489	! callcls
.mendoi2.561490:	! callcls
	jr	$r27	! callcls
.mendoi1.561489:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
.beq_cont.561488:
	lw	$r2, -52($r29)
	addi	$r7, $r2, 1
	lw	$r2, -48($r29)
	lw	$r3, -16($r29)
	lw	$r4, -32($r29)
	lw	$r5, -44($r29)
	lw	$r6, -28($r29)
	lw	$r28, -20($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561477:
	jr	$r31
.ble_else.561476:
	jr	$r31
.ble_else.561454:
	jr	$r31
.ble_else.561453:
	jr	$r31
.pretrace_diffuse_rays.3294:
	lw	$r4, 28($r28)
	lw	$r5, 24($r28)
	lw	$r6, 20($r28)
	lw	$r7, 16($r28)
	lw	$r8, 12($r28)
	lw	$r9, 8($r28)
	lw	$r10, 4($r28)
	addi	$r11, $r0, 4
	bgt	$r3, $r11, .ble_else.561495
	lw	$r12, 8($r2)
	sll	$r13, $r3, 2
	addu	$r1, $r12, $r13
	lw	$r12, 0($r1)
	addi	$r13, $r0, 0
	bgt	$r13, $r12, .ble_else.561496
	lw	$r12, 12($r2)
	sll	$r14, $r3, 2
	addu	$r1, $r12, $r14
	lw	$r12, 0($r1)
	sw	$r28, -4($r29)
	sw	$r8, -8($r29)
	sw	$r4, -12($r29)
	sw	$r6, -16($r29)
	sw	$r7, -20($r29)
	sw	$r5, -24($r29)
	sw	$r9, -28($r29)
	sw	$r10, -32($r29)
	sw	$r13, -36($r29)
	sw	$r11, -40($r29)
	sw	$r3, -44($r29)
	bne	$r12, $r13, .beq_else.561497
	j	.beq_cont.561498
.beq_else.561497:
	lw	$r12, 24($r2)
	lw	$r12, 0($r12)
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, 0($r10)
	swcl	$f0, 4($r10)
	swcl	$f0, 8($r10)
	lw	$r14, 28($r2)
	lw	$r15, 4($r2)
	sll	$r12, $r12, 2
	addu	$r1, $r9, $r12
	lw	$r12, 0($r1)
	sll	$r16, $r3, 2
	addu	$r1, $r14, $r16
	lw	$r14, 0($r1)
	sll	$r16, $r3, 2
	addu	$r1, $r15, $r16
	lw	$r15, 0($r1)
	lwcl	$f0, 0($r15)
	swcl	$f0, 0($r5)
	lwcl	$f0, 4($r15)
	swcl	$f0, 4($r5)
	lwcl	$f0, 8($r15)
	swcl	$f0, 8($r5)
	lw	$r16, 0($r7)
	addi	$r16, $r16, -1
	sw	$r2, -48($r29)
	sw	$r15, -52($r29)
	sw	$r14, -56($r29)
	sw	$r12, -60($r29)
	addi	$r3, $r16, 0	! g'_args
	addi	$r2, $r15, 0	! g'_args
	addi	$r28, $r6, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.561500	! callcls
	j	.mendoi1.561499	! callcls
.mendoi2.561500:	! callcls
	jr	$r27	! callcls
.mendoi1.561499:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	addi	$r5, $r0, 118
	lw	$r2, -60($r29)
	lw	$r3, -56($r29)
	lw	$r4, -52($r29)
	lw	$r28, -8($r29)
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.561502	! callcls
	j	.mendoi1.561501	! callcls
.mendoi2.561502:	! callcls
	jr	$r27	! callcls
.mendoi1.561501:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 20($r2)
	lw	$r4, -44($r29)
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
.beq_cont.561498:
	lw	$r3, -44($r29)
	addi	$r3, $r3, 1
	lw	$r4, -40($r29)
	bgt	$r3, $r4, .ble_else.561503
	lw	$r4, 8($r2)
	sll	$r5, $r3, 2
	addu	$r1, $r4, $r5
	lw	$r4, 0($r1)
	lw	$r5, -36($r29)
	bgt	$r5, $r4, .ble_else.561504
	lw	$r4, 12($r2)
	sll	$r6, $r3, 2
	addu	$r1, $r4, $r6
	lw	$r4, 0($r1)
	sw	$r3, -64($r29)
	bne	$r4, $r5, .beq_else.561505
	j	.beq_cont.561506
.beq_else.561505:
	lw	$r4, 24($r2)
	lw	$r4, 0($r4)
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r6, -32($r29)
	swcl	$f0, 0($r6)
	swcl	$f0, 4($r6)
	swcl	$f0, 8($r6)
	lw	$r7, 28($r2)
	lw	$r8, 4($r2)
	sll	$r4, $r4, 2
	lw	$r9, -28($r29)
	addu	$r1, $r9, $r4
	lw	$r4, 0($r1)
	sll	$r9, $r3, 2
	addu	$r1, $r7, $r9
	lw	$r7, 0($r1)
	sll	$r9, $r3, 2
	addu	$r1, $r8, $r9
	lw	$r8, 0($r1)
	lwcl	$f2, 0($r8)
	lw	$r9, -24($r29)
	swcl	$f2, 0($r9)
	lwcl	$f2, 4($r8)
	swcl	$f2, 4($r9)
	lwcl	$f2, 8($r8)
	swcl	$f2, 8($r9)
	lw	$r9, -20($r29)
	lw	$r9, 0($r9)
	addi	$r9, $r9, -1
	lw	$r28, -16($r29)
	sw	$r2, -48($r29)
	sw	$r8, -68($r29)
	swcl	$f0, -72($r29)
	sw	$r7, -76($r29)
	sw	$r4, -80($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561508	! callcls
	j	.mendoi1.561507	! callcls
.mendoi2.561508:	! callcls
	jr	$r27	! callcls
.mendoi1.561507:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -80($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -76($r29)
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
	lwcl	$f2, -72($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561509
	addi	$r3, $r0, 0
	j	.bclt_cont.561510
.bclt_else.561509:
	addi	$r3, $r0, 1
.bclt_cont.561510:
	lw	$r5, -36($r29)
	bne	$r3, $r5, .beq_else.561511
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561514	! callcls
	j	.mendoi1.561513	! callcls
.mendoi2.561514:	! callcls
	jr	$r27	! callcls
.mendoi1.561513:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	j	.beq_cont.561512
.beq_else.561511:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561516	! callcls
	j	.mendoi1.561515	! callcls
.mendoi2.561516:	! callcls
	jr	$r27	! callcls
.mendoi1.561515:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
.beq_cont.561512:
	addi	$r5, $r0, 116
	lw	$r2, -80($r29)
	lw	$r3, -76($r29)
	lw	$r4, -68($r29)
	lw	$r28, -8($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561518	! callcls
	j	.mendoi1.561517	! callcls
.mendoi2.561518:	! callcls
	jr	$r27	! callcls
.mendoi1.561517:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -48($r29)
	lw	$r3, 20($r2)
	lw	$r4, -64($r29)
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
.beq_cont.561506:
	lw	$r3, -64($r29)
	addi	$r3, $r3, 1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561504:
	jr	$r31
.ble_else.561503:
	jr	$r31
.ble_else.561496:
	jr	$r31
.ble_else.561495:
	jr	$r31
.pretrace_pixels.3297:
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
	bgt	$r21, $r3, .ble_else.561523
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
	sw	$r21, -68($r29)
	swcl	$f4, -72($r29)
	swcl	$f2, -76($r29)
	sw	$r14, -80($r29)
	swcl	$f0, -84($r29)
	sw	$r11, -88($r29)
	swcl	$f6, -92($r29)
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f2, -92($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -88($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f4, -84($r29)
	add.s	$f2, $f2, $f4
	lw	$r3, -80($r29)
	swcl	$f2, 0($r3)
	addi	$r4, $r0, 1
	lwcl	$f2, 4($r2)
	mul.s	$f2, $f0, $f2
	lwcl	$f6, -76($r29)
	add.s	$f2, $f2, $f6
	swcl	$f2, 4($r3)
	lwcl	$f2, 8($r2)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -72($r29)
	add.s	$f0, $f0, $f2
	swcl	$f0, 8($r3)
	lw	$r2, -68($r29)
	sw	$r4, -96($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.vecunit_sgn.2925	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lfh	$f2, 0
	lfl	$f2, 0
	lw	$r2, -64($r29)
	swcl	$f2, 0($r2)
	swcl	$f2, 4($r2)
	swcl	$f2, 8($r2)
	lw	$r3, -60($r29)
	lwcl	$f0, 0($r3)
	lw	$r4, -56($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, 4($r3)
	swcl	$f0, 4($r4)
	lwcl	$f0, 8($r3)
	swcl	$f0, 8($r4)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -68($r29)
	lw	$r7, -80($r29)
	lw	$r28, -44($r29)
	swcl	$f2, -100($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561525	! callcls
	j	.mendoi1.561524	! callcls
.mendoi2.561525:	! callcls
	jr	$r27	! callcls
.mendoi1.561524:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
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
	lw	$r7, -68($r29)
	bgt	$r7, $r6, .ble_else.561526
	lw	$r6, 12($r3)
	lw	$r6, 0($r6)
	sw	$r3, -104($r29)
	bne	$r6, $r7, .beq_else.561528
	j	.beq_cont.561529
.beq_else.561528:
	lw	$r6, 24($r3)
	lw	$r6, 0($r6)
	lw	$r8, -36($r29)
	lwcl	$f0, -100($r29)
	swcl	$f0, 0($r8)
	swcl	$f0, 4($r8)
	swcl	$f0, 8($r8)
	lw	$r9, 28($r3)
	lw	$r10, 4($r3)
	sll	$r6, $r6, 2
	lw	$r11, -32($r29)
	addu	$r1, $r11, $r6
	lw	$r6, 0($r1)
	lw	$r9, 0($r9)
	lw	$r10, 0($r10)
	lwcl	$f2, 0($r10)
	lw	$r11, -28($r29)
	swcl	$f2, 0($r11)
	lwcl	$f2, 4($r10)
	swcl	$f2, 4($r11)
	lwcl	$f2, 8($r10)
	swcl	$f2, 8($r11)
	lw	$r11, -24($r29)
	lw	$r11, 0($r11)
	addi	$r11, $r11, -1
	lw	$r28, -20($r29)
	sw	$r10, -108($r29)
	sw	$r9, -112($r29)
	sw	$r6, -116($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561531	! callcls
	j	.mendoi1.561530	! callcls
.mendoi2.561531:	! callcls
	jr	$r27	! callcls
.mendoi1.561530:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	lw	$r2, -116($r29)
	lw	$r3, 472($r2)
	lw	$r3, 0($r3)
	lwcl	$f0, 0($r3)
	lw	$r4, -112($r29)
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
	lwcl	$f2, -100($r29)
	c.le.s	$f2, $f0
	bclf	.bclt_else.561532
	addi	$r3, $r0, 0
	j	.bclt_cont.561533
.bclt_else.561532:
	addi	$r3, $r0, 1
.bclt_cont.561533:
	lw	$r5, -68($r29)
	bne	$r3, $r5, .beq_else.561534
	lw	$r3, 472($r2)
	lfh	$f2, 17174
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561537	! callcls
	j	.mendoi1.561536	! callcls
.mendoi2.561537:	! callcls
	jr	$r27	! callcls
.mendoi1.561536:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	j	.beq_cont.561535
.beq_else.561534:
	lw	$r3, 476($r2)
	lfh	$f2, 49942
	lfl	$f2, 0
	div.s	$f0, $f0, $f2
	lw	$r28, -16($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561539	! callcls
	j	.mendoi1.561538	! callcls
.mendoi2.561539:	! callcls
	jr	$r27	! callcls
.mendoi1.561538:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
.beq_cont.561535:
	addi	$r5, $r0, 116
	lw	$r2, -116($r29)
	lw	$r3, -112($r29)
	lw	$r4, -108($r29)
	lw	$r28, -12($r29)
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561541	! callcls
	j	.mendoi1.561540	! callcls
.mendoi2.561541:	! callcls
	jr	$r27	! callcls
.mendoi1.561540:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	lw	$r2, -104($r29)
	lw	$r3, 20($r2)
	lw	$r3, 0($r3)
	lw	$r4, -36($r29)
	lwcl	$f0, 0($r4)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r3)
.beq_cont.561529:
	lw	$r2, -104($r29)
	lw	$r3, -96($r29)
	lw	$r28, -8($r29)
	sw	$r31, -120($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -120	! callcls
	jal	.mendoi2.561543	! callcls
	j	.mendoi1.561542	! callcls
.mendoi2.561543:	! callcls
	jr	$r27	! callcls
.mendoi1.561542:	! callcls
	addi	$r29, $r29, 120	! callcls
	lw	$r31, -120($r29)	! callcls
	j	.ble_cont.561527
.ble_else.561526:
.ble_cont.561527:
	lw	$r2, -52($r29)
	addi	$r3, $r2, -1
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r2, .ble_else.561544
	addi	$r4, $r2, -5
	j	.ble_cont.561545
.ble_else.561544:
	addi	$r4, $r2, 0
.ble_cont.561545:
	lwcl	$f0, -84($r29)
	lwcl	$f2, -76($r29)
	lwcl	$f4, -72($r29)
	lw	$r2, -48($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561523:
	jr	$r31
.scan_pixel.3308:
	lw	$r7, 24($r28)
	lw	$r8, 20($r28)
	lw	$r9, 16($r28)
	lw	$r10, 12($r28)
	lw	$r11, 8($r28)
	lw	$r12, 4($r28)
	addi	$r13, $r0, 0
	lw	$r14, 0($r9)
	bgt	$r14, $r2, .ble_else.561547
	jr	$r31
.ble_else.561547:
	sll	$r14, $r2, 2
	addu	$r1, $r5, $r14
	lw	$r14, 0($r1)
	lw	$r14, 0($r14)
	lwcl	$f0, 0($r14)
	swcl	$f0, 0($r8)
	addi	$r15, $r0, 1
	lwcl	$f0, 4($r14)
	swcl	$f0, 4($r8)
	lwcl	$f0, 8($r14)
	swcl	$f0, 8($r8)
	lw	$r14, 4($r9)
	addi	$r16, $r3, 1
	bgt	$r14, $r16, .ble_else.561549
	addi	$r14, $r0, 0
	j	.ble_cont.561550
.ble_else.561549:
	bgt	$r3, $r13, .ble_else.561551
	addi	$r14, $r0, 0
	j	.ble_cont.561552
.ble_else.561551:
	lw	$r14, 0($r9)
	addi	$r17, $r2, 1
	bgt	$r14, $r17, .ble_else.561553
	addi	$r14, $r0, 0
	j	.ble_cont.561554
.ble_else.561553:
	bgt	$r2, $r13, .ble_else.561555
	addi	$r14, $r0, 0
	j	.ble_cont.561556
.ble_else.561555:
	addi	$r14, $r0, 1
.ble_cont.561556:
.ble_cont.561554:
.ble_cont.561552:
.ble_cont.561550:
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r4, -12($r29)
	sw	$r7, -16($r29)
	sw	$r10, -20($r29)
	sw	$r3, -24($r29)
	sw	$r16, -28($r29)
	sw	$r5, -32($r29)
	sw	$r9, -36($r29)
	sw	$r2, -40($r29)
	sw	$r13, -44($r29)
	sw	$r8, -48($r29)
	bne	$r14, $r13, .beq_else.561557
	sll	$r11, $r2, 2
	addu	$r1, $r5, $r11
	lw	$r11, 0($r1)
	lw	$r14, 8($r11)
	lw	$r14, 0($r14)
	bgt	$r13, $r14, .ble_else.561559
	lw	$r14, 12($r11)
	lw	$r14, 0($r14)
	sw	$r15, -52($r29)
	sw	$r11, -56($r29)
	bne	$r14, $r13, .beq_else.561561
	j	.beq_cont.561562
.beq_else.561561:
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r12, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561564	! callcls
	j	.mendoi1.561563	! callcls
.mendoi2.561564:	! callcls
	jr	$r27	! callcls
.mendoi1.561563:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.561562:
	lw	$r2, -56($r29)
	lw	$r3, -52($r29)
	lw	$r28, -20($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561566	! callcls
	j	.mendoi1.561565	! callcls
.mendoi2.561566:	! callcls
	jr	$r27	! callcls
.mendoi1.561565:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	j	.ble_cont.561560
.ble_else.561559:
.ble_cont.561560:
	j	.beq_cont.561558
.beq_else.561557:
	sll	$r12, $r2, 2
	addu	$r1, $r5, $r12
	lw	$r12, 0($r1)
	lw	$r14, 8($r12)
	lw	$r14, 0($r14)
	bgt	$r13, $r14, .ble_else.561567
	sll	$r14, $r2, 2
	addu	$r1, $r5, $r14
	lw	$r14, 0($r1)
	lw	$r14, 8($r14)
	lw	$r14, 0($r14)
	sll	$r17, $r2, 2
	addu	$r1, $r4, $r17
	lw	$r17, 0($r1)
	lw	$r17, 8($r17)
	lw	$r17, 0($r17)
	bne	$r17, $r14, .beq_else.561569
	sll	$r17, $r2, 2
	addu	$r1, $r6, $r17
	lw	$r17, 0($r1)
	lw	$r17, 8($r17)
	lw	$r17, 0($r17)
	bne	$r17, $r14, .beq_else.561571
	addi	$r17, $r2, -1
	sll	$r17, $r17, 2
	addu	$r1, $r5, $r17
	lw	$r17, 0($r1)
	lw	$r17, 8($r17)
	lw	$r17, 0($r17)
	bne	$r17, $r14, .beq_else.561573
	addi	$r17, $r2, 1
	sll	$r17, $r17, 2
	addu	$r1, $r5, $r17
	lw	$r17, 0($r1)
	lw	$r17, 8($r17)
	lw	$r17, 0($r17)
	bne	$r17, $r14, .beq_else.561575
	addi	$r14, $r0, 1
	j	.beq_cont.561576
.beq_else.561575:
	addi	$r14, $r0, 0
.beq_cont.561576:
	j	.beq_cont.561574
.beq_else.561573:
	addi	$r14, $r0, 0
.beq_cont.561574:
	j	.beq_cont.561572
.beq_else.561571:
	addi	$r14, $r0, 0
.beq_cont.561572:
	j	.beq_cont.561570
.beq_else.561569:
	addi	$r14, $r0, 0
.beq_cont.561570:
	bne	$r14, $r13, .beq_else.561577
	sll	$r11, $r2, 2
	addu	$r1, $r5, $r11
	lw	$r11, 0($r1)
	addi	$r3, $r13, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	addi	$r28, $r10, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561580	! callcls
	j	.mendoi1.561579	! callcls
.mendoi2.561580:	! callcls
	jr	$r27	! callcls
.mendoi1.561579:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	j	.beq_cont.561578
.beq_else.561577:
	lw	$r12, 12($r12)
	lw	$r12, 0($r12)
	sw	$r15, -52($r29)
	bne	$r12, $r13, .beq_else.561581
	j	.beq_cont.561582
.beq_else.561581:
	addi	$r3, $r4, 0	! g'_args
	addi	$r28, $r11, 0	! g'_args
	addi	$r4, $r5, 0	! g'_args
	addi	$r5, $r6, 0	! g'_args
	addi	$r6, $r13, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561584	! callcls
	j	.mendoi1.561583	! callcls
.mendoi2.561584:	! callcls
	jr	$r27	! callcls
.mendoi1.561583:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.561582:
	lw	$r2, -40($r29)
	lw	$r3, -24($r29)
	lw	$r4, -12($r29)
	lw	$r5, -32($r29)
	lw	$r6, -8($r29)
	lw	$r7, -52($r29)
	lw	$r28, -16($r29)
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561586	! callcls
	j	.mendoi1.561585	! callcls
.mendoi2.561586:	! callcls
	jr	$r27	! callcls
.mendoi1.561585:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
.beq_cont.561578:
	j	.ble_cont.561568
.ble_else.561567:
.ble_cont.561568:
.beq_cont.561558:
	lw	$r2, -48($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.561587
	lw	$r4, -44($r29)
	bgt	$r4, $r2, .ble_else.561589
	j	.ble_cont.561590
.ble_else.561589:
	addi	$r2, $r0, 0
.ble_cont.561590:
	j	.ble_cont.561588
.ble_else.561587:
	addi	$r2, $r0, 255
.ble_cont.561588:
	sw	$r3, -60($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	addi	$r2, $r0, 32
	sw	$r2, -64($r29)
	output	$r2
	lw	$r2, -48($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.561591
	lw	$r4, -44($r29)
	bgt	$r4, $r2, .ble_else.561593
	j	.ble_cont.561594
.ble_else.561593:
	addi	$r2, $r0, 0
.ble_cont.561594:
	j	.ble_cont.561592
.ble_else.561591:
	addi	$r2, $r0, 255
.ble_cont.561592:
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r2, -64($r29)
	output	$r2
	lw	$r2, -48($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.561595
	lw	$r4, -44($r29)
	bgt	$r4, $r2, .ble_else.561597
	j	.ble_cont.561598
.ble_else.561597:
	addi	$r2, $r0, 0
.ble_cont.561598:
	j	.ble_cont.561596
.ble_else.561595:
	addi	$r2, $r0, 255
.ble_cont.561596:
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r2, $r0, 10
	sw	$r2, -68($r29)
	output	$r2
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	lw	$r3, -36($r29)
	lw	$r4, 0($r3)
	bgt	$r4, $r2, .ble_else.561599
	jr	$r31
.ble_else.561599:
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	lwcl	$f0, 0($r4)
	lw	$r6, -48($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r6)
	lw	$r4, 4($r3)
	lw	$r7, -28($r29)
	bgt	$r4, $r7, .ble_else.561601
	addi	$r3, $r0, 0
	j	.ble_cont.561602
.ble_else.561601:
	lw	$r7, -44($r29)
	lw	$r4, -24($r29)
	bgt	$r4, $r7, .ble_else.561603
	addi	$r3, $r0, 0
	j	.ble_cont.561604
.ble_else.561603:
	lw	$r3, 0($r3)
	addi	$r8, $r2, 1
	bgt	$r3, $r8, .ble_else.561605
	addi	$r3, $r0, 0
	j	.ble_cont.561606
.ble_else.561605:
	bgt	$r2, $r7, .ble_else.561607
	addi	$r3, $r0, 0
	j	.ble_cont.561608
.ble_else.561607:
	addi	$r3, $r0, 1
.ble_cont.561608:
.ble_cont.561606:
.ble_cont.561604:
.ble_cont.561602:
	lw	$r7, -44($r29)
	sw	$r2, -72($r29)
	bne	$r3, $r7, .beq_else.561609
	sll	$r3, $r2, 2
	addu	$r1, $r5, $r3
	lw	$r3, 0($r1)
	lw	$r28, -20($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r7, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561612	! callcls
	j	.mendoi1.561611	! callcls
.mendoi2.561612:	! callcls
	jr	$r27	! callcls
.mendoi1.561611:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.beq_cont.561610
.beq_else.561609:
	lw	$r3, -24($r29)
	lw	$r4, -12($r29)
	lw	$r8, -8($r29)
	lw	$r28, -16($r29)
	addi	$r6, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561614	! callcls
	j	.mendoi1.561613	! callcls
.mendoi2.561614:	! callcls
	jr	$r27	! callcls
.mendoi1.561613:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.beq_cont.561610:
	lw	$r2, -48($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.561615
	lw	$r4, -44($r29)
	bgt	$r4, $r2, .ble_else.561617
	j	.ble_cont.561618
.ble_else.561617:
	addi	$r2, $r0, 0
.ble_cont.561618:
	j	.ble_cont.561616
.ble_else.561615:
	addi	$r2, $r0, 255
.ble_cont.561616:
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r2, -64($r29)
	output	$r2
	lw	$r2, -48($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.561619
	lw	$r4, -44($r29)
	bgt	$r4, $r2, .ble_else.561621
	j	.ble_cont.561622
.ble_else.561621:
	addi	$r2, $r0, 0
.ble_cont.561622:
	j	.ble_cont.561620
.ble_else.561619:
	addi	$r2, $r0, 255
.ble_cont.561620:
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r2, -64($r29)
	output	$r2
	lw	$r2, -48($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -60($r29)
	bgt	$r2, $r3, .ble_else.561623
	lw	$r3, -44($r29)
	bgt	$r3, $r2, .ble_else.561625
	j	.ble_cont.561626
.ble_else.561625:
	addi	$r2, $r0, 0
.ble_cont.561626:
	j	.ble_cont.561624
.ble_else.561623:
	addi	$r2, $r0, 255
.ble_cont.561624:
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r2, -68($r29)
	output	$r2
	lw	$r2, -72($r29)
	addi	$r2, $r2, 1
	lw	$r3, -24($r29)
	lw	$r4, -12($r29)
	lw	$r5, -32($r29)
	lw	$r6, -8($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.scan_line.3314:
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
	addi	$r17, $r0, 1
	lw	$r18, 4($r14)
	bgt	$r18, $r2, .ble_else.561627
	jr	$r31
.ble_else.561627:
	lw	$r18, 4($r14)
	addi	$r18, $r18, -1
	sw	$r28, -4($r29)
	sw	$r13, -8($r29)
	sw	$r8, -12($r29)
	sw	$r9, -16($r29)
	sw	$r15, -20($r29)
	sw	$r11, -24($r29)
	sw	$r6, -28($r29)
	sw	$r10, -32($r29)
	sw	$r5, -36($r29)
	sw	$r3, -40($r29)
	sw	$r7, -44($r29)
	sw	$r16, -48($r29)
	sw	$r17, -52($r29)
	sw	$r2, -56($r29)
	sw	$r12, -60($r29)
	sw	$r4, -64($r29)
	sw	$r14, -68($r29)
	bgt	$r18, $r2, .ble_else.561629
	j	.ble_cont.561630
.ble_else.561629:
	addi	$r18, $r2, 1
	lwcl	$f0, 0($r11)
	lw	$r19, 4($r15)
	subu	$r18, $r18, $r19
	swcl	$f0, -72($r29)
	addi	$r2, $r18, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f2, -72($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -16($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lw	$r3, -12($r29)
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
	lw	$r4, -68($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	lw	$r6, -36($r29)
	lw	$r7, -28($r29)
	lw	$r28, -8($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561632	! callcls
	j	.mendoi1.561631	! callcls
.mendoi2.561632:	! callcls
	jr	$r27	! callcls
.mendoi1.561631:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
.ble_cont.561630:
	addi	$r3, $r0, 0
	lw	$r2, -68($r29)
	lw	$r4, 0($r2)
	sw	$r3, -76($r29)
	bgt	$r4, $r3, .ble_else.561633
	j	.ble_cont.561634
.ble_else.561633:
	lw	$r5, -64($r29)
	lw	$r4, 0($r5)
	lw	$r4, 0($r4)
	lwcl	$f0, 0($r4)
	lw	$r6, -60($r29)
	swcl	$f0, 0($r6)
	lwcl	$f0, 4($r4)
	swcl	$f0, 4($r6)
	lwcl	$f0, 8($r4)
	swcl	$f0, 8($r6)
	lw	$r4, 4($r2)
	lw	$r7, -56($r29)
	addi	$r8, $r7, 1
	bgt	$r4, $r8, .ble_else.561635
	addi	$r4, $r0, 0
	j	.ble_cont.561636
.ble_else.561635:
	bgt	$r7, $r3, .ble_else.561637
	addi	$r4, $r0, 0
	j	.ble_cont.561638
.ble_else.561637:
	lw	$r4, 0($r2)
	lw	$r8, -52($r29)
	bgt	$r4, $r8, .ble_else.561639
	addi	$r4, $r0, 0
	j	.ble_cont.561640
.ble_else.561639:
	addi	$r4, $r0, 0
.ble_cont.561640:
.ble_cont.561638:
.ble_cont.561636:
	bne	$r4, $r3, .beq_else.561641
	lw	$r4, 0($r5)
	lw	$r28, -48($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561644	! callcls
	j	.mendoi1.561643	! callcls
.mendoi2.561644:	! callcls
	jr	$r27	! callcls
.mendoi1.561643:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
	j	.beq_cont.561642
.beq_else.561641:
	lw	$r4, -40($r29)
	lw	$r8, -36($r29)
	lw	$r28, -44($r29)
	addi	$r6, $r8, 0	! g'_args
	addi	$r2, $r3, 0	! g'_args
	addi	$r27, $r7, 0	! g'_args
	addi	$r7, $r3, 0	! g'_args
	addi	$r3, $r27, 0	! g'_args
	sw	$r31, -80($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -80	! callcls
	jal	.mendoi2.561646	! callcls
	j	.mendoi1.561645	! callcls
.mendoi2.561646:	! callcls
	jr	$r27	! callcls
.mendoi1.561645:	! callcls
	addi	$r29, $r29, 80	! callcls
	lw	$r31, -80($r29)	! callcls
.beq_cont.561642:
	lw	$r2, -60($r29)
	lwcl	$f0, 0($r2)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r0, 255
	bgt	$r2, $r3, .ble_else.561647
	lw	$r4, -76($r29)
	bgt	$r4, $r2, .ble_else.561649
	j	.ble_cont.561650
.ble_else.561649:
	addi	$r2, $r0, 0
.ble_cont.561650:
	j	.ble_cont.561648
.ble_else.561647:
	addi	$r2, $r0, 255
.ble_cont.561648:
	sw	$r3, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r2, $r0, 32
	sw	$r2, -84($r29)
	output	$r2
	lw	$r2, -60($r29)
	lwcl	$f0, 4($r2)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -80($r29)
	bgt	$r2, $r3, .ble_else.561651
	lw	$r4, -76($r29)
	bgt	$r4, $r2, .ble_else.561653
	j	.ble_cont.561654
.ble_else.561653:
	addi	$r2, $r0, 0
.ble_cont.561654:
	j	.ble_cont.561652
.ble_else.561651:
	addi	$r2, $r0, 255
.ble_cont.561652:
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r2, -84($r29)
	output	$r2
	lw	$r2, -60($r29)
	lwcl	$f0, 8($r2)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_int_of_float	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -80($r29)
	bgt	$r2, $r3, .ble_else.561655
	lw	$r3, -76($r29)
	bgt	$r3, $r2, .ble_else.561657
	j	.ble_cont.561658
.ble_else.561657:
	addi	$r2, $r0, 0
.ble_cont.561658:
	j	.ble_cont.561656
.ble_else.561655:
	addi	$r2, $r0, 255
.ble_cont.561656:
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	addi	$r2, $r0, 10
	output	$r2
	lw	$r2, -52($r29)
	lw	$r3, -56($r29)
	lw	$r4, -40($r29)
	lw	$r5, -64($r29)
	lw	$r6, -36($r29)
	lw	$r28, -32($r29)
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561660	! callcls
	j	.mendoi1.561659	! callcls
.mendoi2.561660:	! callcls
	jr	$r27	! callcls
.mendoi1.561659:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
.ble_cont.561634:
	lw	$r2, -56($r29)
	addi	$r3, $r2, 1
	lw	$r2, -28($r29)
	addi	$r2, $r2, 2
	addi	$r4, $r0, 5
	bgt	$r4, $r2, .ble_else.561661
	addi	$r2, $r2, -5
	j	.ble_cont.561662
.ble_else.561661:
.ble_cont.561662:
	lw	$r5, -68($r29)
	lw	$r6, 4($r5)
	bgt	$r6, $r3, .ble_else.561663
	jr	$r31
.ble_else.561663:
	lw	$r6, 4($r5)
	addi	$r6, $r6, -1
	sw	$r4, -88($r29)
	sw	$r2, -92($r29)
	sw	$r3, -96($r29)
	bgt	$r6, $r3, .ble_else.561665
	j	.ble_cont.561666
.ble_else.561665:
	addi	$r6, $r3, 1
	lw	$r7, -24($r29)
	lwcl	$f0, 0($r7)
	lw	$r7, -20($r29)
	lw	$r7, 4($r7)
	subu	$r6, $r6, $r7
	swcl	$f0, -100($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lwcl	$f2, -100($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -16($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lw	$r3, -12($r29)
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
	lw	$r2, -68($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r2, -40($r29)
	lw	$r4, -92($r29)
	lw	$r28, -8($r29)
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561668	! callcls
	j	.mendoi1.561667	! callcls
.mendoi2.561668:	! callcls
	jr	$r27	! callcls
.mendoi1.561667:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
.ble_cont.561666:
	lw	$r2, -76($r29)
	lw	$r3, -96($r29)
	lw	$r4, -64($r29)
	lw	$r5, -36($r29)
	lw	$r6, -40($r29)
	lw	$r28, -32($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561670	! callcls
	j	.mendoi1.561669	! callcls
.mendoi2.561670:	! callcls
	jr	$r27	! callcls
.mendoi1.561669:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	lw	$r2, -96($r29)
	addi	$r2, $r2, 1
	lw	$r3, -92($r29)
	addi	$r3, $r3, 2
	lw	$r4, -88($r29)
	bgt	$r4, $r3, .ble_else.561671
	addi	$r6, $r3, -5
	j	.ble_cont.561672
.ble_else.561671:
	addi	$r6, $r3, 0
.ble_cont.561672:
	lw	$r3, -36($r29)
	lw	$r4, -40($r29)
	lw	$r5, -64($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.create_pixel.3322:
	addi	$r2, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	swcl	$f0, -4($r29)
	sw	$r2, -8($r29)
	sw	$r31, -12($r29)	! calldir
	addi	$r29, $r29, -12	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 12	! calldir
	lw	$r31, -12($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r2, -16($r29)
	sw	$r31, -20($r29)	! calldir
	addi	$r29, $r29, -20	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 20	! calldir
	lw	$r31, -20($r29)	! calldir
	addi	$r3, $r0, 1
	lwcl	$f0, -4($r29)
	lw	$r4, -8($r29)
	sw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -24($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r0, 0
	lw	$r4, -16($r29)
	sw	$r2, -28($r29)
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -16($r29)
	lw	$r4, -28($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -40($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sw	$r2, 16($r3)
	lw	$r2, -20($r29)
	lw	$r4, -28($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -16($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f0, -4($r29)
	lw	$r3, -8($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -4($r29)
	lw	$r2, -8($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -48($r29)
	sw	$r3, 24($r2)
	lw	$r3, -44($r29)
	sw	$r3, 20($r2)
	lw	$r3, -40($r29)
	sw	$r3, 16($r2)
	lw	$r3, -36($r29)
	sw	$r3, 12($r2)
	lw	$r3, -32($r29)
	sw	$r3, 8($r2)
	lw	$r3, -24($r29)
	sw	$r3, 4($r2)
	lw	$r3, -12($r29)
	sw	$r3, 0($r2)
	jr	$r31
.init_line_elements.3324:
	addi	$r4, $r0, 0
	bgt	$r4, $r3, .ble_else.561673
	addi	$r5, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -4($r29)
	sw	$r3, -8($r29)
	sw	$r4, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r5, -20($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r2, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r0, 1
	lwcl	$f0, -16($r29)
	lw	$r4, -20($r29)
	sw	$r3, -32($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -36($r29)
	sw	$r2, 16($r3)
	lw	$r2, -28($r29)
	lw	$r4, -12($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lw	$r3, -28($r29)
	lw	$r4, -12($r29)
	sw	$r2, -40($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -48($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lw	$r3, -48($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sw	$r2, 16($r3)
	lw	$r2, -32($r29)
	lw	$r4, -12($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lw	$r3, -60($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
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
	lw	$r3, -24($r29)
	sw	$r3, 0($r2)
	lw	$r3, -8($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.561674
	sw	$r2, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.561675
	lwcl	$f0, -16($r29)
	lw	$r4, -20($r29)
	sw	$r2, -68($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -72($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -76($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sw	$r2, 16($r3)
	lw	$r2, -28($r29)
	lw	$r4, -12($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -28($r29)
	lw	$r4, -12($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sw	$r2, 16($r3)
	lw	$r2, -32($r29)
	lw	$r4, -12($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -96($r29)
	sw	$r3, 24($r2)
	lw	$r3, -92($r29)
	sw	$r3, 20($r2)
	lw	$r3, -88($r29)
	sw	$r3, 16($r2)
	lw	$r3, -84($r29)
	sw	$r3, 12($r2)
	lw	$r3, -80($r29)
	sw	$r3, 8($r2)
	lw	$r3, -76($r29)
	sw	$r3, 4($r2)
	lw	$r3, -72($r29)
	sw	$r3, 0($r2)
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -12($r29)
	bgt	$r3, $r2, .ble_else.561676
	sw	$r2, -104($r29)
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lw	$r3, -104($r29)
	sll	$r4, $r3, 2
	lw	$r5, -4($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	j	.init_line_elements.3324	! calldir-tail
.ble_else.561676:
	addi	$r2, $r5, 0
	jr	$r31
.ble_else.561675:
	addi	$r2, $r5, 0
	jr	$r31
.ble_else.561674:
	addi	$r2, $r5, 0
	jr	$r31
.ble_else.561673:
	jr	$r31
.calc_dirvec.3334:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 5
	bgt	$r6, $r2, .ble_else.561677
	mul.s	$f4, $f0, $f0
	mul.s	$f6, $f2, $f2
	add.s	$f4, $f4, $f6
	lfh	$f6, 16256
	lfl	$f6, 0
	add.s	$f4, $f4, $f6
	sw	$r4, -4($r29)
	sw	$r5, -8($r29)
	sw	$r3, -12($r29)
	swcl	$f6, -16($r29)
	swcl	$f2, -20($r29)
	swcl	$f0, -24($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lwcl	$f2, -24($r29)
	div.s	$f2, $f2, $f0
	lwcl	$f4, -20($r29)
	div.s	$f4, $f4, $f0
	lwcl	$f6, -16($r29)
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
	fneg	$f8, $f2
	swcl	$f0, 0($r4)
	swcl	$f8, 4($r4)
	swcl	$f6, 8($r4)
	addi	$r4, $r3, 1
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	fneg	$f0, $f0
	swcl	$f8, 0($r4)
	swcl	$f6, 4($r4)
	swcl	$f0, 8($r4)
	addi	$r4, $r3, 41
	sll	$r4, $r4, 2
	addu	$r1, $r2, $r4
	lw	$r4, 0($r1)
	lw	$r4, 0($r4)
	swcl	$f8, 0($r4)
	swcl	$f0, 4($r4)
	swcl	$f4, 8($r4)
	addi	$r3, $r3, 81
	sll	$r3, $r3, 2
	addu	$r1, $r2, $r3
	lw	$r2, 0($r1)
	lw	$r2, 0($r2)
	swcl	$f0, 0($r2)
	swcl	$f2, 4($r2)
	swcl	$f4, 8($r2)
	jr	$r31
.ble_else.561677:
	mul.s	$f0, $f2, $f2
	lfh	$f2, 15820
	lfl	$f2, 52429
	add.s	$f0, $f0, $f2
	sw	$r4, -4($r29)
	sw	$r3, -12($r29)
	sw	$r28, -28($r29)
	swcl	$f6, -32($r29)
	swcl	$f2, -36($r29)
	sw	$r2, -40($r29)
	swcl	$f4, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lfh	$f2, 16256
	lfl	$f2, 0
	div.s	$f4, $f2, $f0
	c.le.s	$f4, $f2
	bclf	.bclt_else.561679
	lfh	$f6, 49024
	lfl	$f6, 0
	c.le.s	$f6, $f4
	bclf	.bclt_else.561681
	addi	$r2, $r0, 0
	j	.bclt_cont.561682
.bclt_else.561681:
	addi	$r2, $r0, -1
.bclt_cont.561682:
	j	.bclt_cont.561680
.bclt_else.561679:
	addi	$r2, $r0, 1
.bclt_cont.561680:
	addi	$r3, $r0, 0
	bne	$r2, $r3, .beq_else.561683
	j	.beq_cont.561684
.beq_else.561683:
	div.s	$f4, $f2, $f4
.beq_cont.561684:
	mul.s	$f6, $f4, $f4
	lfh	$f8, 16672
	lfl	$f8, 0
	lfh	$f10, 17138
	lfl	$f10, 0
	mul.s	$f12, $f10, $f6
	lfh	$f14, 16824
	lfl	$f14, 0
	div.s	$f12, $f12, $f14
	swcl	$f8, -48($r29)
	swcl	$f14, -52($r29)
	swcl	$f10, -56($r29)
	swcl	$f0, -60($r29)
	sw	$r3, -64($r29)
	sw	$r2, -68($r29)
	swcl	$f4, -72($r29)
	swcl	$f2, -76($r29)
	fmove	$f4, $f12	! g'_args
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f8	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.atan_sub.2808	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lwcl	$f2, -76($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f4, -72($r29)
	div.s	$f0, $f4, $f0
	lw	$r2, -64($r29)
	lw	$r3, -68($r29)
	bgt	$r3, $r2, .ble_else.561685
	bgt	$r2, $r3, .ble_else.561687
	j	.ble_cont.561688
.ble_else.561687:
	lfh	$f4, 49097
	lfl	$f4, 4059
	sub.s	$f0, $f4, $f0
.ble_cont.561688:
	j	.ble_cont.561686
.ble_else.561685:
	lfh	$f4, 16329
	lfl	$f4, 4059
	sub.s	$f0, $f4, $f0
.ble_cont.561686:
	lwcl	$f4, -44($r29)
	mul.s	$f0, $f0, $f4
	swcl	$f0, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lfh	$f2, 16329
	lfl	$f2, 4059
	lwcl	$f4, -80($r29)
	sub.s	$f4, $f2, $f4
	swcl	$f2, -84($r29)
	swcl	$f0, -88($r29)
	fmove	$f0, $f4	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lwcl	$f2, -88($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -60($r29)
	mul.s	$f0, $f0, $f2
	lw	$r2, -40($r29)
	addi	$r2, $r2, 1
	mul.s	$f2, $f0, $f0
	lwcl	$f4, -36($r29)
	add.s	$f2, $f2, $f4
	swcl	$f0, -92($r29)
	sw	$r2, -96($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_sqrt	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lwcl	$f2, -76($r29)
	div.s	$f4, $f2, $f0
	c.le.s	$f4, $f2
	bclf	.bclt_else.561689
	lfh	$f6, 49024
	lfl	$f6, 0
	c.le.s	$f6, $f4
	bclf	.bclt_else.561691
	addi	$r2, $r0, 0
	j	.bclt_cont.561692
.bclt_else.561691:
	addi	$r2, $r0, -1
.bclt_cont.561692:
	j	.bclt_cont.561690
.bclt_else.561689:
	addi	$r2, $r0, 1
.bclt_cont.561690:
	lw	$r3, -64($r29)
	bne	$r2, $r3, .beq_else.561693
	j	.beq_cont.561694
.beq_else.561693:
	div.s	$f4, $f2, $f4
.beq_cont.561694:
	mul.s	$f6, $f4, $f4
	lwcl	$f8, -56($r29)
	mul.s	$f8, $f8, $f6
	lwcl	$f10, -52($r29)
	div.s	$f8, $f8, $f10
	lwcl	$f10, -48($r29)
	swcl	$f0, -100($r29)
	sw	$r2, -104($r29)
	swcl	$f4, -108($r29)
	fmove	$f4, $f8	! g'_args
	fmove	$f2, $f6	! g'_args
	fmove	$f0, $f10	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.atan_sub.2808	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lwcl	$f2, -76($r29)
	add.s	$f0, $f2, $f0
	lwcl	$f2, -108($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -64($r29)
	lw	$r3, -104($r29)
	bgt	$r3, $r2, .ble_else.561695
	bgt	$r2, $r3, .ble_else.561697
	j	.ble_cont.561698
.ble_else.561697:
	lfh	$f2, 49097
	lfl	$f2, 4059
	sub.s	$f0, $f2, $f0
.ble_cont.561698:
	j	.ble_cont.561696
.ble_else.561695:
	lwcl	$f2, -84($r29)
	sub.s	$f0, $f2, $f0
.ble_cont.561696:
	lwcl	$f2, -32($r29)
	mul.s	$f0, $f0, $f2
	swcl	$f0, -112($r29)
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lwcl	$f2, -112($r29)
	lwcl	$f4, -84($r29)
	sub.s	$f2, $f4, $f2
	swcl	$f0, -116($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.sin.2818	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	lwcl	$f2, -116($r29)
	div.s	$f0, $f2, $f0
	lwcl	$f2, -100($r29)
	mul.s	$f2, $f0, $f2
	lwcl	$f0, -92($r29)
	lwcl	$f4, -44($r29)
	lwcl	$f6, -32($r29)
	lw	$r2, -96($r29)
	lw	$r3, -12($r29)
	lw	$r4, -4($r29)
	lw	$r28, -28($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.calc_dirvecs.3342:
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.561699
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	swcl	$f0, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r6, -24($r29)
	sw	$r5, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f4, 16230
	lfl	$f4, 26214
	sub.s	$f6, $f0, $f4
	lfh	$f8, 0
	lfl	$f8, 0
	lwcl	$f10, -12($r29)
	lw	$r2, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	lw	$r28, -28($r29)
	swcl	$f4, -32($r29)
	swcl	$f2, -36($r29)
	swcl	$f8, -40($r29)
	swcl	$f0, -44($r29)
	fmove	$f4, $f6	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f8	! g'_args
	fmove	$f6, $f10	! g'_args
	sw	$r31, -48($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -48	! callcls
	jal	.mendoi2.561701	! callcls
	j	.mendoi1.561700	! callcls
.mendoi2.561701:	! callcls
	jr	$r27	! callcls
.mendoi1.561700:	! callcls
	addi	$r29, $r29, 48	! callcls
	lw	$r31, -48($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -44($r29)
	add.s	$f4, $f2, $f0
	lw	$r2, -16($r29)
	addi	$r4, $r2, 2
	lwcl	$f2, -40($r29)
	lwcl	$f6, -12($r29)
	lw	$r3, -24($r29)
	lw	$r5, -20($r29)
	lw	$r28, -28($r29)
	sw	$r4, -48($r29)
	swcl	$f0, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	fmove	$f0, $f2	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.561703	! callcls
	j	.mendoi1.561702	! callcls
.mendoi2.561703:	! callcls
	jr	$r27	! callcls
.mendoi1.561702:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	addi	$r3, $r3, 1
	addi	$r4, $r0, 5
	bgt	$r4, $r3, .ble_else.561704
	addi	$r3, $r3, -5
	j	.ble_cont.561705
.ble_else.561704:
.ble_cont.561705:
	lw	$r5, -24($r29)
	bgt	$r5, $r2, .ble_else.561706
	sw	$r4, -56($r29)
	sw	$r2, -60($r29)
	sw	$r3, -64($r29)
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lwcl	$f2, -36($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -32($r29)
	sub.s	$f4, $f0, $f2
	lwcl	$f2, -40($r29)
	lwcl	$f6, -12($r29)
	lw	$r2, -24($r29)
	lw	$r3, -64($r29)
	lw	$r4, -16($r29)
	lw	$r28, -28($r29)
	swcl	$f0, -68($r29)
	fmove	$f0, $f2	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561708	! callcls
	j	.mendoi1.561707	! callcls
.mendoi2.561708:	! callcls
	jr	$r27	! callcls
.mendoi1.561707:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lwcl	$f0, -52($r29)
	lwcl	$f2, -68($r29)
	add.s	$f4, $f2, $f0
	lwcl	$f0, -40($r29)
	lwcl	$f6, -12($r29)
	lw	$r2, -24($r29)
	lw	$r3, -64($r29)
	lw	$r4, -48($r29)
	lw	$r28, -28($r29)
	fmove	$f2, $f0	! g'_args
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561710	! callcls
	j	.mendoi1.561709	! callcls
.mendoi2.561710:	! callcls
	jr	$r27	! callcls
.mendoi1.561709:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, -1
	lw	$r3, -64($r29)
	addi	$r3, $r3, 1
	lw	$r4, -56($r29)
	bgt	$r4, $r3, .ble_else.561711
	addi	$r3, $r3, -5
	j	.ble_cont.561712
.ble_else.561711:
.ble_cont.561712:
	lwcl	$f0, -12($r29)
	lw	$r4, -16($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561706:
	jr	$r31
.ble_else.561699:
	jr	$r31
.calc_dirvec_rows.3347:
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	bgt	$r7, $r2, .ble_else.561715
	sw	$r28, -4($r29)
	sw	$r2, -8($r29)
	sw	$r5, -12($r29)
	sw	$r4, -16($r29)
	sw	$r3, -20($r29)
	sw	$r7, -24($r29)
	sw	$r6, -28($r29)
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lfh	$f2, 15948
	lfl	$f2, 52429
	mul.s	$f0, $f0, $f2
	lfh	$f4, 16230
	lfl	$f4, 26214
	sub.s	$f0, $f0, $f4
	addi	$r2, $r0, 4
	sw	$r2, -32($r29)
	swcl	$f0, -36($r29)
	swcl	$f4, -40($r29)
	swcl	$f2, -44($r29)
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f4, -40($r29)
	sub.s	$f6, $f0, $f4
	lfh	$f8, 0
	lfl	$f8, 0
	lwcl	$f10, -36($r29)
	lw	$r2, -24($r29)
	lw	$r3, -20($r29)
	lw	$r4, -16($r29)
	lw	$r28, -28($r29)
	swcl	$f8, -48($r29)
	swcl	$f0, -52($r29)
	fmove	$f4, $f6	! g'_args
	fmove	$f2, $f8	! g'_args
	fmove	$f0, $f8	! g'_args
	fmove	$f6, $f10	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.561717	! callcls
	j	.mendoi1.561716	! callcls
.mendoi2.561717:	! callcls
	jr	$r27	! callcls
.mendoi1.561716:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	lfh	$f0, 15820
	lfl	$f0, 52429
	lwcl	$f2, -52($r29)
	add.s	$f4, $f2, $f0
	lw	$r2, -16($r29)
	addi	$r4, $r2, 2
	lwcl	$f0, -48($r29)
	lwcl	$f6, -36($r29)
	lw	$r3, -24($r29)
	lw	$r5, -20($r29)
	lw	$r28, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	fmove	$f2, $f0	! g'_args
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.561719	! callcls
	j	.mendoi1.561718	! callcls
.mendoi2.561719:	! callcls
	jr	$r27	! callcls
.mendoi1.561718:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	addi	$r2, $r0, 3
	lw	$r3, -20($r29)
	addi	$r4, $r3, 1
	addi	$r5, $r0, 5
	bgt	$r5, $r4, .ble_else.561720
	addi	$r4, $r4, -5
	j	.ble_cont.561721
.ble_else.561720:
.ble_cont.561721:
	lwcl	$f0, -36($r29)
	lw	$r6, -16($r29)
	lw	$r28, -12($r29)
	sw	$r5, -56($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r4, $r6, 0	! g'_args
	sw	$r31, -60($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -60	! callcls
	jal	.mendoi2.561723	! callcls
	j	.mendoi1.561722	! callcls
.mendoi2.561723:	! callcls
	jr	$r27	! callcls
.mendoi1.561722:	! callcls
	addi	$r29, $r29, 60	! callcls
	lw	$r31, -60($r29)	! callcls
	lw	$r2, -8($r29)
	addi	$r2, $r2, -1
	lw	$r3, -20($r29)
	addi	$r3, $r3, 2
	lw	$r4, -56($r29)
	bgt	$r4, $r3, .ble_else.561724
	addi	$r3, $r3, -5
	j	.ble_cont.561725
.ble_else.561724:
.ble_cont.561725:
	lw	$r5, -16($r29)
	addi	$r5, $r5, 4
	lw	$r6, -24($r29)
	bgt	$r6, $r2, .ble_else.561726
	sw	$r2, -60($r29)
	sw	$r5, -64($r29)
	sw	$r3, -68($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lwcl	$f2, -44($r29)
	mul.s	$f0, $f0, $f2
	lwcl	$f2, -40($r29)
	sub.s	$f0, $f0, $f2
	lw	$r2, -32($r29)
	lw	$r3, -68($r29)
	lw	$r4, -64($r29)
	lw	$r28, -12($r29)
	sw	$r31, -72($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -72	! callcls
	jal	.mendoi2.561728	! callcls
	j	.mendoi1.561727	! callcls
.mendoi2.561728:	! callcls
	jr	$r27	! callcls
.mendoi1.561727:	! callcls
	addi	$r29, $r29, 72	! callcls
	lw	$r31, -72($r29)	! callcls
	lw	$r2, -60($r29)
	addi	$r2, $r2, -1
	lw	$r3, -68($r29)
	addi	$r3, $r3, 2
	lw	$r4, -56($r29)
	bgt	$r4, $r3, .ble_else.561729
	addi	$r3, $r3, -5
	j	.ble_cont.561730
.ble_else.561729:
.ble_cont.561730:
	lw	$r4, -64($r29)
	addi	$r4, $r4, 4
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561726:
	jr	$r31
.ble_else.561715:
	jr	$r31
.create_dirvec_elements.3353:
	lw	$r4, 4($r28)
	addi	$r5, $r0, 0
	bgt	$r5, $r3, .ble_else.561733
	addi	$r6, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r28, -4($r29)
	swcl	$f0, -8($r29)
	sw	$r6, -12($r29)
	sw	$r5, -16($r29)
	sw	$r2, -20($r29)
	sw	$r3, -24($r29)
	sw	$r4, -28($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	lw	$r4, 0($r2)
	sw	$r3, -32($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -32($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -24($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.561734
	lwcl	$f0, -8($r29)
	lw	$r4, -12($r29)
	sw	$r2, -36($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
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
	lw	$r3, -36($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.561735
	lwcl	$f0, -8($r29)
	lw	$r4, -12($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
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
	lw	$r2, -48($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -16($r29)
	bgt	$r3, $r2, .ble_else.561736
	lwcl	$f0, -8($r29)
	lw	$r3, -12($r29)
	sw	$r2, -52($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -28($r29)
	lw	$r2, 0($r2)
	sw	$r3, -56($r29)
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
	addi	$r2, $r3, 0
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -20($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	lw	$r28, -4($r29)
	addi	$r2, $r5, 0	! g'_args
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561736:
	jr	$r31
.ble_else.561735:
	jr	$r31
.ble_else.561734:
	jr	$r31
.ble_else.561733:
	jr	$r31
.create_dirvecs.3356:
	lw	$r3, 12($r28)
	lw	$r4, 8($r28)
	lw	$r5, 4($r28)
	addi	$r6, $r0, 0
	bgt	$r6, $r2, .ble_else.561741
	addi	$r7, $r0, 120
	addi	$r8, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r5, -12($r29)
	swcl	$f0, -16($r29)
	sw	$r8, -20($r29)
	sw	$r4, -24($r29)
	sw	$r2, -28($r29)
	sw	$r7, -32($r29)
	sw	$r3, -36($r29)
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
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
	lw	$r2, -32($r29)
	sw	$r31, -44($r29)	! calldir
	addi	$r29, $r29, -44	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 44	! calldir
	lw	$r31, -44($r29)	! calldir
	lw	$r3, -28($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	sll	$r2, $r3, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	lwcl	$f0, -16($r29)
	lw	$r4, -20($r29)
	sw	$r2, -44($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
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
	lw	$r2, -48($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 472($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
	lw	$r4, 0($r2)
	sw	$r3, -52($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -52($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 468($r3)
	addi	$r2, $r0, 116
	lwcl	$f0, -16($r29)
	lw	$r4, -20($r29)
	sw	$r2, -56($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
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
	lw	$r2, -60($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -44($r29)
	sw	$r2, 464($r3)
	addi	$r2, $r0, 115
	lw	$r28, -12($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -64($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -64	! callcls
	jal	.mendoi2.561743	! callcls
	j	.mendoi1.561742	! callcls
.mendoi2.561743:	! callcls
	jr	$r27	! callcls
.mendoi1.561742:	! callcls
	addi	$r29, $r29, 64	! callcls
	lw	$r31, -64($r29)	! callcls
	lw	$r2, -28($r29)
	addi	$r2, $r2, -1
	lw	$r3, -8($r29)
	bgt	$r3, $r2, .ble_else.561744
	lwcl	$f0, -16($r29)
	lw	$r3, -20($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
	lw	$r4, 0($r2)
	sw	$r3, -68($r29)
	addi	$r2, $r4, 0	! g'_args
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
	lw	$r2, -32($r29)
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	sll	$r2, $r3, 2
	addu	$r1, $r5, $r2
	lw	$r2, 0($r1)
	lwcl	$f0, -16($r29)
	lw	$r4, -20($r29)
	sw	$r2, -72($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
	lw	$r4, 0($r2)
	sw	$r3, -76($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -76($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -72($r29)
	sw	$r2, 472($r3)
	lwcl	$f0, -16($r29)
	lw	$r2, -20($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -36($r29)
	lw	$r2, 0($r2)
	sw	$r3, -80($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -80($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	lw	$r3, -72($r29)
	sw	$r2, 468($r3)
	lw	$r2, -56($r29)
	lw	$r28, -12($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.561746	! callcls
	j	.mendoi1.561745	! callcls
.mendoi2.561746:	! callcls
	jr	$r27	! callcls
.mendoi1.561745:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	lw	$r2, -64($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561744:
	jr	$r31
.ble_else.561741:
	jr	$r31
.init_dirvec_constants.3358:
	lw	$r4, 12($r28)
	lw	$r5, 8($r28)
	lw	$r6, 4($r28)
	addi	$r7, $r0, 0
	bgt	$r7, $r3, .ble_else.561749
	sll	$r8, $r3, 2
	addu	$r1, $r2, $r8
	lw	$r8, 0($r1)
	lw	$r9, 0($r5)
	addi	$r10, $r0, 1
	addi	$r9, $r9, -1
	sw	$r28, -4($r29)
	sw	$r6, -8($r29)
	sw	$r10, -12($r29)
	sw	$r4, -16($r29)
	sw	$r5, -20($r29)
	sw	$r2, -24($r29)
	sw	$r7, -28($r29)
	sw	$r3, -32($r29)
	bgt	$r7, $r9, .ble_else.561750
	sll	$r11, $r9, 2
	addu	$r1, $r4, $r11
	lw	$r11, 0($r1)
	lw	$r12, 4($r8)
	lw	$r13, 0($r8)
	lw	$r14, 4($r11)
	sw	$r8, -36($r29)
	bne	$r14, $r10, .beq_else.561752
	sw	$r12, -40($r29)
	sw	$r9, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561753
.beq_else.561752:
	addi	$r15, $r0, 2
	bne	$r14, $r15, .beq_else.561754
	sw	$r12, -40($r29)
	sw	$r9, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561755
.beq_else.561754:
	sw	$r12, -40($r29)
	sw	$r9, -44($r29)
	addi	$r3, $r11, 0	! g'_args
	addi	$r2, $r13, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	lw	$r3, -44($r29)
	sll	$r4, $r3, 2
	lw	$r5, -40($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561755:
.beq_cont.561753:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561756
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -36($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -12($r29)
	bne	$r9, $r10, .beq_else.561758
	sw	$r7, -48($r29)
	sw	$r2, -52($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561759
.beq_else.561758:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561760
	sw	$r7, -48($r29)
	sw	$r2, -52($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561761
.beq_else.561760:
	sw	$r7, -48($r29)
	sw	$r2, -52($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -56($r29)	! calldir
	addi	$r29, $r29, -56	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 56	! calldir
	lw	$r31, -56($r29)	! calldir
	lw	$r3, -52($r29)
	sll	$r4, $r3, 2
	lw	$r5, -48($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561761:
.beq_cont.561759:
	addi	$r3, $r3, -1
	lw	$r2, -36($r29)
	lw	$r28, -8($r29)
	sw	$r31, -56($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -56	! callcls
	jal	.mendoi2.561763	! callcls
	j	.mendoi1.561762	! callcls
.mendoi2.561763:	! callcls
	jr	$r27	! callcls
.mendoi1.561762:	! callcls
	addi	$r29, $r29, 56	! callcls
	lw	$r31, -56($r29)	! callcls
	j	.ble_cont.561757
.ble_else.561756:
.ble_cont.561757:
	j	.ble_cont.561751
.ble_else.561750:
.ble_cont.561751:
	lw	$r2, -32($r29)
	addi	$r2, $r2, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561764
	sll	$r4, $r2, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -20($r29)
	lw	$r7, 0($r6)
	addi	$r7, $r7, -1
	sw	$r2, -56($r29)
	bgt	$r3, $r7, .ble_else.561765
	sll	$r8, $r7, 2
	lw	$r9, -16($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r4)
	lw	$r11, 0($r4)
	lw	$r12, 4($r8)
	lw	$r13, -12($r29)
	sw	$r4, -60($r29)
	bne	$r12, $r13, .beq_else.561767
	sw	$r10, -64($r29)
	sw	$r7, -68($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561768
.beq_else.561767:
	addi	$r14, $r0, 2
	bne	$r12, $r14, .beq_else.561769
	sw	$r10, -64($r29)
	sw	$r7, -68($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561770
.beq_else.561769:
	sw	$r10, -64($r29)
	sw	$r7, -68($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	lw	$r3, -68($r29)
	sll	$r4, $r3, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561770:
.beq_cont.561768:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561771
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -60($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -12($r29)
	bne	$r9, $r10, .beq_else.561773
	sw	$r7, -72($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561774
.beq_else.561773:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561775
	sw	$r7, -72($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561776
.beq_else.561775:
	sw	$r7, -72($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -72($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561776:
.beq_cont.561774:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561777
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -60($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -12($r29)
	bne	$r9, $r10, .beq_else.561779
	sw	$r7, -80($r29)
	sw	$r2, -84($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	lw	$r5, -80($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561780
.beq_else.561779:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561781
	sw	$r7, -80($r29)
	sw	$r2, -84($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	lw	$r5, -80($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561782
.beq_else.561781:
	sw	$r7, -80($r29)
	sw	$r2, -84($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -84($r29)
	sll	$r4, $r3, 2
	lw	$r5, -80($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561782:
.beq_cont.561780:
	addi	$r3, $r3, -1
	lw	$r2, -60($r29)
	lw	$r28, -8($r29)
	sw	$r31, -88($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -88	! callcls
	jal	.mendoi2.561784	! callcls
	j	.mendoi1.561783	! callcls
.mendoi2.561784:	! callcls
	jr	$r27	! callcls
.mendoi1.561783:	! callcls
	addi	$r29, $r29, 88	! callcls
	lw	$r31, -88($r29)	! callcls
	j	.ble_cont.561778
.ble_else.561777:
.ble_cont.561778:
	j	.ble_cont.561772
.ble_else.561771:
.ble_cont.561772:
	j	.ble_cont.561766
.ble_else.561765:
.ble_cont.561766:
	lw	$r2, -56($r29)
	addi	$r2, $r2, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561785
	sll	$r4, $r2, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -20($r29)
	lw	$r7, 0($r6)
	addi	$r7, $r7, -1
	sw	$r2, -88($r29)
	bgt	$r3, $r7, .ble_else.561786
	sll	$r8, $r7, 2
	lw	$r9, -16($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r4)
	lw	$r11, 0($r4)
	lw	$r12, 4($r8)
	lw	$r13, -12($r29)
	sw	$r4, -92($r29)
	bne	$r12, $r13, .beq_else.561788
	sw	$r10, -96($r29)
	sw	$r7, -100($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561789
.beq_else.561788:
	addi	$r14, $r0, 2
	bne	$r12, $r14, .beq_else.561790
	sw	$r10, -96($r29)
	sw	$r7, -100($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561791
.beq_else.561790:
	sw	$r10, -96($r29)
	sw	$r7, -100($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -96($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561791:
.beq_cont.561789:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561792
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -92($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -12($r29)
	bne	$r9, $r10, .beq_else.561794
	sw	$r7, -104($r29)
	sw	$r2, -108($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -108($r29)
	sll	$r4, $r3, 2
	lw	$r5, -104($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561795
.beq_else.561794:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561796
	sw	$r7, -104($r29)
	sw	$r2, -108($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -108($r29)
	sll	$r4, $r3, 2
	lw	$r5, -104($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561797
.beq_else.561796:
	sw	$r7, -104($r29)
	sw	$r2, -108($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lw	$r3, -108($r29)
	sll	$r4, $r3, 2
	lw	$r5, -104($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561797:
.beq_cont.561795:
	addi	$r3, $r3, -1
	lw	$r2, -92($r29)
	lw	$r28, -8($r29)
	sw	$r31, -112($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -112	! callcls
	jal	.mendoi2.561799	! callcls
	j	.mendoi1.561798	! callcls
.mendoi2.561799:	! callcls
	jr	$r27	! callcls
.mendoi1.561798:	! callcls
	addi	$r29, $r29, 112	! callcls
	lw	$r31, -112($r29)	! callcls
	j	.ble_cont.561793
.ble_else.561792:
.ble_cont.561793:
	j	.ble_cont.561787
.ble_else.561786:
.ble_cont.561787:
	lw	$r2, -88($r29)
	addi	$r2, $r2, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561800
	sll	$r4, $r2, 2
	lw	$r5, -24($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -20($r29)
	lw	$r6, 0($r6)
	addi	$r6, $r6, -1
	sw	$r2, -112($r29)
	bgt	$r3, $r6, .ble_else.561801
	sll	$r7, $r6, 2
	lw	$r8, -16($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r4)
	lw	$r10, 0($r4)
	lw	$r11, 4($r7)
	lw	$r12, -12($r29)
	sw	$r4, -116($r29)
	bne	$r11, $r12, .beq_else.561803
	sw	$r9, -120($r29)
	sw	$r6, -124($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561804
.beq_else.561803:
	addi	$r13, $r0, 2
	bne	$r11, $r13, .beq_else.561805
	sw	$r9, -120($r29)
	sw	$r6, -124($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561806
.beq_else.561805:
	sw	$r9, -120($r29)
	sw	$r6, -124($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r3, -124($r29)
	sll	$r4, $r3, 2
	lw	$r5, -120($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561806:
.beq_cont.561804:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561807
	sll	$r4, $r2, 2
	lw	$r5, -16($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -116($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -12($r29)
	bne	$r9, $r10, .beq_else.561809
	sw	$r7, -128($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -128($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561810
.beq_else.561809:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561811
	sw	$r7, -128($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -128($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561812
.beq_else.561811:
	sw	$r7, -128($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -128($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561812:
.beq_cont.561810:
	addi	$r2, $r3, -1
	lw	$r3, -28($r29)
	bgt	$r3, $r2, .ble_else.561813
	sll	$r3, $r2, 2
	lw	$r4, -16($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -116($r29)
	lw	$r5, 4($r4)
	lw	$r6, 0($r4)
	lw	$r7, 4($r3)
	lw	$r8, -12($r29)
	bne	$r7, $r8, .beq_else.561815
	sw	$r5, -136($r29)
	sw	$r2, -140($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r3, -140($r29)
	sll	$r4, $r3, 2
	lw	$r5, -136($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561816
.beq_else.561815:
	addi	$r8, $r0, 2
	bne	$r7, $r8, .beq_else.561817
	sw	$r5, -136($r29)
	sw	$r2, -140($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r3, -140($r29)
	sll	$r4, $r3, 2
	lw	$r5, -136($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561818
.beq_else.561817:
	sw	$r5, -136($r29)
	sw	$r2, -140($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lw	$r3, -140($r29)
	sll	$r4, $r3, 2
	lw	$r5, -136($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561818:
.beq_cont.561816:
	addi	$r3, $r3, -1
	lw	$r2, -116($r29)
	lw	$r28, -8($r29)
	sw	$r31, -144($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -144	! callcls
	jal	.mendoi2.561820	! callcls
	j	.mendoi1.561819	! callcls
.mendoi2.561820:	! callcls
	jr	$r27	! callcls
.mendoi1.561819:	! callcls
	addi	$r29, $r29, 144	! callcls
	lw	$r31, -144($r29)	! callcls
	j	.ble_cont.561814
.ble_else.561813:
.ble_cont.561814:
	j	.ble_cont.561808
.ble_else.561807:
.ble_cont.561808:
	j	.ble_cont.561802
.ble_else.561801:
.ble_cont.561802:
	lw	$r2, -112($r29)
	addi	$r3, $r2, -1
	lw	$r2, -24($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561800:
	jr	$r31
.ble_else.561785:
	jr	$r31
.ble_else.561764:
	jr	$r31
.ble_else.561749:
	jr	$r31
.init_vecset_constants.3361:
	lw	$r3, 20($r28)
	lw	$r4, 16($r28)
	lw	$r5, 12($r28)
	lw	$r6, 8($r28)
	lw	$r7, 4($r28)
	addi	$r8, $r0, 0
	bgt	$r8, $r2, .ble_else.561825
	sll	$r9, $r2, 2
	addu	$r1, $r7, $r9
	lw	$r9, 0($r1)
	addi	$r10, $r0, 119
	lw	$r11, 476($r9)
	lw	$r12, 0($r4)
	addi	$r13, $r0, 1
	addi	$r12, $r12, -1
	sw	$r28, -4($r29)
	sw	$r10, -8($r29)
	sw	$r7, -12($r29)
	sw	$r2, -16($r29)
	sw	$r6, -20($r29)
	sw	$r5, -24($r29)
	sw	$r13, -28($r29)
	sw	$r3, -32($r29)
	sw	$r8, -36($r29)
	sw	$r4, -40($r29)
	sw	$r9, -44($r29)
	bgt	$r8, $r12, .ble_else.561826
	sll	$r14, $r12, 2
	addu	$r1, $r3, $r14
	lw	$r14, 0($r1)
	lw	$r15, 4($r11)
	lw	$r16, 0($r11)
	lw	$r17, 4($r14)
	sw	$r11, -48($r29)
	bne	$r17, $r13, .beq_else.561828
	sw	$r15, -52($r29)
	sw	$r12, -56($r29)
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r16, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561829
.beq_else.561828:
	addi	$r18, $r0, 2
	bne	$r17, $r18, .beq_else.561830
	sw	$r15, -52($r29)
	sw	$r12, -56($r29)
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r16, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561831
.beq_else.561830:
	sw	$r15, -52($r29)
	sw	$r12, -56($r29)
	addi	$r3, $r14, 0	! g'_args
	addi	$r2, $r16, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lw	$r3, -56($r29)
	sll	$r4, $r3, 2
	lw	$r5, -52($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561831:
.beq_cont.561829:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561832
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -48($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561834
	sw	$r7, -60($r29)
	sw	$r2, -64($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -60($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561835
.beq_else.561834:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561836
	sw	$r7, -60($r29)
	sw	$r2, -64($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -60($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561837
.beq_else.561836:
	sw	$r7, -60($r29)
	sw	$r2, -64($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lw	$r3, -64($r29)
	sll	$r4, $r3, 2
	lw	$r5, -60($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561837:
.beq_cont.561835:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561838
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -48($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561840
	sw	$r7, -68($r29)
	sw	$r2, -72($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561841
.beq_else.561840:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561842
	sw	$r7, -68($r29)
	sw	$r2, -72($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561843
.beq_else.561842:
	sw	$r7, -68($r29)
	sw	$r2, -72($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561843:
.beq_cont.561841:
	addi	$r3, $r3, -1
	lw	$r2, -48($r29)
	lw	$r28, -24($r29)
	sw	$r31, -76($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -76	! callcls
	jal	.mendoi2.561845	! callcls
	j	.mendoi1.561844	! callcls
.mendoi2.561845:	! callcls
	jr	$r27	! callcls
.mendoi1.561844:	! callcls
	addi	$r29, $r29, 76	! callcls
	lw	$r31, -76($r29)	! callcls
	j	.ble_cont.561839
.ble_else.561838:
.ble_cont.561839:
	j	.ble_cont.561833
.ble_else.561832:
.ble_cont.561833:
	j	.ble_cont.561827
.ble_else.561826:
.ble_cont.561827:
	addi	$r2, $r0, 118
	lw	$r3, -44($r29)
	lw	$r4, 472($r3)
	lw	$r5, -40($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	lw	$r7, -36($r29)
	sw	$r2, -76($r29)
	bgt	$r7, $r6, .ble_else.561846
	sll	$r8, $r6, 2
	lw	$r9, -32($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r4)
	lw	$r11, 0($r4)
	lw	$r12, 4($r8)
	lw	$r13, -28($r29)
	sw	$r4, -80($r29)
	bne	$r12, $r13, .beq_else.561848
	sw	$r10, -84($r29)
	sw	$r6, -88($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sll	$r4, $r3, 2
	lw	$r5, -84($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561849
.beq_else.561848:
	addi	$r14, $r0, 2
	bne	$r12, $r14, .beq_else.561850
	sw	$r10, -84($r29)
	sw	$r6, -88($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sll	$r4, $r3, 2
	lw	$r5, -84($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561851
.beq_else.561850:
	sw	$r10, -84($r29)
	sw	$r6, -88($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lw	$r3, -88($r29)
	sll	$r4, $r3, 2
	lw	$r5, -84($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561851:
.beq_cont.561849:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561852
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -80($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561854
	sw	$r7, -92($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561855
.beq_else.561854:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561856
	sw	$r7, -92($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561857
.beq_else.561856:
	sw	$r7, -92($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -92($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561857:
.beq_cont.561855:
	addi	$r3, $r3, -1
	lw	$r2, -80($r29)
	lw	$r28, -24($r29)
	sw	$r31, -100($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -100	! callcls
	jal	.mendoi2.561859	! callcls
	j	.mendoi1.561858	! callcls
.mendoi2.561859:	! callcls
	jr	$r27	! callcls
.mendoi1.561858:	! callcls
	addi	$r29, $r29, 100	! callcls
	lw	$r31, -100($r29)	! callcls
	j	.ble_cont.561853
.ble_else.561852:
.ble_cont.561853:
	j	.ble_cont.561847
.ble_else.561846:
.ble_cont.561847:
	addi	$r2, $r0, 117
	lw	$r3, -44($r29)
	lw	$r4, 468($r3)
	lw	$r5, -40($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	lw	$r7, -36($r29)
	sw	$r2, -100($r29)
	bgt	$r7, $r6, .ble_else.561860
	sll	$r8, $r6, 2
	lw	$r9, -32($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r4)
	lw	$r11, 0($r4)
	lw	$r12, 4($r8)
	lw	$r13, -28($r29)
	sw	$r4, -104($r29)
	bne	$r12, $r13, .beq_else.561862
	sw	$r10, -108($r29)
	sw	$r6, -112($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561863
.beq_else.561862:
	addi	$r14, $r0, 2
	bne	$r12, $r14, .beq_else.561864
	sw	$r10, -108($r29)
	sw	$r6, -112($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561865
.beq_else.561864:
	sw	$r10, -108($r29)
	sw	$r6, -112($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lw	$r3, -112($r29)
	sll	$r4, $r3, 2
	lw	$r5, -108($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561865:
.beq_cont.561863:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561866
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -104($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561868
	sw	$r7, -116($r29)
	sw	$r2, -120($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	sll	$r4, $r3, 2
	lw	$r5, -116($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561869
.beq_else.561868:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561870
	sw	$r7, -116($r29)
	sw	$r2, -120($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	sll	$r4, $r3, 2
	lw	$r5, -116($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561871
.beq_else.561870:
	sw	$r7, -116($r29)
	sw	$r2, -120($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -124($r29)	! calldir
	addi	$r29, $r29, -124	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 124	! calldir
	lw	$r31, -124($r29)	! calldir
	lw	$r3, -120($r29)
	sll	$r4, $r3, 2
	lw	$r5, -116($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561871:
.beq_cont.561869:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561872
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -104($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561874
	sw	$r7, -124($r29)
	sw	$r2, -128($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561875
.beq_else.561874:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561876
	sw	$r7, -124($r29)
	sw	$r2, -128($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561877
.beq_else.561876:
	sw	$r7, -124($r29)
	sw	$r2, -128($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561877:
.beq_cont.561875:
	addi	$r3, $r3, -1
	lw	$r2, -104($r29)
	lw	$r28, -24($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.561879	! callcls
	j	.mendoi1.561878	! callcls
.mendoi2.561879:	! callcls
	jr	$r27	! callcls
.mendoi1.561878:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	j	.ble_cont.561873
.ble_else.561872:
.ble_cont.561873:
	j	.ble_cont.561867
.ble_else.561866:
.ble_cont.561867:
	j	.ble_cont.561861
.ble_else.561860:
.ble_cont.561861:
	addi	$r3, $r0, 116
	lw	$r2, -44($r29)
	lw	$r28, -20($r29)
	sw	$r31, -132($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -132	! callcls
	jal	.mendoi2.561881	! callcls
	j	.mendoi1.561880	! callcls
.mendoi2.561881:	! callcls
	jr	$r27	! callcls
.mendoi1.561880:	! callcls
	addi	$r29, $r29, 132	! callcls
	lw	$r31, -132($r29)	! callcls
	lw	$r2, -16($r29)
	addi	$r2, $r2, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561882
	sll	$r4, $r2, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, 476($r4)
	lw	$r7, -40($r29)
	lw	$r8, 0($r7)
	addi	$r8, $r8, -1
	sw	$r2, -132($r29)
	sw	$r4, -136($r29)
	bgt	$r3, $r8, .ble_else.561883
	sll	$r9, $r8, 2
	lw	$r10, -32($r29)
	addu	$r1, $r10, $r9
	lw	$r9, 0($r1)
	lw	$r11, 4($r6)
	lw	$r12, 0($r6)
	lw	$r13, 4($r9)
	lw	$r14, -28($r29)
	sw	$r6, -140($r29)
	bne	$r13, $r14, .beq_else.561885
	sw	$r11, -144($r29)
	sw	$r8, -148($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lw	$r3, -148($r29)
	sll	$r4, $r3, 2
	lw	$r5, -144($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561886
.beq_else.561885:
	addi	$r15, $r0, 2
	bne	$r13, $r15, .beq_else.561887
	sw	$r11, -144($r29)
	sw	$r8, -148($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lw	$r3, -148($r29)
	sll	$r4, $r3, 2
	lw	$r5, -144($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561888
.beq_else.561887:
	sw	$r11, -144($r29)
	sw	$r8, -148($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lw	$r3, -148($r29)
	sll	$r4, $r3, 2
	lw	$r5, -144($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561888:
.beq_cont.561886:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561889
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -140($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561891
	sw	$r7, -152($r29)
	sw	$r2, -156($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	lw	$r3, -156($r29)
	sll	$r4, $r3, 2
	lw	$r5, -152($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561892
.beq_else.561891:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561893
	sw	$r7, -152($r29)
	sw	$r2, -156($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	lw	$r3, -156($r29)
	sll	$r4, $r3, 2
	lw	$r5, -152($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561894
.beq_else.561893:
	sw	$r7, -152($r29)
	sw	$r2, -156($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	lw	$r3, -156($r29)
	sll	$r4, $r3, 2
	lw	$r5, -152($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561894:
.beq_cont.561892:
	addi	$r3, $r3, -1
	lw	$r2, -140($r29)
	lw	$r28, -24($r29)
	sw	$r31, -160($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -160	! callcls
	jal	.mendoi2.561896	! callcls
	j	.mendoi1.561895	! callcls
.mendoi2.561896:	! callcls
	jr	$r27	! callcls
.mendoi1.561895:	! callcls
	addi	$r29, $r29, 160	! callcls
	lw	$r31, -160($r29)	! callcls
	j	.ble_cont.561890
.ble_else.561889:
.ble_cont.561890:
	j	.ble_cont.561884
.ble_else.561883:
.ble_cont.561884:
	lw	$r2, -136($r29)
	lw	$r3, 472($r2)
	lw	$r4, -40($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	lw	$r6, -36($r29)
	bgt	$r6, $r5, .ble_else.561897
	sll	$r7, $r5, 2
	lw	$r8, -32($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r3)
	lw	$r10, 0($r3)
	lw	$r11, 4($r7)
	lw	$r12, -28($r29)
	sw	$r3, -160($r29)
	bne	$r11, $r12, .beq_else.561899
	sw	$r9, -164($r29)
	sw	$r5, -168($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -164($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561900
.beq_else.561899:
	addi	$r13, $r0, 2
	bne	$r11, $r13, .beq_else.561901
	sw	$r9, -164($r29)
	sw	$r5, -168($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -164($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561902
.beq_else.561901:
	sw	$r9, -164($r29)
	sw	$r5, -168($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r10, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -164($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561902:
.beq_cont.561900:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561903
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -160($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561905
	sw	$r7, -172($r29)
	sw	$r2, -176($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	lw	$r3, -176($r29)
	sll	$r4, $r3, 2
	lw	$r5, -172($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561906
.beq_else.561905:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561907
	sw	$r7, -172($r29)
	sw	$r2, -176($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	lw	$r3, -176($r29)
	sll	$r4, $r3, 2
	lw	$r5, -172($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561908
.beq_else.561907:
	sw	$r7, -172($r29)
	sw	$r2, -176($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	lw	$r3, -176($r29)
	sll	$r4, $r3, 2
	lw	$r5, -172($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561908:
.beq_cont.561906:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561909
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -160($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561911
	sw	$r7, -180($r29)
	sw	$r2, -184($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sll	$r4, $r3, 2
	lw	$r5, -180($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561912
.beq_else.561911:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561913
	sw	$r7, -180($r29)
	sw	$r2, -184($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sll	$r4, $r3, 2
	lw	$r5, -180($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561914
.beq_else.561913:
	sw	$r7, -180($r29)
	sw	$r2, -184($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sll	$r4, $r3, 2
	lw	$r5, -180($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561914:
.beq_cont.561912:
	addi	$r3, $r3, -1
	lw	$r2, -160($r29)
	lw	$r28, -24($r29)
	sw	$r31, -188($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -188	! callcls
	jal	.mendoi2.561916	! callcls
	j	.mendoi1.561915	! callcls
.mendoi2.561916:	! callcls
	jr	$r27	! callcls
.mendoi1.561915:	! callcls
	addi	$r29, $r29, 188	! callcls
	lw	$r31, -188($r29)	! callcls
	j	.ble_cont.561910
.ble_else.561909:
.ble_cont.561910:
	j	.ble_cont.561904
.ble_else.561903:
.ble_cont.561904:
	j	.ble_cont.561898
.ble_else.561897:
.ble_cont.561898:
	lw	$r2, -136($r29)
	lw	$r3, -100($r29)
	lw	$r28, -20($r29)
	sw	$r31, -188($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -188	! callcls
	jal	.mendoi2.561918	! callcls
	j	.mendoi1.561917	! callcls
.mendoi2.561918:	! callcls
	jr	$r27	! callcls
.mendoi1.561917:	! callcls
	addi	$r29, $r29, 188	! callcls
	lw	$r31, -188($r29)	! callcls
	lw	$r2, -132($r29)
	addi	$r2, $r2, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561919
	sll	$r4, $r2, 2
	lw	$r5, -12($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, 476($r4)
	lw	$r7, -40($r29)
	lw	$r7, 0($r7)
	addi	$r7, $r7, -1
	sw	$r2, -188($r29)
	sw	$r4, -192($r29)
	bgt	$r3, $r7, .ble_else.561920
	sll	$r8, $r7, 2
	lw	$r9, -32($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r6)
	lw	$r11, 0($r6)
	lw	$r12, 4($r8)
	lw	$r13, -28($r29)
	sw	$r6, -196($r29)
	bne	$r12, $r13, .beq_else.561922
	sw	$r10, -200($r29)
	sw	$r7, -204($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	lw	$r3, -204($r29)
	sll	$r4, $r3, 2
	lw	$r5, -200($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561923
.beq_else.561922:
	addi	$r14, $r0, 2
	bne	$r12, $r14, .beq_else.561924
	sw	$r10, -200($r29)
	sw	$r7, -204($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	lw	$r3, -204($r29)
	sll	$r4, $r3, 2
	lw	$r5, -200($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561925
.beq_else.561924:
	sw	$r10, -200($r29)
	sw	$r7, -204($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r11, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	lw	$r3, -204($r29)
	sll	$r4, $r3, 2
	lw	$r5, -200($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561925:
.beq_cont.561923:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561926
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -196($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -28($r29)
	bne	$r9, $r10, .beq_else.561928
	sw	$r7, -208($r29)
	sw	$r2, -212($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	sll	$r4, $r3, 2
	lw	$r5, -208($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561929
.beq_else.561928:
	addi	$r11, $r0, 2
	bne	$r9, $r11, .beq_else.561930
	sw	$r7, -208($r29)
	sw	$r2, -212($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	sll	$r4, $r3, 2
	lw	$r5, -208($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561931
.beq_else.561930:
	sw	$r7, -208($r29)
	sw	$r2, -212($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	sll	$r4, $r3, 2
	lw	$r5, -208($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561931:
.beq_cont.561929:
	addi	$r2, $r3, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561932
	sll	$r4, $r2, 2
	lw	$r5, -32($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, -196($r29)
	lw	$r6, 4($r5)
	lw	$r7, 0($r5)
	lw	$r8, 4($r4)
	lw	$r9, -28($r29)
	bne	$r8, $r9, .beq_else.561934
	sw	$r6, -216($r29)
	sw	$r2, -220($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -220($r29)
	sll	$r4, $r3, 2
	lw	$r5, -216($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561935
.beq_else.561934:
	addi	$r9, $r0, 2
	bne	$r8, $r9, .beq_else.561936
	sw	$r6, -216($r29)
	sw	$r2, -220($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -220($r29)
	sll	$r4, $r3, 2
	lw	$r5, -216($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561937
.beq_else.561936:
	sw	$r6, -216($r29)
	sw	$r2, -220($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -220($r29)
	sll	$r4, $r3, 2
	lw	$r5, -216($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561937:
.beq_cont.561935:
	addi	$r3, $r3, -1
	lw	$r2, -196($r29)
	lw	$r28, -24($r29)
	sw	$r31, -224($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -224	! callcls
	jal	.mendoi2.561939	! callcls
	j	.mendoi1.561938	! callcls
.mendoi2.561939:	! callcls
	jr	$r27	! callcls
.mendoi1.561938:	! callcls
	addi	$r29, $r29, 224	! callcls
	lw	$r31, -224($r29)	! callcls
	j	.ble_cont.561933
.ble_else.561932:
.ble_cont.561933:
	j	.ble_cont.561927
.ble_else.561926:
.ble_cont.561927:
	j	.ble_cont.561921
.ble_else.561920:
.ble_cont.561921:
	lw	$r2, -192($r29)
	lw	$r3, -76($r29)
	lw	$r28, -20($r29)
	sw	$r31, -224($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -224	! callcls
	jal	.mendoi2.561941	! callcls
	j	.mendoi1.561940	! callcls
.mendoi2.561941:	! callcls
	jr	$r27	! callcls
.mendoi1.561940:	! callcls
	addi	$r29, $r29, 224	! callcls
	lw	$r31, -224($r29)	! callcls
	lw	$r2, -188($r29)
	addi	$r2, $r2, -1
	lw	$r3, -36($r29)
	bgt	$r3, $r2, .ble_else.561942
	sll	$r3, $r2, 2
	lw	$r4, -12($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, -8($r29)
	lw	$r28, -20($r29)
	sw	$r2, -224($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -228($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -228	! callcls
	jal	.mendoi2.561944	! callcls
	j	.mendoi1.561943	! callcls
.mendoi2.561944:	! callcls
	jr	$r27	! callcls
.mendoi1.561943:	! callcls
	addi	$r29, $r29, 228	! callcls
	lw	$r31, -228($r29)	! callcls
	lw	$r2, -224($r29)
	addi	$r2, $r2, -1
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
.ble_else.561942:
	jr	$r31
.ble_else.561919:
	jr	$r31
.ble_else.561882:
	jr	$r31
.ble_else.561825:
	jr	$r31
.setup_rect_reflection.3372:
	lw	$r4, 24($r28)
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	addi	$r10, $r0, 2
	sll	$r2, $r2, 2
	addi	$r11, $r0, 0
	lw	$r12, 0($r6)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r3, 28($r3)
	lwcl	$f2, 0($r3)
	sub.s	$f0, $f0, $f2
	lwcl	$f2, 0($r8)
	fneg	$f2, $f2
	addi	$r3, $r0, 1
	lwcl	$f4, 4($r8)
	fneg	$f4, $f4
	lwcl	$f6, 8($r8)
	fneg	$f6, $f6
	addi	$r13, $r2, 1
	lwcl	$f8, 0($r8)
	addi	$r14, $r0, 3
	lfh	$f10, 0
	lfl	$f10, 0
	sw	$r6, -4($r29)
	swcl	$f2, -8($r29)
	swcl	$f10, -12($r29)
	sw	$r14, -16($r29)
	sw	$r8, -20($r29)
	sw	$r2, -24($r29)
	sw	$r4, -28($r29)
	sw	$r12, -32($r29)
	sw	$r13, -36($r29)
	swcl	$f0, -40($r29)
	sw	$r9, -44($r29)
	sw	$r10, -48($r29)
	sw	$r3, -52($r29)
	sw	$r5, -56($r29)
	sw	$r11, -60($r29)
	swcl	$f6, -64($r29)
	swcl	$f4, -68($r29)
	swcl	$f8, -72($r29)
	sw	$r7, -76($r29)
	addi	$r2, $r14, 0	! g'_args
	fmove	$f0, $f10	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -76($r29)
	lw	$r4, 0($r2)
	sw	$r3, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -80($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -72($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -68($r29)
	swcl	$f0, 4($r4)
	lwcl	$f2, -64($r29)
	swcl	$f2, 8($r4)
	lw	$r5, -76($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	lw	$r7, -60($r29)
	sw	$r3, -84($r29)
	bgt	$r7, $r6, .ble_else.561949
	sll	$r8, $r6, 2
	lw	$r9, -56($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r8)
	lw	$r11, -52($r29)
	bne	$r10, $r11, .beq_else.561951
	sw	$r2, -88($r29)
	sw	$r6, -92($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561952
.beq_else.561951:
	lw	$r12, -48($r29)
	bne	$r10, $r12, .beq_else.561953
	sw	$r2, -88($r29)
	sw	$r6, -92($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561954
.beq_else.561953:
	sw	$r2, -88($r29)
	sw	$r6, -92($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lw	$r3, -92($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561954:
.beq_cont.561952:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.561955
	sll	$r4, $r2, 2
	lw	$r6, -56($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -52($r29)
	bne	$r7, $r8, .beq_else.561957
	lw	$r7, -80($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561958
.beq_else.561957:
	lw	$r9, -48($r29)
	bne	$r7, $r9, .beq_else.561959
	lw	$r7, -80($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561960
.beq_else.561959:
	lw	$r7, -80($r29)
	sw	$r2, -96($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -96($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561960:
.beq_cont.561958:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.561961
	sll	$r4, $r2, 2
	lw	$r6, -56($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -52($r29)
	bne	$r7, $r8, .beq_else.561963
	lw	$r7, -80($r29)
	sw	$r2, -100($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561964
.beq_else.561963:
	lw	$r9, -48($r29)
	bne	$r7, $r9, .beq_else.561965
	lw	$r7, -80($r29)
	sw	$r2, -100($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561966
.beq_else.561965:
	lw	$r7, -80($r29)
	sw	$r2, -100($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lw	$r3, -100($r29)
	sll	$r4, $r3, 2
	lw	$r5, -88($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561966:
.beq_cont.561964:
	addi	$r3, $r3, -1
	lw	$r2, -84($r29)
	lw	$r28, -44($r29)
	sw	$r31, -104($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -104	! callcls
	jal	.mendoi2.561968	! callcls
	j	.mendoi1.561967	! callcls
.mendoi2.561968:	! callcls
	jr	$r27	! callcls
.mendoi1.561967:	! callcls
	addi	$r29, $r29, 104	! callcls
	lw	$r31, -104($r29)	! callcls
	j	.ble_cont.561962
.ble_else.561961:
.ble_cont.561962:
	j	.ble_cont.561956
.ble_else.561955:
.ble_cont.561956:
	j	.ble_cont.561950
.ble_else.561949:
.ble_cont.561950:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -84($r29)
	sw	$r3, 4($r2)
	lw	$r3, -36($r29)
	sw	$r3, 0($r2)
	lw	$r3, -32($r29)
	sll	$r4, $r3, 2
	lw	$r5, -28($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, 1
	lw	$r4, -24($r29)
	addi	$r6, $r4, 2
	lw	$r7, -20($r29)
	lwcl	$f2, 4($r7)
	lwcl	$f4, -12($r29)
	lw	$r8, -16($r29)
	sw	$r2, -104($r29)
	sw	$r6, -108($r29)
	swcl	$f2, -112($r29)
	addi	$r2, $r8, 0	! g'_args
	fmove	$f0, $f4	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -76($r29)
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
	lwcl	$f2, -112($r29)
	swcl	$f2, 4($r4)
	lwcl	$f2, -64($r29)
	swcl	$f2, 8($r4)
	lw	$r5, -76($r29)
	lw	$r6, 0($r5)
	addi	$r6, $r6, -1
	lw	$r7, -60($r29)
	sw	$r3, -120($r29)
	bgt	$r7, $r6, .ble_else.561969
	sll	$r8, $r6, 2
	lw	$r9, -56($r29)
	addu	$r1, $r9, $r8
	lw	$r8, 0($r1)
	lw	$r10, 4($r8)
	lw	$r11, -52($r29)
	bne	$r10, $r11, .beq_else.561971
	sw	$r2, -124($r29)
	sw	$r6, -128($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561972
.beq_else.561971:
	lw	$r12, -48($r29)
	bne	$r10, $r12, .beq_else.561973
	sw	$r2, -124($r29)
	sw	$r6, -128($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561974
.beq_else.561973:
	sw	$r2, -124($r29)
	sw	$r6, -128($r29)
	addi	$r3, $r8, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lw	$r3, -128($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561974:
.beq_cont.561972:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.561975
	sll	$r4, $r2, 2
	lw	$r6, -56($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -52($r29)
	bne	$r7, $r8, .beq_else.561977
	lw	$r7, -116($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561978
.beq_else.561977:
	lw	$r9, -48($r29)
	bne	$r7, $r9, .beq_else.561979
	lw	$r7, -116($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561980
.beq_else.561979:
	lw	$r7, -116($r29)
	sw	$r2, -132($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lw	$r3, -132($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561980:
.beq_cont.561978:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.561981
	sll	$r4, $r2, 2
	lw	$r6, -56($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -52($r29)
	bne	$r7, $r8, .beq_else.561983
	lw	$r7, -116($r29)
	sw	$r2, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -136($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561984
.beq_else.561983:
	lw	$r9, -48($r29)
	bne	$r7, $r9, .beq_else.561985
	lw	$r7, -116($r29)
	sw	$r2, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -136($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561986
.beq_else.561985:
	lw	$r7, -116($r29)
	sw	$r2, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lw	$r3, -136($r29)
	sll	$r4, $r3, 2
	lw	$r5, -124($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561986:
.beq_cont.561984:
	addi	$r3, $r3, -1
	lw	$r2, -120($r29)
	lw	$r28, -44($r29)
	sw	$r31, -140($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -140	! callcls
	jal	.mendoi2.561988	! callcls
	j	.mendoi1.561987	! callcls
.mendoi2.561988:	! callcls
	jr	$r27	! callcls
.mendoi1.561987:	! callcls
	addi	$r29, $r29, 140	! callcls
	lw	$r31, -140($r29)	! callcls
	j	.ble_cont.561982
.ble_else.561981:
.ble_cont.561982:
	j	.ble_cont.561976
.ble_else.561975:
.ble_cont.561976:
	j	.ble_cont.561970
.ble_else.561969:
.ble_cont.561970:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -120($r29)
	sw	$r3, 4($r2)
	lw	$r3, -108($r29)
	sw	$r3, 0($r2)
	lw	$r3, -104($r29)
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	sw	$r2, 0($r1)
	lw	$r2, -32($r29)
	addi	$r3, $r2, 2
	lw	$r5, -24($r29)
	addi	$r5, $r5, 3
	lw	$r6, -20($r29)
	lwcl	$f2, 8($r6)
	lwcl	$f4, -12($r29)
	lw	$r6, -16($r29)
	sw	$r3, -140($r29)
	sw	$r5, -144($r29)
	swcl	$f2, -148($r29)
	addi	$r2, $r6, 0	! g'_args
	fmove	$f0, $f4	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -76($r29)
	lw	$r4, 0($r2)
	sw	$r3, -152($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -152($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -8($r29)
	swcl	$f0, 0($r4)
	lwcl	$f0, -68($r29)
	swcl	$f0, 4($r4)
	lwcl	$f0, -148($r29)
	swcl	$f0, 8($r4)
	lw	$r5, -76($r29)
	lw	$r5, 0($r5)
	addi	$r5, $r5, -1
	lw	$r6, -60($r29)
	sw	$r3, -156($r29)
	bgt	$r6, $r5, .ble_else.561989
	sll	$r7, $r5, 2
	lw	$r8, -56($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r7)
	lw	$r10, -52($r29)
	bne	$r9, $r10, .beq_else.561991
	sw	$r2, -160($r29)
	sw	$r5, -164($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561992
.beq_else.561991:
	lw	$r11, -48($r29)
	bne	$r9, $r11, .beq_else.561993
	sw	$r2, -160($r29)
	sw	$r5, -164($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561994
.beq_else.561993:
	sw	$r2, -160($r29)
	sw	$r5, -164($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.561994:
.beq_cont.561992:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.561995
	sll	$r4, $r2, 2
	lw	$r6, -56($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -52($r29)
	bne	$r7, $r8, .beq_else.561997
	lw	$r7, -152($r29)
	sw	$r2, -168($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.561998
.beq_else.561997:
	lw	$r9, -48($r29)
	bne	$r7, $r9, .beq_else.561999
	lw	$r7, -152($r29)
	sw	$r2, -168($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562000
.beq_else.561999:
	lw	$r7, -152($r29)
	sw	$r2, -168($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lw	$r3, -168($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562000:
.beq_cont.561998:
	addi	$r2, $r3, -1
	lw	$r3, -60($r29)
	bgt	$r3, $r2, .ble_else.562001
	sll	$r3, $r2, 2
	lw	$r4, -56($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, 4($r3)
	lw	$r6, -52($r29)
	bne	$r4, $r6, .beq_else.562003
	lw	$r4, -152($r29)
	sw	$r2, -172($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -172($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562004
.beq_else.562003:
	lw	$r6, -48($r29)
	bne	$r4, $r6, .beq_else.562005
	lw	$r4, -152($r29)
	sw	$r2, -172($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -172($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562006
.beq_else.562005:
	lw	$r4, -152($r29)
	sw	$r2, -172($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -172($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562006:
.beq_cont.562004:
	addi	$r3, $r3, -1
	lw	$r2, -156($r29)
	lw	$r28, -44($r29)
	sw	$r31, -176($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -176	! callcls
	jal	.mendoi2.562008	! callcls
	j	.mendoi1.562007	! callcls
.mendoi2.562008:	! callcls
	jr	$r27	! callcls
.mendoi1.562007:	! callcls
	addi	$r29, $r29, 176	! callcls
	lw	$r31, -176($r29)	! callcls
	j	.ble_cont.562002
.ble_else.562001:
.ble_cont.562002:
	j	.ble_cont.561996
.ble_else.561995:
.ble_cont.561996:
	j	.ble_cont.561990
.ble_else.561989:
.ble_cont.561990:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -40($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -156($r29)
	sw	$r3, 4($r2)
	lw	$r3, -144($r29)
	sw	$r3, 0($r2)
	lw	$r3, -140($r29)
	sll	$r3, $r3, 2
	lw	$r4, -28($r29)
	addu	$r1, $r4, $r3
	sw	$r2, 0($r1)
	lw	$r2, -32($r29)
	addi	$r2, $r2, 3
	lw	$r3, -4($r29)
	sw	$r2, 0($r3)
	jr	$r31
.setup_surface_reflection.3375:
	lw	$r4, 24($r28)
	lw	$r5, 20($r28)
	lw	$r6, 16($r28)
	lw	$r7, 12($r28)
	lw	$r8, 8($r28)
	lw	$r9, 4($r28)
	addi	$r10, $r0, 2
	sll	$r2, $r2, 2
	addi	$r11, $r0, 1
	addi	$r2, $r2, 1
	addi	$r12, $r0, 0
	lw	$r13, 0($r6)
	lfh	$f0, 16256
	lfl	$f0, 0
	lw	$r14, 28($r3)
	lwcl	$f2, 0($r14)
	sub.s	$f0, $f0, $f2
	lw	$r14, 16($r3)
	lwcl	$f2, 0($r8)
	lwcl	$f4, 0($r14)
	mul.s	$f2, $f2, $f4
	lwcl	$f4, 4($r8)
	lwcl	$f6, 4($r14)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lwcl	$f4, 8($r8)
	lwcl	$f6, 8($r14)
	mul.s	$f4, $f4, $f6
	add.s	$f2, $f2, $f4
	lfh	$f4, 16384
	lfl	$f4, 0
	lw	$r14, 16($r3)
	lwcl	$f6, 0($r14)
	mul.s	$f6, $f4, $f6
	mul.s	$f6, $f6, $f2
	lwcl	$f8, 0($r8)
	sub.s	$f6, $f6, $f8
	lw	$r14, 16($r3)
	lwcl	$f8, 4($r14)
	mul.s	$f8, $f4, $f8
	mul.s	$f8, $f8, $f2
	lwcl	$f10, 4($r8)
	sub.s	$f8, $f8, $f10
	lw	$r3, 16($r3)
	lwcl	$f10, 8($r3)
	mul.s	$f4, $f4, $f10
	mul.s	$f2, $f4, $f2
	lwcl	$f4, 8($r8)
	sub.s	$f2, $f2, $f4
	addi	$r3, $r0, 3
	lfh	$f4, 0
	lfl	$f4, 0
	sw	$r6, -4($r29)
	sw	$r4, -8($r29)
	sw	$r13, -12($r29)
	sw	$r2, -16($r29)
	swcl	$f0, -20($r29)
	sw	$r9, -24($r29)
	sw	$r10, -28($r29)
	sw	$r11, -32($r29)
	sw	$r5, -36($r29)
	sw	$r12, -40($r29)
	swcl	$f2, -44($r29)
	swcl	$f8, -48($r29)
	swcl	$f6, -52($r29)
	sw	$r7, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	fmove	$f0, $f4	! g'_args
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
	lwcl	$f0, -44($r29)
	swcl	$f0, 8($r4)
	lw	$r5, -56($r29)
	lw	$r5, 0($r5)
	addi	$r5, $r5, -1
	lw	$r6, -40($r29)
	sw	$r3, -64($r29)
	bgt	$r6, $r5, .ble_else.562010
	sll	$r7, $r5, 2
	lw	$r8, -36($r29)
	addu	$r1, $r8, $r7
	lw	$r7, 0($r1)
	lw	$r9, 4($r7)
	lw	$r10, -32($r29)
	bne	$r9, $r10, .beq_else.562012
	sw	$r2, -68($r29)
	sw	$r5, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562013
.beq_else.562012:
	lw	$r11, -28($r29)
	bne	$r9, $r11, .beq_else.562014
	sw	$r2, -68($r29)
	sw	$r5, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562015
.beq_else.562014:
	sw	$r2, -68($r29)
	sw	$r5, -72($r29)
	addi	$r3, $r7, 0	! g'_args
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -76($r29)	! calldir
	addi	$r29, $r29, -76	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 76	! calldir
	lw	$r31, -76($r29)	! calldir
	lw	$r3, -72($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562015:
.beq_cont.562013:
	addi	$r2, $r3, -1
	lw	$r3, -40($r29)
	bgt	$r3, $r2, .ble_else.562016
	sll	$r4, $r2, 2
	lw	$r6, -36($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -32($r29)
	bne	$r7, $r8, .beq_else.562018
	lw	$r7, -60($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562019
.beq_else.562018:
	lw	$r9, -28($r29)
	bne	$r7, $r9, .beq_else.562020
	lw	$r7, -60($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562021
.beq_else.562020:
	lw	$r7, -60($r29)
	sw	$r2, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, -76($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562021:
.beq_cont.562019:
	addi	$r2, $r3, -1
	lw	$r3, -40($r29)
	bgt	$r3, $r2, .ble_else.562022
	sll	$r3, $r2, 2
	lw	$r4, -36($r29)
	addu	$r1, $r4, $r3
	lw	$r3, 0($r1)
	lw	$r4, 4($r3)
	lw	$r6, -32($r29)
	bne	$r4, $r6, .beq_else.562024
	lw	$r4, -60($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562025
.beq_else.562024:
	lw	$r6, -28($r29)
	bne	$r4, $r6, .beq_else.562026
	lw	$r4, -60($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562027
.beq_else.562026:
	lw	$r4, -60($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lw	$r3, -80($r29)
	sll	$r4, $r3, 2
	lw	$r5, -68($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562027:
.beq_cont.562025:
	addi	$r3, $r3, -1
	lw	$r2, -64($r29)
	lw	$r28, -24($r29)
	sw	$r31, -84($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -84	! callcls
	jal	.mendoi2.562029	! callcls
	j	.mendoi1.562028	! callcls
.mendoi2.562029:	! callcls
	jr	$r27	! callcls
.mendoi1.562028:	! callcls
	addi	$r29, $r29, 84	! callcls
	lw	$r31, -84($r29)	! callcls
	j	.ble_cont.562023
.ble_else.562022:
.ble_cont.562023:
	j	.ble_cont.562017
.ble_else.562016:
.ble_cont.562017:
	j	.ble_cont.562011
.ble_else.562010:
.ble_cont.562011:
	addi	$r2, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -20($r29)
	swcl	$f0, 8($r2)
	lw	$r3, -64($r29)
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
.rt.3380:
	lw	$r4, 136($r28)
	lw	$r5, 132($r28)
	lw	$r6, 128($r28)
	lw	$r7, 124($r28)
	lw	$r8, 120($r28)
	lw	$r9, 116($r28)
	lw	$r10, 112($r28)
	lw	$r11, 108($r28)
	lw	$r12, 104($r28)
	lw	$r13, 100($r28)
	lw	$r14, 96($r28)
	lw	$r15, 92($r28)
	lw	$r16, 88($r28)
	lw	$r17, 84($r28)
	lw	$r18, 80($r28)
	lw	$r19, 76($r28)
	lw	$r20, 72($r28)
	lw	$r21, 68($r28)
	lw	$r22, 64($r28)
	lw	$r23, 60($r28)
	lw	$r24, 56($r28)
	lw	$r25, 52($r28)
	lw	$r26, 48($r28)
	lw	$r27, 44($r28)
	sw	$r11, -4($r29)
	lw	$r11, 40($r28)
	sw	$r9, -8($r29)
	lw	$r9, 36($r28)
	sw	$r22, -12($r29)
	lw	$r22, 32($r28)
	sw	$r7, -16($r29)
	lw	$r7, 28($r28)
	sw	$r8, -20($r29)
	lw	$r8, 24($r28)
	sw	$r5, -24($r29)
	lw	$r5, 20($r28)
	sw	$r6, -28($r29)
	lw	$r6, 16($r28)
	sw	$r26, -32($r29)
	lw	$r26, 12($r28)
	sw	$r26, -36($r29)
	lw	$r26, 8($r28)
	lw	$r28, 4($r28)
	sw	$r4, -40($r29)
	addi	$r4, $r0, 0
	sw	$r2, 0($r7)
	sw	$r27, -44($r29)
	addi	$r27, $r0, 1
	sw	$r3, 4($r7)
	sw	$r9, -48($r29)
	sra	$r9, $r2, 1
	sw	$r9, 0($r8)
	sra	$r3, $r3, 1
	sw	$r3, 4($r8)
	lfh	$f0, 17152
	lfl	$f0, 0
	sw	$r8, -52($r29)
	sw	$r22, -56($r29)
	sw	$r11, -60($r29)
	sw	$r24, -64($r29)
	sw	$r5, -68($r29)
	sw	$r26, -72($r29)
	sw	$r6, -76($r29)
	sw	$r23, -80($r29)
	sw	$r13, -84($r29)
	sw	$r21, -88($r29)
	sw	$r28, -92($r29)
	sw	$r16, -96($r29)
	sw	$r18, -100($r29)
	sw	$r19, -104($r29)
	sw	$r20, -108($r29)
	sw	$r14, -112($r29)
	sw	$r25, -116($r29)
	sw	$r15, -120($r29)
	sw	$r17, -124($r29)
	sw	$r12, -128($r29)
	sw	$r27, -132($r29)
	sw	$r4, -136($r29)
	sw	$r7, -140($r29)
	sw	$r10, -144($r29)
	swcl	$f0, -148($r29)
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lwcl	$f2, -148($r29)
	div.s	$f0, $f2, $f0
	lw	$r2, -144($r29)
	swcl	$f0, 0($r2)
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	sw	$r4, -152($r29)
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -152($r29)
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	addi	$r5, $r0, 2
	addi	$r4, $r4, -2
	lw	$r6, -136($r29)
	sw	$r5, -156($r29)
	bgt	$r6, $r4, .ble_else.562031
	addi	$r7, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -160($r29)
	sw	$r4, -164($r29)
	swcl	$f0, -168($r29)
	sw	$r7, -172($r29)
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -176($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r2, -180($r29)
	sw	$r31, -184($r29)	! calldir
	addi	$r29, $r29, -184	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 184	! calldir
	lw	$r31, -184($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -184($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -184($r29)
	sw	$r2, 16($r3)
	lw	$r2, -180($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	lw	$r3, -180($r29)
	lw	$r4, -136($r29)
	sw	$r2, -188($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -180($r29)
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -196($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lw	$r3, -196($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lw	$r3, -196($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lw	$r3, -196($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lw	$r3, -196($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -180($r29)
	sw	$r31, -200($r29)	! calldir
	addi	$r29, $r29, -200	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 200	! calldir
	lw	$r31, -200($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -200($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r3, -200($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r3, -200($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r3, -200($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lw	$r3, -200($r29)
	sw	$r2, 16($r3)
	lw	$r2, -132($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -204($r29)	! calldir
	addi	$r29, $r29, -204	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 204	! calldir
	lw	$r31, -204($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -204($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -180($r29)
	sw	$r31, -208($r29)	! calldir
	addi	$r29, $r29, -208	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 208	! calldir
	lw	$r31, -208($r29)	! calldir
	lwcl	$f0, -168($r29)
	lw	$r3, -172($r29)
	sw	$r2, -208($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -208($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -208($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -208($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -168($r29)
	lw	$r2, -172($r29)
	sw	$r31, -212($r29)	! calldir
	addi	$r29, $r29, -212	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 212	! calldir
	lw	$r31, -212($r29)	! calldir
	lw	$r3, -208($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -204($r29)
	sw	$r3, 24($r2)
	lw	$r3, -200($r29)
	sw	$r3, 20($r2)
	lw	$r3, -196($r29)
	sw	$r3, 16($r2)
	lw	$r3, -192($r29)
	sw	$r3, 12($r2)
	lw	$r3, -188($r29)
	sw	$r3, 8($r2)
	lw	$r3, -184($r29)
	sw	$r3, 4($r2)
	lw	$r3, -176($r29)
	sw	$r3, 0($r2)
	lw	$r3, -164($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562033
	sw	$r2, -212($r29)
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	lw	$r3, -212($r29)
	sll	$r4, $r3, 2
	lw	$r5, -160($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -216($r29)	! calldir
	addi	$r29, $r29, -216	! calldir
	jal	.init_line_elements.3324	! calldir
	addi	$r29, $r29, 216	! calldir
	lw	$r31, -216($r29)	! calldir
	j	.ble_cont.562034
.ble_else.562033:
	addi	$r2, $r5, 0
.ble_cont.562034:
	j	.ble_cont.562032
.ble_else.562031:
.ble_cont.562032:
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	sw	$r2, -216($r29)
	sw	$r4, -220($r29)
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -220($r29)
	sw	$r31, -224($r29)	! calldir
	addi	$r29, $r29, -224	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 224	! calldir
	lw	$r31, -224($r29)	! calldir
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	addi	$r4, $r4, -2
	lw	$r5, -136($r29)
	bgt	$r5, $r4, .ble_else.562035
	addi	$r6, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -224($r29)
	sw	$r4, -228($r29)
	swcl	$f0, -232($r29)
	sw	$r6, -236($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -240($r29)	! calldir
	addi	$r29, $r29, -240	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 240	! calldir
	lw	$r31, -240($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -240($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -244($r29)	! calldir
	addi	$r29, $r29, -244	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 244	! calldir
	lw	$r31, -244($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r2, -244($r29)
	sw	$r31, -248($r29)	! calldir
	addi	$r29, $r29, -248	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 248	! calldir
	lw	$r31, -248($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -248($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -248($r29)
	sw	$r2, 16($r3)
	lw	$r2, -244($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -252($r29)	! calldir
	addi	$r29, $r29, -252	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 252	! calldir
	lw	$r31, -252($r29)	! calldir
	lw	$r3, -244($r29)
	lw	$r4, -136($r29)
	sw	$r2, -252($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -256($r29)	! calldir
	addi	$r29, $r29, -256	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 256	! calldir
	lw	$r31, -256($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -256($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -260($r29)	! calldir
	addi	$r29, $r29, -260	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 260	! calldir
	lw	$r31, -260($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -244($r29)
	sw	$r31, -260($r29)	! calldir
	addi	$r29, $r29, -260	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 260	! calldir
	lw	$r31, -260($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -260($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	lw	$r3, -260($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	lw	$r3, -260($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	lw	$r3, -260($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	lw	$r3, -260($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -244($r29)
	sw	$r31, -264($r29)	! calldir
	addi	$r29, $r29, -264	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 264	! calldir
	lw	$r31, -264($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -264($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lw	$r3, -264($r29)
	sw	$r2, 16($r3)
	lw	$r2, -132($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -268($r29)	! calldir
	addi	$r29, $r29, -268	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 268	! calldir
	lw	$r31, -268($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -268($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -244($r29)
	sw	$r31, -272($r29)	! calldir
	addi	$r29, $r29, -272	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 272	! calldir
	lw	$r31, -272($r29)	! calldir
	lwcl	$f0, -232($r29)
	lw	$r3, -236($r29)
	sw	$r2, -272($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	lw	$r3, -272($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	lw	$r3, -272($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
	lw	$r3, -272($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -232($r29)
	lw	$r2, -236($r29)
	sw	$r31, -276($r29)	! calldir
	addi	$r29, $r29, -276	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 276	! calldir
	lw	$r31, -276($r29)	! calldir
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
	lw	$r3, -240($r29)
	sw	$r3, 0($r2)
	lw	$r3, -228($r29)
	sll	$r4, $r3, 2
	lw	$r5, -224($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562037
	sw	$r2, -276($r29)
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	lw	$r3, -276($r29)
	sll	$r4, $r3, 2
	lw	$r5, -224($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -280($r29)	! calldir
	addi	$r29, $r29, -280	! calldir
	jal	.init_line_elements.3324	! calldir
	addi	$r29, $r29, 280	! calldir
	lw	$r31, -280($r29)	! calldir
	j	.ble_cont.562038
.ble_else.562037:
	addi	$r2, $r5, 0
.ble_cont.562038:
	j	.ble_cont.562036
.ble_else.562035:
.ble_cont.562036:
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	sw	$r2, -280($r29)
	sw	$r4, -284($r29)
	sw	$r31, -288($r29)	! calldir
	addi	$r29, $r29, -288	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 288	! calldir
	lw	$r31, -288($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -284($r29)
	sw	$r31, -288($r29)	! calldir
	addi	$r29, $r29, -288	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 288	! calldir
	lw	$r31, -288($r29)	! calldir
	lw	$r3, -140($r29)
	lw	$r4, 0($r3)
	addi	$r4, $r4, -2
	lw	$r5, -136($r29)
	bgt	$r5, $r4, .ble_else.562039
	addi	$r6, $r0, 3
	lfh	$f0, 0
	lfl	$f0, 0
	sw	$r2, -288($r29)
	sw	$r4, -292($r29)
	swcl	$f0, -296($r29)
	sw	$r6, -300($r29)
	addi	$r2, $r6, 0	! g'_args
	sw	$r31, -304($r29)	! calldir
	addi	$r29, $r29, -304	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 304	! calldir
	lw	$r31, -304($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -304($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -308($r29)	! calldir
	addi	$r29, $r29, -308	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 308	! calldir
	lw	$r31, -308($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r2, -308($r29)
	sw	$r31, -312($r29)	! calldir
	addi	$r29, $r29, -312	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 312	! calldir
	lw	$r31, -312($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -312($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -312($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -312($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -312($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -312($r29)
	sw	$r2, 16($r3)
	lw	$r2, -308($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -316($r29)	! calldir
	addi	$r29, $r29, -316	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 316	! calldir
	lw	$r31, -316($r29)	! calldir
	lw	$r3, -308($r29)
	lw	$r4, -136($r29)
	sw	$r2, -316($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -320($r29)	! calldir
	addi	$r29, $r29, -320	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 320	! calldir
	lw	$r31, -320($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -320($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -324($r29)	! calldir
	addi	$r29, $r29, -324	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 324	! calldir
	lw	$r31, -324($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -308($r29)
	sw	$r31, -324($r29)	! calldir
	addi	$r29, $r29, -324	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 324	! calldir
	lw	$r31, -324($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -324($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	lw	$r3, -324($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	lw	$r3, -324($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	lw	$r3, -324($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	lw	$r3, -324($r29)
	sw	$r2, 16($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -308($r29)
	sw	$r31, -328($r29)	! calldir
	addi	$r29, $r29, -328	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 328	! calldir
	lw	$r31, -328($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -328($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	lw	$r3, -328($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	lw	$r3, -328($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	lw	$r3, -328($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	lw	$r3, -328($r29)
	sw	$r2, 16($r3)
	lw	$r2, -132($r29)
	lw	$r4, -136($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -332($r29)	! calldir
	addi	$r29, $r29, -332	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 332	! calldir
	lw	$r31, -332($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -332($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -336($r29)	! calldir
	addi	$r29, $r29, -336	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 336	! calldir
	lw	$r31, -336($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -308($r29)
	sw	$r31, -336($r29)	! calldir
	addi	$r29, $r29, -336	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 336	! calldir
	lw	$r31, -336($r29)	! calldir
	lwcl	$f0, -296($r29)
	lw	$r3, -300($r29)
	sw	$r2, -336($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -340($r29)	! calldir
	addi	$r29, $r29, -340	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 340	! calldir
	lw	$r31, -340($r29)	! calldir
	lw	$r3, -336($r29)
	sw	$r2, 4($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -340($r29)	! calldir
	addi	$r29, $r29, -340	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 340	! calldir
	lw	$r31, -340($r29)	! calldir
	lw	$r3, -336($r29)
	sw	$r2, 8($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -340($r29)	! calldir
	addi	$r29, $r29, -340	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 340	! calldir
	lw	$r31, -340($r29)	! calldir
	lw	$r3, -336($r29)
	sw	$r2, 12($r3)
	lwcl	$f0, -296($r29)
	lw	$r2, -300($r29)
	sw	$r31, -340($r29)	! calldir
	addi	$r29, $r29, -340	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 340	! calldir
	lw	$r31, -340($r29)	! calldir
	lw	$r3, -336($r29)
	sw	$r2, 16($r3)
	addi	$r2, $r30, 0
	addi	$r30, $r30, 32
	sw	$r3, 28($r2)
	lw	$r3, -332($r29)
	sw	$r3, 24($r2)
	lw	$r3, -328($r29)
	sw	$r3, 20($r2)
	lw	$r3, -324($r29)
	sw	$r3, 16($r2)
	lw	$r3, -320($r29)
	sw	$r3, 12($r2)
	lw	$r3, -316($r29)
	sw	$r3, 8($r2)
	lw	$r3, -312($r29)
	sw	$r3, 4($r2)
	lw	$r3, -304($r29)
	sw	$r3, 0($r2)
	lw	$r3, -292($r29)
	sll	$r4, $r3, 2
	lw	$r5, -288($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562041
	sw	$r2, -340($r29)
	sw	$r31, -344($r29)	! calldir
	addi	$r29, $r29, -344	! calldir
	jal	.create_pixel.3322	! calldir
	addi	$r29, $r29, 344	! calldir
	lw	$r31, -344($r29)	! calldir
	lw	$r3, -340($r29)
	sll	$r4, $r3, 2
	lw	$r5, -288($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	addi	$r3, $r3, -1
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -344($r29)	! calldir
	addi	$r29, $r29, -344	! calldir
	jal	.init_line_elements.3324	! calldir
	addi	$r29, $r29, 344	! calldir
	lw	$r31, -344($r29)	! calldir
	j	.ble_cont.562042
.ble_else.562041:
	addi	$r2, $r5, 0
.ble_cont.562042:
	j	.ble_cont.562040
.ble_else.562039:
.ble_cont.562040:
	lw	$r28, -128($r29)
	sw	$r2, -344($r29)
	sw	$r31, -348($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -348	! callcls
	jal	.mendoi2.562044	! callcls
	j	.mendoi1.562043	! callcls
.mendoi2.562044:	! callcls
	jr	$r27	! callcls
.mendoi1.562043:	! callcls
	addi	$r29, $r29, 348	! callcls
	lw	$r31, -348($r29)	! callcls
	lw	$r28, -124($r29)
	sw	$r31, -348($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -348	! callcls
	jal	.mendoi2.562046	! callcls
	j	.mendoi1.562045	! callcls
.mendoi2.562046:	! callcls
	jr	$r27	! callcls
.mendoi1.562045:	! callcls
	addi	$r29, $r29, 348	! callcls
	lw	$r31, -348($r29)	! callcls
	lw	$r2, -136($r29)
	lw	$r28, -120($r29)
	sw	$r31, -348($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -348	! callcls
	jal	.mendoi2.562048	! callcls
	j	.mendoi1.562047	! callcls
.mendoi2.562048:	! callcls
	jr	$r27	! callcls
.mendoi1.562047:	! callcls
	addi	$r29, $r29, 348	! callcls
	lw	$r31, -348($r29)	! callcls
	lw	$r3, -136($r29)
	bne	$r2, $r3, .beq_else.562049
	lw	$r2, -116($r29)
	sw	$r3, 0($r2)
	j	.beq_cont.562050
.beq_else.562049:
	lw	$r2, -132($r29)
	lw	$r28, -120($r29)
	sw	$r31, -348($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -348	! callcls
	jal	.mendoi2.562052	! callcls
	j	.mendoi1.562051	! callcls
.mendoi2.562052:	! callcls
	jr	$r27	! callcls
.mendoi1.562051:	! callcls
	addi	$r29, $r29, 348	! callcls
	lw	$r31, -348($r29)	! callcls
	lw	$r3, -136($r29)
	bne	$r2, $r3, .beq_else.562053
	lw	$r2, -116($r29)
	lw	$r4, -132($r29)
	sw	$r4, 0($r2)
	j	.beq_cont.562054
.beq_else.562053:
	lw	$r2, -156($r29)
	lw	$r28, -120($r29)
	sw	$r31, -348($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -348	! callcls
	jal	.mendoi2.562056	! callcls
	j	.mendoi1.562055	! callcls
.mendoi2.562056:	! callcls
	jr	$r27	! callcls
.mendoi1.562055:	! callcls
	addi	$r29, $r29, 348	! callcls
	lw	$r31, -348($r29)	! callcls
	lw	$r3, -136($r29)
	bne	$r2, $r3, .beq_else.562057
	lw	$r2, -116($r29)
	lw	$r4, -156($r29)
	sw	$r4, 0($r2)
	j	.beq_cont.562058
.beq_else.562057:
	addi	$r2, $r0, 3
	lw	$r28, -120($r29)
	sw	$r2, -348($r29)
	sw	$r31, -352($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -352	! callcls
	jal	.mendoi2.562060	! callcls
	j	.mendoi1.562059	! callcls
.mendoi2.562060:	! callcls
	jr	$r27	! callcls
.mendoi1.562059:	! callcls
	addi	$r29, $r29, 352	! callcls
	lw	$r31, -352($r29)	! callcls
	lw	$r3, -136($r29)
	bne	$r2, $r3, .beq_else.562061
	lw	$r2, -116($r29)
	lw	$r4, -348($r29)
	sw	$r4, 0($r2)
	j	.beq_cont.562062
.beq_else.562061:
	addi	$r2, $r0, 4
	lw	$r28, -120($r29)
	sw	$r2, -352($r29)
	sw	$r31, -356($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -356	! callcls
	jal	.mendoi2.562064	! callcls
	j	.mendoi1.562063	! callcls
.mendoi2.562064:	! callcls
	jr	$r27	! callcls
.mendoi1.562063:	! callcls
	addi	$r29, $r29, 356	! callcls
	lw	$r31, -356($r29)	! callcls
	lw	$r3, -136($r29)
	bne	$r2, $r3, .beq_else.562065
	lw	$r2, -116($r29)
	lw	$r4, -352($r29)
	sw	$r4, 0($r2)
	j	.beq_cont.562066
.beq_else.562065:
	addi	$r2, $r0, 5
	lw	$r28, -112($r29)
	sw	$r31, -356($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -356	! callcls
	jal	.mendoi2.562068	! callcls
	j	.mendoi1.562067	! callcls
.mendoi2.562068:	! callcls
	jr	$r27	! callcls
.mendoi1.562067:	! callcls
	addi	$r29, $r29, 356	! callcls
	lw	$r31, -356($r29)	! callcls
.beq_cont.562066:
.beq_cont.562062:
.beq_cont.562058:
.beq_cont.562054:
.beq_cont.562050:
	lw	$r2, -108($r29)
	lw	$r3, -136($r29)
	sw	$r3, 0($r2)
	lw	$r4, -104($r29)
	sw	$r3, 0($r4)
	addi	$r5, $r0, 32
	lw	$r28, -100($r29)
	sw	$r5, -356($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	sw	$r31, -360($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -360	! callcls
	jal	.mendoi2.562070	! callcls
	j	.mendoi1.562069	! callcls
.mendoi2.562070:	! callcls
	jr	$r27	! callcls
.mendoi1.562069:	! callcls
	addi	$r29, $r29, 360	! callcls
	lw	$r31, -360($r29)	! callcls
	addi	$r3, $r0, -1
	sw	$r3, -360($r29)
	bne	$r2, $r3, .beq_else.562071
	lw	$r2, -132($r29)
	sw	$r31, -364($r29)	! calldir
	addi	$r29, $r29, -364	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 364	! calldir
	lw	$r31, -364($r29)	! calldir
	j	.beq_cont.562072
.beq_else.562071:
	lw	$r4, -132($r29)
	lw	$r28, -96($r29)
	sw	$r2, -364($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -368($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -368	! callcls
	jal	.mendoi2.562074	! callcls
	j	.mendoi1.562073	! callcls
.mendoi2.562074:	! callcls
	jr	$r27	! callcls
.mendoi1.562073:	! callcls
	addi	$r29, $r29, 368	! callcls
	lw	$r31, -368($r29)	! callcls
	lw	$r3, -364($r29)
	sw	$r3, 0($r2)
.beq_cont.562072:
	lw	$r3, 0($r2)
	lw	$r4, -360($r29)
	bne	$r3, $r4, .beq_else.562075
	j	.beq_cont.562076
.beq_else.562075:
	lw	$r3, -92($r29)
	sw	$r2, 0($r3)
	lw	$r2, -136($r29)
	lw	$r28, -96($r29)
	sw	$r31, -368($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -368	! callcls
	jal	.mendoi2.562078	! callcls
	j	.mendoi1.562077	! callcls
.mendoi2.562078:	! callcls
	jr	$r27	! callcls
.mendoi1.562077:	! callcls
	addi	$r29, $r29, 368	! callcls
	lw	$r31, -368($r29)	! callcls
	lw	$r3, 0($r2)
	lw	$r4, -360($r29)
	bne	$r3, $r4, .beq_else.562079
	j	.beq_cont.562080
.beq_else.562079:
	lw	$r3, -92($r29)
	sw	$r2, 4($r3)
	lw	$r2, -156($r29)
	lw	$r28, -88($r29)
	sw	$r31, -368($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -368	! callcls
	jal	.mendoi2.562082	! callcls
	j	.mendoi1.562081	! callcls
.mendoi2.562082:	! callcls
	jr	$r27	! callcls
.mendoi1.562081:	! callcls
	addi	$r29, $r29, 368	! callcls
	lw	$r31, -368($r29)	! callcls
.beq_cont.562080:
.beq_cont.562076:
	lw	$r2, -108($r29)
	lw	$r3, -136($r29)
	sw	$r3, 0($r2)
	lw	$r2, -104($r29)
	sw	$r3, 0($r2)
	lw	$r2, -356($r29)
	lw	$r28, -100($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -368($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -368	! callcls
	jal	.mendoi2.562084	! callcls
	j	.mendoi1.562083	! callcls
.mendoi2.562084:	! callcls
	jr	$r27	! callcls
.mendoi1.562083:	! callcls
	addi	$r29, $r29, 368	! callcls
	lw	$r31, -368($r29)	! callcls
	lw	$r3, -360($r29)
	bne	$r2, $r3, .beq_else.562085
	lw	$r2, -132($r29)
	sw	$r31, -368($r29)	! calldir
	addi	$r29, $r29, -368	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 368	! calldir
	lw	$r31, -368($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	j	.beq_cont.562086
.beq_else.562085:
	lw	$r4, -132($r29)
	lw	$r28, -96($r29)
	sw	$r2, -368($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -372($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -372	! callcls
	jal	.mendoi2.562088	! callcls
	j	.mendoi1.562087	! callcls
.mendoi2.562088:	! callcls
	jr	$r27	! callcls
.mendoi1.562087:	! callcls
	addi	$r29, $r29, 372	! callcls
	lw	$r31, -372($r29)	! callcls
	lw	$r3, -368($r29)
	sw	$r3, 0($r2)
	addi	$r3, $r2, 0
.beq_cont.562086:
	lw	$r2, 0($r3)
	lw	$r4, -360($r29)
	bne	$r2, $r4, .beq_else.562089
	lw	$r2, -132($r29)
	sw	$r31, -372($r29)	! calldir
	addi	$r29, $r29, -372	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 372	! calldir
	lw	$r31, -372($r29)	! calldir
	j	.beq_cont.562090
.beq_else.562089:
	lw	$r2, -136($r29)
	lw	$r28, -96($r29)
	sw	$r3, -372($r29)
	sw	$r31, -376($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -376	! callcls
	jal	.mendoi2.562092	! callcls
	j	.mendoi1.562091	! callcls
.mendoi2.562092:	! callcls
	jr	$r27	! callcls
.mendoi1.562091:	! callcls
	addi	$r29, $r29, 376	! callcls
	lw	$r31, -376($r29)	! callcls
	addi	$r3, $r2, 0	! callcls
	lw	$r2, 0($r3)
	lw	$r4, -360($r29)
	bne	$r2, $r4, .beq_else.562093
	lw	$r2, -156($r29)
	sw	$r31, -376($r29)	! calldir
	addi	$r29, $r29, -376	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 376	! calldir
	lw	$r31, -376($r29)	! calldir
	j	.beq_cont.562094
.beq_else.562093:
	lw	$r2, -156($r29)
	lw	$r28, -84($r29)
	sw	$r3, -376($r29)
	sw	$r31, -380($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -380	! callcls
	jal	.mendoi2.562096	! callcls
	j	.mendoi1.562095	! callcls
.mendoi2.562096:	! callcls
	jr	$r27	! callcls
.mendoi1.562095:	! callcls
	addi	$r29, $r29, 380	! callcls
	lw	$r31, -380($r29)	! callcls
	lw	$r3, -376($r29)
	sw	$r3, 4($r2)
.beq_cont.562094:
	lw	$r3, -372($r29)
	sw	$r3, 0($r2)
.beq_cont.562090:
	lw	$r3, -80($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r0, 80
	output	$r2
	addi	$r2, $r0, 51
	output	$r2
	addi	$r2, $r0, 10
	sw	$r2, -380($r29)
	output	$r2
	lw	$r2, -140($r29)
	lw	$r3, 0($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -384($r29)	! calldir
	addi	$r29, $r29, -384	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 384	! calldir
	lw	$r31, -384($r29)	! calldir
	lw	$r2, -356($r29)
	output	$r2
	lw	$r2, -140($r29)
	lw	$r3, 4($r2)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -384($r29)	! calldir
	addi	$r29, $r29, -384	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 384	! calldir
	lw	$r31, -384($r29)	! calldir
	lw	$r2, -356($r29)
	output	$r2
	addi	$r2, $r0, 255
	sw	$r31, -384($r29)	! calldir
	addi	$r29, $r29, -384	! calldir
	jal	.print_int.2860	! calldir
	addi	$r29, $r29, 384	! calldir
	lw	$r31, -384($r29)	! calldir
	lw	$r2, -380($r29)
	output	$r2
	addi	$r2, $r0, 4
	lw	$r28, -76($r29)
	sw	$r2, -384($r29)
	sw	$r31, -388($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -388	! callcls
	jal	.mendoi2.562098	! callcls
	j	.mendoi1.562097	! callcls
.mendoi2.562098:	! callcls
	jr	$r27	! callcls
.mendoi1.562097:	! callcls
	addi	$r29, $r29, 388	! callcls
	lw	$r31, -388($r29)	! callcls
	addi	$r2, $r0, 9
	lw	$r3, -136($r29)
	lw	$r28, -72($r29)
	addi	$r4, $r3, 0	! g'_args
	sw	$r31, -388($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -388	! callcls
	jal	.mendoi2.562100	! callcls
	j	.mendoi1.562099	! callcls
.mendoi2.562100:	! callcls
	jr	$r27	! callcls
.mendoi1.562099:	! callcls
	addi	$r29, $r29, 388	! callcls
	lw	$r31, -388($r29)	! callcls
	lw	$r2, -68($r29)
	lw	$r3, 16($r2)
	addi	$r4, $r0, 119
	lw	$r5, 476($r3)
	lw	$r6, -116($r29)
	lw	$r7, 0($r6)
	addi	$r7, $r7, -1
	lw	$r8, -136($r29)
	sw	$r4, -388($r29)
	sw	$r3, -392($r29)
	bgt	$r8, $r7, .ble_else.562101
	sll	$r9, $r7, 2
	lw	$r10, -64($r29)
	addu	$r1, $r10, $r9
	lw	$r9, 0($r1)
	lw	$r11, 4($r5)
	lw	$r12, 0($r5)
	lw	$r13, 4($r9)
	lw	$r14, -132($r29)
	sw	$r5, -396($r29)
	bne	$r13, $r14, .beq_else.562103
	sw	$r11, -400($r29)
	sw	$r7, -404($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -408($r29)	! calldir
	addi	$r29, $r29, -408	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 408	! calldir
	lw	$r31, -408($r29)	! calldir
	lw	$r3, -404($r29)
	sll	$r4, $r3, 2
	lw	$r5, -400($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562104
.beq_else.562103:
	lw	$r15, -156($r29)
	bne	$r13, $r15, .beq_else.562105
	sw	$r11, -400($r29)
	sw	$r7, -404($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -408($r29)	! calldir
	addi	$r29, $r29, -408	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 408	! calldir
	lw	$r31, -408($r29)	! calldir
	lw	$r3, -404($r29)
	sll	$r4, $r3, 2
	lw	$r5, -400($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562106
.beq_else.562105:
	sw	$r11, -400($r29)
	sw	$r7, -404($r29)
	addi	$r3, $r9, 0	! g'_args
	addi	$r2, $r12, 0	! g'_args
	sw	$r31, -408($r29)	! calldir
	addi	$r29, $r29, -408	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 408	! calldir
	lw	$r31, -408($r29)	! calldir
	lw	$r3, -404($r29)
	sll	$r4, $r3, 2
	lw	$r5, -400($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562106:
.beq_cont.562104:
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562107
	sll	$r4, $r2, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -396($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -132($r29)
	bne	$r9, $r10, .beq_else.562109
	sw	$r7, -408($r29)
	sw	$r2, -412($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -416($r29)	! calldir
	addi	$r29, $r29, -416	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 416	! calldir
	lw	$r31, -416($r29)	! calldir
	lw	$r3, -412($r29)
	sll	$r4, $r3, 2
	lw	$r5, -408($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562110
.beq_else.562109:
	lw	$r11, -156($r29)
	bne	$r9, $r11, .beq_else.562111
	sw	$r7, -408($r29)
	sw	$r2, -412($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -416($r29)	! calldir
	addi	$r29, $r29, -416	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 416	! calldir
	lw	$r31, -416($r29)	! calldir
	lw	$r3, -412($r29)
	sll	$r4, $r3, 2
	lw	$r5, -408($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562112
.beq_else.562111:
	sw	$r7, -408($r29)
	sw	$r2, -412($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -416($r29)	! calldir
	addi	$r29, $r29, -416	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 416	! calldir
	lw	$r31, -416($r29)	! calldir
	lw	$r3, -412($r29)
	sll	$r4, $r3, 2
	lw	$r5, -408($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562112:
.beq_cont.562110:
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562113
	sll	$r4, $r2, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r6, -396($r29)
	lw	$r7, 4($r6)
	lw	$r8, 0($r6)
	lw	$r9, 4($r4)
	lw	$r10, -132($r29)
	bne	$r9, $r10, .beq_else.562115
	sw	$r7, -416($r29)
	sw	$r2, -420($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -424($r29)	! calldir
	addi	$r29, $r29, -424	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 424	! calldir
	lw	$r31, -424($r29)	! calldir
	lw	$r3, -420($r29)
	sll	$r4, $r3, 2
	lw	$r5, -416($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562116
.beq_else.562115:
	lw	$r11, -156($r29)
	bne	$r9, $r11, .beq_else.562117
	sw	$r7, -416($r29)
	sw	$r2, -420($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -424($r29)	! calldir
	addi	$r29, $r29, -424	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 424	! calldir
	lw	$r31, -424($r29)	! calldir
	lw	$r3, -420($r29)
	sll	$r4, $r3, 2
	lw	$r5, -416($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562118
.beq_else.562117:
	sw	$r7, -416($r29)
	sw	$r2, -420($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r8, 0	! g'_args
	sw	$r31, -424($r29)	! calldir
	addi	$r29, $r29, -424	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 424	! calldir
	lw	$r31, -424($r29)	! calldir
	lw	$r3, -420($r29)
	sll	$r4, $r3, 2
	lw	$r5, -416($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562118:
.beq_cont.562116:
	addi	$r3, $r3, -1
	lw	$r2, -396($r29)
	lw	$r28, -60($r29)
	sw	$r31, -424($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -424	! callcls
	jal	.mendoi2.562120	! callcls
	j	.mendoi1.562119	! callcls
.mendoi2.562120:	! callcls
	jr	$r27	! callcls
.mendoi1.562119:	! callcls
	addi	$r29, $r29, 424	! callcls
	lw	$r31, -424($r29)	! callcls
	j	.ble_cont.562114
.ble_else.562113:
.ble_cont.562114:
	j	.ble_cont.562108
.ble_else.562107:
.ble_cont.562108:
	j	.ble_cont.562102
.ble_else.562101:
.ble_cont.562102:
	addi	$r3, $r0, 118
	lw	$r2, -392($r29)
	lw	$r28, -56($r29)
	sw	$r31, -424($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -424	! callcls
	jal	.mendoi2.562122	! callcls
	j	.mendoi1.562121	! callcls
.mendoi2.562122:	! callcls
	jr	$r27	! callcls
.mendoi1.562121:	! callcls
	addi	$r29, $r29, 424	! callcls
	lw	$r31, -424($r29)	! callcls
	lw	$r2, -68($r29)
	lw	$r2, 12($r2)
	lw	$r3, -388($r29)
	lw	$r28, -56($r29)
	sw	$r31, -424($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -424	! callcls
	jal	.mendoi2.562124	! callcls
	j	.mendoi1.562123	! callcls
.mendoi2.562124:	! callcls
	jr	$r27	! callcls
.mendoi1.562123:	! callcls
	addi	$r29, $r29, 424	! callcls
	lw	$r31, -424($r29)	! callcls
	lw	$r2, -156($r29)
	lw	$r28, -48($r29)
	sw	$r31, -424($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -424	! callcls
	jal	.mendoi2.562126	! callcls
	j	.mendoi1.562125	! callcls
.mendoi2.562126:	! callcls
	jr	$r27	! callcls
.mendoi1.562125:	! callcls
	addi	$r29, $r29, 424	! callcls
	lw	$r31, -424($r29)	! callcls
	lw	$r2, -44($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -40($r29)
	swcl	$f0, 0($r3)
	lwcl	$f0, 4($r2)
	swcl	$f0, 4($r3)
	lwcl	$f0, 8($r2)
	swcl	$f0, 8($r3)
	lw	$r2, -116($r29)
	lw	$r4, 0($r2)
	addi	$r4, $r4, -1
	lw	$r5, -136($r29)
	bgt	$r5, $r4, .ble_else.562127
	sll	$r6, $r4, 2
	lw	$r7, -64($r29)
	addu	$r1, $r7, $r6
	lw	$r6, 0($r1)
	lw	$r8, 4($r6)
	lw	$r9, -132($r29)
	bne	$r8, $r9, .beq_else.562129
	sw	$r4, -424($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -428($r29)	! calldir
	addi	$r29, $r29, -428	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 428	! calldir
	lw	$r31, -428($r29)	! calldir
	lw	$r3, -424($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562130
.beq_else.562129:
	lw	$r10, -156($r29)
	bne	$r8, $r10, .beq_else.562131
	sw	$r4, -424($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -428($r29)	! calldir
	addi	$r29, $r29, -428	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 428	! calldir
	lw	$r31, -428($r29)	! calldir
	lw	$r3, -424($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562132
.beq_else.562131:
	sw	$r4, -424($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r6, 0	! g'_args
	sw	$r31, -428($r29)	! calldir
	addi	$r29, $r29, -428	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 428	! calldir
	lw	$r31, -428($r29)	! calldir
	lw	$r3, -424($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562132:
.beq_cont.562130:
	addi	$r2, $r3, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562133
	sll	$r4, $r2, 2
	lw	$r6, -64($r29)
	addu	$r1, $r6, $r4
	lw	$r4, 0($r1)
	lw	$r7, 4($r4)
	lw	$r8, -132($r29)
	bne	$r7, $r8, .beq_else.562135
	lw	$r7, -40($r29)
	sw	$r2, -428($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -432($r29)	! calldir
	addi	$r29, $r29, -432	! calldir
	jal	.setup_rect_table.3131	! calldir
	addi	$r29, $r29, 432	! calldir
	lw	$r31, -432($r29)	! calldir
	lw	$r3, -428($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562136
.beq_else.562135:
	lw	$r9, -156($r29)
	bne	$r7, $r9, .beq_else.562137
	lw	$r7, -40($r29)
	sw	$r2, -428($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -432($r29)	! calldir
	addi	$r29, $r29, -432	! calldir
	jal	.setup_surface_table.3134	! calldir
	addi	$r29, $r29, 432	! calldir
	lw	$r31, -432($r29)	! calldir
	lw	$r3, -428($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
	j	.beq_cont.562138
.beq_else.562137:
	lw	$r7, -40($r29)
	sw	$r2, -428($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r7, 0	! g'_args
	sw	$r31, -432($r29)	! calldir
	addi	$r29, $r29, -432	! calldir
	jal	.setup_second_table.3137	! calldir
	addi	$r29, $r29, 432	! calldir
	lw	$r31, -432($r29)	! calldir
	lw	$r3, -428($r29)
	sll	$r4, $r3, 2
	lw	$r5, -36($r29)
	addu	$r1, $r5, $r4
	sw	$r2, 0($r1)
.beq_cont.562138:
.beq_cont.562136:
	addi	$r3, $r3, -1
	lw	$r2, -32($r29)
	lw	$r28, -60($r29)
	sw	$r31, -432($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -432	! callcls
	jal	.mendoi2.562140	! callcls
	j	.mendoi1.562139	! callcls
.mendoi2.562140:	! callcls
	jr	$r27	! callcls
.mendoi1.562139:	! callcls
	addi	$r29, $r29, 432	! callcls
	lw	$r31, -432($r29)	! callcls
	j	.ble_cont.562134
.ble_else.562133:
.ble_cont.562134:
	j	.ble_cont.562128
.ble_else.562127:
.ble_cont.562128:
	lw	$r2, -116($r29)
	lw	$r2, 0($r2)
	addi	$r2, $r2, -1
	lw	$r3, -136($r29)
	bgt	$r3, $r2, .ble_else.562141
	sll	$r4, $r2, 2
	lw	$r5, -64($r29)
	addu	$r1, $r5, $r4
	lw	$r4, 0($r1)
	lw	$r5, 8($r4)
	lw	$r6, -156($r29)
	bne	$r5, $r6, .beq_else.562143
	lw	$r5, 28($r4)
	lwcl	$f0, 0($r5)
	lfh	$f2, 16256
	lfl	$f2, 0
	c.le.s	$f2, $f0
	bclf	.bclt_else.562145
	addi	$r5, $r0, 0
	j	.bclt_cont.562146
.bclt_else.562145:
	addi	$r5, $r0, 1
.bclt_cont.562146:
	bne	$r5, $r3, .beq_else.562147
	j	.beq_cont.562148
.beq_else.562147:
	lw	$r5, 4($r4)
	lw	$r7, -132($r29)
	bne	$r5, $r7, .beq_else.562149
	lw	$r28, -28($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -432($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -432	! callcls
	jal	.mendoi2.562152	! callcls
	j	.mendoi1.562151	! callcls
.mendoi2.562152:	! callcls
	jr	$r27	! callcls
.mendoi1.562151:	! callcls
	addi	$r29, $r29, 432	! callcls
	lw	$r31, -432($r29)	! callcls
	j	.beq_cont.562150
.beq_else.562149:
	bne	$r5, $r6, .beq_else.562153
	lw	$r28, -24($r29)
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -432($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -432	! callcls
	jal	.mendoi2.562156	! callcls
	j	.mendoi1.562155	! callcls
.mendoi2.562156:	! callcls
	jr	$r27	! callcls
.mendoi1.562155:	! callcls
	addi	$r29, $r29, 432	! callcls
	lw	$r31, -432($r29)	! callcls
	j	.beq_cont.562154
.beq_else.562153:
.beq_cont.562154:
.beq_cont.562150:
.beq_cont.562148:
	j	.beq_cont.562144
.beq_else.562143:
.beq_cont.562144:
	j	.ble_cont.562142
.ble_else.562141:
.ble_cont.562142:
	lw	$r2, -144($r29)
	lwcl	$f0, 0($r2)
	lw	$r3, -52($r29)
	lw	$r4, 4($r3)
	lw	$r5, -136($r29)
	subu	$r4, $r5, $r4
	swcl	$f0, -432($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -436($r29)	! calldir
	addi	$r29, $r29, -436	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 436	! calldir
	lw	$r31, -436($r29)	! calldir
	lwcl	$f2, -432($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lw	$r3, -16($r29)
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
	lw	$r4, -140($r29)
	lw	$r5, 0($r4)
	addi	$r5, $r5, -1
	lw	$r6, -280($r29)
	lw	$r7, -136($r29)
	lw	$r28, -12($r29)
	addi	$r4, $r7, 0	! g'_args
	addi	$r3, $r5, 0	! g'_args
	addi	$r2, $r6, 0	! g'_args
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -436($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -436	! callcls
	jal	.mendoi2.562158	! callcls
	j	.mendoi1.562157	! callcls
.mendoi2.562158:	! callcls
	jr	$r27	! callcls
.mendoi1.562157:	! callcls
	addi	$r29, $r29, 436	! callcls
	lw	$r31, -436($r29)	! callcls
	lw	$r2, -140($r29)
	lw	$r3, 4($r2)
	lw	$r4, -136($r29)
	bgt	$r3, $r4, .ble_else.562159
	jr	$r31
.ble_else.562159:
	lw	$r3, 4($r2)
	addi	$r3, $r3, -1
	bgt	$r3, $r4, .ble_else.562161
	j	.ble_cont.562162
.ble_else.562161:
	lw	$r3, -144($r29)
	lwcl	$f0, 0($r3)
	lw	$r3, -52($r29)
	lw	$r3, 4($r3)
	lw	$r5, -132($r29)
	subu	$r3, $r5, $r3
	swcl	$f0, -436($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -440($r29)	! calldir
	addi	$r29, $r29, -440	! calldir
	jal	.min_caml_float_of_int	! calldir
	addi	$r29, $r29, 440	! calldir
	lw	$r31, -440($r29)	! calldir
	lwcl	$f2, -436($r29)
	mul.s	$f0, $f2, $f0
	lw	$r2, -20($r29)
	lwcl	$f2, 0($r2)
	mul.s	$f2, $f0, $f2
	lw	$r3, -16($r29)
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
	lw	$r2, -140($r29)
	lw	$r2, 0($r2)
	addi	$r3, $r2, -1
	lw	$r2, -344($r29)
	lw	$r4, -156($r29)
	lw	$r28, -12($r29)
	fmove	$f30, $f4	! g'_args
	fmove	$f4, $f0	! g'_args
	fmove	$f0, $f2	! g'_args
	fmove	$f2, $f30	! g'_args
	sw	$r31, -440($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -440	! callcls
	jal	.mendoi2.562164	! callcls
	j	.mendoi1.562163	! callcls
.mendoi2.562164:	! callcls
	jr	$r27	! callcls
.mendoi1.562163:	! callcls
	addi	$r29, $r29, 440	! callcls
	lw	$r31, -440($r29)	! callcls
.ble_cont.562162:
	lw	$r2, -136($r29)
	lw	$r4, -216($r29)
	lw	$r5, -280($r29)
	lw	$r6, -344($r29)
	lw	$r28, -8($r29)
	addi	$r3, $r2, 0	! g'_args
	sw	$r31, -440($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -440	! callcls
	jal	.mendoi2.562166	! callcls
	j	.mendoi1.562165	! callcls
.mendoi2.562166:	! callcls
	jr	$r27	! callcls
.mendoi1.562165:	! callcls
	addi	$r29, $r29, 440	! callcls
	lw	$r31, -440($r29)	! callcls
	lw	$r2, -132($r29)
	lw	$r3, -280($r29)
	lw	$r4, -344($r29)
	lw	$r5, -216($r29)
	lw	$r6, -384($r29)
	lw	$r28, -4($r29)
	lw	$r27, 0($r28)	! callcls-tail
	jr	$r27	! callcls-tail
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
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -12($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -16($r29)	! calldir
	addi	$r29, $r29, -16	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 16	! calldir
	lw	$r31, -16($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, .read_int_token.2826
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -12($r29)
	sw	$r4, 4($r3)
	lw	$r5, -8($r29)
	lw	$r6, -4($r29)
	sw	$r2, -16($r29)
	sw	$r3, -20($r29)
	addi	$r3, $r6, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -24($r29)	! calldir
	addi	$r29, $r29, -24	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 24	! calldir
	lw	$r31, -24($r29)	! calldir
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -24($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -28($r29)	! calldir
	addi	$r29, $r29, -28	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 28	! calldir
	lw	$r31, -28($r29)	! calldir
	lw	$r3, -8($r29)
	sw	$r2, -28($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -32($r29)	! calldir
	addi	$r29, $r29, -32	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 32	! calldir
	lw	$r31, -32($r29)	! calldir
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -32($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -36($r29)	! calldir
	addi	$r29, $r29, -36	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 36	! calldir
	lw	$r31, -36($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 12
	la	$r4, .read_float_token1.2835
	sw	$r4, 0($r3)
	sw	$r2, 8($r3)
	lw	$r4, -24($r29)
	sw	$r4, 4($r3)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, .read_float_token2.2838
	sw	$r6, 0($r5)
	lw	$r6, -28($r29)
	sw	$r6, 8($r5)
	lw	$r7, -32($r29)
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
	lw	$r2, -8($r29)
	lw	$r3, -4($r29)
	sw	$r8, -36($r29)
	sw	$r31, -40($r29)	! calldir
	addi	$r29, $r29, -40	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 40	! calldir
	lw	$r31, -40($r29)	! calldir
	lfh	$f0, 0
	lfl	$f0, 0
	lw	$r3, -4($r29)
	sw	$r2, -40($r29)
	swcl	$f0, -44($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -48($r29)	! calldir
	addi	$r29, $r29, -48	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 48	! calldir
	lw	$r31, -48($r29)	! calldir
	addi	$r3, $r0, 60
	addi	$r4, $r30, 0
	addi	$r30, $r30, 44
	sw	$r2, 40($r4)
	sw	$r2, 36($r4)
	sw	$r2, 32($r4)
	sw	$r2, 28($r4)
	lw	$r5, -4($r29)
	sw	$r5, 24($r4)
	sw	$r2, 20($r4)
	sw	$r2, 16($r4)
	sw	$r5, 12($r4)
	sw	$r5, 8($r4)
	sw	$r5, 4($r4)
	sw	$r5, 0($r4)
	addi	$r2, $r4, 0
	sw	$r3, -48($r29)
	addi	$r27, $r3, 0	! g'_args
	addi	$r3, $r2, 0	! g'_args
	addi	$r2, $r27, 0	! g'_args
	sw	$r31, -52($r29)	! calldir
	addi	$r29, $r29, -52	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 52	! calldir
	lw	$r31, -52($r29)	! calldir
	addi	$r3, $r0, 3
	lwcl	$f0, -44($r29)
	sw	$r2, -52($r29)
	sw	$r3, -56($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -60($r29)	! calldir
	addi	$r29, $r29, -60	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 60	! calldir
	lw	$r31, -60($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -60($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -64($r29)	! calldir
	addi	$r29, $r29, -64	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 64	! calldir
	lw	$r31, -64($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -64($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -68($r29)	! calldir
	addi	$r29, $r29, -68	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 68	! calldir
	lw	$r31, -68($r29)	! calldir
	lfh	$f0, 17279
	lfl	$f0, 0
	lw	$r3, -8($r29)
	sw	$r2, -68($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -72($r29)	! calldir
	addi	$r29, $r29, -72	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 72	! calldir
	lw	$r31, -72($r29)	! calldir
	addi	$r3, $r0, 50
	addi	$r4, $r0, -1
	lw	$r5, -8($r29)
	sw	$r2, -72($r29)
	sw	$r3, -76($r29)
	addi	$r3, $r4, 0	! g'_args
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -76($r29)
	sw	$r31, -80($r29)	! calldir
	addi	$r29, $r29, -80	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 80	! calldir
	lw	$r31, -80($r29)	! calldir
	lw	$r3, 0($r2)
	lw	$r4, -8($r29)
	sw	$r2, -80($r29)
	addi	$r2, $r4, 0	! g'_args
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -8($r29)
	sw	$r31, -84($r29)	! calldir
	addi	$r29, $r29, -84	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 84	! calldir
	lw	$r31, -84($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -8($r29)
	sw	$r2, -84($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -88($r29)	! calldir
	addi	$r29, $r29, -88	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 88	! calldir
	lw	$r31, -88($r29)	! calldir
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -88($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -92($r29)	! calldir
	addi	$r29, $r29, -92	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 92	! calldir
	lw	$r31, -92($r29)	! calldir
	lfh	$f0, 20078
	lfl	$f0, 27432
	lw	$r3, -8($r29)
	sw	$r2, -92($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -96($r29)	! calldir
	addi	$r29, $r29, -96	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 96	! calldir
	lw	$r31, -96($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -96($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -100($r29)	! calldir
	addi	$r29, $r29, -100	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 100	! calldir
	lw	$r31, -100($r29)	! calldir
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -100($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -104($r29)	! calldir
	addi	$r29, $r29, -104	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 104	! calldir
	lw	$r31, -104($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -104($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -108($r29)	! calldir
	addi	$r29, $r29, -108	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 108	! calldir
	lw	$r31, -108($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -108($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -112($r29)	! calldir
	addi	$r29, $r29, -112	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 112	! calldir
	lw	$r31, -112($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -112($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -116($r29)	! calldir
	addi	$r29, $r29, -116	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 116	! calldir
	lw	$r31, -116($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -116($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -120($r29)	! calldir
	addi	$r29, $r29, -120	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 120	! calldir
	lw	$r31, -120($r29)	! calldir
	addi	$r3, $r0, 2
	lw	$r4, -4($r29)
	sw	$r2, -120($r29)
	sw	$r3, -124($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -128($r29)	! calldir
	addi	$r29, $r29, -128	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 128	! calldir
	lw	$r31, -128($r29)	! calldir
	lw	$r3, -124($r29)
	lw	$r4, -4($r29)
	sw	$r2, -128($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -132($r29)	! calldir
	addi	$r29, $r29, -132	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 132	! calldir
	lw	$r31, -132($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -8($r29)
	sw	$r2, -132($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -136($r29)	! calldir
	addi	$r29, $r29, -136	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 136	! calldir
	lw	$r31, -136($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -136($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -140($r29)	! calldir
	addi	$r29, $r29, -140	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 140	! calldir
	lw	$r31, -140($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -140($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -144($r29)	! calldir
	addi	$r29, $r29, -144	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 144	! calldir
	lw	$r31, -144($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -144($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -148($r29)	! calldir
	addi	$r29, $r29, -148	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 148	! calldir
	lw	$r31, -148($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -148($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -152($r29)	! calldir
	addi	$r29, $r29, -152	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 152	! calldir
	lw	$r31, -152($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -152($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -156($r29)	! calldir
	addi	$r29, $r29, -156	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 156	! calldir
	lw	$r31, -156($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -156($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -160($r29)	! calldir
	addi	$r29, $r29, -160	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 160	! calldir
	lw	$r31, -160($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -4($r29)
	sw	$r2, -160($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -164($r29)	! calldir
	addi	$r29, $r29, -164	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 164	! calldir
	lw	$r31, -164($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	sw	$r3, -164($r29)
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -164($r29)
	sw	$r2, 0($r3)
	lw	$r2, -4($r29)
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	addi	$r2, $r0, 5
	sw	$r31, -168($r29)	! calldir
	addi	$r29, $r29, -168	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 168	! calldir
	lw	$r31, -168($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -4($r29)
	sw	$r2, -168($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -172($r29)	! calldir
	addi	$r29, $r29, -172	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 172	! calldir
	lw	$r31, -172($r29)	! calldir
	lwcl	$f0, -44($r29)
	lw	$r3, -56($r29)
	sw	$r2, -172($r29)
	addi	$r2, $r3, 0	! g'_args
	sw	$r31, -176($r29)	! calldir
	addi	$r29, $r29, -176	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 176	! calldir
	lw	$r31, -176($r29)	! calldir
	lw	$r3, -48($r29)
	lw	$r4, -172($r29)
	sw	$r2, -176($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -180($r29)	! calldir
	addi	$r29, $r29, -180	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 180	! calldir
	lw	$r31, -180($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r4, -176($r29)
	sw	$r4, 0($r3)
	lwcl	$f0, -44($r29)
	lw	$r5, -4($r29)
	sw	$r3, -180($r29)
	sw	$r2, -184($r29)
	addi	$r2, $r5, 0	! g'_args
	sw	$r31, -188($r29)	! calldir
	addi	$r29, $r29, -188	! calldir
	jal	.min_caml_create_float_array	! calldir
	addi	$r29, $r29, 188	! calldir
	lw	$r31, -188($r29)	! calldir
	addi	$r3, $r2, 0	! calldir
	lw	$r2, -4($r29)
	sw	$r3, -188($r29)
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 8
	sw	$r2, 4($r3)
	lw	$r2, -188($r29)
	sw	$r2, 0($r3)
	addi	$r2, $r3, 0
	addi	$r3, $r0, 180
	addi	$r4, $r30, 0
	addi	$r30, $r30, 12
	lwcl	$f0, -44($r29)
	swcl	$f0, 8($r4)
	sw	$r2, 4($r4)
	lw	$r2, -4($r29)
	sw	$r2, 0($r4)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -192($r29)	! calldir
	addi	$r29, $r29, -192	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 192	! calldir
	lw	$r31, -192($r29)	! calldir
	lw	$r3, -8($r29)
	lw	$r4, -4($r29)
	sw	$r2, -192($r29)
	addi	$r2, $r3, 0	! g'_args
	addi	$r3, $r4, 0	! g'_args
	sw	$r31, -196($r29)	! calldir
	addi	$r29, $r29, -196	! calldir
	jal	.min_caml_create_array	! calldir
	addi	$r29, $r29, 196	! calldir
	lw	$r31, -196($r29)	! calldir
	addi	$r3, $r30, 0
	addi	$r30, $r30, 28
	la	$r4, .read_screen_settings.3026
	sw	$r4, 0($r3)
	lw	$r4, -64($r29)
	sw	$r4, 24($r3)
	lw	$r5, -156($r29)
	sw	$r5, 20($r3)
	lw	$r6, -152($r29)
	sw	$r6, 16($r3)
	lw	$r7, -148($r29)
	sw	$r7, 12($r3)
	lw	$r8, -60($r29)
	sw	$r8, 8($r3)
	lw	$r8, -36($r29)
	sw	$r8, 4($r3)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 28
	la	$r10, .read_light.3028
	sw	$r10, 0($r9)
	lw	$r10, -20($r29)
	sw	$r10, 24($r9)
	lw	$r11, -16($r29)
	sw	$r11, 20($r9)
	lw	$r12, -12($r29)
	sw	$r12, 16($r9)
	sw	$r8, 12($r9)
	lw	$r13, -68($r29)
	sw	$r13, 8($r9)
	lw	$r14, -72($r29)
	sw	$r14, 4($r9)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 24
	la	$r16, .read_nth_object.3033
	sw	$r16, 0($r15)
	sw	$r10, 20($r15)
	sw	$r11, 16($r15)
	sw	$r12, 12($r15)
	sw	$r8, 8($r15)
	lw	$r8, -52($r29)
	sw	$r8, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r17, .read_object.3035
	sw	$r17, 0($r16)
	sw	$r15, 8($r16)
	lw	$r17, -40($r29)
	sw	$r17, 4($r16)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 16
	la	$r19, .read_net_item.3039
	sw	$r19, 0($r18)
	sw	$r10, 12($r18)
	sw	$r11, 8($r18)
	sw	$r12, 4($r18)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 20
	la	$r20, .read_or_network.3041
	sw	$r20, 0($r19)
	sw	$r18, 16($r19)
	sw	$r10, 12($r19)
	sw	$r11, 8($r19)
	sw	$r12, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 24
	la	$r21, .read_and_network.3043
	sw	$r21, 0($r20)
	sw	$r18, 20($r20)
	sw	$r10, 16($r20)
	sw	$r11, 12($r20)
	sw	$r12, 8($r20)
	lw	$r21, -80($r29)
	sw	$r21, 4($r20)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 8
	la	$r23, .solver_rect_surface.3047
	sw	$r23, 0($r22)
	lw	$r23, -88($r29)
	sw	$r23, 4($r22)
	addi	$r24, $r30, 0
	addi	$r30, $r30, 8
	la	$r25, .solver_surface.3062
	sw	$r25, 0($r24)
	sw	$r23, 4($r24)
	addi	$r25, $r30, 0
	addi	$r30, $r30, 8
	la	$r26, .solver_second.3081
	sw	$r26, 0($r25)
	sw	$r23, 4($r25)
	addi	$r26, $r30, 0
	addi	$r30, $r30, 20
	la	$r27, .solver.3087
	sw	$r27, 0($r26)
	sw	$r25, 16($r26)
	sw	$r22, 12($r26)
	sw	$r23, 8($r26)
	sw	$r8, 4($r26)
	addi	$r27, $r30, 0
	addi	$r30, $r30, 8
	la	$r28, .solver_rect_fast.3091
	sw	$r28, 0($r27)
	sw	$r23, 4($r27)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 8
	sw	$r20, -196($r29)
	la	$r20, .solver_second_fast.3104
	sw	$r20, 0($r28)
	sw	$r23, 4($r28)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 8
	la	$r12, .solver_second_fast2.3121
	sw	$r12, 0($r20)
	sw	$r23, 4($r20)
	addi	$r12, $r30, 0
	addi	$r30, $r30, 8
	la	$r11, .iter_setup_dirvec_constants.3140
	sw	$r11, 0($r12)
	sw	$r8, 4($r12)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 8
	la	$r10, .setup_startp_constants.3145
	sw	$r10, 0($r11)
	sw	$r8, 4($r11)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 8
	sw	$r9, -200($r29)
	la	$r9, .check_all_inside.3170
	sw	$r9, 0($r10)
	sw	$r8, 4($r10)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 40
	sw	$r18, -204($r29)
	la	$r18, .shadow_check_and_group.3176
	sw	$r18, 0($r9)
	lw	$r18, -176($r29)
	sw	$r18, 36($r9)
	sw	$r28, 32($r9)
	sw	$r27, 28($r9)
	sw	$r23, 24($r9)
	sw	$r8, 20($r9)
	sw	$r13, 16($r9)
	sw	$r15, -208($r29)
	lw	$r15, -100($r29)
	sw	$r15, 12($r9)
	sw	$r16, -212($r29)
	lw	$r16, -184($r29)
	sw	$r16, 8($r9)
	sw	$r10, 4($r9)
	sw	$r19, -216($r29)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 12
	sw	$r3, -220($r29)
	la	$r3, .shadow_check_one_or_group.3179
	sw	$r3, 0($r19)
	sw	$r9, 8($r19)
	sw	$r21, 4($r19)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 44
	sw	$r12, -224($r29)
	la	$r12, .shadow_check_one_or_matrix.3182
	sw	$r12, 0($r3)
	sw	$r18, 40($r3)
	sw	$r28, 36($r3)
	sw	$r27, 32($r3)
	sw	$r23, 28($r3)
	sw	$r19, 24($r3)
	sw	$r9, 20($r3)
	sw	$r8, 16($r3)
	sw	$r15, 12($r3)
	sw	$r16, 8($r3)
	sw	$r21, 4($r3)
	addi	$r9, $r30, 0
	addi	$r30, $r30, 48
	la	$r12, .solve_each_element.3185
	sw	$r12, 0($r9)
	lw	$r12, -96($r29)
	sw	$r12, 44($r9)
	lw	$r19, -140($r29)
	sw	$r19, 40($r9)
	sw	$r24, 36($r9)
	sw	$r25, 32($r9)
	sw	$r22, 28($r9)
	sw	$r23, 24($r9)
	sw	$r8, 20($r9)
	lw	$r28, -92($r29)
	sw	$r28, 16($r9)
	sw	$r15, 12($r9)
	lw	$r16, -104($r29)
	sw	$r16, 8($r9)
	sw	$r10, 4($r9)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 12
	la	$r6, .solve_one_or_network.3189
	sw	$r6, 0($r18)
	sw	$r9, 8($r18)
	sw	$r21, 4($r18)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 48
	la	$r5, .trace_or_matrix.3193
	sw	$r5, 0($r6)
	sw	$r12, 44($r6)
	sw	$r19, 40($r6)
	sw	$r24, 36($r6)
	sw	$r25, 32($r6)
	sw	$r22, 28($r6)
	sw	$r23, 24($r6)
	sw	$r26, 20($r6)
	sw	$r18, 16($r6)
	sw	$r9, 12($r6)
	sw	$r8, 8($r6)
	sw	$r21, 4($r6)
	addi	$r5, $r30, 0
	addi	$r30, $r30, 44
	la	$r9, .solve_each_element_fast.3199
	sw	$r9, 0($r5)
	sw	$r12, 40($r5)
	lw	$r9, -144($r29)
	sw	$r9, 36($r5)
	sw	$r20, 32($r5)
	sw	$r27, 28($r5)
	sw	$r23, 24($r5)
	sw	$r8, 20($r5)
	sw	$r28, 16($r5)
	sw	$r15, 12($r5)
	sw	$r16, 8($r5)
	sw	$r10, 4($r5)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r18, .solve_one_or_network_fast.3203
	sw	$r18, 0($r10)
	sw	$r5, 8($r10)
	sw	$r21, 4($r10)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 36
	la	$r22, .trace_or_matrix_fast.3207
	sw	$r22, 0($r18)
	sw	$r12, 32($r18)
	sw	$r20, 28($r18)
	sw	$r27, 24($r18)
	sw	$r23, 20($r18)
	sw	$r10, 16($r18)
	sw	$r5, 12($r18)
	sw	$r8, 8($r18)
	sw	$r21, 4($r18)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 44
	la	$r24, .judge_intersection_fast.3211
	sw	$r24, 0($r22)
	sw	$r18, 40($r22)
	sw	$r12, 36($r22)
	sw	$r20, 32($r22)
	sw	$r27, 28($r22)
	sw	$r23, 24($r22)
	sw	$r10, 20($r22)
	sw	$r5, 16($r22)
	lw	$r5, -84($r29)
	sw	$r5, 12($r22)
	sw	$r8, 8($r22)
	sw	$r21, 4($r22)
	addi	$r10, $r30, 0
	addi	$r30, $r30, 12
	la	$r20, .get_nvector_second.3217
	sw	$r20, 0($r10)
	lw	$r20, -108($r29)
	sw	$r20, 8($r10)
	sw	$r15, 4($r10)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 8
	la	$r24, .utexture.3222
	sw	$r24, 0($r23)
	lw	$r24, -112($r29)
	sw	$r24, 4($r23)
	addi	$r25, $r30, 0
	addi	$r30, $r30, 44
	la	$r26, .trace_reflections.3229
	sw	$r26, 0($r25)
	sw	$r18, 40($r25)
	sw	$r12, 36($r25)
	sw	$r24, 32($r25)
	sw	$r3, 28($r25)
	lw	$r26, -120($r29)
	sw	$r26, 24($r25)
	lw	$r27, -192($r29)
	sw	$r27, 20($r25)
	sw	$r5, 16($r25)
	sw	$r20, 12($r25)
	sw	$r28, 8($r25)
	sw	$r16, 4($r25)
	addi	$r21, $r30, 0
	addi	$r30, $r30, 88
	la	$r27, .trace_ray.3234
	sw	$r27, 0($r21)
	sw	$r23, 84($r21)
	sw	$r25, 80($r21)
	sw	$r6, 76($r21)
	sw	$r12, 72($r21)
	sw	$r24, 68($r21)
	sw	$r9, 64($r21)
	sw	$r19, 60($r21)
	sw	$r3, 56($r21)
	sw	$r11, 52($r21)
	sw	$r26, 48($r21)
	sw	$r5, 44($r21)
	sw	$r8, 40($r21)
	sw	$r20, 36($r21)
	sw	$r2, 32($r21)
	sw	$r17, 28($r21)
	sw	$r13, 24($r21)
	sw	$r28, 20($r21)
	sw	$r15, 16($r21)
	sw	$r16, 12($r21)
	sw	$r10, 8($r21)
	sw	$r14, 4($r21)
	addi	$r6, $r30, 0
	addi	$r30, $r30, 60
	la	$r14, .trace_diffuse_ray.3240
	sw	$r14, 0($r6)
	sw	$r23, 56($r6)
	sw	$r18, 52($r6)
	sw	$r12, 48($r6)
	sw	$r24, 44($r6)
	sw	$r3, 40($r6)
	sw	$r5, 36($r6)
	sw	$r8, 32($r6)
	sw	$r20, 28($r6)
	sw	$r13, 24($r6)
	sw	$r28, 20($r6)
	sw	$r15, 16($r6)
	sw	$r16, 12($r6)
	sw	$r10, 8($r6)
	lw	$r12, -116($r29)
	sw	$r12, 4($r6)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 60
	la	$r18, .iter_trace_diffuse_rays.3243
	sw	$r18, 0($r14)
	sw	$r23, 56($r14)
	sw	$r6, 52($r14)
	sw	$r24, 48($r14)
	sw	$r3, 44($r14)
	sw	$r5, 40($r14)
	sw	$r8, 36($r14)
	sw	$r20, 32($r14)
	sw	$r13, 28($r14)
	sw	$r22, 24($r14)
	sw	$r28, 20($r14)
	sw	$r15, 16($r14)
	sw	$r16, 12($r14)
	sw	$r10, 8($r14)
	sw	$r12, 4($r14)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 24
	la	$r10, .trace_diffuse_ray_80percent.3252
	sw	$r10, 0($r3)
	sw	$r9, 20($r3)
	sw	$r11, 16($r3)
	sw	$r17, 12($r3)
	sw	$r14, 8($r3)
	lw	$r10, -168($r29)
	sw	$r10, 4($r3)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 36
	la	$r16, .calc_diffuse_using_1point.3256
	sw	$r16, 0($r15)
	sw	$r6, 32($r15)
	sw	$r9, 28($r15)
	sw	$r11, 24($r15)
	sw	$r26, 20($r15)
	sw	$r17, 16($r15)
	sw	$r14, 12($r15)
	sw	$r10, 8($r15)
	sw	$r12, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r18, .calc_diffuse_using_5points.3259
	sw	$r18, 0($r16)
	sw	$r26, 8($r16)
	sw	$r12, 4($r16)
	addi	$r18, $r30, 0
	addi	$r30, $r30, 20
	la	$r20, .do_without_neighbors.3265
	sw	$r20, 0($r18)
	sw	$r3, 16($r18)
	sw	$r26, 12($r18)
	sw	$r12, 8($r18)
	sw	$r15, 4($r18)
	addi	$r3, $r30, 0
	addi	$r30, $r30, 16
	la	$r20, .try_exploit_neighbors.3281
	sw	$r20, 0($r3)
	sw	$r18, 12($r3)
	sw	$r16, 8($r3)
	sw	$r15, 4($r3)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 32
	la	$r22, .pretrace_diffuse_rays.3294
	sw	$r22, 0($r20)
	sw	$r6, 28($r20)
	sw	$r9, 24($r20)
	sw	$r11, 20($r20)
	sw	$r17, 16($r20)
	sw	$r14, 12($r20)
	sw	$r10, 8($r20)
	sw	$r12, 4($r20)
	addi	$r22, $r30, 0
	addi	$r30, $r30, 68
	la	$r23, .pretrace_pixels.3297
	sw	$r23, 0($r22)
	sw	$r4, 64($r22)
	sw	$r21, 60($r22)
	sw	$r6, 56($r22)
	sw	$r9, 52($r22)
	sw	$r19, 48($r22)
	sw	$r11, 44($r22)
	sw	$r7, 40($r22)
	lw	$r4, -136($r29)
	sw	$r4, 36($r22)
	sw	$r26, 32($r22)
	lw	$r6, -160($r29)
	sw	$r6, 28($r22)
	sw	$r20, 24($r22)
	sw	$r17, 20($r22)
	sw	$r14, 16($r22)
	lw	$r6, -132($r29)
	sw	$r6, 12($r22)
	sw	$r10, 8($r22)
	sw	$r12, 4($r22)
	addi	$r7, $r30, 0
	addi	$r30, $r30, 28
	la	$r9, .scan_pixel.3308
	sw	$r9, 0($r7)
	sw	$r3, 24($r7)
	sw	$r26, 20($r7)
	lw	$r9, -128($r29)
	sw	$r9, 16($r7)
	sw	$r18, 12($r7)
	sw	$r16, 8($r7)
	sw	$r15, 4($r7)
	addi	$r11, $r30, 0
	addi	$r30, $r30, 44
	la	$r12, .scan_line.3314
	sw	$r12, 0($r11)
	sw	$r3, 40($r11)
	lw	$r3, -156($r29)
	sw	$r3, 36($r11)
	lw	$r12, -152($r29)
	sw	$r12, 32($r11)
	sw	$r7, 28($r11)
	sw	$r4, 24($r11)
	sw	$r26, 20($r11)
	sw	$r22, 16($r11)
	sw	$r9, 12($r11)
	sw	$r6, 8($r11)
	sw	$r18, 4($r11)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .calc_dirvec.3334
	sw	$r15, 0($r14)
	sw	$r10, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 8
	la	$r16, .calc_dirvecs.3342
	sw	$r16, 0($r15)
	sw	$r14, 4($r15)
	addi	$r16, $r30, 0
	addi	$r30, $r30, 12
	la	$r18, .calc_dirvec_rows.3347
	sw	$r18, 0($r16)
	sw	$r15, 8($r16)
	sw	$r14, 4($r16)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 8
	la	$r15, .create_dirvec_elements.3353
	sw	$r15, 0($r14)
	sw	$r17, 4($r14)
	addi	$r15, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, .create_dirvecs.3356
	sw	$r18, 0($r15)
	sw	$r17, 12($r15)
	sw	$r10, 8($r15)
	sw	$r14, 4($r15)
	addi	$r14, $r30, 0
	addi	$r30, $r30, 16
	la	$r18, .init_dirvec_constants.3358
	sw	$r18, 0($r14)
	sw	$r8, 12($r14)
	sw	$r17, 8($r14)
	lw	$r18, -224($r29)
	sw	$r18, 4($r14)
	addi	$r19, $r30, 0
	addi	$r30, $r30, 24
	la	$r20, .init_vecset_constants.3361
	sw	$r20, 0($r19)
	sw	$r8, 20($r19)
	sw	$r17, 16($r19)
	sw	$r18, 12($r19)
	sw	$r14, 8($r19)
	sw	$r10, 4($r19)
	addi	$r20, $r30, 0
	addi	$r30, $r30, 28
	la	$r21, .setup_rect_reflection.3372
	sw	$r21, 0($r20)
	lw	$r21, -192($r29)
	sw	$r21, 24($r20)
	sw	$r8, 20($r20)
	sw	$r2, 16($r20)
	sw	$r17, 12($r20)
	sw	$r13, 8($r20)
	sw	$r18, 4($r20)
	addi	$r23, $r30, 0
	addi	$r30, $r30, 28
	la	$r24, .setup_surface_reflection.3375
	sw	$r24, 0($r23)
	sw	$r21, 24($r23)
	sw	$r8, 20($r23)
	sw	$r2, 16($r23)
	sw	$r17, 12($r23)
	sw	$r13, 8($r23)
	sw	$r18, 4($r23)
	addi	$r28, $r30, 0
	addi	$r30, $r30, 140
	la	$r2, .rt.3380
	sw	$r2, 0($r28)
	lw	$r2, -176($r29)
	sw	$r2, 136($r28)
	sw	$r23, 132($r28)
	sw	$r20, 128($r28)
	sw	$r3, 124($r28)
	sw	$r12, 120($r28)
	sw	$r7, 116($r28)
	sw	$r4, 112($r28)
	sw	$r11, 108($r28)
	lw	$r2, -220($r29)
	sw	$r2, 104($r28)
	lw	$r2, -216($r29)
	sw	$r2, 100($r28)
	lw	$r2, -212($r29)
	sw	$r2, 96($r28)
	lw	$r2, -208($r29)
	sw	$r2, 92($r28)
	lw	$r2, -204($r29)
	sw	$r2, 88($r28)
	lw	$r2, -200($r29)
	sw	$r2, 84($r28)
	lw	$r2, -20($r29)
	sw	$r2, 80($r28)
	lw	$r2, -16($r29)
	sw	$r2, 76($r28)
	lw	$r2, -12($r29)
	sw	$r2, 72($r28)
	lw	$r2, -196($r29)
	sw	$r2, 68($r28)
	sw	$r22, 64($r28)
	sw	$r5, 60($r28)
	sw	$r8, 56($r28)
	sw	$r17, 52($r28)
	lw	$r2, -180($r29)
	sw	$r2, 48($r28)
	sw	$r13, 44($r28)
	sw	$r18, 40($r28)
	sw	$r19, 36($r28)
	sw	$r14, 32($r28)
	sw	$r9, 28($r28)
	sw	$r6, 24($r28)
	sw	$r10, 20($r28)
	sw	$r15, 16($r28)
	lw	$r2, -184($r29)
	sw	$r2, 12($r28)
	sw	$r16, 8($r28)
	lw	$r2, -80($r29)
	sw	$r2, 4($r28)
	addi	$r2, $r0, 128
	addi	$r3, $r2, 0	! g'_args
	sw	$r31, -228($r29)	! callcls
	lw	$r27, 0($r28)	! callcls
	addi	$r29, $r29, -228	! callcls
	jal	.mendoi2.562168	! callcls
	j	.mendoi1.562167	! callcls
.mendoi2.562168:	! callcls
	jr	$r27	! callcls
.mendoi1.562167:	! callcls
	addi	$r29, $r29, 228	! callcls
	lw	$r31, -228($r29)	! callcls
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
.min_caml_sqrt:		! 引数 $f0
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
	sub.s	$f1, $f1, $f2
	addi	$r2, $r2, -1
	bne	$r2, $r0, .SQRT_SUB	! ループ
	fmove	$f0, $f1
	jr	$r31

! * sqrt(中でfinvを呼び出すversion)
!.min_caml_sqrt:		! 引数 $f0
!	addi	$r2, $r0, 10
!	lfh	$f1, 16256	! $f1 初期値 1.0
!	lfl	$f1, 0
!	lfh	$f4, 16384	! $f4 定数 2.0
!	lfl	$f4, 0
!.SQRT_SUB:		! ニュートン法10回, 初期値($f1 1.0)	x $f0, y $f1
!	mul.s	$f2, $f1, $f1
!	sub.s	$f2, $f2, $f0		! $f2 = y *. y -. x
!	mul.s	$f3, $f4, $f1		! $f3 = 2.0 *. y
!!	div.s	$f2, $f2, $f3		! $f2 = (y *. y -. x) /. (2.0 *. y)
!	sw	$r31, -4($r29)	
!	jal	.min_caml_myfinv_SQ	! f3 = 1.0 / f3
!	lw	$r31, -4($r29)	
!	mul.s	$f2, $f2, $f3			! 逆数とって掛け算
!	sub.s	$f1, $f1, $f2
!	addi	$r2, $r2, -1
!	bne	$r2, $r0, .SQRT_SUB	! ループ
!	fmove	$f0, $f1
!	jr	$r31

! * finv
!# (Int32.to_int (Int32.bits_of_float 0.001)) land 0x0000ffff
!-  int = 4719
!# (Int32.to_int (Int32.bits_of_float 0.001)) lsr 16
!-  int = 14979
!.min_caml_myfinv:		! 引数 $f0(a)	使うレジスタ(r3, f11 〜 f15)
!	lfh	$f11, 16384	! $f11 = 2.0 定数
!	lfl	$f11, 0		
!	lfh	$f12, 14979	! $f12 初期値x 0.0001
!	lfl	$f12, 4719
!	addi	$r3, $r0, 15	! 反復回数
!	lfh	$f15, 0		! f15 = 0.0
!	lfl	$f15, 0
!	c.le.s	$f0, $f15		! if (argv[0] <= 0.0)
!	bclt	.FINV_NEGATIVE		! 真だったら飛ぶ
!.FINV_SUB:		
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
!	sw	$r31, 0($r30)
!	jal	.FINV_SUB
!	lw	$r31, 0($r30)
!	fneg	$f0, $f0
!	jr	$r31

!sqrtから呼び出しやすくした	
!.min_caml_myfinv_SQ:		! 引数 $f3(a)	使うレジスタ(r3, f11 〜 f15)
!	lfh	$f11, 16384	! $f11 = 2.0 定数
!	lfl	$f11, 0		
!	lfh	$f12, 14979	! $f12 初期値x 0.0001
!	lfl	$f12, 4719
!	addi	$r3, $r0, 15	! 反復回数
!	lfh	$f15, 0		! f15 = 0.0
!	lfl	$f15, 0
!	c.le.s	$f3, $f15		! if (argv[0] <= 0.0)
!	bclt	.FINV_NEGATIVE_SQ		! 真だったら飛ぶ
!.FINV_SUB_SQ:		
!	mul.s	$f13, $f11, $f12	! $f2 = 2.0 * x		($f11 * $f14)
!	mul.s	$f14, $f12, $f12	! $f3 = x * x		($f12 * $f12)
!	mul.s	$f14, $f14, $f3		! $f3 = x * x * a	($f14 * $f0)
!	sub.s	$f12, $f13, $f14	! $f1 = 2.0 * x - x * x * a
!	addi	$r3, $r3, -1
!	bne	$r3, $r0, .FINV_SUB_SQ
!	fmove	$f3, $f12
!	jr	$r31
!.FINV_NEGATIVE_SQ:
!	fneg	$f3, $f3
!	sw	$r31, 0($r30)
!	jal	.FINV_SUB_SQ
!	lw	$r31, 0($r30)
!	fneg	$f3, $f3
!	jr	$r31

let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
print_int (fib 30)

(*
<mincamlコンパイラによる仮想コード> [virtual]
- : (Id.l * float) list * Asm.fundef list * Asm.t =
([],
 [{Asm.name = Id.L "fib"; Asm.args = ["n"]; Asm.fargs = [];
   Asm.body =
    Asm.Let (("Ti12", Type.Int), Asm.Set 1,
     Asm.Ans
      (Asm.IfLE ("n", Asm.V "Ti12", Asm.Ans (Asm.Mov "n"),
        Asm.Let (("Ti13", Type.Int), Asm.Set 1,
         Asm.Let (("Ti14", Type.Int), Asm.Sub ("n", Asm.V "Ti13"),
          Asm.Let (("Ti15", Type.Int),
           Asm.CallDir (Id.L "fib", ["Ti14"], []),
           Asm.Let (("Ti16", Type.Int), Asm.Set 2,
            Asm.Let (("Ti17", Type.Int), Asm.Sub ("n", Asm.V "Ti16"),
             Asm.Let (("Ti18", Type.Int),
              Asm.CallDir (Id.L "fib", ["Ti17"], []),
              Asm.Ans (Asm.Add ("Ti15", Asm.V "Ti18")))))))))));
   Asm.ret = Type.Int}],
 Asm.Let (("Ti10", Type.Int), Asm.Set 30,
  Asm.Let (("Ti11", Type.Int), Asm.CallDir (Id.L "fib", ["Ti10"], []),
   Asm.Ans (Asm.CallDir (Id.L "min_caml_print_int", ["Ti11"], [])))))
*)
  
(*	SPARC用ISA
.section	".rodata"
.align	8
.section	".text"
fib.10:
	cmp	%i2, 1
	bg	ble_else.24
	nop
	retl	
	nop
ble_else.24:
	sub	%i2, 1, %i3	
	st	%i2, [%i0 + 0]	
	mov	%i3, %i2	
	st	%o7, [%i0 + 4]  (link退避)
	call	fib.10
	add	%i0, 8, %i0	! delay slot(sp移動)
	sub	%i0, 8, %i0	(spを戻す)
	ld	[%i0 + 4], %o7		
	ld	[%i0 + 0], %i3
	sub	%i3, 2, %i3
	st	%i2, [%i0 + 4]
	mov	%i3, %i2
	st	%o7, [%i0 + 12]
	call	fib.10
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 4], %i3
	add	%i3, %i2, %i2
	retl
	nop
.global	min_caml_start
min_caml_start:
	save	%sp, -112, %sp
	set	30, %i2
	st	%o7, [%i0 + 4]
	call	fib.10
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	st	%o7, [%i0 + 4]
	call	min_caml_print_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	ret
	restore
*)
(*
(registerを自作CPU用に書き換え)
- : (Id.l * float) list * AsmMy.fundef list * AsmMy.t =
([],
 [{AsmMy.name = Id.L "fib"; AsmMy.args = ["%r2"]; AsmMy.fargs = [];
   AsmMy.body =
    AsmMy.Let (("%r3", Type.Int), AsmMy.Set 1,
     AsmMy.Ans
      (AsmMy.IfLE ("%r2", AsmMy.V "%r3", AsmMy.Ans (AsmMy.Mov "%r2"),
        AsmMy.Let (("%r3", Type.Int), AsmMy.Set 1,
         AsmMy.Let (("%r3", Type.Int), AsmMy.Sub ("%r2", AsmMy.V "%r3"),
          AsmMy.Let (("Tu10", Type.Unit), AsmMy.Save ("%r2", "n"),
           AsmMy.Let (("%r2", Type.Int),
            AsmMy.CallDir (Id.L "fib", ["%r3"], []),
            AsmMy.Let (("%r3", Type.Int), AsmMy.Set 2,
             AsmMy.Let (("%r4", Type.Int), AsmMy.Restore "n",
              AsmMy.Let (("%r3", Type.Int), AsmMy.Sub ("%r4", AsmMy.V "%r3"),
               AsmMy.Let (("Tu11", Type.Unit), AsmMy.Save ("%r2", "Ti6"),
                AsmMy.Let (("%r2", Type.Int),
                 AsmMy.CallDir (Id.L "fib", ["%r3"], []),
                 AsmMy.Let (("%r3", Type.Int), AsmMy.Restore "Ti6",
                  AsmMy.Ans (AsmMy.Add ("%r3", AsmMy.V "%r2")))))))))))))));
   AsmMy.ret = Type.Int}],
 AsmMy.Let (("%r2", Type.Int), AsmMy.Set 30,
  AsmMy.Let (("%r2", Type.Int), AsmMy.CallDir (Id.L "fib", ["%r2"], []),
   AsmMy.Ans (AsmMy.CallDir (Id.L "min_caml_print_int", ["%r2"], [])))))

(SPARC用)
([],
 [{Asm.name = Id.L "fib"; Asm.args = ["%i2"]; Asm.fargs = [];
   Asm.body =
    Asm.Let (("%i3", Type.Int), Asm.Set 1,
     Asm.Ans
      (Asm.IfLE ("%i2", Asm.V "%i3", Asm.Ans (Asm.Mov "%i2"),
        Asm.Let (("%i3", Type.Int), Asm.Set 1,
         Asm.Let (("%i3", Type.Int), Asm.Sub ("%i2", Asm.V "%i3"),
          Asm.Let (("Tu10", Type.Unit), Asm.Save ("%i2", "n"),
           Asm.Let (("%i2", Type.Int), Asm.CallDir (Id.L "fib", ["%i3"], []),
            Asm.Let (("%i3", Type.Int), Asm.Set 2,
             Asm.Let (("%i4", Type.Int), Asm.Restore "n",
              Asm.Let (("%i3", Type.Int), Asm.Sub ("%i4", Asm.V "%i3"),
               Asm.Let (("Tu11", Type.Unit), Asm.Save ("%i2", "Ti6"),
                Asm.Let (("%i2", Type.Int),
                 Asm.CallDir (Id.L "fib", ["%i3"], []),
                 Asm.Let (("%i3", Type.Int), Asm.Restore "Ti6",
                  Asm.Ans (Asm.Add ("%i3", Asm.V "%i2")))))))))))))));
   Asm.ret = Type.Int}],
 Asm.Let (("%i2", Type.Int), Asm.Set 30,
  Asm.Let (("%i2", Type.Int), Asm.CallDir (Id.L "fib", ["%i2"], []),
   Asm.Ans (Asm.CallDir (Id.L "min_caml_print_int", ["%i2"], [])))))
*)
(* 一応自分のやつ
.section	".rodata"
.align	8
.section	".text"
fib.10:
	li	%r3, 1
	bgt	%r2, %r3, ble_else.24
	jr %r31
ble_else.24:
	addi	%r3, %r2, -1
	sw	%r2, 0(%r29)
	move	%r2, %r3
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	j	fib.10
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	lw	%r3, 0(%r29)
	addi	%r3, %r3, -2
	sw	%r2, 4(%r29)
	move	%r2, %r3
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	j	fib.10
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r3, 4(%r29)
	addu	%r2, %r3, %r2
	jr %r31
.global	min_caml_start
min_caml_start:
	li	%r2, 30
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	j	fib.10
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	j	min_caml_print_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
*)

let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
fib 30

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
(* 自分のやつ
.section	".rodata"
.align	8
.section	".text"
	j	min_caml_start
fib.10:
	li	%r3, 1
	bgt	%r2, %r3, ble_else.24
	jr	%r31
ble_else.24:
	addi	%r3, %r2, -1
	sw	%r2, 0(%r29)
	move	%r2, %r3
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jal	fib.10
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	lw	%r3, 0(%r29)
	addi	%r3, %r3, -2
	sw	%r2, 4(%r29)
	move	%r2, %r3
	sw	%r31, 12(%r29)
	addi	%r29, %r29, 16
	jal	fib.10
	addi	%r29, %r29, -16
	lw	%r31, 12(%r29)
	lw	%r3, 4(%r29)
	addu	%r2, %r3, %r2
	jr	%r31
.global	min_caml_start
min_caml_start:
	li	%r29, 1024
	li	%r2, 30
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jal	fib.10
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	sw	%r31, 4(%r29)
	addi	%r29, %r29, 8
	jal	min_caml_print_int
	addi	%r29, %r29, -8
	lw	%r31, 4(%r29)
	halt
*)

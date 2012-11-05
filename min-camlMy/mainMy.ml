let limit = ref 1000
let print = ref false

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    (* let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f (ElimEqExp.f e))))) in *)
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  TypingMy.extenv := M.empty;
  let exp1 = TypingMy.f (ParserMy.exp LexerMy.token l) in
  (if !print 
   then ( Printf.eprintf "\n** PRINTING typed exp **\n";
	  Debug_syntax.p_syn exp1 0;
	  Printf.eprintf "**** END ***************\n\n")
   else ());
  let exp2 = KNormal.f exp1 in
  (if !print 
   then ( Printf.eprintf "\n** PRINTING knormal exp **\n";
	  Debug_knormal.p_kno exp2 0;
	  Printf.eprintf "**** END ***************\n\n")
   else ());
  let Closure.Prog(fundefs, exp3) as exp3' = Closure.f (iter !limit (Alpha.f exp2)) in
  (if !print 
   then ( Printf.eprintf "\n** PRINTING closure exp **\n";
	  Debug_closure.p_clo exp3 0; Debug_closure.p_topl fundefs;
	  Printf.eprintf "**** END ***************\n\n")
   else ());
  EmitMy.f outchan (RegAllocMy.f (SimmMy.f (VirtualMy.f exp3')))

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  try
    lexbuf outchan (Lexing.from_channel inchan)		(* compile *)
  with
    | TypingMy.Error (p, t1, t2)
      -> let (l,o,c) = Debug_util.showPos p in
  	 (failwith (Printf.sprintf "type error: < %s =/= %s > near position (%d, %d)" (Debug_util.tyToStr t1) (Debug_util.tyToStr t2) l o))
    | e -> (close_in inchan; raise e)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-print", Arg.Unit(fun _ -> print := true), "printing expresion tree") ]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files

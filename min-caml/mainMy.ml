let limit = ref 1000

let rec iter n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

let lexbuf outchan l = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing_pos.extenv := M.empty;
  EmitMy.f outchan
    (RegAllocMy.f
       (SimmMy.f
	  (VirtualMy.f
	     (Closure.f
		(iter !limit
		   (Alpha.f
		      (KNormal.f
			 (Typing_pos.f
			    (Parser_pos.exp Lexer_pos.token l)))))))))

let string s = lexbuf stdout (Lexing.from_string s) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)

let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let tmpchan = open_out (f ^ "__.ml") in
  let libchan1 = open_in ("./test/lib/mylib_ml.ml") in
  let libchan2 = open_in ("./test/lib/mylib_s.s") in	(* ����ѥ��뤷����ˤ��äĤ��� *)
  let outchan = open_out (f ^ ".s") in
  try while true do
      output_string tmpchan ((input_line libchan1) ^ "\n")	(*����������Ƭ�ˤ��äĤ���(mylib_ml)*)
  done with End_of_file ->
    close_in libchan1;
      try while true do
	  output_string tmpchan ((input_line inchan) ^ "\n")
      done with End_of_file ->
	close_in inchan; close_out tmpchan;
	let inchan' = open_in (f ^ "__.ml") in
	lexbuf outchan (Lexing.from_channel inchan');	(* compile *)
	close_in inchan';
	try while true do
	    output_string outchan ((input_line libchan2) ^ "\n")	(* asm�������θ��ˤ��äĤ���(mylib_s) *)
        done with End_of_file ->
	  close_in libchan2;
	  close_out outchan


let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files

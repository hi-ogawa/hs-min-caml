(* thanks to http://ameblo.jp/nuevo-namasute/entry-10006785787.html
   and http://blog.livedoor.jp/azounoman/archives/50232574.html *)
let rec f n =
  if n < 0 then () else
  (print_int n;
   print_newline ();
   let a = Array.create 1 f in
   a.(0) (n - 1)) in
f 3	(* 3までは動く *)

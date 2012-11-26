let rec f0 x y z = x + y - z in
let f1 = f0 10 in
let f2 = f1 20 in
print_int ((f2 5) + ((f0 10) 20) 5)

(* let rec f0 x y = x + y in *)
(* print_char ((f0 1) 2) *)

(* 関数を引数に取り、それを部分適用する関数 *)
(* let rec f g z = g z in *)
(* let rec h0 x y = x + y in *)
(* let h1 = f h0 10 in *)
(* print_char (h1 20) *)

(* let rec f g z = g z in *)
(* let rec g0 x = x + x in *)
(* print_char (f g0 10) *)

(* let f1 = (let rec f2 y = f0 10 y in f2) in *)
(* let x = (fun x y -> x + y) 10 20 in *)
(* print_char x *)

(* let x = (let rec lam x y = x + x in lam) 10 20 in *)
(* print_char x *)

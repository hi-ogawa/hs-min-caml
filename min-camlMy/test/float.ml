(* このテストを実行する場合は、Main.file等を呼び出す前に
   Typing.extenvを:=等で書き換えて、あらかじめsinやcosなど
   外部関数の型を陽に指定する必要があります（そうしないと
   MinCamlでは勝手にint -> intと推論されるため）。 *)
(* print_int *)
(*   (int_of_float *)
(*      ((sin (cos (sqrt (abs_float (-12.3)))) *)
(* 	 +. 4.5 -. 6.7 *. 8.9 /. 1.23456789) *)
(* 	*. float_of_int 1000000)) *)

(* let rec testprint x = *)
(*   if x >= 360.0 *)
(*   then () *)
(*   else *)
(*     print_int (int_of_float (sin x)); *)
(*     print_newline (); *)
(*     testprint (x +. 10.0) *)
(* in *)
(* testprint 0.0 *)

(* let rec testprint x = *)
(*   if x <= 1000 *)
(*   then *)
(*     (print_int x; print_char 32; print_int (int_of_float(float_of_int x)); *)
(*      print_newline (); *)
(*      testprint (x + 10)) *)
(*   else *)
(*     () *)
(* in *)
(* testprint (-1000) *)

(* let rec testprint x = *)
(*   if x <= 100.4 *)
(*   then *)
(*     (print_int (int_of_float x); *)
(*      print_newline (); *)
(*      testprint (x +. 1.0)) *)
(*   else *)
(*     () *)
(* in *)
(* testprint (-100.4) *)

print_int (int_of_float (sin (3.14 /. 0.5)))


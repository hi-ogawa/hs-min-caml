(* let f1 = -.12.34 in *)
(* let f2 = -.34.56 in *)
(* print_int (int_of_float (fneg f1)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs f1)); *)
(* print_newline () *)

(* fabs, 単項マイナス, fneg 周りが怪しい?? *)
(* let fm = -. 10.0 in *)
(* let fp = -. fm in *)
(* print_int (int_of_float fm); *)
(* print_newline (); *)
(* print_int (int_of_float (-.fm)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs fm)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs (-.fm))); *)
(* print_newline (); *)
(* print_int (int_of_float fm); *)
(* print_newline (); *)
(* print_int (int_of_float (-.fm)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs fm)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs (-.fm))); *)
(* print_newline (); *)
(* print_int (int_of_float fp); *)
(* print_newline (); *)
(* print_int (int_of_float (-.fp)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs fp)); *)
(* print_newline (); *)
(* print_int (int_of_float (fabs (-.fp))); *)
(* print_newline () *)

let rec print_rec f =
  if f <= 100.0
  then
    (print_int (int_of_float f);
     print_newline ();
     print_int (int_of_float (-. f));
     print_newline ();
     print_rec (f +. 0.1))
  else
    ()
in
print_rec 0.0

(* let rec fblt a b = *)
(*   (if a < 0.0 *)
(*    then *)
(*       print_char 84  (* 'T' *) *)
(*    else  *)
(*       print_char 70);	(* 'F' *) *)
(*   print_newline () *)
(* in *)
(* fblt (fabs f2) f1 *)

(* let rec print_rec f =	(* int_of_float は切り捨て *) *)
(*   if f >= (-.1000100.0) *)
(*   then *)
(*     (print_int (truncate f); *)
(*      print_newline (); *)
(*      print_rec (f -. 0.1)) *)
(*   else *)
(*     () *)
(* in *)
(* print_rec (-.1000000.0) *)


(* let rec print_rec f =	(* truncate は切り捨て *) *)
(*   if f <= (1000100.0) *)
(*   then *)
(*     (print_int (truncate f); *)
(*      print_newline (); *)
(*      print_rec (f +. 0.1)) *)
(*   else *)
(*     () *)
(* in *)
(* print_rec (1000000.0) *)

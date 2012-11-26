let a = 1.2 ++ 2.8 in
let b = 1   ++ 3   in
let c = a   ++ a   in	(* 8.0 *)
let d = b   ++ b   in   (* 8 *)
let e = a   ++ (float_of_int d) in (* 12.0 *)
let f = b   ++ (int_of_float c) in (* 12   *)
print_int (int_of_float e);
print_newline ();
print_int f

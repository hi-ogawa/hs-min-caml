let rec compose f g =
  (fun x -> g (f x))
in
  (* let rec composed x = g (f x) in *)
  (* composed in *)
let rec dbl x = x + x in
let rec inc x = x + 1 in
let rec dec x = x - 1 in
let h = compose inc (compose dbl dec) in
print_int (h 123)
(* print_char (h 123) *)

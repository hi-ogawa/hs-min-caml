let rec make_adder x =
  let rec adder y = x + y in
  adder in
(* print_char ((make_adder 3) 7) *)
print_int ((make_adder 3) 7)

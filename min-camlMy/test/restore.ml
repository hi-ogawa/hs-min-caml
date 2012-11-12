let rec f x = x in
let rec g x =
  let a = f x in
  let _ = print_int (int_of_float (f a)) in
  a in
print_int (int_of_float (g 3.))

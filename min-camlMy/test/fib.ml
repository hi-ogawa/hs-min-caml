(* let i = read_int () in *)
let rec fib x =
  if x <= 1 then x
  else
    fib(x-1) + fib(x-2)
in
let rec f x = x
in
print_int (fib 15)

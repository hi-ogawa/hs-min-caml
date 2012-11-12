let rec fib x =
  if x <= 1 then x
  else
    fib(x-1) + fib(x-2)
in
print_int (fib 15)




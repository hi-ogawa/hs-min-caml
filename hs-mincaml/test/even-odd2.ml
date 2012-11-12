let rec even x =
  let rec odd y =
    if y > 0 then even (y - 1) else 0
  in
  if x > 0 then odd (x - 1) else 1
in
print_int (even 10)



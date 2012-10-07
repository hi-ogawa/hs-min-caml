let rec even x =
  let rec odd y =
    if y > 0 then even (y - 1) else false
  in
  if x > 0 then odd (x - 1) else true
in
print_bool (even 10)



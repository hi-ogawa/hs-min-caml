let a = Array.create 10 1
in
let rec arrayUpdate a n =
  if n < 10
  then (a.(n)<-n; arrayUpdate a (n+1))
  else ()
in
let rec arrayTest a n =
  if n < 10
  then a.(n) + arrayTest a (n+1)
  else 0
in
arrayUpdate a 0;
print_int (arrayTest a 0)


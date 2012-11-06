let rec test_print i =
  if i <= 100.0
  then
    (print_int (int_of_float ((sqrt i) *. 100.));
     print_newline ();
     test_print (i +. 1.0))
  else
    ()
in
test_print 1.0

(* print_int (int_of_float (sqrt 16.0)) *)

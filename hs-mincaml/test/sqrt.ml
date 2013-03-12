let rec test_print i =
  if i <= 256.0
  then
    (print_int (int_of_float (sqrt i));
     print_newline ();
     test_print (i +. 1.0))
  else
    ()
in
test_print 1.0

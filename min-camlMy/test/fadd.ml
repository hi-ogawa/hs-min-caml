let rec test_print f = 
  if f > (-100000.)
  then
    (print_int (int_of_float (100000. +. f));
     print_newline ();
     test_print (f -. 1000.))
  else
    ()
in
test_print (100000.)


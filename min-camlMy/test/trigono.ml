let rec testprint x =
  if x <= 360.0
  then 
    (print_int (int_of_float ((sin (x /. 360.0)) *. 100.0));
     print_newline ();
     print_int (int_of_float ((cos (x /. 360.0)) *. 100.0));
     print_newline ();
     print_int (int_of_float ((tan (x /. 360.0)) *. 100.0));
     print_newline ();
     print_int (int_of_float ((atan (x /. 360.0)) *. 100.0));
     print_newline ();
     testprint (x +. 10.0))
  else 
    ()
in
testprint 0.0

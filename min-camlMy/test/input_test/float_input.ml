let n = read_int () in
let rec read_and_print n =
  if n > 0 
  then (let f = read_float () in
	print_int (int_of_float (f *. f));
	print_newline ();
	read_and_print (n-1))
  else ()
in
read_and_print n



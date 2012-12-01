let rec id x = x in
if id true 
then print_char (int_of_float (id 1.0))
else print_char (id 1)



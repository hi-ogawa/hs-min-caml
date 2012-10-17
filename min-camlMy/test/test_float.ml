let i1 = 1234 in
let i2 = 5678 in
let f1 = float_of_int i1 in
let f2 = float_of_int i2 in
let f3 = f1 +. f2 in
print_int (int_of_float f3);
print_newline ()

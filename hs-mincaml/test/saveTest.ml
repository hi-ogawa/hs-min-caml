let x = 1 in
let y = (if x <= 0 then input_char () else 2) in
let z = (if y <= 3 then x - 4 else input_char () ) in
print_char (x - y - z)

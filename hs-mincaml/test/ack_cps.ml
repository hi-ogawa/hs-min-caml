let rec ack_cps x y k =
  if x <= 0 then k (y + 1)
  else if y <= 0 then ack_cps (x-1) 1 k
  else 
    ack_cps x (y-1) (fun arg -> ack_cps (x-1) arg k)
in
(* ack_cps 3 7 print_char *) (* 外部関数は変数に取れないのでさよなら *)
ack_cps 3 7 print_int

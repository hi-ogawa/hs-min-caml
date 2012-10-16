(* read_int *)
let rec mul10 x = x * 8 + x * 2 in
let read_int_ans = Array.create 1 0 in
let read_int_s = Array.create 1 0 in
let rec read_int_token in_token prev =
  let c = input_char () in
  let flg = 
    if c < 48 then true
    else if c > 57 then true
    else false in
  if flg then
    (if in_token then (if read_int_s.(0) = 1 then read_int_ans.(0) else (-read_int_ans.(0))) else read_int_token false c)
  else
    ((if read_int_s.(0) = 0 then
			(* prev == '-' *)
	(if prev = 45 then read_int_s.(0) <- (-1) else read_int_s.(0) <- (1))
      else
	());
     read_int_ans.(0) <- mul10 read_int_ans.(0) + (c - 48);
     read_int_token true c)
in
let rec read_int _ = 
  read_int_ans.(0) <- 0;
  read_int_s.(0) <- 0;
  read_int_token false 32
in
(* print_charはemitの段階でoutputに書き換えられる *)
let rec print_newline () =
  print_char 10		(*LF*)
in
(* / 2, * 2はparser.mlyで左・右シフトに変換されるので使ってよい *)
let rec mul_sub a b =
  if b = 0 then 0
  else (
    let b_mod_2 = b - (b / 2) * 2 in
    if b_mod_2 = 0 then
      (mul_sub (a * 2) (b / 2))
    else
      (mul_sub (a * 2) (b / 2)) + a
  )
in
let rec mul a b =		(* OK *)
  if b < 0 then 
    mul_sub (-a) (-b)
  else
    mul_sub a b
in

let rec div_binary_search a b left right =
  let mid = (left + right) / 2 in
  let x = mid * b in
  if right - left <= 1 then
    left
  else
    if x < a then
      div_binary_search a b mid right
    else if x = a then
      mid
    else
      div_binary_search a b left mid
in
let rec div_sub a b left =
  if mul (b * 2) left  <= a then
    div_sub a b (left * 2)
  else
    div_binary_search a b left (left * 2)
in
let rec div a b =			      (* OK *)
  (* bは0ではない *)
  let abs_a = if a >= 0 then a else -a in
  let abs_b = if b >= 0 then b else -b in
  if abs_a < abs_b then
    0
  else (
    let ans = div_sub abs_a abs_b 1 in
    if a >= 0 then (
      if b >= 0 then
	ans
      else
	-ans
    )
    else (
      if b >= 0 then
	-ans
      else
	ans
    )
  )
in
(* print_int div命令を使わない版 *)
let rec print_int x =				(* OK *)
  if x < 0 then
    (print_char 45; print_int (-x))
  else
    (* 100000000の位を表示 *)
    let tx = div_binary_search x 100000000 0 3 in
    let dx = tx * 100000000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then false
      else (print_char (48 + tx); true) in

    (* 10000000の位を表示 *)
    let tx = div_binary_search x 10000000 0 10 in
    let dx = tx * 10000000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in

    (* 1000000の位を表示 *)
    let tx = div_binary_search x 1000000 0 10 in
    let dx = tx * 1000000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in

    (* 100000の位を表示 *)
    let tx = div_binary_search x 100000 0 10 in
    let dx = tx * 100000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in

    (* 10000の位を表示 *)
    let tx = div_binary_search x 10000 0 10 in
    let dx = tx * 10000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in

    (* 1000の位を表示 *)
    let tx = div_binary_search x 1000 0 10 in
    let dx = tx * 1000 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in
    (* 100の位を表示 *)
    let tx = div_binary_search x 100 0 10 in
    let dx = tx * 100 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in
    (* 10の位を表示 *)
    let tx = div_binary_search x 10 0 10 in
    let dx = tx * 10 in
    let x = x - dx in
    let flg = 
      if tx <= 0 then
	(if flg then
	    (print_char (48 + tx); true)
	 else
	    false)
      else
	(print_char (48 + tx); true) in
    (* 1の位を表示 *)
    print_char (48 + x)
in
(* main に続く *)

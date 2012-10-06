(* Type.t -> string *)
let rec tyToStr ty = 
  match ty with
  | Type.Unit -> "unit" | Type.Bool -> "bool" | Type.Int -> "int" | Type.Float -> "float"
  | Type.Fun (ts, t) -> "#fun " ^ "[args: " ^ (String.concat ", " (List.map (fun t1 -> tyToStr t1) ts)) ^ "], " ^ "[result: " ^ (tyToStr t) ^ "]"
  | Type.Tuple ts -> "#tuple [" ^ (String.concat ", " (List.map (fun t1 -> tyToStr t1) ts)) ^ "]"
  | Type.Array t -> "#array [" ^ (tyToStr t) ^ "]"
  | Type.Var r -> 
    (match !r with
      | None -> "tvar: None"
      | Some sty -> "tvar: [" ^ (tyToStr sty) ^ "]")

(* (Id.t * Type.t) list -> string *)
let rec argsToStr args =
  String.concat ", " (List.map (fun (x,t) -> x ^ " (" ^ (tyToStr t) ^ ")") args)

(* int -> string -> unit *)
let rec p_d depth str =
  for l = 1 to depth do print_string "      "; done;
  print_string str


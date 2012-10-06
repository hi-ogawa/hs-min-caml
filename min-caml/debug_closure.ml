open Printf
open Closure
open Debug_util

(* Closure.fundef list -> unit *)
let rec p_topl fundefs =
  let subf {name = (l, t); args = xts; formal_fv = yts; body = e1}
      = "{name = (" ^ l ^ ", " (tyToStr t) ^ "); " ^ "args = " ^ (argsToStr xts) ^ "freevar = " ^ (argsToStr yts) ^ "; body = " ^ "??}\n" 
  in
  printf "toplevel-functions\n%s" String.concat (List.map subf fundefs)


(* Closure.t -> string *)


(* Closure.t -> int -> unit *)

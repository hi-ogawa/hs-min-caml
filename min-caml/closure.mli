type closure = { entry : Id.l; actual_fv : Id.t list }	(*ラベル*)
type t =
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | SLL of Id.t * Id.t
  | SRA of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t	(*ラベル(closure)*)(*closureを変数に束縛*)
  | AppCls of Id.t * Id.t list			(*closureによる関数呼び出し*)
  | AppDir of Id.l * Id.t list	(*ラベル*)(*closureによらないトップレベル関数,<Id.l>*)
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l		(*ラベル*)
type fundef = { name : Id.l * Type.t;	(*ラベル*)
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list; (*closureにするために引数にとるbody中の自由変数*)
		body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog

(*debugようにinterfaceに追加する*)
val toplevel : fundef list ref

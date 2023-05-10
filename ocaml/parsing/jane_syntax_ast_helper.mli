(** Ast helpers for building constructs that respect the language extensions in
    force. For example, if syntactic function arity is enabled, then
    parsing/typechecking should only be able to construct n-ary functions.
*)

(* CR nroberts: not quite right *)

(** Expressions *)
module Exp : sig
  val unary_fun: ?loc:Location.t-> ?attrs:Parsetree.attributes
    -> Asttypes.arg_label -> Parsetree.expression option
    -> Parsetree.pattern -> Parsetree.expression -> Parsetree.expression

  val unary_function: ?loc:Location.t -> ?attrs:Parsetree.attributes
    -> Parsetree.case list -> Parsetree.expression
end

val curry : ('a -> 'b -> 'c) -> 'a * 'b -> 'c
val eq_int : int * int -> bool
val eq_char : char * char -> bool
val eq_string : string * string -> bool
val eq_int32 : int32 * int32 -> bool
val eq_int64 : int64 * int64 -> bool
val eq_nativeint : nativeint * nativeint -> bool
val eq_bool : bool * bool -> bool
val eq_list : ('a * 'b -> bool) -> 'a list * 'b list -> bool
val eq_option : ('a * 'b -> bool) -> 'a option * 'b option -> bool
module Location : sig val eq_t : 'a * 'b -> bool end
module Longident : sig val eq_t : 'a * 'b -> 'result end
module Asttypes :
  sig
    val eq_constant : 'a * 'b -> 'result
    val eq_rec_flag : 'a * 'b -> 'result
    val eq_direction_flag : 'a * 'b -> 'result
    val eq_private_flag : 'a * 'b -> 'result
    val eq_mutable_flag : 'a * 'b -> 'weak20
    val eq_virtual_flag : 'a * 'b -> 'result
    val eq_override_flag : 'a * 'b -> 'result
    val eq_closed_flag : 'a * 'b -> 'result
    val eq_label : string * string -> bool
    val eq_loc : ('all_a0 * 'all_a0 -> 'result) -> 'a * 'b -> 'result
  end
val eq_row_field : 'weak23 * 'a -> bool
val eq_core_field_desc : 'a * 'b -> bool
val eq_core_field_type : 'a * 'b -> bool
val eq_package_type : ('a * ('b * 'c) list) * ('d * ('e * 'f) list) -> bool
val eq_core_type_desc : 'a * 'b -> bool
val eq_core_type : 'a * 'b -> bool
val labeled_eq_core_type :
  (string option * 'a) * (string option * 'b) -> bool
val eq_class_infos : ('all_a0 * 'all_a0 -> 'result) -> 'a * 'b -> 'result
val eq_pattern_desc : 'a * 'b -> 'result
val eq_pattern : 'a * 'b -> 'result
val eq_structure_item_desc : 'a * 'b -> bool
val eq_structure_item : 'a * 'b -> bool
val eq_structure : 'a list * 'b list -> bool
val eq_module_expr_desc : 'a * 'b -> bool
val eq_module_expr : 'a * 'b -> bool
val eq_with_constraint : 'a * 'b -> bool
val eq_modtype_declaration : 'a * 'b -> bool
val eq_signature_item_desc : 'a * 'b -> bool
val eq_signature_item : 'a * 'b -> bool
val eq_signature : 'a list * 'b list -> bool
val eq_module_type_desc : 'a * 'b -> bool
val eq_module_type : 'a * 'b -> bool
val eq_class_declaration : 'a * 'b -> bool
val eq_class_field_desc : 'a * 'b -> bool
val eq_class_field : 'a * 'b -> bool
val eq_class_structure : 'a * 'b -> bool
val eq_class_expr_desc : 'a * 'b -> bool
val eq_class_expr : 'a * 'a -> bool
val eq_class_type_declaration : 'a * 'b -> bool
val eq_class_description : 'a * 'b -> bool
val eq_class_type_field_desc : 'a * 'b -> bool
val eq_class_type_field : 'a * 'b -> bool
val eq_class_signature : 'a * 'b -> bool
val eq_class_type_desc : 'a * 'b -> bool
val eq_class_type : 'a * 'a -> bool
val eq_exception_declaration : 'a list * 'b list -> bool
val eq_type_kind : 'a * 'b -> bool
val eq_type_declaration : 'a * 'b -> bool
val eq_value_description : 'a * 'b -> bool
val eq_expression_desc : 'a * 'b -> bool
val eq_expression : 'a * 'b -> bool
val eq_directive_argument_desc : 'a * 'b -> 'result
val eq_directive_argument : 'a * 'b -> 'result
val eq_toplevel_phrase : 'a * 'b -> 'result

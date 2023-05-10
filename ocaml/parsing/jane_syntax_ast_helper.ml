module Exp = struct
  let mk_exp_jane_syntax
      ~loc
      ~attrs
      { Jane_syntax.With_attributes.desc; jane_syntax_attributes } =
    let attrs = Option.value attrs ~default:[] @ jane_syntax_attributes in
    Ast_helper.Exp.mk ?loc ~attrs desc

  let unary_fun ?loc ?attrs label def pat body =
    let ext =
      let loc = Option.value loc ~default:!Ast_helper.default_loc in
      Jane_syntax.N_ary_function.expr_of
        ~loc
        ([ Pparam_val (label, def, pat) ], None, Pfunction_body body)
    in
    mk_exp_jane_syntax ~loc ~attrs ext

  let unary_function ?loc ?attrs cases =
    let ext =
      let loc = Option.value loc ~default:!Ast_helper.default_loc in
      Jane_syntax.N_ary_function.expr_of
        ~loc ([], None, Pfunction_cases (cases, loc, []))
    in
    mk_exp_jane_syntax ~loc ~attrs ext
end

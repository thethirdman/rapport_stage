add_rule C_Id
  (function fallback args -> match args with
    | AString id -> Ident id
    | _ -> fallback args)

let () =
  let module M =
    (val match Linkage.load "plugins/plugin.cma" with
         | Ok (Plugin_intf.Plugin m) -> m
         | e -> Linkage.raise_error e) in
  let x = M.create 42 in
  print_endline (M.to_string x)

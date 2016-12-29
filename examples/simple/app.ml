let f =
  match Linkage.load "plugins/plugin.cma" with
  | Ok (Plugin_intf.Plugin f) -> f
  | e -> Linkage.raise_error e

let () =
  print_endline (f 42)

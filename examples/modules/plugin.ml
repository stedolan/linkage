module M = struct
  type t = int
  let create n = n
  let to_string n = "The module got " ^ string_of_int n
end

;;
Linkage.provide (Plugin_intf.Plugin (module M))

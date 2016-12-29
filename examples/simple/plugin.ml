let f n = "Hello " ^ string_of_int n

;;
Linkage.provide (Plugin_intf.Plugin f)

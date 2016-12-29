module type T = sig
  type t
  val create : int -> t
  val to_string : t -> string
end

type Linkage.plugin += MyModPlugin of (module T)

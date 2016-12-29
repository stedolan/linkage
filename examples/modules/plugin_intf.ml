module type T = sig
  type t
  val create : int -> t
  val to_string : t -> string
end

type Linkage.plugin += Plugin of (module T)

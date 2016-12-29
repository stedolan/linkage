#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () = Pkg.describe "linkage" (fun c ->
  Ok [Pkg.mllib "src/linkage.mllib"])

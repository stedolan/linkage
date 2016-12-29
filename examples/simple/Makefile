.PHONY: all
all: app plugin.cmxs

app: _build/app.native
	ln -s $^ $@

plugin.cmxs: _build/plugin.cmxs
	ln -s $^ $@

_build/%:
	ocamlbuild -use-ocamlfind -pkg linkage $*

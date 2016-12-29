.PHONY: all clean
TARGETS=app.native app.byte _build/plugin.cma _build/plugin.cmxs
all: $(TARGETS)
clean:
	rm -f $(TARGETS)
	rm -rf _build

app.native: _build/app.native
app.byte: _build/app.byte

_build/%: *.ml*
	ocamlbuild -use-ocamlfind $*

ocaml-unikraft-custom-configs.install:
	$(MAKE) --no-print-directory --quiet print-install > $@

EMPTY=

.PHONY: print-install
print-install:
	$(info share: [)
	$(foreach f,\
	  $(wildcard *.fullconfig),\
	  $(info $(EMPTY)  "$(f)"))
	$(info ])
	@:

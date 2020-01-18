PACKAGE_NAME=karnaugh

.PHONY: doc

doc: examples/examples.pdf

examples/examples.pdf: examples/examples.saty satysfi-$(PACKAGE_NAME).opam karnaugh.satyh Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc

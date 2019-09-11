examples.pdf: examples-local.saty karnaugh.satyh local.satyh
	satysfi $< -o $@

examples-local.saty: examples.saty
	sed -e '/^@require: /s!^@require: karnaugh/!@import: !' $< > $@ 

karnaugh.satyh: ../karnaugh.satyh
	cp $< .


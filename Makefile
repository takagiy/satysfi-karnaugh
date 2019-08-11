PREFIX=/usr/local
PACKAGE_NAME=satysfi-karnaugh
PACKAGE_DEST_DIR=$(PREFIX)/share/satysfi/$(PACKAGE_NAME)

.PHONY: all doc install uninstall

all:

doc:

install:
	install -d "$(PACKAGE_DEST_DIR)/packages"
	install -m 644 karnaugh.satyh "$(PACKAGE_DEST_DIR)/packages"

uninstall:
	rm -rf "$(PACKAGE_DEST_DIR)"

#!/usr/bin/env sh
#
# makefile for git-xfer plugin
# 
# @author <bprinty@gmail.com>
# ------------------------------------------------

# config
# ------
BIN_DIR   = /usr/local/bin
LOADER    = git-xfer
COMMANDS  = git-xfer-push git-xfer-pull git-xfer-add git-xfer-remove git-xfer-list


# targets
# -------
all:
    @echo "usage: make [install|uninstall|test]"

install:
	install -d -m 0755 $(BIN_DIR)
	install -m 0755 bin/$(LOADER) $(BIN_DIR)
	for cmd in $(COMMANDS); do install -m 0644 bin/$$cmd $(BIN_DIR); done

uninstall:
	test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(LOADER) $(COMMANDS)

.PHONY: test
test:
	PATH=$$PATH:`pwd`/bin && for cmd in `ls ./test`; do sh ./test/$$cmd; done

#!/usr/bin/env sh
#
# makefile for git-xfer plugin
# 
# @author <bprinty@gmail.com>
# ------------------------------------------------

# config
# ------
BIN_DIR   = /usr/bin
LOADER    = git-xfer
COMMANDS  = git-xfer-push git-xfer-pull git-xfer-add git-xfer-remove git-xfer-list git-xfer-sync
TESTS     = test-local
# TESTS     = test-local test-remote


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
	PATH=`pwd`/bin:$$PATH && for cmd in $(TESTS); do sh ./test/$$cmd; done

release:
	PATH=`pwd`/bin:$$PATH && TAG=`git xfer -v` && git tag -d $$TAG || echo "local tag available"
	PATH=`pwd`/bin:$$PATH && TAG=`git xfer -v` && git push origin :$$TAG || echo "remote tag available"
	PATH=`pwd`/bin:$$PATH && TAG=`git xfer -v` && git tag $$TAG && git push origin $$TAG

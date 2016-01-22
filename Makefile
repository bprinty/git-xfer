BIN_DIR   = /usr/local/bin
LOADER    = git-xfer
COMMANDS  = git-xfer-push
COMMNADS += git-xfer-pull

all:
    @echo "usage: make [install|uninstall]"

install:
    install -d -m 0755 $(BIN_DIR)
    install -m 0755 bin/$(LOADER) $(BIN_DIR)
    install -m 0644 bin/$(COMMANDS) $(BIN_DIR)

uninstall:
    test -d $(BIN_DIR) && \
    cd $(BIN_DIR) && \
    rm -f $(LOADER) $(COMMANDS)

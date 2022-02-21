BIN=qcalc

default: help

help:
	@printf '%s\n%s\n%s\n' "targets:"  "  make install"  "  make uninstall"

install:
	chmod a+x $(BIN)
	cp $(BIN) /usr/bin

uninstall:
	rm /usr/bin/$(BIN)

clean:
	rm -rf .*~ *~

run:
	./$(BIN)

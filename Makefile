
PREFIX ?= /usr/local

BINARY ?= ansiweather
BINARY_inst = $(PREFIX)/bin/$(BINARY)

MAN_FILE ?= ansiweather.1
MAN_FILE_GZ ?= $(MAN_FILE).gz
MAN_FILE_inst = $(PREFIX)/share/man/man1/$(MAN_FILE_GZ)

$(MAN_FILE_GZ): $(MAN_FILE)
	gzip -c $< > $@

$(BINARY_inst): $(BINARY)
	mkdir -p $(dir $@)
	cp $< $@

$(MAN_FILE_inst): $(MAN_FILE_GZ)
	mkdir -p $(dir $@)
	cp $< $@

install: $(MAN_FILE_inst) $(BINARY_inst)

uninstall:
	rm $(MAN_FILE_inst)
	rm $(BINARY_inst)

.PHONY: uninstall

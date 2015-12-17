PREFIX ?= /usr
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
CLIPPYDIR ?= $(PREFIX)/share/clippy

BINFILE = src/clippy
CLIPPYFILE = src/clippy.png

default:
	@printf "Run make install instead\n"

install: $(BINFILE) $(CLIPPYFILE)
	@install -d "$(DESDIR)$(BINDIR)"
	@install -d "$(DESDIR)$(CLIPPYDIR)"
	@install -m 0755 "$(BINFILE)" "$(DESDIR)$(BINDIR)/clippy"
	@install -m 0644 "$(CLIPPYFILE)" "$(DESDIR)$(CLIPPYDIR)/clippy.png"
	@printf "Clippy installed!\n"

uninstall:
	@rm -rf  "$(DESDIR)$(BINDIR)/clippy"  "$(DESDIR)$(CLIPPYDIR)/clippy.png"
	@printf "Clippy uninstalled!\n"

.PHONY: default install uninstall

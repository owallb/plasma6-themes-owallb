INSTALL_PREFIX ?= /usr
DESTDIR ?= $(INSTALL_PREFIX)/share/plasma/desktoptheme/owallb

SVG_FILES := widgets/tasks.svg
SVGZ_FILES := $(SVG_FILES:.svg=.svgz)

all: $(SVGZ_FILES)

%.svgz: %.svg
	@echo "Compressing $<"
	@gzip -Sz -kf $<

clean:
	@for file in $(SVGZ_FILES); do \
		if [ -f $$file ]; then \
			echo "Removing $$file"; \
			rm -f $$file; \
		fi; \
	done

install: metadata.json plasmarc $(SVGZ_FILES)
	@mkdir -p $(DESTDIR)
	@for file in $^; do \
		echo "Installing $(DESTDIR)/$$file"; \
		install -Dm644 $$file $(DESTDIR)/$$file; \
	done

.PHONY: all clean install

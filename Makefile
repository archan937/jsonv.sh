PREFIX?=/usr/local
INSTALLDIR?=$(DESTDIR)$(PREFIX)

install:
	install -d                  $(INSTALLDIR)/bin
	install -m755 jsonv         $(INSTALLDIR)/bin/jsonv
	install -d                  $(INSTALLDIR)/bin/.jsonv
	install -m755 utils/json.sh $(INSTALLDIR)/bin/.jsonv/json.sh

uninstall:
	rm -f  $(INSTALLDIR)/bin/jsonv
	rm -rf $(INSTALLDIR)/bin/.jsonv
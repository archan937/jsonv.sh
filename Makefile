PREFIX?=/usr/local
INSTALLDIR?=$(DESTDIR)$(PREFIX)

install:
	install -d $(INSTALLDIR)/bin
	install -d $(INSTALLDIR)/bin/utils
	install -m755 jsonv $(INSTALLDIR)/bin/jsonv
	install -m755 utils/json.sh $(INSTALLDIR)/bin/utils/json.sh

uninstall:
	rm -f $(INSTALLDIR)/bin/jsonv
	rm -f $(INSTALLDIR)/bin/utils/json.sh
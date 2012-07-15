# Copyright (c) Paul Tagliamonte <paultag@debian.org>, 2012 under the terms
# and conditions of the Expat license, a copy of which should be given to you
# with the source of this application.

all: clean build

clean:
	@echo "No clean step needed."

build:
	@echo "No build step needed."

install:
	mkdir -p $(DESTDIR)/usr/share/dewebstrap/
	cp -r dewebstrap/* $(DESTDIR)/usr/share/dewebstrap/
	mkdir -p $(DESTDIR)/usr/bin
	cp -r bin/* $(DESTDIR)/usr/bin

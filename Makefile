# Copyright (c) Paul Tagliamonte <paultag@debian.org>, 2012 under the terms
# and conditions of the Expat license, a copy of which should be given to you
# with the source of this application.

CSSC = recess
CSFLAGS = --compile --compress

all: lecture

lecture:
	@echo "make [static|flask|clean]"

clean:
	rm -rf dist

build: clean
	mkdir dist -p
	mkdir dist/static/css -p
	mkdir dist/static/imgs -p
	$(CSSC) $(CSFLAGS) less/dewebstrap.less > dist/static/css/dewebstrap.css
	cp templates dist -r
	cp imgs/* dist/static/imgs
	./helpers/getcopyright > dist/templates/footer.html

static: build
	cd dist && ../helpers/static-build index.html > index.html
	# cd dist && ../helpers/static-build about.html > about.html
	rm -rf dist/templates

flask: build
	cp code/app.py dist/

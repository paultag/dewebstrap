# Copyright (c) Paul Tagliamonte <paultag@debian.org>

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
	cd dist && ../helpers/static-build > index.html
	rm -rf dist/templates

flask: build
	cp code/app.py dist/

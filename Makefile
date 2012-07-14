# Copyright (c) Paul Tagliamonte <paultag@debian.org>

CSSC = recess
CSFLAGS = --compile --compress

all: build

clean:
	rm -rf dist

build: clean
	mkdir dist -p
	mkdir dist/static/css -p
	mkdir dist/static/imgs -p
	$(CSSC) $(CSFLAGS) less/dewebstrap.less > dist/static/css/dewebstrap.css
	cp templates dist -r
	cp imgs/* dist/static/imgs
	cp code/app.py dist/

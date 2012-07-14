# Copyright (c) Paul Tagliamonte <paultag@debian.org>

CSSC = recess
CSFLAGS = --compile --compress

all: build

clean:
	rm -rf dist

build: clean
	mkdir dist
	mkdir dist/css
	$(CSSC) $(CSFLAGS) less/dewebstrap.less > dist/css/dewebstrap.css
	cp html/index.html dist
	mkdir dist/imgs
	cp imgs/* dist/imgs

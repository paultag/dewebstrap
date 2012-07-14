# Copyright (c) Paul Tagliamonte <paultag@debian.org>

CSSC = recess
CSFLAGS = --compile --compress

all: build

clean:
	rm -rf dist

build: clean
	mkdir dist
	$(CSSC) $(CSFLAGS) less/dewebstrap.less > dist/dewebstrap.css

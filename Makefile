default: all
.PHONY: build

all: prep build stage


prep:
	mkdir -p _build
	cp -r src/images _build/images

build:
	cat src/*.md > _build/all.md
	Rscript build.R _build/all.md

stage:
	mkdir -p presents
	cp -r _build/index.html presents/
	cp -r _build/index_files presents/



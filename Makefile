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
	mkdir -p docs
	cp -r _build/index.html docs/
	cp -r _build/index_files docs/



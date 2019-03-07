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
	cp -r _build/images docs/images
	cp -r _build/all.md docs/index.md
	cp -r _build/slides.html docs/
	cp -r _build/slides_files docs/


	# gh-md-toc --insert README.md
	gh-md-toc --insert docs/index.md

	# rm README.md.*.*
	rm docs/index.md.*

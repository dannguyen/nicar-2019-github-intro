default: all
all:
	mkdir -p _build
	cp -r src/images _build/images
	cat src/*.md > _build/all.md
	Rscript build.R _build/all.md presents.pptx



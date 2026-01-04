IMAGE_NAME := thelebster/mdpdf

.PHONY: help build full brief all clean

## help    :    Print commands help.
help: Makefile
	@sed -n 's/^##//p' $<

## build   :    Build Docker image.
build:
	docker build -t $(IMAGE_NAME) scripts/

## full    :    Generate full CV PDF.
full: build
	docker run --rm -v $(PWD):/app $(IMAGE_NAME) src/cv.md "dist/AntonLebedev-CV.pdf" --style src/assets/css/styles.css --gh-style

## brief   :    Generate brief CV PDF.
brief: build
	docker run --rm -v $(PWD):/app $(IMAGE_NAME) src/minimal-cv.md "dist/AntonLebedev-CV-brief.pdf" --style src/assets/css/minimal.css --gh-style --border-top=10 --border-bottom=10

## all     :    Generate both PDFs.
all: full brief

## clean   :    Remove Docker image.
clean:
	docker rmi $(IMAGE_NAME) 2>/dev/null || true

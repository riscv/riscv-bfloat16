HEADER_SOURCE := doc/riscv-bfloat16-spec.adoc 
PDF_RESULT := riscv-bfloat.pdf

all: build

build:

	@echo "Building asciidoc"
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-style=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-bibtex \
    --require=asciidoctor-diagram \
    --require=asciidoctor-mathematical \
    --out-file=$(PDF_RESULT) \
    $(HEADER_SOURCE)

clean:
	rm $(PDF_RESULT)

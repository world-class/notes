SRC = ./src

default: pdf


html:
	$(foreach file, $(wildcard $(SRC)/*), asciidoctor $(file))

pdf: asciidoctor --version

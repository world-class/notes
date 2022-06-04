#!/bin/bash

# Because `make` sucks.

case $1 in
	html)
		for file in src/*.adoc
		do
			# Remove suffix and prefix
			OUT=${file%.adoc}
			OUT=${file#src/}

			asciidoctor $file -o "cheatsheet_${OUT}.html"
		done
		;;
	pdf)
		for file in src/*.adoc
		do
			# Remove suffix and prefix
			OUT=${file%.adoc}
			OUT=${file#src/}

			asciidoctor-pdf -r asciidoctor-mathematical $file -o "cheatsheet_${OUT}.pdf"
		done
		;;
	clean)
		rm *.html > /dev/null 2>&1
		rm *.pdf > /dev/null 2>&1
		;;
	*)
		echo "Unrecognized command"
		;;

esac
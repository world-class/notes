#!/bin/bash

# Because `make` sucks.

gen_html() {
    # Remove suffix and prefix
    FILE=$1
    OUT=${FILE#src/}
    OUT=${OUT%.adoc}
    HTML_OUT="cheatsheet_${OUT}.html"

    asciidoctor $FILE -o ${HTML_OUT}
}

case $1 in
    html)
        for FILE in src/*.adoc
        do
            # Generate HTML file.
            gen_html ${FILE}
        done
        ;;
    png | img)
        for FILE in src/*.adoc
        do
            # Generate HTML file.
            gen_html ${FILE}

            # Convert HTML to PNG.
            IMG_OUT="cheatsheet_${OUT}.png"
            wkhtmltoimage \
                --enable-local-file-access \
                --javascript-delay 2000\
                $HTML_OUT $IMG_OUT

            # Cleanup temporarily generated HTML files.
            rm *.html > /dev/null 2>&1
        done
        ;;
    clean)
        rm *.html > /dev/null 2>&1
        rm *.png > /dev/null 2>&1
        ;;
    *)
        echo "Unrecognized command"
        ;;

esac
#!/bin/bash

# Because `make` sucks.

gen_html() {
    # Remove suffix and prefix
    FILE=$1
    OUT=${FILE%.adoc}
    HTML_OUT="cheatsheet_${OUT}.html"

    asciidoctor $FILE -o ${HTML_OUT}
}

# Change directory to src/ in order to have images included correctly.
cd "$(dirname "$0")/src/"

case $1 in
    html)
        for FILE in *.adoc
        do
            # Generate HTML file.
            gen_html ${FILE}
        done

        # Move up from src/
        mv *.html ../
        ;;
    png | img)
        for FILE in *.adoc
        do
            # Generate HTML file.
            gen_html ${FILE}

            # Convert HTML to PNG.
            IMG_OUT="cheatsheet_${OUT}.png"
            wkhtmltoimage \
                --enable-local-file-access \
                --javascript-delay 2000\
                $HTML_OUT $IMG_OUT
        done

        # Move up from src/
        mv *.png ../

        # Cleanup temporarily generated HTML files.
        rm *.html > /dev/null 2>&1
        ;;
    clean)
        rm ../*.html > /dev/null 2>&1
        rm ../*.png > /dev/null 2>&1
        ;;
    *)
        echo "Unrecognized command"
        ;;

esac
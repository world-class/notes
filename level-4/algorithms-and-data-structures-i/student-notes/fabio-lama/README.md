# About

Listed here is a collection of cheatsheet by topic. Those cheatsheets do not
explain the topics in depth, but rather serve as quick lookup documents.
Therefore, the course material provided by the lecturer should still be studied
and understood. Not everything that is tested at the mid-terms or final exams is
covered and the Author does not guarantee that the cheatsheets are free of
errors.

* TODO

# Building

_NOTE_: This step is only necessary if you chose to modify the base documents.

The base documents are written in [AsciiDoc](https://asciidoc.org/) and can be
found in the `src/` directory.

The following dependencies must be installed (Ubuntu):

```console
$ apt install -y ruby-dev wkhtmltopdf
$ gem install asciidoctor
$ chmod +x build.sh
```

To build the documents (PDF version):

```console
$ ./build.sh pdf
```

Optionally, for the HTML version:

```console
$ ./build.sh html
```

and for the PNG version:

```console
$ ./build.sh png
```

The generated output can be deleted with `./build.sh clean`.

# Disclaimer

The Presented Documents ("cheatsheets") by the Author ("Fabio Lama") are
summaries of specific topics. The term "cheatsheet" implies that the Presented
Documents are intended to be used as learning aids or as references for
practicing and does not imply that the Presented Documents should be used for
inappropriate practices during exams such as cheating or other offenses.

The Presented Documents are heavily based on the learning material provided by
the University of London, respectively the VLeBooks Collection database in the
Online Library.

The Presented Documents may incorporate direct or indirect definitions,
examples, descriptions, graphs, sentences and/or other content used in those
provided materials. **At no point does the Author present the work or ideas
incorporated in the Presented Documents as their own.**

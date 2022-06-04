# About

# Building

The documents are written in [AsciiDoc](https://asciidoc.org/) and can be found
in the `src/` directory.

The following dependencies must be installed (Ubuntu):

```console
$ apt install -y \
	ruby-dev bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev \
	libcairo2-dev libpango1.0-dev fonts-lyx
$ gem install asciidoctor asciidoctor-pdf asciidoctor-mathematical
```

_Note_: All dependencies except for `ruby-dev` can be ignored if you skip
`asciidoctor-mathematical`, which is required for PDFs. HTML version do not need
that.

To build the documents:

```console
$ chmod +x build.sh
$ ./build.sh pdf
```

Optionally:

```console
$ ./build.sh html
# To clean:
$ ./build.sh clean
```

## 

# Disclaimer

The Presented Documents ("cheatsheets") by the Author ("Fabio Lama") are
summaries of specific topics. The term "cheatsheet" (or "cheat sheet") implies
that the Presented Documents can be used as learning aids or serve as references
for practicing and does not imply that the Presented Documents should be used
for inappropriate practices during exams such as cheating or other offences.

The Presented Documents are heavily based on the learning material provided by
the University of London, respectively the VLeBooks Collection database in the
Online Library, especially on the book _Foundation maths (Harlow: Pearson, 2016)
6th edition by Croft, A. and R. Davison_, and may incorporate definitions,
examples, descriptions, graphs, sentences and/or other content used in those
provided materials. At no point does the Author present the work or ideas
incorporated in the Presented Documents as their own.

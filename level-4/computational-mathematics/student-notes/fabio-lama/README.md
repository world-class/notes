# About

A collection of cheatsheets by topic.

* [Number bases](./cheatsheet_number_bases.pdf)
* [Sequences and Series](./cheatsheet_sequence_series.pdf)
* [Modular Arithmetic](./cheatsheet_modular_arithmetic.pdf)
* [Trigonometry](./cheatsheet_trigonometry.pdf)
* [Graphs of Functions & Kinematics](./cheatsheet_graphs_functions_kinematics.pdf)
* [Trigonometrical Functions & Identities](./cheatsheet_trigonometrical_functions_identities.pdf)
* [Exponential & Logarithm Functions](./cheatsheet_exponential_logarithm_funcions.pdf)
* [Gradients of Curves & Differentiation](./cheatsheet_gradients_curves_differentiation.pdf)
* [Vectors](./cheatsheet_vectors.pdf)
* [Matrices](./cheatsheet_matrices.pdf)
* [Statistics](./cheatsheet_statistics.pdf)

# Building

_NOTE_: This step is only necessary if you chose to modify the base docments.

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
inappropriate practices during exams such as cheating or other offences.

The Presented Documents are heavily based on the learning material provided by
the University of London, respectively the VLeBooks Collection database in the
Online Library, especially on the book _Foundation maths (Harlow: Pearson, 2016)
6th edition by Croft, A. and R. Davison_, and may incorporate definitions,
examples, descriptions, graphs, sentences and/or other content used in those
provided materials. At no point does the Author present the work or ideas
incorporated in the Presented Documents as their own.

# About

Listed here is a collection of cheatsheet by topic. Those cheatsheets do not
explain the topics in depth, but rather serve as quick lookup documents.
Therefore, the course material provided by the lecturer should still be studied
and understood. Not everything that is tested at the mid-terms or final exams is
covered and the Author does not guarantee that the cheatsheets are free of
errors.

* [Set Theory](./cheatsheet_set_theory.pdf)
* [Universal Set, Complement and Laws](./cheatsheet_universal_set_complement_laws.pdf)
* [Functions](./cheatsheet_functions.pdf)
* [Propositional & First-order Logic](/level-4/fundamentals-of-computer-science/student-notes/fabio-lama/cheatsheet_propositional_logic.pdf)
  * (covered in the Authors _Fundamentals of Computer Science_ module notes)
* [Postulates of Boolean Algebra](./cheatsheet_postulates_boolean_algebra.pdf)
* [Logic Gates](./cheatsheet_logic_gates.pdf)
* [Proofs](/level-4/fundamentals-of-computer-science/student-notes/fabio-lama/cheatsheet_proofs.pdf)
  * (covered in the Authors _Fundamentals of Computer Science_ module notes)
* [Graph Theory](./cheatsheet_graphs.pdf)
* [Graph Theory: Isomorphism](./cheatsheet_graphs_isomorphism.pdf)
* [Trees](./cheatsheet_trees.pdf)
* [Relations](./cheatsheet_relations.pdf)
* [Equivalence Relations & Classes](./cheatsheet_equivalence.pdf)
* [Combinatorics](/level-4/computational-mathematics/student-notes/fabio-lama/cheatsheet_probability_combinatorics.pdf)
  * (covered in the Authors _Computational Mathematics_ module notes)
* [Binomial Coefficients & Identities](./cheatsheet_binomial_coefficients.pdf)

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
Online Library and the material provided on the Coursera platform.

The Presented Documents may incorporate direct or indirect definitions,
examples, descriptions, graphs, sentences and/or other content used in those
provided materials. **At no point does the Author present the work or ideas
incorporated in the Presented Documents as their own.**

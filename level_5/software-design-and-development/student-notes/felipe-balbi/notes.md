
# Table of Contents

1.  [Week 1](#org71fe516)
    1.  [Module Introduction](#org4125c58)
    2.  [1.0202 Reference points](#org4b158ad)
    3.  [1.0203 SWEBOK guide and IEEE vocab](#org11f23d8)
    4.  [1.0204 What is a module?](#org86e14fc)
    5.  [1.0206 What is module complexity?](#org2bbdc3d)
    6.  [1.0208 Complexity references](#org0a9417b)
2.  [Week 2](#org18e366c)
    1.  [2.0102 Week 2 reading](#orge0183b3)
    2.  [2.0201 What is module cohesion?](#orge4ebcb5)
    3.  [2.0204 Why are different types of module cohesion good or bad?](#orged61502)



<a id="org71fe516"></a>

# Week 1

Key Concepts

-   Define the terms module and module complexity in terms of computer
    programs and systems.
-   Identify the modules present in computer programs and systems.
-   Analyse program code in terms of its complexity.


<a id="org4125c58"></a>

## Module Introduction

The objectives of the module are:

1.  Write programs using control flow, variables, and functions

2.  Use defensive coding and exception handling techniques to
    prevent processing of invalid data and to handle unexpected
    events

3.  Use Version Control tools to manage a codebase individually and
    collaboratively (`git`)

4.  Define Test-Driven Development and write Unit Tests

5.  Assign different categories of module coupling and cohesion to a
    given program

6.  Describe how User Testing can be carried out and evaluated

We will use three different languages throughout the course. They
are: C++, Python, and JavaScript.


<a id="org4b158ad"></a>

## 1.0202 Reference points

Two main references will be used during this course: the *SWEBOK*
and ISO/IEC/IEEE 24765:2010 - IEEE Systems And Software Engineering
Vocabulary.

*SWEBOK* is the Software Engineering Body Of Knowledge. From this
reference material, we focus on the topic of *Design*.

Design is concerned with the Design fundamentals, key issues of
software, software structure and architecture, user interface
design, software design quality analysis and evaluation, software
design notations, software design strategies and methods, and
software design tools.

ISO/IEC/IEEE 24765:2010 is a sort of *dictionary* defining common
terms.


<a id="org11f23d8"></a>

## 1.0203 SWEBOK guide and IEEE vocab

-   [ISO/IEC/IEEE International standard – Systems and software
    engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
    pp.1–418.
-   R.E.D. Fairley, P. Bourque and J. Keppler, [The impact of SWEBOK
    Version 3 on software engineering education and training](https://ieeexplore.ieee.org/document/6816804) in 2014
    IEEE 27th Conference on Software Engineering Education and
    Training (CSEE&T). (Klagenfurt, Austria: IEEE, 2014).


<a id="org86e14fc"></a>

## 1.0204 What is a module?

&ldquo;&#x2026; a mechanism for improving the flexibility and
comprehensibility of a system while allowing the shortening of its
development time&rdquo;. Parnas, 1972.

Once software has been modularized, different parts can be replaced
and/or used in different software. Moreover, modularity makes
software easier to understand because each small piece can be
studied and understood in isolation.

During this course, we define a module as:

-   program unit that is discrete and identifiable with respect to
    **compiling**, **combining** with other units, and **loading**;
-   logically separable part of a program;
-   set of source code files under version control that can be
    manipulated as one;
-   collection of both data and the routines that act on it.


<a id="org2bbdc3d"></a>

## 1.0206 What is module complexity?

Complexity is defined as:

1.  The degree to which a system&rsquo;s design or code is **difficult to
    understand** because of numerous components or relationships
    among components;

2.  Pertaining to any of a set of structure-based **metrics** that
    measures the attributes in (1);

3.  The degree to which a system or component has a design or
    implementation that is difficult to understand and **verify**.

Simplicity is defined as:

1.  The degree to which a system or component has a design or
    implementation that is **straightforward** and **easy** to
    understand;

2.  Software attributes that provide implementation of functions in
    the most understandable manner.


<a id="org0a9417b"></a>

## 1.0208 Complexity references

Please read the following articles. The first is a paper about
structural complexity and how it changes over time. The second is
the classic McCabe paper on module complexity.

-   R.S. Sangwan, P. Vercellone-Smith and P.A. Laplante &rsquo;[Structural
    epochs in the complexity of software over time](https://ieeexplore.ieee.org/document/4548410)&rsquo;, IEEE Software
    25(4) Jul-Aug 2008, pp.66–73.
-   T.J. McCabe &rsquo;[A complexity measure](https://ieeexplore.ieee.org/document/1702388)&rsquo;, IEEE Transactions on Software
    Engineering SE-2(4) Dec 1976, pp.308–320.


<a id="org18e366c"></a>

# Week 2

Key Concepts

-   Define module cohesion in terms of computer program architecture.
-   Define types of module cohesion and identify them in computer
    programs.
-   Use programming techniques to improve module cohesion.


<a id="orge0183b3"></a>

## 2.0102 Week 2 reading

This document contains the definitions of various types of module
cohesion that you will encounter in the videos. We recommend that
you download this and keep it to hand while you watch the videos.

[ISO/IEC/IEEE International standard – Systems and software
engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
pp.1–418.


<a id="orge4ebcb5"></a>

## 2.0201 What is module cohesion?

Module cohesion is a way to reason about the contents of a module.

We&rsquo;re concerned about a single module and its contents, not about
interactions between modules.

From the ISO Standard Software Engineering Vocabulary, Module
Cohesion is defined as:

-   Manner and degree to which the tasks performed by a single
    software module are related to one another;
-   In software design, a measure of the strength of association of
    the elements within a module.

What these tell us is that the *stuff* within a module should be
strongly related, otherwise, perhaps, they shouldn&rsquo;t be part of a
single module. In summary, a module should do a single thing and a
single thing only.

There are several types of module cohesion, they are:

-   **Communicational:** Type of cohesion in which the tasks performed
    by a software module use the same input data or contribute to
    producing the same output data

-   **Functional:** Type of cohesion in which the tasks performed by a
    software module all contribute to the performance of a single
    function

-   **Logical:** Type of cohesion in which the tasks performed by a
    software module perform logically similar functions

-   **Procedural:** Type of cohesion in which the tasks performed by a
    software all contribute to a given program procedure such as an
    iteration or decision process

-   **Sequential:** Type of cohesion in which the output of one task
    performed by a software module serves as input to another task
    performed by the module

-   **Temporal:** Type of cohesion in which the tasks performed by a
    software module are all requried at a particular phase of program
    execution

-   **Coincidental:** Type of cohesion in which the tasks performed by
    a software module have no functional relationship to one another


<a id="orged61502"></a>

## 2.0204 Why are different types of module cohesion good or bad?

Communicational cohesion is **good** because it&rsquo;s about combining
things in a single module that are working on similar data.

Functional cohesion is **good** too. That&rsquo;s because we put into a
module functions that work together to achieve a certain goal.

Logical cohesion is generally considered **bad**. Just because
software looks like it&rsquo;s doing similar things, doesn&rsquo;t necessarily
mean they should be part of the same module.

Procedural cohesion is **bad**. It tends to result in large
procedures that do many communicationally different things.

Sequential cohesion is **bad**. This is the idea that a program is
doing a sequence of things and, as such, that sequence of things
should be put together.

Temporal cohesion is **bad**. This is the idea that because things
are happening at the same time, they should be put together.

Coincidental cohesion is **bad**. In fact, this is terrible. Things
are put together due to mere coincidence. They just happen to be
placed together.


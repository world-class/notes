
# Table of Contents

1.  [Week 1](#org881c774)
    1.  [Module Introduction](#org2adffab)
    2.  [1.0202 Reference points](#orgad8b921)
    3.  [1.0203 SWEBOK guide and IEEE vocab](#orgb329a58)
    4.  [1.0204 What is a module?](#org4efd5d8)
    5.  [1.0206 What is module complexity?](#org989ca80)
    6.  [1.0208 Complexity references](#org39ce9c5)
2.  [Week 2](#org16e488a)
    1.  [2.0102 Week 2 reading](#org005729b)
    2.  [2.0201 What is module cohesion?](#org6ee6e70)
    3.  [2.0204 Why are different types of module cohesion good or bad?](#orgfc114da)
3.  [Week 3](#org0f29863)
    1.  [3.0102 Week 3 reading](#orgb3b2c44)
    2.  [3.0201 What is module coupling?](#org6b58c1e)
    3.  [3.0203 Different types of coupling: good or bad?](#orgf7a04e1)
    4.  [3.0205 Common environment coupling: good or bad?](#orgc77b87e)
    5.  [3.0207 Content coupling: good or bad?](#orgf67c19e)
    6.  [3.0209 Control coupling: good or bad?](#orgf465896)
    7.  [3.0211 Data coupling: good or bad?](#orga6e4cb5)
    8.  [3.0213 Hybrid coupling: good or bad?](#org9d0a5dd)
    9.  [3.0215 Pathological coupling: good or bad?](#orgfda22b1)
4.  [Week 4](#orgf72ebc0)
    1.  [4.012 Week 4 reading](#orgbf95aa9)
    2.  [4.0201 Reasoning about scope](#orgaeecb32)
    3.  [4.0203 Reasoning about function parameters](#org4de9e4a)
    4.  [4.0205 Replacing functions dynamically and const](#org26bb246)
5.  [Week 5](#org576563a)
    1.  [5.0002 Topic reading](#org67adca9)
    2.  [5.0104 The Three Laws according to Uncle Bob](#org084af2e)
    3.  [5.0113 What to test? An overview](#org0c2a1c0)
6.  [Week 6](#org5ecb181)
    1.  [6.0102 Week 6 reading](#org843c13e)
    2.  [6.013 Super quick Python tutorial](#org427c45c)
        1.  [Variables](#orgb051897)
        2.  [Lists](#org5d3b849)
        3.  [Functions](#org2d5242c)
    3.  [6.0201 Introduction to unittest in Python](#org7686ac3)
    4.  [6.0203 Assertion function in unittest](#org6fe8656)
    5.  [6.0205 Assert functions in unittest](#orge8ada5c)
    6.  [6.0301 Introduction to statistics libraries](#orgf7a0b01)
7.  [Week 7](#org4bf713a)
    1.  [7.0102 Week 7 reading](#orgfcc8a18)
    2.  [7.0201 C++ primer](#org4e38fb6)
        1.  [Variables](#org9eb111d)
        2.  [Arrays](#orgdd971cf)
        3.  [Loops](#org562b309)
        4.  [Functions](#orgd7fd51d)
        5.  [Classes](#orgee6c9f2)
    3.  [7.0206 Introduction to cppunit](#orge6909e2)
    4.  [7.0208 Adding better output and multiple tests](#org642ef51)
    5.  [7.021 Assert functions in cppunit](#org5178dcb)
8.  [Week 8](#org1651c3a)
    1.  [8.0102 Week 8 reading](#org5ac9ece)
    2.  [8.0204 Introduction to Mocha](#org00fe1fe)
    3.  [8.0206 Mocha with es6 syntax](#orgd8e69b2)
    4.  [8.0303 Considerations when testing a web API](#orgfa4f164)
9.  [Week 9](#org4736af1)
    1.  [9.0202 Week 9 reading](#org67ff553)
    2.  [9.0301 Introduction to assertions](#org1a0a626)
        1.  [Terminating The Program](#org64ab9cb)
        2.  [Printing An Error](#org113c122)
        3.  [Throwing An Exception](#org161d33a)
        4.  [Carrying On Regardless](#org264a34c)
    3.  [9.0303 Assertions and the software development lifecycle](#org2a958b3)
10. [Week 10](#orga427f51)
    1.  [10.0102 Week 10 reading](#org5c2eb77)
    2.  [10.0201 Secure programming overview](#org357a113)
    3.  [10.0203 Secure programming and the software development lifecycle](#org30818ae)
11. [Week 11](#org0e665d7)
    1.  [11.0201 Different types of errors](#orgab22455)
    2.  [11.0203 Introduction to exceptions](#orga475c32)
    3.  [11.0205 The try and catch pattern](#org320d69e)
    4.  [11.0207 Try and catch in javascript](#org09f04b4)
    5.  [11.0209 Throw in javascript](#org36e3c89)
12. [Week 12](#orgf034453)
    1.  [12.0201 Introduction to debuggers](#org047fb01)
    2.  [12.0208 Advanced reading about debugging](#org2266ac1)
13. [Week 13](#org07c234f)
    1.  [13.0102 From the topic to the week](#org92ae204)
    2.  [13.0202 Introduction to requirements](#org156f5bc)
    3.  [13.0204 Whirlwind tour of requirements techniques](#org01eb221)
    4.  [13.0206 Back to basics: EARS](#orge2b95a6)
    5.  [13.0208 EARS reference](#org7385277)
14. [Week 14](#org6cbf37c)
    1.  [14.0201 Black box and white box testing](#org4212db7)
    2.  [14.0203 Testing and the body of knowledge](#org9e9206d)
    3.  [14.0205 Two short articles about testing taxonomies](#org555ac58)
    4.  [14.0206Test procedure specification: step by step and matrix](#org3cb0437)
        1.  [Step-by-step Test Procedure](#orga819718)
        2.  [Matrix Test Procedure](#org3ae928a)
    5.  [14.0210 Factors affecting test effectiveness](#orga7e28c7)
    6.  [14.0301 Automated black box testing](#org309bd69)
    7.  [14.0303 Automated testing in video games](#orgdf8f1a1)
15. [Week 15](#org474135a)
    1.  [15.0201 Introduction to usability – what does it mean?](#org7aa0d57)
    2.  [15.0203 Basic guide to usability for engineers](#org7c87e77)
    3.  [15.0204 Usability metrics](#org702cfb5)
        1.  [System Usability Scale (SUS)](#orgff52980)
        2.  [Usability Metric For User Sperience (UMUX)](#org0bf9204)
        3.  [Creativity Support Index](#org08b0f2a)
    4.  [15.0206 System usability surveys](#orge801cd1)
    5.  [15.0301 Usability principles](#org206aff7)
    6.  [15.0303 Usablity principles paper](#org6f3b1f1)
16. [Week 16](#org70159c6)
    1.  [16.021 What is accessibility?](#org07fdc6e)
    2.  [16.025 Considering the range of access requirements](#orgc1a7138)
    3.  [16.031 Assessing accessibility](#org360b033)
    4.  [16.0210 Legal aspects of accessibility](#org2a8f99d)
17. [Week 17](#orgab425f8)
    1.  [17.0102 Why do we need version control?](#org13bb175)
    2.  [17.0104 Design goals of git](#orgd8195f0)
        1.  [Git Objects](#orgd6bcaea)
        2.  [Filesystem vs Git Objects](#org082083b)
        3.  [What about commits?](#orgf6f2dc1)
        4.  [What about branches?](#org080c61a)
        5.  [What about tags?](#org04abfe3)
    3.  [17.0107 Classic version control paper and Torvalds on git](#orgfc68e4c)
18. [Week 18](#orgf27124a)
    1.  [18.0102 Basic git operations in a local repository](#org18ccae9)
    2.  [18.0104 Branching and merging](#org5127603)
    3.  [18.018 Adding code to a remote repository](#orge248224)
    4.  [18.0110 Installing git and the git book](#org631edef)
19. [Week 19](#org7920bfe)
    1.  [19.0102 More on git log](#org1420cda)
    2.  [19.0104 Visualising git repositories with git log](#org21cf6e1)



<a id="org881c774"></a>

# Week 1

Key Concepts

-   Define the terms module and module complexity in terms of computer
    programs and systems.
-   Identify the modules present in computer programs and systems.
-   Analyse program code in terms of its complexity.


<a id="org2adffab"></a>

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


<a id="orgad8b921"></a>

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


<a id="orgb329a58"></a>

## 1.0203 SWEBOK guide and IEEE vocab

-   [ISO/IEC/IEEE International standard – Systems and software
    engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
    pp.1–418.
-   R.E.D. Fairley, P. Bourque and J. Keppler, [The impact of SWEBOK
    Version 3 on software engineering education and training](https://ieeexplore.ieee.org/document/6816804) in 2014
    IEEE 27th Conference on Software Engineering Education and
    Training (CSEE&T). (Klagenfurt, Austria: IEEE, 2014).


<a id="org4efd5d8"></a>

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


<a id="org989ca80"></a>

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


<a id="org39ce9c5"></a>

## 1.0208 Complexity references

Please read the following articles. The first is a paper about
structural complexity and how it changes over time. The second is
the classic McCabe paper on module complexity.

-   R.S. Sangwan, P. Vercellone-Smith and P.A. Laplante &rsquo;[Structural
    epochs in the complexity of software over time](https://ieeexplore.ieee.org/document/4548410)&rsquo;, IEEE Software
    25(4) Jul-Aug 2008, pp.66–73.
-   T.J. McCabe &rsquo;[A complexity measure](https://ieeexplore.ieee.org/document/1702388)&rsquo;, IEEE Transactions on Software
    Engineering SE-2(4) Dec 1976, pp.308–320.


<a id="org16e488a"></a>

# Week 2

Key Concepts

-   Define module cohesion in terms of computer program architecture.
-   Define types of module cohesion and identify them in computer
    programs.
-   Use programming techniques to improve module cohesion.


<a id="org005729b"></a>

## 2.0102 Week 2 reading

This document contains the definitions of various types of module
cohesion that you will encounter in the videos. We recommend that
you download this and keep it to hand while you watch the videos.

[ISO/IEC/IEEE International standard – Systems and software
engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
pp.1–418.


<a id="org6ee6e70"></a>

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


<a id="orgfc114da"></a>

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


<a id="org0f29863"></a>

# Week 3

Key Concepts

-   Give a high-level definition of module coupling and illustrate
    with an example.
-   Analyse computer programs to identify different types of module
    coupling.
-   Describe different types of module coupling and discuss which are
    desirable and which are not.


<a id="orgb3b2c44"></a>

## 3.0102 Week 3 reading

[ISO/IEC/IEEE International standard – Systems and software
engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
pp.1–418.


<a id="org6b58c1e"></a>

## 3.0201 What is module coupling?

Module Coupling is defined as:

-   Manner and degree of interdependence between software modules
-   Strength of the relationships between modules
-   Measure of how closely connected two routines or modules are
-   In software design, a measure of the interdependence among
    modules in a computer program


<a id="orgf7a04e1"></a>

## 3.0203 Different types of coupling: good or bad?

There are different types of module coupling:

-   **Common Environment:** type of coupling in which two software
    modules access a common data area
-   **Content:** type of coupling in which some or all of the contents
    of one software module are included in the contents of another
    module
-   **Control:** type of coupling in which one software module
    communicates information to another module for the explicit
    purpose of influencing the latter module&rsquo;s execution
-   **Data:** type of coupling in which output from one module serves
    as input to another module
-   **Hybrid:** type of coupling in which different subsets of the
    range of values that a data item can assume are used for
    different and unrelated purposes in different software modules
-   **Pathological:** type of coupling in which one software module
    affects or depends upon the internal implementation of another


<a id="orgc77b87e"></a>

## 3.0205 Common environment coupling: good or bad?

Common environment coupling is where two modules have a shared
environment. In this environment we have two modules and a block
data.

Both modules have access to the data and can change it and do what
they like to it as it&rsquo;s shared.

While this sounds like a good idea, it can result in *Race
Conditions* where one module changes the data without the other
module knowing about it. A better approach would be to have smaller
environments of modules each with their own data.

Because of this reason, Common Environment Coupling is not
necessarily bad, but one must be careful when implementing it in
order to limit its scope.


<a id="orgf67c19e"></a>

## 3.0207 Content coupling: good or bad?

Content coupling would be like having one module (*m1*) with
another module (*m2*) contained inside it. It makes it so that
nothing outside of *m1* can see *m2* or even know it exists.

It is a regular type of module coupling which is used, for example,
is event listeners in JavaScript.


<a id="orgf465896"></a>

## 3.0209 Control coupling: good or bad?

Control coupling is when one module is modifying the operation of
another one by sending a flag to change how it operates.

Because of that, module 1 tends to become rather complicated. It&rsquo;s
easier to illustrate with some python-like code:

    def compute(a, b, op):
        if op == "add":
    	return a + b
        else if op == "mul":
    	return a * b
        else if op == "div":
    	return a / b
        else if op == "sub":
    	return a - b

While the above is a very contrived example, it&rsquo;s already clear how
cumbersome this is. It would have been better to split compute into
`add`, `mul`, `div`, and `sub` primitives.


<a id="orga6e4cb5"></a>

## 3.0211 Data coupling: good or bad?

Data or Input/Output coupling looks like a production line. The
output of one module is fed as input into another. Basically, we
can look at it as a function call. Module 1 calls module 2 to run
some computation. Data coupling is good.


<a id="org9d0a5dd"></a>

## 3.0213 Hybrid coupling: good or bad?

Hybrid coupling is when different modules treat the data source in
different ways. In general, this can get confusing and things can
go awry very easily.

An example may be that we use a single integer, e.g. 32-bits, and
subdivide it into something of our own. Perhaps bit 31 is some
Dirty/Clean flag, bits 28:30 hold a state of a state machine, bits
22:27 hold some size information to whatever other memory area and
the remaining bits 21:0 hold the top-most 22 bits of the address to
a memory area. It should be clear that this can get confusing.

There are cases where this sort of memory usage is the only
option, but in general Hybrid Coupling is bad.


<a id="orgfda22b1"></a>

## 3.0215 Pathological coupling: good or bad?

*&ldquo;It&rsquo;s a bit like control coupling, but worse&rdquo;*<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>. Module 1 can
either affect the internal workings module 2, or it has a direct
dependency in its implementation. This means that module 2 can&rsquo;t be
easily replaced, refactored, modified. It&rsquo;s bad.


<a id="orgf72ebc0"></a>

# Week 4

Key Concepts

-   Explain the connection between common programming concepts and
    module concepts.
-   Use language features to improve module coupling and cohesion.
-   Use programming techniques to improve module coupling and
    cohesion.


<a id="orgbf95aa9"></a>

## 4.012 Week 4 reading

We will be looking at some JavaScript programming concepts this
week. Here are some relevant links:

-   w3schools [JavaScript scope](https://www.w3schools.com/js/js_scope.asp) (2020).
-   w3schools [JavaScript const](https://www.w3schools.com/JS/js_const.asp) (2020).


<a id="orgaeecb32"></a>

## 4.0201 Reasoning about scope

Given the JavaScript code below, let&rsquo;s consider *scope* from the
point of view of Module Coupling and Cohesion.

    var x, y, z;
    
    function addition() {
      z = x + y;
    }
    
    console.log(z);
    addition();
    console.log(z);

When we run this piece of code, we will see that all variables
start with the value of `undefined`, which is expected. When we
call `addition()`, `z` gets the value of `NaN`.

From our definition of *Module*, this piece of code can be called a
module. The `addition()` function is a little module inside our
program which could, potentially, be part of a bigger module.

In terms of coupling, the `addition()` function is coupled to the
particular variables `x`, `y`, and `z`. Because all three variables
are global, anything in the program can modify them. This is rather
dangerous, because the data which `addition()` is coupled with, can
be modified &ldquo;behind its back&rdquo;. If some other part of the program
changes the value of `x` to a string and `y` to a number, then
`addition()` won&rsquo;t work as expected.

In terms of cohesion, `addition()` and the global variables are
really strongly coupled but it&rsquo;s not disconnected from the rest. We
want everything in `addition()` to be discrete and
disconnected. The obvious fix is to pass `x` and `y` as parameters
to `addition()` and have it evaluate a new value for `z`. This way,
`addition()` won&rsquo;t depend on the global state.

Therefore, we modify the code to the new version below:

    var x, y, z;
    
    function addition(p1, p2) {
      return p1 + p2;
    }
    
    x = 10;
    y = 11;
    z = 12;
    
    console.log(z);
    z = addition(x, y);
    console.log(z);

After this modification, we can see that `addition()` isn&rsquo;t
depending on the rest of the program. As long as we pass sensible
arguments, it contains everything it needs to produce a result
that&rsquo;s independent of what&rsquo;s happening on the rest of the program.


<a id="org4de9e4a"></a>

## 4.0203 Reasoning about function parameters

Using the framework of module coupling and cohesion, let&rsquo;s look at
function parameters and how to decide what parameters a function
needs. The following code snippet is used to motivate the argument:

    var game_state = {
      'lives': 3,
      'score': 125,
      'level': 4
    };
    
    function canHaveExtraLife(current_game_state) {
      if (current_game_state.lives < 2 &&
          current_game_state.level > 4) {
        return true;
      }
    
      return false;
    }

Because we&rsquo;re passing the entire `game_state` object as argument to
`canHaveExtraLife`, we&rsquo;ve coupled that function to the structure of
`game_state` object. What this means is that if we want to modify
the internal representation of `game_state` we have to modify
`canHaveExtraLife` as well.

Instead, we should decouple the function from the internal
structure of `game_state` and the easiest way to do that is to
simply pass the number of lives and the current level as arguments
to the function, instead of the entire `game_state` object.

The modified code is shown below:

    var game_state = {
      'lives': 3,
      'score': 125,
      'level': 4
    };
    
    function canHaveExtraLife(lives, level) {
      if (lives < 2 && level > 4) {
        return true;
      }
    
      return false;
    }

Which can be further simplified to:

    var game_state = {
      'lives': 3,
      'score': 125,
      'level': 4
    };
    
    function canHaveExtraLife(lives, level) {
      return lives < 2 && level > 4;
    }

This function is now decoupled from the internal structure of
`game_state`. It has now knowledge that it even exists. A caller
only needs to know how to pass the number of lives and current
level, regardless of where that data is held.


<a id="org26bb246"></a>

## 4.0205 Replacing functions dynamically and const

The snippet below is an example of pathological coupling in
JavaScript:

    function addition(p1, p2) {
      return p1 + p2;
    }
    
    function pathos() {
      addition = function(p1, p2) {
        return p1 * p2;
      }
    }
    
    var z;
    z = addition(10, 12);
    console.log(z);
    
    pathos();
    z = addition(10, 12);
    console.log(z);

We can see that `pathos()` re-implements `addition()` and modifies
its behavior. It&rsquo;s a clear example of pathological coupling because
`pathos()` modifies the inner workings of `addition()`.

To prevent this sort of pathological coupling in JavaScript, we can
make use of the `const` keyword to prevent a variable from being
modified after its creation.

    const addition = function(p1, p2) {
      return p1 + p2;
    }
    
    function pathos() {
      addition = function(p1, p2) {
        return p1 * p2;
      }
    }
    
    var z;
    z = addition(10, 12);
    console.log(z);
    
    pathos();
    z = addition(10, 12);
    console.log(z);

When we try to run the modified code above, the JavaScript runtime
will prevent `pathos()` from modifying `addition` and crash early
on. This would force us to remove the pathological coupling.


<a id="org576563a"></a>

# Week 5

Key Concepts

-   Define test-driven development
-   Identify the processes involved in test-driven development
-   Critically analyse examples of test-driven development in source
    code repositories


<a id="org67adca9"></a>

## 5.0002 Topic reading

-   Martin, R.C. [Professionalism and test-driven development](https://ieeexplore.ieee.org/document/4163026), IEEE
    Software 24(3) 2007, pp.32–36.

-   [IEEE Software 24(3) 2007](https://ieeexplore.ieee.org/document/4163026)

-   Segura, S. and Z.Q. Zhou, [Metamorphic testing 20 years later: a
    hands-on introduction](https://ieeexplore.ieee.org/document/8449651), 2018 IEEE/ACM 40th International
    Conference on Software Engineering: Companion (ICSE-Companion)
    2018, pp.538–539

-   Borle, N., M. Feghhi, E. Stroulia, R. Grenier and A. Hindle
    [[Journal First] Analyzing the effects of test driven development
    in GitHub](https://ieeexplore.ieee.org/document/8453184), 2018 IEEE/ACM 40th International Conference on
    Software Engineering (ICSE) 2018, pp.1062–1062.


<a id="org084af2e"></a>

## 5.0104 The Three Laws according to Uncle Bob

Test-Driven Development is governed by the following three laws:

1.  You may not write production code unless you have first written
    a failing unit test

2.  You may not write more of a unit test than is sufficient to
    fail

3.  You may not write more production code than is sufficient to
    make the failing unit test pass

As an added challenge: we have to complete this process in 2
minutes. The idea is to have the tests guide the development
process in short iterative bursts.


<a id="org0c2a1c0"></a>

## 5.0113 What to test? An overview

-   **Interface Testing:** Tests that the function receives the
    arguments it should receive and returns a value of the expected
    kind

-   **Exercising Data Structures:** Verifies that the module under test
    utilizes the required data structures correctly

-   **Boundary Conditions:** Testing boundary conditions of functions;
    i.e. what happens if we send an unexpected value?

-   **Execution Paths:** In a module that has multiple paths of
    executions (conditionals), we want to make sure every path is
    exercised

-   **Error Handling:** Make sure that errors are properly identified
    and handled to avoid crashes


<a id="org5ecb181"></a>

# Week 6

Key Concepts

-   Write unit tests using the Python unittest package
-   Describe the elements of a unit testing framework.
-   Carry out the test-driven development workflow in Python


<a id="org843c13e"></a>

## 6.0102 Week 6 reading

-   [Python `unittest` Documentation](https://docs.python.org/3/library/unittest.html)


<a id="org427c45c"></a>

## 6.013 Super quick Python tutorial


<a id="orgb051897"></a>

### Variables

Variables don&rsquo;t need to be declared and their type is assigned
when initializing. Whenever we need a variable, just type a name
and give it a value:

    myNumber = 10
    myString = "Hello"


<a id="org5d3b849"></a>

### Lists

Python lists are an implementation of a dynamic array. Values in a
list are separated by commas and enclosed in square
brackets. Individual items in a list can be index like in
JavaScript or C.

    myList = [0, 1, 2, 3, 4]
    myOtherList = ["this", "is", "a", "list", "of", "strings"]
    
    myList[2]	# this gives me the number 2
    myOtherList[0]	# this gives me the string "this"

Python also has nice iterators for lists:

    myList = [10, 11, 12, 13, 14, 15]
    
    for n in myLists:
        print(n)

We can get the length of a list using `len()` and produce a range
of numbers using `range()`:

    myList = [10, 11, 12, 13, 14, 15]
    
    for i in range(len(myList)):
        print(myList[i])

We can add more items to a list using `append()`:

    myList = [10, 11, 12, 13, 14, 15]
    
    myList.append(20)

To extend a list with the items from another list, we can use
`extend()`:

    myList = [10, 11, 12, 13, 14, 15]
    anotherList = [20, 21, 22, 23, 24, 25]
    
    myList.extend(anotherList)


<a id="org2d5242c"></a>

### Functions

We define functions in python with the `def` keyword:

    def increment(n):
        """ Increment argument by 1 """
        return n + 1

If we need more than one argument, they should be comma separated:

    def add(a, b):
        """ Return the addition of a and b """
        return a + b

Keep in mind that Python uses *pass-by-value*, not
*pass-by-reference*.


<a id="org7686ac3"></a>

## 6.0201 Introduction to unittest in Python

Python has built-in unit test module named `unittest`. Here&rsquo;s an
example of how to use it:

    import unittest
    
    class TestSomething(unittest.TestCase):
        def test_pass(self):
    	self.assertEqual(2 + 2, 4)
    
        def test_fail(self):
    	self.assertEqual(2 + 2, 42)
    
    unittest.main(argv = ['ignored', 'v'], exit = False)


<a id="org6fe8656"></a>

## 6.0203 Assertion function in unittest

The `unittest` module from python has a host of assertion functions
built-in. Instead of repeating them here, it&rsquo;s to access its
[documentation](https://docs.python.org/3/library/unittest.html#unittest.TestCase) for reference to all functions.


<a id="orge8ada5c"></a>

## 6.0205 Assert functions in unittest

-   [`unittest` classes and functions](https://docs.python.org/3/library/unittest.html#unittest.TestCase)


<a id="orgf7a0b01"></a>

## 6.0301 Introduction to statistics libraries

A statistics library is a program which contains ready-made methods
for computing common statistics on a set of data. Typically, these
libraries contain methods for computing the mean, min, max,
standard deviation, and variance. Some other common, but more
advanced, methods would be calculating correlation coefficients,
[ANOVAS](https://en.wikipedia.org/wiki/Analysis_of_variance), or histograms.


<a id="org4bf713a"></a>

# Week 7

Key Concepts

-   Write unit tests using the C++ cppunit package
-   Describe the elements of a unit testing framework.
-   Carry out the test-driven development workflow in C++


<a id="orgfcc8a18"></a>

## 7.0102 Week 7 reading

-   cplusplus.com [Structure of a program](http://cplusplus.com/doc/tutorial/program_structure/) (2020).


<a id="org4e38fb6"></a>

## 7.0201 C++ primer

Usually, a C++ program starts with including some libraries and a
`main()` function. We can use the minimal skeleton below:

    #include <iostream>
    
    int main(void)
    {
        return 0;
    }


<a id="org9eb111d"></a>

### Variables

C++ is a strongly typed language. Variables must be explicitly
declared, together with their types before they can be used.

    #include <iostream>
    
    int main(void)
    {
        int x = 42;
    
        printf("x = %i\n", x);
    
        return 0;
    }

In order to run this, we must first compile it to generate a
runnable binary, we do that at the terminal with the following
command (assuming the code above is saved to a file named
main.cpp):

    $ g++ main.cpp -o main
    $ ./main
    x = 42

C++ supports many different primitive data types, for example:

    #include <iostream>
    
    int main(void)
    {
        int x = 42;
        float y = 3.14f;
    
        printf("x = %i\n", x);
        printf("y = %f\n", y);
    
        return 0;
    }

And [here](https://www.tutorialspoint.com/cplusplus/cpp_data_types.htm) we can find a longer description of many of the possible
data types in C++.


<a id="orgdd971cf"></a>

### Arrays

Arrays are declared using the skeleton below:

    type arrayName[arraySize];

For example, for an array of integers, we can use:

    int numbers[10];

Which would give us an array of 10 integers. Indices start at 0,
i.e. the first element of the array is 0.

    #include <iostream>
    
    int main(void)
    {
        int x[10] = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 };
    
        printf("x[4] = %i\n", x[4]);
    
        return 0;
    }


<a id="org562b309"></a>

### Loops

C++ supports several kinds of loops. A `for` loop can help us, for
example, iterate over the elements of an array and print one by
one:

    #include <iostream>
    
    int main(void)
    {
        int x[10] = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 };
        int i;
    
        for (i = 0; i < 10; i++)
    	printf("x[i] = %i\n", x[i]);
    
        return 0;
    }


<a id="orgd7fd51d"></a>

### Functions

We can define our own functions in C++. The basic format is:

    type functionName(type arg1, type arg2, ...)
    {
        // function body
    }

For example, if we want to create a function that takes one
integer and produces its successor, we would implement it like so:

    #include <iostream>
    
    static int succ(int n)
    {
        return n + 1;
    }
    
    int main(void)
    {
        int x = 41;
    
        printf("successor of %i is %i\n", x, succ(x));
    
        return 0;
    }

That `static` keywords tells the compiler that `succ()` is only
supposed to be accessible from the current source file.


<a id="orgee6c9f2"></a>

### Classes

C++ is an object oriented language and, as such, has built-in
support for classes. The basic syntax for declaring a class is:

    class ClassName {
    public:
        ClassName(type arg1, ...);
        type methodName1(type arg1, ...);
        type methodName2(type arg1, ...);
        ...
    
        type attribute1;
        type attribute2;
        ...
    
    private:
        type privateAttribute1;
        type privateAttribute2;
        type privateAttribute3;
    
        type privateMethodName1(type arg1, ...);
        type privateMethodName2(type arg1, ...);
    };

For example:

    class Thing {
    public:
        Thing(float x, float y)
        {
    	this->x = x;
    	this->y = y;
        }
    
        float getX(void)
        {
    	return this->x;
        }
    
    private:
        float x;
        float y;
    };
    
    int main(void)
    {
        Thing thing {10.2f, 10.5f};
    
        printf("Thing's X is %f\n", thing.getX());
    
        return 0;
    }


<a id="orge6909e2"></a>

## 7.0206 Introduction to cppunit

[cppunit](https://www.freedesktop.org/wiki/Software/cppunit/) is a C++ Unit Testing framework which we can use to
automate tests on C++ software. Here&rsquo;s a simple example:

    #include <cppunit/TestCase.h>
    
    class BasicTest : public CppUnit::TestCase {
    public:
        BasicTest(std::string name) : CppUnitTestCase(name) {}
    
        void runTest(void) override
        {
    	CPPUNIT_ASSERT(2 + 2 == 4);
    	CPPUNIT_ASSERT(2 + 2 == 3);
        }
    };
    
    int main(void)
    {
        BasicTest test{"BasicTest"};
        test.runTest();
    
        return 0;
    }

By inheriting from `CppUnit::TestCase`, we get a set of
functionality and assertions from `CppUnit` to test the
functionality of our code.

When compiling this code, we need to link it against the `cppunit`
library. Like so:

    $ g++ main.cpp -lcppunit -o test
    $ ./test
    terminate called after throwing an instance of 'CppUnit::Exception'
      what():  assertion failed
    - Expression: 2 + 2 == 3
    
    Aborted


<a id="org642ef51"></a>

## 7.0208 Adding better output and multiple tests

We can implement some more advanced testing setup with cppunit.

    #include <cppunit/TestCase.h>
    #include <cppunit/TestCaller.h>
    #include <cppunit/ui/text/TestRunner.h>
    
    class FixtureTests : public CppUnit::TestFixture {
    public:
        void testAddition(void)
        {
    	CPPUNIT_ASSERT(2 + 2 == 3);
    	CPPUNIT_ASSERT(2 + 2 == 4);
        }
    };
    
    int main(void)
    {
        CppUnit::TextUi::TestRunner runner {};
    
        runner.addTest(new CppUnit::TestCaller<FixtureTests> {
    	    "test the addition operator",
    	    &FixtureTests::testAddition
    	});
    
        runner.run();
    
        return 0;
    }

What this gives us, is an easier way to combine several tests
together. Essentially, we can add as many tests as we want, for
example:

    #include <cppunit/TestCase.h>
    #include <cppunit/TestCaller.h>
    #include <cppunit/ui/text/TestRunner.h>
    
    class FixtureTests : public CppUnit::TestFixture {
    public:
        void testAddition(void)
        {
    	CPPUNIT_ASSERT(2 + 2 == 3);
    	CPPUNIT_ASSERT(2 + 2 == 4);
        }
    
        void testLogic(void)
        {
    	CPPUNIT_ASSERT(true == true);
    	CPPUNIT_ASSERT(true == false);
        }
    };
    
    int main(void)
    {
        CppUnit::TextUi::TestRunner runner {};
    
        runner.addTest(new CppUnit::TestCaller<FixtureTests> {
    	    "test the addition operator",
    	    &FixtureTests::testAddition
    	});
    
        runner.addTest(new CppUnit::TestCaller<FixtureTests> {
    	    "test the logic",
    	    &FixtureTests::testLogic
    	});
    
        runner.run();
    
        return 0;
    }

This framework also has support for `setUp()` and `tearDown()`
methods which can be used to allocate and free resources before and
after each test. Like so:

    #include <cppunit/TestCase.h>
    #include <cppunit/TestCaller.h>
    #include <cppunit/ui/text/TestRunner.h>
    
    class FixtureTests : public CppUnit::TestFixture {
    public:
        void setUp(void) override
        {
    	printf("Setup called\n");
        }
    
        void tearDown(void) overrid
        {
    	printf("Teardown called\n");
        }
    
        void testAddition(void)
        {
    	CPPUNIT_ASSERT(2 + 2 == 3);
    	CPPUNIT_ASSERT(2 + 2 == 4);
        }
    
        void testLogic(void)
        {
    	CPPUNIT_ASSERT(true == true);
    	CPPUNIT_ASSERT(true == false);
        }
    };
    
    int main(void)
    {
        CppUnit::TextUi::TestRunner runner {};
    
        runner.addTest(new CppUnit::TestCaller<FixtureTests> {
    	    "test the addition operator",
    	    &FixtureTests::testAddition
    	});
    
        runner.addTest(new CppUnit::TestCaller<FixtureTests> {
    	    "test the logic",
    	    &FixtureTests::testLogic
    	});
    
        runner.run();
    
        return 0;
    }


<a id="org5178dcb"></a>

## 7.021 Assert functions in cppunit

-   [cppunit: Making assertions](https://web.archive.org/web/20180601221213/http://cppunit.sourceforge.net/doc/lastest/group___assertions.html)


<a id="org1651c3a"></a>

# Week 8

Key Concepts

-   Carry out the test-driven development workflow in JavaScript.
-   Write unit tests using the JavaScript Mocha package.
-   Describe the elements of a unit testing framework.


<a id="org5ac9ece"></a>

## 8.0102 Week 8 reading

-   [Node.js](https://nodejs.org/en/) (version 12LTS recommended)
-   [Mocha](https://mochajs.org/)
-   [Chai](https://www.chaijs.com/)


<a id="org00fe1fe"></a>

## 8.0204 Introduction to Mocha

In an empty directory, we run `npm init` and follow the prompts. At
the end, we will have a `package.json` file created for us. It
should look similar to this:

    {
      "name": "myproject",
      "version": "1.0.0",
      "description": "",
      "main": "index.js",
      "scripts": {
        "test": "echo \"Error: no test specified\" && exit 1",
      },
      "author": "",
      "license": "ISC"
    }

When we run the command `npm test`, the line labeled `test` inside
`scripts` will run. Whichever command is placed there, will
run. That&rsquo;s how we will run our `mocha` tests.

Before we use `mocha` and `chain`, we have to install them with
`npm add mocha chai`. After this command completes, we will be able
to use `mocha` and `chai`, so let&rsquo;s update our `package.json`
accordingly:

    {
      "name": "myproject",
      "version": "1.0.0",
      "description": "",
      "main": "index.js",
      "scripts": {
        "test": "mocha"
      },
      "author": "",
      "license": "ISC"
    }

With that setup, we can create a new folder `test` to hold all our
tests. When `mocha` runs, it will look for a folder named `test`
and will execute the files placed there. Let&rsquo;s create our first
test in the file `test.js`.

    var assert = require('assert')
    
    describe("A feature", function () {
      describe("One test", function () {
        // Passing test
        it("should have two elements", function () {
          var s = "Hello mocha"
          var parts = s.split(" ")
    
          assert.equal(parts.length, 2)
        })
    
        // Failing test
        it("should have three elements", function () {
          var s = "Hello mocha"
          var parts = s.split(" ")
    
          assert.equal(parts.length, 3)
        })
      })
    })


<a id="orgd8e69b2"></a>

## 8.0206 Mocha with es6 syntax

Here&rsquo;s the previous code in ES6 syntax:

    const assert = require('assert')
    
    describe("A feature", () => {
      describe("One test", () => {
        // Passing test
        it("should have two elements", () => {
          const s = "Hello mocha"
          const parts = s.split(" ")
    
          assert.equal(parts.length, 2)
        })
    
        // Failing test
        it("should have three elements", () => {
          const s = "Hello mocha"
          const parts = s.split(" ")
    
          assert.equal(parts.length, 3)
        })
      })
    })


<a id="orgfa4f164"></a>

## 8.0303 Considerations when testing a web API

When we need to run HTTP requests during testing, we can use
`chai-http` package. We can use `npm add mocha chai chai-http` to
make all necessary packages are installed.

After creating the necessary `test` directory and a `test.js` file,
we can fill it up with tests:

    const chai = require('chai')
    const chaiHttp = require('chai-http')
    const assert = require('assert')
    
    chai.use(chaiHttp)
    
    describe("Top level / route", () => {
      it("should have 200 status code", (done) => {
        chai.request("http://localhost:3000")
          .get("/")
          .end((err, res) => {
    	assert.equal(res.status, 200)
    	done()
          })
      })
    })


<a id="org4736af1"></a>

# Week 9

Key Concepts

-   Define what an assertion is in a computer program.
-   Explain the difference between assertions and logical control
    flow.
-   Write assertion code and reason about how and when to enable and
    disable it.


<a id="org67ff553"></a>

## 9.0202 Week 9 reading

-   **Opinion 1:** Always use assertions
    
    Holzmann, G.J. &rsquo;[Assertive testing [reliable code](https://ieeexplore.ieee.org/document/7093042)]&rsquo;, IEEE Software
    32(3) 2015, pp.12–15.

-   **Opinion 2:** In industry, assertions are often removed in release
    builds
    
    Clarke, L.A. and D.S. Rosenblum &rsquo;[A historical perspective on runtime assertion checking in software development](https://discovery.ucl.ac.uk/id/eprint/4991/)&rsquo;, SIGSOFT
    Software Engineering Notes 31(3) 2006, pp.25–37.

Other interesting sources:

-   [What are assertions?](https://web.archive.org/web/20191209110926/http://wiki.c2.com/?WhatAreAssertions)

-   Classic paper: Hoare, C.A.R &rsquo;[Assertions: a personal perspective](https://ieeexplore.ieee.org/document/1203056)&rsquo;,
    IEEE Annals of the History of Computing 25(2) 2003, pp.14–25.

-   Ariane Rocket explosion: Jazequel, J.-M. and B. Meyer, &rsquo;[Design by
    contract: the lessons of Ariane](https://ieeexplore.ieee.org/document/562936)&rsquo;, Computer 30(1) 1997, pp.129–30.


<a id="org1a0a626"></a>

## 9.0301 Introduction to assertions

*An **Assertion** is a check in your code that evaluates a boolean
expression.* Focussing, for now, in *Runtime Assertions* what we&rsquo;re
trying to understand is if the program in a desirable state.

There are different types of assertions:

1.  Runtime Assertions

2.  Unit Tests

3.  Compile-time Assertions

An example of a runtime assertion may look like:

    int computeGameScore(GamePlayer& player)
    {
        int gameScore;
    
        /* ... */
    
        assert(gameScore >= 0);
    
        return gameScore;
    }

When an assertion fails, there are a few options. For each of them
we look at their Pros and Cons in the following subsections


<a id="org64ab9cb"></a>

### Terminating The Program

-   **Pros**
    
    Prevents program from executing anything harmful

-   **Cons**
    
    Prevents legitimate users from using the program


<a id="org113c122"></a>

### Printing An Error

-   **Pros**
    
    User knows something wrong has happened

-   **Cons**
    
    Program doesn&rsquo;t know the context of the situation


<a id="org161d33a"></a>

### Throwing An Exception

-   **Pros**
    
    Forces caller to deal with the error

-   **Cons**
    
    Caller may not have a good exception resolution method for that
    particular exception


<a id="org264a34c"></a>

### Carrying On Regardless

-   **Pros**
    
    None

-   **Cons**
    
    Program is very likely to produce bogus outputs


<a id="org2a958b3"></a>

## 9.0303 Assertions and the software development lifecycle

When should we run assertions? Should we run them in Release
Builds, Debug Builds, or both?

We have to remember that a check, small as it may be, consumes CPU
cycle and increases object size. According to Clarke and Rosenblum,
*&ldquo;assertion checking is frequently suppressed in production
versions of software&rdquo;* in order to save that space and execution
time taken by assertions.

Conversely, Holzmann states that one shouldn&rsquo;t /&ldquo;disable those
carefully crafted assertions when you ship a product to your
customer&rdquo;/. He supports his claim with examples from Microsoft and
the JPL where neither disable assertions on production builds.


<a id="orga427f51"></a>

# Week 10

Key Concepts

-   Explain the wider context of secure programming techniques.
-   Describe and use basic secure programming techniques.
-   Give real-world industry examples of secure programming workflows.
-   Course level: Define test driven development and write unit tests
-   Course level: Use defensive coding and exception handling
    techniques to prevent processing of invalid data and to handle
    unexpected events
-   Course level: Write programs using variables, control flow and
    functions
-   Course level: Assign different categories of module coupling and
    cohesion to a given program


<a id="org5c2eb77"></a>

## 10.0102 Week 10 reading

-   Classic paper from 1975: Saltzer, J.H. and M. D. Schroeder &rsquo;[The
    protection of information in computer systems](https://ieeexplore.ieee.org/document/1451869)&rsquo;, Proceedings of
    the IEEE 63(9) 1975, pp.1278–308

-   Wheeler, D.A. [Secure programming for Linux and Unix HOWTO](https://dwheeler.com/secure-programs/) (1999).

-   [Microsoft SDL practices](https://www.microsoft.com/en-us/securityengineering/sdl/practices)

-   [Software Assurance Maturity Model](https://web.archive.org/web/20200818024731/https://www.opensamm.org/)

-   [Building Security in Maturity Model](https://web.archive.org/web/20200831112350/https://www.bsimm.com/)

-   Comprehensive, Lightweight Application Security Process
    (CLASP)/Open Source Foundation for Application Security (OWASP):
    [Introduction to the CLASP process](https://web.archive.org/web/20200911124016/https://us-cert.cisa.gov/bsi/articles/best-practices/requirements-engineering/introduction-to-the-clasp-process)

-   OWASP: [Top 10 issues for web application security](https://github.com/OWASP/www-project-top-ten/blob/master/index.md)


<a id="org357a113"></a>

## 10.0201 Secure programming overview

The goals of security:

-   **Confidentiality:** Who can see?
-   **Integrity:** Who can modify and how?
-   **Availability:** Can they access it?

Secure programming hit list:

-   **Validate all input:** regardless of where data comes from, it
    should be validated before being acted upon

-   **Restrict operations to buffer bounds:** always verify that we
    never overflow a buffer

-   **Follow good security design principles:** follow the list of
    design principles from Saltzer and Schroeder, 1975.

-   **Carefully call out to other resources:** when accessing external
    resources, we must be careful

-   **Send information back judiciously:** being careful about what&rsquo;s
    sent back to the user


<a id="org30818ae"></a>

## 10.0203 Secure programming and the software development lifecycle

One example software development lifecycle is the Test Driven
Development methodology. It starts with writing tests, then writing
the minimal amount of code to get the test to pass and moving on to
writing more tests, where the cycle restarts.

It can be defined as *a structure for various software development
activities to be performed within a project*.

Microsoft has its own Security Development Lifecycle which is
defined to be *a set practices that support security assurance and
compliance requirements*. I other words, it helps developers build
more secure software.

The list of practices from Microsoft SDL is:

1.  Provide Training
2.  Define Security Requirements
3.  Define Metrics and Compliance Reporting
4.  Perform Threat Modelling
5.  Establish Design Requirements
6.  Define and Use Cryptography Standards
7.  Manage the Security Risk of Using Third-Party Components
8.  Use Approved Tools
9.  Perform Static Analysis Security Testing
10. Perform Dynamic Analysis Security Testing
11. Perform Penetration Testing
12. Establish a Standard Incident Response Process


<a id="org0e665d7"></a>

# Week 11

Key Concepts

-   Define the terms throw, try and catch.
-   Differentiate between exceptions, assertions and control flow.
-   Write exception handling code that can throw and catch exceptions.


<a id="orgab22455"></a>

## 11.0201 Different types of errors

-   **Syntax error:** error in the syntax of the program
-   **Compile error:** the compiler can&rsquo;t compile the program
-   **Link error:** the program fails to link. Usually due to missing
    definition for some declaration
-   **Non-errors:** Program is syntactically correct, it builds and
    links fine, but the implementation is non-sensical;
    e.g. calculating area of negative width/height.
-   **Runtime error:** errors that only happen during program execution


<a id="orga475c32"></a>

## 11.0203 Introduction to exceptions

Definition of an exception:

1.  event that causes suspension of normal program execution
2.  indication that an operation request was not performed
    successfully

&ldquo;The fundamental idea is to separate the detection of an error
(which should be done in a called function) from the handling of an
error (which should be done in the calling function) while ensuring
that a detected error cannot be ignored.&rdquo; &#x2013; Bjarne Stroustrup

The point is that the caller has context while the callee does
not. In other words, the function that gets called, doesn&rsquo;t know
who called it and for what purpose, therefore it can&rsquo;t possibly
know what the correct resolution for the error may be.


<a id="org320d69e"></a>

## 11.0205 The try and catch pattern

Assuming we call a function to e.g. verify user credentials, two
things can happen:

1.  Everything behaves normally
    
    In this case, we call the function, it checks user credentials
    and returns whatever it needs to return.

2.  An exception is thrown
    
    In this case, the program will be taken to an alternative
    execution path, the exception path.

So there are two execution paths: the *everything-is-a-okay* path
and the *exception* path. The *Try and catch* pattern says that we
will *try* to call the function, assuming it will work and if any
exception happens, we will *catch* it for proper handling.


<a id="org09f04b4"></a>

## 11.0207 Try and catch in javascript

    try {
      verifyUser();
    } catch (ex) {
      console.log(ex.name, ex.message);
    }


<a id="org36e3c89"></a>

## 11.0209 Throw in javascript

    function verifyUser(username, password)
    {
      throw {
        name: "DatabaseError",
        message: "Unable to connect to database",
      };
    }
    
    try {
      verifyUser("foo", "bar");
    } catch (ex) {
      console.log(ex.name, ex.message);
    }


<a id="orgf034453"></a>

# Week 12

Key Concepts

-   Use conditional breakpoints and watchpoints to automatically
    trigger debugger breaks.
-   Explain the key operations that can be carried out with a
    debugger.
-   Use debug operations such as stepping and stack tracing to explore
    a running program.


<a id="org047fb01"></a>

## 12.0201 Introduction to debuggers

*Debugging* is the process of finding and correcting errors in a
program. A *Debugger* is a tool to inspect a running program
without modifications to the source code, thereby limiting impact
of observing the program behavior.

When we rely on `printf()` or `console.log()` or similar console
printing routines, we are producing a crude debugger that has a
high impact to the execution pattern of the program.

Debuggers help with dynamic analysis, while compilers and linters
help with static analysis.


<a id="org2266ac1"></a>

## 12.0208 Advanced reading about debugging

-   Wong, W.E., R. Gao, Y. Li, R. Abreu and F. Wotawa &rsquo;[A survey on
    software fault localization](https://ieeexplore.ieee.org/document/7390282)&rsquo;, IEEE Transactions on Software
    Engineering 42(8) 2016, pp. 707-740.


<a id="org07c234f"></a>

# Week 13

Key Concepts

-   Use the &rsquo;Easy Approach to Requirements Syntax&rsquo;(EARS) to write
    requirements
-   Name several methods that people use to write requirements.
-   Explain why requirements are necessary and who the stakeholders
    are.


<a id="org92ae204"></a>

## 13.0102 From the topic to the week

-   Gregory, S. &rsquo;[The unplanned journey of a requirements engineer in
    industry: an introduction](https://ieeexplore.ieee.org/document/8048630)&rsquo;, IEEE Software 34(5) 2017, pp.16-19.


<a id="org156f5bc"></a>

## 13.0202 Introduction to requirements

When designing new Software Systems, we need a way to ensure that
the resulting Software does what it&rsquo;s supposed to do. That&rsquo;s where
requirements come into the picture.

Requirements are a way of describing what the Software is supposed
to do.

When it comes to the *SWEBOK 3.0*, requirements are a top-level
area with many sub-areas, including requirements fundamentals
requirements process, requirements elicitation, requirements
analysis, requirements specification, requirements validation,
practical considerations, and software requirements tools.


<a id="org01eb221"></a>

## 13.0204 Whirlwind tour of requirements techniques

Looking at the pros and cons of different approaches to Requirement
techniques:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">**Pros**</th>
<th scope="col" class="org-left">**Cons**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">**Natural Language**</td>
<td class="org-left">Easy to understand</td>
<td class="org-left">Ambiguous</td>
</tr>


<tr>
<td class="org-left">**Simplified Technical Language**</td>
<td class="org-left">Less ambiguous</td>
<td class="org-left">Limited</td>
</tr>


<tr>
<td class="org-left">**Unified Modelling Language**</td>
<td class="org-left">Graphical</td>
<td class="org-left">Can be hard to understand</td>
</tr>


<tr>
<td class="org-left">**Z Formal Language**</td>
<td class="org-left">Unambiguous</td>
<td class="org-left">Hard to understand</td>
</tr>
</tbody>
</table>


<a id="orge2b95a6"></a>

## 13.0206 Back to basics: EARS

The *Easy Approach to Requirements Syntax* (or EARS) is a method
developed and tested through a case study converting specification
of engines into requirements.

Requirements are written in a standard format containing a
pre-condition, a trigger, a system action, and a response:

-   **Pre:** The user is logged in
-   **Trigger:** The user clicks on the profile button
-   **System:** The user profile drop down
-   **Response:** Appears on the top left

Ubiquitous requirements can further simplify the task of writing
requirements with a simple statement of the form *&ldquo;The **<system
name>** shall **<system reponse>**&rdquo;*.

Event-driven requirements have a format of their own: /&ldquo;WHEN
**<optional preconditions>** **<trigger>** the **<system name>** shall
**<system response>**&rdquo;/

Unwanted behaviors can use the following format: /&ldquo;IF **<optional
preconditions>** **<trigger>**, THEN the **<system name>** shall
**<system response>**&rdquo;/

State-drive requirements look like so: *&ldquo;WHILE **<in state>** the
**<system name>** shall **<system response>**&rdquo;*


<a id="org7385277"></a>

## 13.0208 EARS reference

-   Mavin, A., P. Wilkinson, A. Harwood and M. Novak &rsquo;[Easy Approach
    to Requirements Syntax (EARS)](https://ieeexplore.ieee.org/document/5328509)&rsquo;, 2009 17th IEEE International
    Requirements Engineering Conference (Atlanta, GA: IEEE, 2009),
    pp.317-322.


<a id="org6cbf37c"></a>

# Week 14

Key Concepts

-   Explain how automated blackbox testing can be achieved in video
    games.
-   Differentiate between black box and glass/white box testing and
    provide examples of each.
-   Write out step-by-step and matrix style test procedures.


<a id="org4212db7"></a>

## 14.0201 Black box and white box testing

Black box are defined as<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>:

1.  System or component whose inputs, outputs, and general function
    are known but whose contents or implementation are **unknown or
    irrelevant**.

2.  Pertaining to an approach that treats a system or component
    whose inputs, outputs, and general function are known but whose
    contents or implementation are **unknown or irrelevant**.

Glass or whitebox is defined as<sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup>:

1.  System or component whose internal contents or implementation
    are **kwown**.

2.  Pertaining to an approach that treats a system or component are
    in (1).

Unit Testing is an example of white box testing, because unit
testing exercises each method in isolation. Requirements can be
specified for both black box and white box testing.


<a id="org9e9206d"></a>

## 14.0203 Testing and the body of knowledge

-   *Testing* is an activity in which a system or component is
    executed under specified conditions, the results are observed or
    recorded, and an evaluation is made of some aspect of the system
    or component<sup><a id="fnr.4" class="footref" href="#fn.4">4</a></sup>

-   *Test Case Specification* is a document specifying inputs,
    predicted results, and a set of execution conditions for a test
    item<sup><a id="fnr.5" class="footref" href="#fn.5">5</a></sup>.

-   *Test Procedure Specification* is a document specifying a
    sequence of actions for the execution of a test<sup><a id="fnr.6" class="footref" href="#fn.6">6</a></sup>.

There is an ISO standard for softare testing documentation:
ISO/IEC/IEEE International Standard Software And Systems
Engineering, Software Testing, Part 3: Test Documentation. In
ISO/IEC/IEEE 29119-3:2013(E), doi: 10.1109/IEEESTD.2013.6588540.


<a id="org555ac58"></a>

## 14.0205 Two short articles about testing taxonomies

-   R. L. Glass &rsquo;[An ancient (but still valid?) look at the
    classification of testing](https://ieeexplore.ieee.org/document/4670725)&rsquo;, IEEE Software 2(6) Nov-Dec 2008,
    pp.112-112.

-   R. L. Glass &rsquo;[A classification system for testing, part 2](https://ieeexplore.ieee.org/document/4721193)&rsquo;, IEEE
    Software 26(1) Jan-Feb 2009, pp.104-104.


<a id="org3cb0437"></a>

## 14.0206Test procedure specification: step by step and matrix


<a id="orga819718"></a>

### Step-by-step Test Procedure

The procedure is specified step-by-step in a standard format. It
contains a test identifier, test objective and priority, and an
estimated duration.

Any pre-conditions must be defined. This follows with a test log
and the list of steps proper.


<a id="org3ae928a"></a>

### Matrix Test Procedure

It&rsquo;s similar to step-by-step and contains the same
information. The difference lies in how the data is laid out.


<a id="orga7e28c7"></a>

## 14.0210 Factors affecting test effectiveness

-   Chernak, Y. &rsquo;[Validating and improving test-case effectiveness](https://ieeexplore.ieee.org/document/903172)&rsquo;,
    IEEE Software 18(1) Jan-Feb 2001, pp.81-86.


<a id="org309bd69"></a>

## 14.0301 Automated black box testing

Video games are a very complex piece of software with a large
amount of possibilities and combinations, because of that it
becomes very hard to test the game mechanics to an adequate level.

A paper by EA Digital Platform discusses a method used during
development of the game *The Sims Mobile* which consists on
employing artificial agents to playtest video games. Zhao et al
argue that relying exclusively on humans can be costly and
inneficient, while artificial agents could perform much longer play
sessions and explore much more of the game space in shorter time.

In the paper, Zhao et al talk about the difference between (play)
style and skill. The goal in the paper was to ensure that each
career within the game has a balanced player experience.

For the automated testing system, they ran a simulation in two
parts:

-   **Gameplay environment:** manages game state in response to agent
    actions
-   **Agent environment:** observes game state and generates actions

The game was, then, modeled as state transition probabilities,
which allowed them to apply [A\* Search](https://en.wikipedia.org/wiki/A*_search_algorithm) algorithm to find paths
through the state transition graph. In the end, the team could
compare career paths based on the amount of work or resources
required to climb the levels of that career path. They found that
the Barista career path could be exploited and completed in a lower
number of actions than the others.


<a id="orgdf8f1a1"></a>

## 14.0303 Automated testing in video games

-   Zhao, Y., I. Borovikov, A. Beirami, J. Harder, J. Kolen,
    J. Pestrak, J. Pinto, R. Pourabolghasem, H. Chaput, M. Sardari et
    al. &rsquo;[Winning isn’t everything: Training agents to playtest modern
    games](https://web.archive.org/web/20201130170550/https://arxiv.org/pdf/1903.10545.pdf)&rsquo;, AAAI Workshop on Reinforcement Learning in Games 2019.

-   Albaghajati, A.M. and M.A.K. Ahmed &rsquo;[Video game automated testing
    approaches: an assessment framework](https://ieeexplore.ieee.org/abstract/document/9234724)&rsquo;, IEEE Transactions on Games.


<a id="org474135a"></a>

# Week 15

Key Concepts

-   Evaluate the usability of a piece of software against Nielsen&rsquo;s usability principles.
-   Give an example of a standard usability survey and use it to evaluate usability.
-   Explain how the terms efficient, effective and satisfying relate to usability.


<a id="org7aa0d57"></a>

## 15.0201 Introduction to usability – what does it mean?

ISO 9241-11 defines usability as:

-   **Usability:** The extent to which a system, product or service can
    used by specified users to achieve specified goals with
    **effectiveness**, **efficiency** and **satisfaction** in a specified
    context of use.

In the work [Usability basics for software developers](https://ieeexplore.ieee.org/document/903160), Ferre et al
state that one &ldquo;can&rsquo;t predict a software system&rsquo;s usability without
testing it with real users&rdquo;. In practice, this means that we should
get real users to use the system in a real scenario and interview
them later to guage their reponses.

Defining the three keywords from ISO 9241-11:

-   **Effectiveness:** Are the users able to complete a given task?
-   **Efficiency:** How quickly can a user learn how to use the software?
-   **Satisfaction:** Were the users happy using the system?


<a id="org7c87e77"></a>

## 15.0203 Basic guide to usability for engineers

-   Ferre, X., N. Juristo, H. Windl and L. Constantine &rsquo;[Usability
    basics for software developers](https://ieeexplore.ieee.org/document/903160)&rsquo;, IEEE Software 18(1) 2001,
    pp.22-29.


<a id="org702cfb5"></a>

## 15.0204 Usability metrics


<a id="orgff52980"></a>

### System Usability Scale (SUS)

The [System Usability Scale (SUS)](https://www.usability.gov/how-to-and-tools/methods/system-usability-scale.html) was created by John Brook
in 1996. It defines 10 questions we should ask a user after they&rsquo;ve
tried to use our system. The questions are shown in the table below.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">**#**</th>
<th scope="col" class="org-left">**Question**</th>
<th scope="col" class="org-left">**1**</th>
<th scope="col" class="org-left">**2**</th>
<th scope="col" class="org-left">**3**</th>
<th scope="col" class="org-left">**4**</th>
<th scope="col" class="org-left">**5**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-left">I think that I would like to use the system frequently</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-left">I found the system unnecessarily complex</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">3</td>
<td class="org-left">I thought the system was easy to use</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">4</td>
<td class="org-left">I think that I would need the support of a technical person to</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-left">use this system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">5</td>
<td class="org-left">I found the various functions of this system were well</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-left">integrated</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">6</td>
<td class="org-left">I thought there was too much inconsistency in this system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">7</td>
<td class="org-left">I would imagine that most people would learn to use this system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-left">very quickly</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">8</td>
<td class="org-left">I found the system very cumbesome to use</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">9</td>
<td class="org-left">I felt very confident using the system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">10</td>
<td class="org-left">I needed to learn a lot of things before I could get going with</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-left">this system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org0bf9204"></a>

### Usability Metric For User Sperience (UMUX)

The Usability Metric For User Experience (UMUX) was created with a
goal of having a shorter list of questions to ask a user. The
questions here are:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">**#**</th>
<th scope="col" class="org-left">**Question**</th>
<th scope="col" class="org-left">**1**</th>
<th scope="col" class="org-left">**2**</th>
<th scope="col" class="org-left">**3**</th>
<th scope="col" class="org-left">**4**</th>
<th scope="col" class="org-left">**5**</th>
<th scope="col" class="org-left">**6**</th>
<th scope="col" class="org-left">**7**</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-left">This system&rsquo;s capabilities meet my requirements</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">2</td>
<td class="org-left">Use this system is a frustrating experience</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">3</td>
<td class="org-left">This system is easy to use</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">4</td>
<td class="org-left">I have to spend too much time correcting things</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-right">&#xa0;</td>
<td class="org-left">with this system</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org08b0f2a"></a>

### Creativity Support Index

Created and proposed by Erin Cherry and Celine Latulipe in a 2014
paper. This index in focused on gauging collaboration, enjoyment,
exploration, expressiveness, immersion, and gained results worth
the effort.


<a id="orge801cd1"></a>

## 15.0206 System usability surveys

-   Brooke, J. &rsquo;SUS: a retrospective&rsquo;, Journal of Usability Studies,
    8(2) 2013.

-   Lewis, J.R., B.S. Utesh, D.E. Maher &rsquo;UMUX-LITE: when there&rsquo;s no
    time for the SUS&rsquo;, Proceedings of the SIGCHI Conference on Human
    Factors in Computing Systems 2013, pp.2099-2102.

-   Cherry, E. and C. Latulipe &rsquo;Quantifying the creativity support of
    digital tools through the creativity support index&rsquo;, ACM
    Transactions on Computer-Human Interaction 21 2014.


<a id="org206aff7"></a>

## 15.0301 Usability principles

Nielsen&rsquo;s usability principles:

1.  Visibility of system status
2.  Match between system and the real world
3.  User control and freedom
4.  Consistency and standards
5.  Error prevention
6.  Recognition rather than recall
7.  Flexibility and efficiency of use
8.  Aesthetic and minimalist design
9.  Help users recognize, diagnose, and recover from errors
10. Help and documentation


<a id="org6f3b1f1"></a>

## 15.0303 Usablity principles paper

-   Molich, R. and J. Nielsen &rsquo;Improving a human-computer dialogue&rsquo;,
    Communications of the ACM 33(3) March 1990, pp.338–348.


<a id="org70159c6"></a>

# Week 16

Key Concepts

-   Be aware that in the UK at least, there are legal requirements to
    make certain software systems as accessible as reasonably
    possible.
-   Use accessibility testing tools to identify accessibility problems
    with software systems.
-   Differentiate between accessibility and usability in terms of the
    target users.


<a id="org07fdc6e"></a>

## 16.021 What is accessibility?

The IEEE dictionary defined Accessibility as the &ldquo;extent to which
products, systems, services, environments and facilities can be
used by people from a population with the widest range of
characteristics and capabilities to achieve a specified goal in a
specified context of use&rdquo;.

We can consider the concept of *usability* to be a subset of
*accessibility*.

In the UK, there exist legal requirements for accessibility
described in the [Public Sector Bodies (No.2) Accessibility
Regulations 2018](https://www.legislation.gov.uk/uksi/2018/952/contents/made). In Part II, Item 6, it&rsquo;s stated that &ldquo;Subject to
regulation 7, public sector bodies must comply with the
accessibility requirement&rdquo;.

In [Part I](https://www.legislation.gov.uk/uksi/2018/952/part/1/made), item 3 the definition of accessibility is give:

&ldquo;*&ldquo;accessibility requirement&rdquo;* means the requirement to make a
website or mobile application accessible by making it perceivable,
operable, understandable and robust;&rdquo;


<a id="orgc1a7138"></a>

## 16.025 Considering the range of access requirements

The UK maintains statistics regarding the range of disabilities of
the population. Impairment types include mobility, stamina/fatigue,
dexterity, mental health, memory, hearing, visition, learning,
behavioural, and so on.

This  data gives us insight into how to produce software that can
be used by the largest amount of the population.


<a id="org360b033"></a>

## 16.031 Assessing accessibility

-   AChecker &rsquo;[Web accessibility checker](https://achecker.ca/checker/index.php)&rsquo; (2011).


<a id="org2a8f99d"></a>

## 16.0210 Legal aspects of accessibility

-   [The Public Sector Bodies (Websites and Mobile Applications)
    (No. 2) Accessibility Regulations 2018](https://www.legislation.gov.uk/uksi/2018/952/contents/made)


<a id="orgab425f8"></a>

# Week 17

Key Concepts

-   Describe the key design goals for the git system.
-   Name the creator of git and explain why he created it.
-   Name several version control systems.


<a id="org13bb175"></a>

## 17.0102 Why do we need version control?

Version control is needed to track the changes to a project over
time. It allows us to gather historical data pertaining to **why** a
certain change was implemented.

`git` allows us manage the state of the source code, merge changes
from different contributors, find specific commits which introduced
a bug (`git bisect`), and much more.


<a id="orgd8195f0"></a>

## 17.0104 Design goals of git

In 1975, March Rochkind introduced the [Source Code Control System
(SCCS)](https://en.wikipedia.org/wiki/Source_Code_Control_System), a system designed to track changes in source code and other
text files.

In 1986, Dick Grune releases the [Concurrent Versions System (CVS)](https://en.wikipedia.org/wiki/Concurrent_Versions_System),
a brainchild of Lucifer hilmself, passed to Dick Grune via the
screams of tortured souls in the Ninth Circle of Hell (seriously
though, read the wikipedia article :-p)

In 2005, Linus Torvalds starts to work on `git` specifically
designed to solve the problem of highly distributed projects such
as the Linux Kernel.

The design goals of `git` are:

-   Distributed
-   Good performance
-   File integrity

To better understand `git`, let&rsquo;s look at the main objects and how
they are linked to one another.


<a id="orgd6bcaea"></a>

### Git Objects

-   **tree:** Akin to a *directory* in file-system world
    -   possibly contains other *trees* or *blobs*
-   **blob:** The **contents** of a file (the pointer refers to the
    filename)
    -   Slogan: `git` tracks **contents** not *files*.
    -   Corollary: renames are cheap
-   **commit:** A hashed tree and all subtrees. A sort of snapshot of
    the entire project state
-   **tag:** An alias, a human-readable name to a *commit*
-   **head:** Another alias to a *commit*. Branches are modelled as
    heads


<a id="org082083b"></a>

### Filesystem vs Git Objects

See figure [1](#org66e728c) for a graphical
representation of `git` internals vs filesystem organization.

\begin{figure}[h]
\label{org66e728c}
  \centering
  \begin{subfigure}[b]{0.60 \linewidth}
    \begin{tikzpicture}
      \tiny
      % trees
      \node (tree2) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners]                      { tree2 };
      \node (tree1) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below left of=tree2] { tree1 };

      % blobs
      \node (blob0) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below left of=tree1]  { blob0 };
      \node (blob1) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below right of=tree1] { blob1 };
      \node (blob2) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below right of=tree2] { blob2 };

      % arrows
      \draw [->, draw=gray] (tree1) edge [blue, above, sloped]   node {file1.txt}   (blob0)
                            (tree1) edge [blue, above, sloped]   node {renamed.txt} (blob1)
                            (tree2) edge [orange, above, sloped] node {file3.txt}   (blob2)
                            (tree2) edge [orange, above, sloped] node { subdir }    (tree1);
    \end{tikzpicture}
  \end{subfigure}\hfill%
  \begin{subfigure}[b]{0.30 \linewidth}
    \begin{tikzpicture}[node distance=1cm]
      \tiny
      % directories
      \node (root)                            { / };
      \node (file3)   [below right of=root]   { file3.txt };
      \node (subdir)  [below of=file3]        { subdir };
      \node (file1)   [below right of=subdir] { file1.txt };
      \node (renamed) [below of=file1]        { renamed.txt };

      \draw [dashed, draw=gray] (root)   |- (subdir);
      \draw [dashed, draw=gray] (root)   |- (file3);
      \draw [dashed, draw=gray] (subdir) |- (file1);
      \draw [dashed, draw=gray] (subdir) |- (renamed);

    \end{tikzpicture}
  \end{subfigure}\hfill%
\end{figure}


<a id="orgf6f2dc1"></a>

### What about commits?

In figure [2](#orgaebfd5b) we show how commits come into play.

\begin{figure}[h]
\label{orgaebfd5b}
  \centering
  \begin{tikzpicture}
    \tiny

    % commits
    \node (commit0) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners] { commit0 };
    \node (commit1) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit0] { commit1 };
    \node (commit2) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit1] { commit2 };

    % trees
    \node (tree0) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=2cm of commit0] { tree0 };
    \node (tree1) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree0] { tree1 };
    \node (tree2) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree1] { tree2 };

    % blobs
    \node (blob0) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=2cm of tree0] { blob0 };
    \node (blob1) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob0] { blob1 };
    \node (blob2) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob1] { blob2 };

    % arrows
    \draw [->, thick, draw=gray]
        (commit0) edge [orange!60, dashed]                                    (commit1)
        (commit0) edge [dotted]                                               (tree0)
        (commit1) edge [orange!60, dashed]                                    (commit2)
        (commit1) edge [dotted]                                               (tree1)
        (commit2) edge [dotted]                                               (tree2)
        (tree0)   edge [purple, above, sloped]             node {file1.txt}   (blob0)
        (tree0)   edge [purple, above, sloped, near start] node {file2.txt}   (blob1)
        (tree1)   edge [blue, above, sloped, near start]   node {file1.txt}   (blob0)
        (tree1)   edge [blue, above, sloped]               node {renamed.txt} (blob1)
        (tree2)   edge [orange, above, sloped, near start] node {file3.txt}   (blob2)
        (tree2)   edge [orange, below, sloped, near start] node { subdir }    (tree1);
  \end{tikzpicture}
\end{figure}


<a id="org080c61a"></a>

### What about branches?

In figure [3](#org6df3712) we show how heads (or branches) are
linked into the repository.

\begin{figure}[h]
\label{org6df3712}
  \centering
  \begin{tikzpicture}
    \tiny

    % branches
    \node (branch0) [draw, fill=green!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners] { refs/heads/branch0 };
    \node (branch1) [draw, fill=green!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=branch0] { refs/heads/branch1 };

    % commits
    \node (commit0) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, right=1.5cm of branch0] { commit0 };
    \node (commit1) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit0] { commit1 };
    \node (commit2) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit1] { commit2 };

    % trees
    \node (tree0) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=1.5cm of commit0] { tree0 };
    \node (tree1) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree0] { tree1 };
    \node (tree2) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree1] { tree2 };

    % blobs
    \node (blob0) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=1.5cm of tree0] { blob0 };
    \node (blob1) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob0] { blob1 };
    \node (blob2) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob1] { blob2 };

    % arrows
    \draw [->, thick, draw=gray]
        (branch0) edge [green!60, dashdotted]                               (commit0)
        (branch1) edge [green!60, dashdotted]                               (commit1)
        (commit0) edge [orange!60, dashed]                                    (commit1)
        (commit0) edge [dotted]                                               (tree0)
        (commit1) edge [orange!60, dashed]                                    (commit2)
        (commit1) edge [dotted]                                               (tree1)
        (commit2) edge [dotted]                                               (tree2)
        (tree0)   edge [purple, above, sloped]             node {file1.txt}   (blob0)
        (tree0)   edge [purple, above, sloped, near start] node {file2.txt}   (blob1)
        (tree1)   edge [blue, above, sloped, near start]   node {file1.txt}   (blob0)
        (tree1)   edge [blue, above, sloped]               node {renamed.txt} (blob1)
        (tree2)   edge [orange, above, sloped, near start] node {file3.txt}   (blob2)
        (tree2)   edge [orange, below, sloped, near start] node { subdir }    (tree1);
  \end{tikzpicture}
\end{figure}


<a id="org04abfe3"></a>

### What about tags?

In figure [4](#orgcd9b89c), we show a depicition of tags.

\begin{figure}[h]
\label{orgcd9b89c}
  \centering
  \begin{tikzpicture}
    \tiny

    % branches
    \node (branch0) [draw, fill=green!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners] { refs/heads/branch0 };
    \node (branch1) [draw, fill=green!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=branch0] { refs/heads/branch1 };

    % tags
    \node (tag0) [draw, fill=magenta!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below=0.5cm of branch0] { refs/tags/tag0 };
    \node (tag1) [draw, fill=magenta!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below=0.5cm of branch1] { refs/tags/tag1 };

    % commits
    \node (commit0) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, right=1.5cm of branch0] { commit0 };
    \node (commit1) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit0] { commit1 };
    \node (commit2) [draw, fill=orange!50, minimum width=1cm,
                        minimum height=0.5cm, rounded corners, below of=commit1] { commit2 };

    % trees
    \node (tree0) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=1.5cm of commit0] { tree0 };
    \node (tree1) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree0] { tree1 };
    \node (tree2) [draw, fill=blue!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=tree1] { tree2 };

    % blobs
    \node (blob0) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, right=1.5cm of tree0] { blob0 };
    \node (blob1) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob0] { blob1 };
    \node (blob2) [draw, fill=gray!50, minimum width=1cm,
                      minimum height=0.5cm, rounded corners, below of=blob1] { blob2 };

    % arrows
    \draw [->, thick, draw=gray]
        (tag0)    edge [magenta!50, loosely dashed]                           (commit0)
        (tag1)    edge [magenta!50, loosely dashed]                           (commit1)
        (branch0) edge [green!60, dashdotted]                                 (commit0)
        (branch1) edge [green!60, dashdotted]                                 (commit1)
        (commit0) edge [orange!60, dashed]                                    (commit1)
        (commit0) edge [dotted]                                               (tree0)
        (commit1) edge [orange!60, dashed]                                    (commit2)
        (commit1) edge [dotted]                                               (tree1)
        (commit2) edge [dotted]                                               (tree2)
        (tree0)   edge [purple, above, sloped]             node {file1.txt}   (blob0)
        (tree0)   edge [purple, above, sloped, near start] node {file2.txt}   (blob1)
        (tree1)   edge [blue, above, sloped, near start]   node {file1.txt}   (blob0)
        (tree1)   edge [blue, above, sloped]               node {renamed.txt} (blob1)
        (tree2)   edge [orange, above, sloped, near start] node {file3.txt}   (blob2)
        (tree2)   edge [orange, below, sloped, near start] node { subdir }    (tree1);
  \end{tikzpicture}
\end{figure}


<a id="orgfc68e4c"></a>

## 17.0107 Classic version control paper and Torvalds on git

-   Rochkind, M.J. &rsquo;[The source code control system](https://ieeexplore.ieee.org/document/6312866)&rsquo;, IEEE
    Transactions on Software Engineering SE-1(4) Dec. 1975,
    pp.364-370.

-   [Linus Torvalds&rsquo; lecture on git](https://archive.org/details/LinusTorvaldsOnGittechTalk)


<a id="orgf27124a"></a>

# Week 18

Key Concepts

-   Work with a remote git repository, creating and merging branches
    and managing conflicts.
-   Create, switch between and merge branches in a git repository.
-   Create and manage the files in a local git repository.


<a id="org18ccae9"></a>

## 18.0102 Basic git operations in a local repository

1.  Create a repository
    
    `git init`

2.  Check repository status
    
    `git status`

3.  Staging a file
    
    `git add <filename>`

4.  Committing staged files
    
    `git commit -a -m "Commit message"`

5.  Modifying a commit
    
    `git commit --amend`


<a id="org5127603"></a>

## 18.0104 Branching and merging

1.  List branches
    
    `git branch -l`

2.  Switching to another branch
    
    `git checkout <otherBranch>`

3.  Create and switch to a new branch
    
    `git checkout -b <newBranch>`

4.  Merging branches
    
    `git merge <otherBranch>`


<a id="orge248224"></a>

## 18.018 Adding code to a remote repository

1.  Cloning a repository
    
    `git clone <URL>`

2.  Pushing code to remote repository
    
    `git push`


<a id="org631edef"></a>

## 18.0110 Installing git and the git book

-   [git &rsquo;Book&rsquo; (2014)](https://git-scm.com/book/en/v2)

-   [cheat.sh/git](https://cheat.sh/git)


<a id="org7920bfe"></a>

# Week 19

Key Concepts

-   Use the ungit tool to interactively visualise git repositories as
    they change in real time.
-   Use git log commands to visualise branches and merges in a git
    repository.
-   Use git log commands to pull out a variety of information about
    the commits in git repositories.


<a id="org1420cda"></a>

## 19.0102 More on git log

1.  Compact view of repository history
    
    `git log --pretty=reference`

2.  Top 3 most recent commits
    
    `git log -3`


<a id="org21cf6e1"></a>

## 19.0104 Visualising git repositories with git log

1.  Visualizing `git` repository
    
    `git log --graph --oneline --decorate --all`


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> MYK has awesome comments :-)

<sup><a id="fn.2" href="#fnr.2">2</a></sup> ISO/IEEE Systems and Software Engineering Vocabulary 2017 p47,
3.390

<sup><a id="fn.3" href="#fnr.3">3</a></sup> ISO/IEEE Systems and Software Engineering Vocabulary 2017 p199,
3.1744

<sup><a id="fn.4" href="#fnr.4">4</a></sup> ISO/IEEE Systems and Software Engineering Vocabulary 2017 p473,
3.4272

<sup><a id="fn.5" href="#fnr.5">5</a></sup> ISO/IEEE Systems and Software Engineering Vocabulary 2017 p466,
3.4212

<sup><a id="fn.6" href="#fnr.6">6</a></sup> ISO/IEEE Systems and Software Engineering Vocabulary 2017 p471,
3.4254

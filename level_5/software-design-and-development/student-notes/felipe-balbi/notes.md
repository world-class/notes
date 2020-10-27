
# Table of Contents

1.  [Week 1](#org78be000)
    1.  [Module Introduction](#org2a0f913)
    2.  [1.0202 Reference points](#orgba1e90d)
    3.  [1.0203 SWEBOK guide and IEEE vocab](#org22578f3)
    4.  [1.0204 What is a module?](#org5d3b255)
    5.  [1.0206 What is module complexity?](#orgf5425f7)
    6.  [1.0208 Complexity references](#org7e35a0a)
2.  [Week 2](#orgbc69df2)
    1.  [2.0102 Week 2 reading](#org1ba9dd0)
    2.  [2.0201 What is module cohesion?](#orgec2c943)
    3.  [2.0204 Why are different types of module cohesion good or bad?](#org2a8849a)
3.  [Week 3](#orgf312320)
    1.  [3.0102 Week 3 reading](#org8b6d7d3)
    2.  [3.0201 What is module coupling?](#orgbfff344)
    3.  [3.0203 Different types of coupling: good or bad?](#orga77f48b)
    4.  [3.0205 Common environment coupling: good or bad?](#orgafa75cc)
    5.  [3.0207 Content coupling: good or bad?](#orgd6d4d5c)
    6.  [3.0209 Control coupling: good or bad?](#org3f1ac83)
    7.  [3.0211 Data coupling: good or bad?](#org77f2f8b)
    8.  [3.0213 Hybrid coupling: good or bad?](#orgf136ca2)
    9.  [3.0215 Pathological coupling: good or bad?](#org622bb89)
4.  [Week 4](#org76ce853)
    1.  [4.012 Week 4 reading](#orge83369c)
    2.  [4.0201 Reasoning about scope](#org4a67882)
    3.  [4.0203 Reasoning about function parameters](#orgb3c57f1)
    4.  [4.0205 Replacing functions dynamically and const](#org1a47975)
5.  [Week 5](#orge2527ee)
    1.  [5.0002 Topic reading](#orgd50c6af)
    2.  [5.0104 The Three Laws according to Uncle Bob](#org35f5c28)
    3.  [5.0113 What to test? An overview](#org694c4be)
6.  [Week 6](#orgcd7d47e)
    1.  [6.0102 Week 6 reading](#orgaaaf679)
    2.  [6.013 Super quick Python tutorial](#orgb56b58d)
        1.  [Variables](#org92aa8cc)
        2.  [Lists](#orgdf53101)
        3.  [Functions](#org5b4eb7e)
    3.  [6.0201 Introduction to unittest in Python](#org0476b11)
    4.  [6.0203 Assertion function in unittest](#org15324b4)
    5.  [6.0205 Assert functions in unittest](#org26ad743)
    6.  [6.0301 Introduction to statistics libraries](#orgc527e49)



<a id="org78be000"></a>

# Week 1

Key Concepts

-   Define the terms module and module complexity in terms of computer
    programs and systems.
-   Identify the modules present in computer programs and systems.
-   Analyse program code in terms of its complexity.


<a id="org2a0f913"></a>

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


<a id="orgba1e90d"></a>

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


<a id="org22578f3"></a>

## 1.0203 SWEBOK guide and IEEE vocab

-   [ISO/IEC/IEEE International standard – Systems and software
    engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
    pp.1–418.
-   R.E.D. Fairley, P. Bourque and J. Keppler, [The impact of SWEBOK
    Version 3 on software engineering education and training](https://ieeexplore.ieee.org/document/6816804) in 2014
    IEEE 27th Conference on Software Engineering Education and
    Training (CSEE&T). (Klagenfurt, Austria: IEEE, 2014).


<a id="org5d3b255"></a>

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


<a id="orgf5425f7"></a>

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


<a id="org7e35a0a"></a>

## 1.0208 Complexity references

Please read the following articles. The first is a paper about
structural complexity and how it changes over time. The second is
the classic McCabe paper on module complexity.

-   R.S. Sangwan, P. Vercellone-Smith and P.A. Laplante &rsquo;[Structural
    epochs in the complexity of software over time](https://ieeexplore.ieee.org/document/4548410)&rsquo;, IEEE Software
    25(4) Jul-Aug 2008, pp.66–73.
-   T.J. McCabe &rsquo;[A complexity measure](https://ieeexplore.ieee.org/document/1702388)&rsquo;, IEEE Transactions on Software
    Engineering SE-2(4) Dec 1976, pp.308–320.


<a id="orgbc69df2"></a>

# Week 2

Key Concepts

-   Define module cohesion in terms of computer program architecture.
-   Define types of module cohesion and identify them in computer
    programs.
-   Use programming techniques to improve module cohesion.


<a id="org1ba9dd0"></a>

## 2.0102 Week 2 reading

This document contains the definitions of various types of module
cohesion that you will encounter in the videos. We recommend that
you download this and keep it to hand while you watch the videos.

[ISO/IEC/IEEE International standard – Systems and software
engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
pp.1–418.


<a id="orgec2c943"></a>

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


<a id="org2a8849a"></a>

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


<a id="orgf312320"></a>

# Week 3

Key Concepts

-   Give a high-level definition of module coupling and illustrate
    with an example.
-   Analyse computer programs to identify different types of module
    coupling.
-   Describe different types of module coupling and discuss which are
    desirable and which are not.


<a id="org8b6d7d3"></a>

## 3.0102 Week 3 reading

[ISO/IEC/IEEE International standard – Systems and software
engineering – Vocabulary](https://ieeexplore.ieee.org/document/5733835), ISO/IEC/IEEE 24765:2010(E) Dec 2010,
pp.1–418.


<a id="orgbfff344"></a>

## 3.0201 What is module coupling?

Module Coupling is defined as:

-   Manner and degree of interdependence between software modules
-   Strength of the relationships between modules
-   Measure of how closely connected two routines or modules are
-   In software design, a measure of the interdependence among
    modules in a computer program


<a id="orga77f48b"></a>

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


<a id="orgafa75cc"></a>

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


<a id="orgd6d4d5c"></a>

## 3.0207 Content coupling: good or bad?

Content coupling would be like having one module (*m1*) with
another module (*m2*) contained inside it. It makes it so that
nothing outside of *m1* can see *m2* or even know it exists.

It is a regular type of module coupling which is used, for example,
is event listeners in JavaScript.


<a id="org3f1ac83"></a>

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


<a id="org77f2f8b"></a>

## 3.0211 Data coupling: good or bad?

Data or Input/Output coupling looks like a production line. The
output of one module is fed as input into another. Basically, we
can look at it as a function call. Module 1 calls module 2 to run
some computation. Data coupling is good.


<a id="orgf136ca2"></a>

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


<a id="org622bb89"></a>

## 3.0215 Pathological coupling: good or bad?

*&ldquo;It&rsquo;s a bit like control coupling, but worse&rdquo;*<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>. Module 1 can
either affect the internal workings module 2, or it has a direct
dependency in its implementation. This means that module 2 can&rsquo;t be
easily replaced, refactored, modified. It&rsquo;s bad.


<a id="org76ce853"></a>

# Week 4

Key Concepts

-   Explain the connection between common programming concepts and
    module concepts.
-   Use language features to improve module coupling and cohesion.
-   Use programming techniques to improve module coupling and
    cohesion.


<a id="orge83369c"></a>

## 4.012 Week 4 reading

We will be looking at some JavaScript programming concepts this
week. Here are some relevant links:

-   w3schools [JavaScript scope](https://www.w3schools.com/js/js_scope.asp) (2020).
-   w3schools [JavaScript const](https://www.w3schools.com/JS/js_const.asp) (2020).


<a id="org4a67882"></a>

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


<a id="orgb3c57f1"></a>

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


<a id="org1a47975"></a>

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


<a id="orge2527ee"></a>

# Week 5

Key Concepts

-   Define test-driven development
-   Identify the processes involved in test-driven development
-   Critically analyse examples of test-driven development in source
    code repositories


<a id="orgd50c6af"></a>

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


<a id="org35f5c28"></a>

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


<a id="org694c4be"></a>

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


<a id="orgcd7d47e"></a>

# Week 6

Key Concepts

-   Write unit tests using the Python unittest package
-   Describe the elements of a unit testing framework.
-   Carry out the test-driven development workflow in Python


<a id="orgaaaf679"></a>

## 6.0102 Week 6 reading

-   [Python `unittest` Documentation](https://docs.python.org/3/library/unittest.html)


<a id="orgb56b58d"></a>

## 6.013 Super quick Python tutorial


<a id="org92aa8cc"></a>

### Variables

Variables don&rsquo;t need to be declared and their type is assigned
when initializing. Whenever we need a variable, just type a name
and give it a value:

    myNumber = 10
    myString = "Hello"


<a id="orgdf53101"></a>

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


<a id="org5b4eb7e"></a>

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


<a id="org0476b11"></a>

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


<a id="org15324b4"></a>

## 6.0203 Assertion function in unittest

The `unittest` module from python has a host of assertion functions
built-in. Instead of repeating them here, it&rsquo;s to access its
[documentation](https://docs.python.org/3/library/unittest.html#unittest.TestCase) for reference to all functions.


<a id="org26ad743"></a>

## 6.0205 Assert functions in unittest

-   [`unittest` classes and functions](https://docs.python.org/3/library/unittest.html#unittest.TestCase)


<a id="orgc527e49"></a>

## 6.0301 Introduction to statistics libraries

A statistics library is a program which contains ready-made methods
for computing common statistics on a set of data. Typically, these
libraries contain methods for computing the mean, min, max,
standard deviation, and variance. Some other common, but more
advanced, methods would be calculating correlation coefficients,
[ANOVAS](https://en.wikipedia.org/wiki/Analysis_of_variance), or histograms.


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> MYK has awesome comments :-)

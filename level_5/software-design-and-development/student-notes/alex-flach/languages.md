<!-- omit in toc -->
# Language Features

These notes cover language features and code examples for the topics covered in the course.

JavaScript notes are from [Haverbeke](https://eloquentjavascript.net/), *Eloquent JavaScript*, 3rd edn.

C++ notes are from Stroustrup, *The C++ Programming Language*, 4th edn, 2013.

Python notes are from Driscoll, *Python 101*, 2nd edn, 2020, and *Python 201*, 2016.

- [Modularity](#modularity)
  - [JavaScript](#javascript)
    - [Improvised Modules](#improvised-modules)
    - [CommonJS Modules](#commonjs-modules)
    - [ECMAScript Modules](#ecmascript-modules)
    - [Object Oriented JavaScript](#object-oriented-javascript)
  - [Python](#python)
    - [Module System](#module-system)
    - [Object Oriented Python](#object-oriented-python)
  - [C++](#c)
    - [Module System](#module-system-1)
- [Unit Testing](#unit-testing)
  - [JavaScript](#javascript-1)
  - [Python](#python-1)
  - [C++](#c-1)
- [Assertions](#assertions)
  - [JavaScript](#javascript-2)
  - [Python](#python-2)
  - [C++](#c-2)
- [Exception Handling](#exception-handling)
  - [JavaScript](#javascript-3)
  - [Python](#python-3)
  - [C++](#c-3)
- [Security](#security)
  - [JavaScript](#javascript-4)
  - [Python](#python-4)
  - [C++](#c-4)

## Modularity

| Language | Module System | Class Encapsulation | Package Management |
| -------- | ------------- | ------------------- | ------------------ |
| JavaScript | [ES modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules), [CommonJS modules](https://nodejs.org/api/modules.html) | Weak, no privacy | NPM |
| Python | native (note privacy issues) | Weak, no privacy | pip |
| C++ | header file inclusion and separate compilation | Strong | conan or apt for global packages |

### JavaScript

See Eloquent JS, [ch. 10](https://eloquentjavascript.net/10_modules.html).

Just putting code in separate files in JS does not satisfy a core requirement of modularity, that each modules needs a private scope. The files share a global namespace and can interfere with each other's bindings.

This was a problem for a long time with JS. If developers tried to reference various script files in a sequence from an html document the coupling issues, intentional or hidden, could be painful.

#### Improvised Modules

Before 2015 there was no specified module system in JS, but developers needed them, so various module systems were developed on top of the language.

The simplest of these is to wrap the contents of a file in an [IIFE](https://developer.mozilla.org/en-US/docs/Glossary/IIFE), an immediately Invoked Function Expression. This will keep any variables declared within the function inaccessible to the outside. However it is not a full module system clearly. It puts its interface in the global scope and expects any dependencies to do the same. No dependencies are declared.

#### CommonJS Modules

A more robust approach, still used in Node, is found in *CommonJS modules*. This approach builds on the ability in JS to interpret data as code using the [`Function` constructor](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/Function). This can take a set of parameters and a string containing the function body and returns a function with its own scope.

This is used in CommonJS modules alongside a function called `require`. When you call `require` with the name of a module, it loads the module code, wrapping it in a function, and so giving each module its own scope. It also sets up bindings for `require`, `module`, and `exports`.

Now modules can call `require` to access their own dependencies, locally. They put their interface in the object bound to `exports`, which is then exposed to callers. eg `exports.parse = ...`. Different ways to do this stylistically to keep exported bindings in local scope, see DNW notes.

The module system creates an empty interface object bound to `exports`, but you can overwrite that, for example if you just want to export a single function, by setting the value of `module.exports`.

`require` keeps a cache of loaded modules to avoid loading the same module multiple times.

See notes to DNW module for lots more detail on Node/CommonJS modules.

#### ECMAScript Modules

CommonJS modules remain a duct-tape hack rather than the language properly supporting modules. Module notation and scope management is now built into the language.

There is now inbuilt notation with a common semantics for [importing](https://262.ecma-international.org/11.0/#sec-imports) and [exporting](https://262.ecma-international.org/11.0/#sec-exports). Exporting can be of a class, function, or binding definition. Importing from another module imports the binding not the value, so the module can update the value.

Transitioning to ES modules is taking time, both module systems will be in use for a while. Either way if shipping to a browser modules are best bundled and compiled using Webpack or similar for performance gains.

An aspect of modularity is the ease of distributing and using modules in other applications. *Packages* are chunks of code that can be distributed, containing one or more modules. JS has a strong infrastructure for package management in the form of NPM, allowing easy access to hundreds of 1000s of modules and a means to install and manage them.

#### Object Oriented JavaScript

See Eloquent JS, [ch. 6](https://eloquentjavascript.net/06_object.html)

MDN on [class syntax](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)

Modularity is achievable now at a file level, what about at a class level in OOP style? As with modularity at a file level the core idea is encapsulation, each piece of the program is responsible for its own state and interacts with other parts through interfaces. Properties that are part of the interface are public, others are called private.

JS does not yet have the public/private distinction built into the language. It is hopefully coming though, a stage 3 [proposal](https://github.com/tc39/proposal-private-methods) should be adopted. For now there are developer workarounds, like adding '\_' in front of private members.

You can exploit closure rules to create private variables outside the class syntax as shown in ITP1.

### Python

#### Module System

Python has a native module system with appropriate binding scoping.

See the [documentation tutorial](https://docs.python.org/3/tutorial/modules.html)

import syntax:

```python
#import a whole library properties available on math.prop
import math
math.sqrt(4)

#check what it contains
dir(math)

#rename it - now properties are on m.prop
import math as m
m.sqrt(9)

#import specific properties
from math import sqrt, sin as sine, tan as tangent

#import everything and inject it into current namespace - don't do this
from math import *
```

To execute a module as a script you can include this in the file:

```python
if __name__ == "__main__":
    #code here that you want to execute
```

Then if you run the file from the command line the python interpreter will set the `__name__` variable to `__main__` and the code will execute.

Python does not have a robust privacy system to control module exports. By convention methods starting with '\_' are not imported when importing via `import *` but will be imported if you do `import _private from module` or `import module`. There is no equivalent to JS's `export` syntax.

#### Object Oriented Python

Like JS everything is effectively public in Python, and conventionally `_` or `__` prefixing a method or property indicate it should be treated as private. Dunder or magic methods have a `__` prefix and postfix and are used by the language for some key functions like string representation of an object with `__str__`

### C++

#### Module System

See Stroustrup, section 2.4.

At a file level modularity in C++ works quite differently from Python or JS. There is no 'import' syntax for example. Yet C++ applications consist of many separately developed functions, classes, templates, and hierarchies. Managing this involves clear definition of the interactions of these elements.

The first step is to distinguish between the interface to a part of the software and its implementation. At a language level, C++ represents interfaces by *declarations*. A declaration specifies all that's needed to use a function or type. A *definition*, the function body can be elsewhere.

C++ supports a notion of separate compilation, where user code sees only declarations of the types and functions used, with their definitions in separate source files and compiled separately. This framework can be used to organize code into semi-independent fragments in different files. This can be used to reduce compilation time and to achieve modularity goals outlined in the course.

Typically the declarations that specify an interface are placed in a *header file* with a name indicating its intended use. Users then *include* that header file to access the interface. The implementation file which includes the definitions will also include the interface to help the compiler enforce consistency between interface and implementation.

*Namespaces* are another language feature intended to support modularity. They can wrap declarations to make sure their names do not clash with other bindings.

> The best approach is to maximize modularity, represent that modularity logically through language features, and then exploit the modularity physically through files for effective separate compilation.

Stroustrup, *C++ Programming Language*, p. 53

See OOP notes for more detail on the module system, and chapter 14 (namespaces) and 15 (source files and compilation) of Stroustrup.

## Unit Testing

### JavaScript

No native unit testing modules, but lots of options. Most popular include:

- [jest](https://jestjs.io/) built in coverage analysis

- [mocha](https://mochajs.org/) a test runner used in the course

- [chai](https://www.chaijs.com/) a unit test/assertion library used in the course alongside mocha.

### Python

See *Python 201*, Part IV.

Python has several built-in testing modules.

***The `unittest` Module***

The `unittest` module supports the following concepts:

- Test Fixture - used to setup a test so it can be run and tears it down when the test is finished. Eg a temporary database.

- Test Case - It will check or assert that a response comes back as expected. Provides a base `TestCase` class that can be used to create test cases.

- Test Suite - a collection of test suites, or test cases.

- Test Runner - what controls the running of the tests or suites and present the results to the user.

The reference gives a guide to the methods and assertions available in the [Python docs](https://docs.python.org/3/library/unittest.html#unittest.TestCase)

Here's an example:

```python
import mymath
import unittest

class TestAdd(unittest.TestCase):
    
    def test_add_integers(self):
        result = mymath.add(1,2)
        self.assertEqual(result,3)

if __name__ == '__main__':
    unittest.main()
```

More complex examples are found in *Python 201* p. 188ff

***The `mock` Module***

`unittest` now has a `mock` submodule that lets you mock other classes, for example mimicking an external API without actually calling it. See *Python 201*, ch. 25.

***The `doctest` Module***

`doctest` allows you to write tests in docstrings in the code if they look like an interactive repl. See *Python 201*, ch. 24.

### C++

There is no native unit testing framework in C++. Popular options include:

- [Google Test](https://github.com/google/googletest) and its associated mocking library

- [Boost.test](https://www.boost.org/doc/libs/1_49_0/libs/test/doc/html/index.html)

- [Catch](https://github.com/catchorg/Catch2), a newer library

- [cppunit](https://freedesktop.org/wiki/Software/cppunit/), used in the course, but seemingly not widely used any more?


## Assertions

| Language | Native Assertions | Result of Assertion Failure | Alternatives |
| -------- | ----------------- | --------------------------- | ------------ |
| JavaScript | console.assert | log the failure | throw exception manually |
| Python | yes | throw exception of type `AssertionError` | n/a |
| C++ | yes, static and dynamic | compile failure (static), error message (dynamic) | roll your own dynamic assertions, see p. 362 |

### JavaScript

JS has the [`console.assert` method](https://developer.mozilla.org/en-US/docs/Web/API/console/assert). Notably this does not halt program execution if the assertion test is failed. It just logs the assertion failure to the console and carries on.

There is no native assertion syntax to halt execution on an assertion failure. You can do something like this (*EJ*, p. 140):

```JS
class AssertionError extends Error {} //or just throw a base error.

function firstElement(array) {
    if(array.length === 0) {
        throw new AssertionError("first element called with []");
    }
    return array[0];
} 
```

Providing you don't have any catch blocks muffling all errors this will crash the execution as with other languages. See exception handling for more on catching exceptions selectively.


### Python

Python has built in assertion statements that will throw an exception (a native `AssertionError`) type if the condition fails. They only execute if `__debug__` is true. That is an immutable global variable which is true in normal circumstances, false if optimization has been requested (cli `-O`). For the official spec see [Python docs](https://docs.python.org/3/reference/simple_stmts.html#the-assert-statement)

The syntax is:

```python
assert <condition_expression> [, <argument_expression>]
```

The argument expression is passed to the `AssertionError` constructor, usually a message.

### C++

See Stroustrup, C++ PL, section 13.4

Stroustrup identified the following needs when it came to expressing assertions:

- Distinguish between compile time asserts (evaluated by the compiler), and run-time assertions evaulated at run time.
- For run-time asserts offer a choice between throw, terminate, or ignore.
- No code should be generated unless a logical condition is true (eg a debug flag, a level of checking or a mask to select among which asserts to enforce).
- Assertions should not be difficult to write or read.

The standard offers two mechanisms for assertions:

- in `<cassert>` the standard library provides an `assert(A)` macro. It checks `A` at runtime only if `NDEBUG` is not defined. If the assertion fails the compiler writes an error message and terminates the program.
- in `static_assert(A, message)` the compiler unconditionally checks the assertion at compile time. If the assertion fails the compiler writes out the `message` and compilation fails.

See p. 361 for a suggested implementation of a flexible runtime assertion mechanism. Stroustrup favours leaving at least some tests in the production version of software. Library code should not terminate, but throw exceptions.

## Exception Handling

| Language | Try...Catch | Finally | Selective Catching |
| -------- | ----------- | ------- | ------------------ |
| JavaScript | Yes | Yes | No |
| Python | Yes | Yes | Yes |
| C++ | Yes | No, see 13.3.1 | Yes |

### JavaScript

See Eloquent JS [ch. 8](https://eloquentjavascript.net/08_error.html)

MDN on [try...catch syntax](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch)


JS includes a `finally` block to repair state if an exception is thrown before unwinding the stack.

```JS
try {
    //risky code
} catch (e) {
    //clean up
} finally {
    //clean up broken state before unwinding
}
```

Invalid uses of the language, such as referencing a nonexistent binding, looking up a property on `null` or `undefined`, calling something that is not a function, will result in exceptions being raised. These exceptions can also be caught by a catch block. When we catch an exception we don't know what threw the exception, or which exception was thrown.

JS does not provide direct support for selective catching of exceptions. So don't assume the error you're catching is what you had in mind when writing the try...catch block.

In general don't blanket catch exceptions unless you're routing them somewhere. How then do you catch a specific kind of exception? You have to check in the catch block? Don't rely on something like `e.message`, we have to define an error type. For example:

```JS
class InputError extends Error{};

//clearly not something you would really do!
function confirm(question) {
   let result = prompt(question);
   if(result.toLowerCase() === "yes") return true;
   if(result.toLowerCase() === "no") return false;
   throw new InputError("Invalid response" + result);
}

try {
    let confirmation = confirm("are you sure?");
    //carry on
} catch(e) {
    if(e instanceOf InputError){
        //handle bad input
    }
    else {
        throw e;
    }
}
```


### Python

See *Python 101*, ch. 14

Python provides a number of built in exception classes. `Exception` is the base class, others include `AttributeError`, `IndexError`, `KeyError`, `ImportError`. For a full list see the [Python documentation](https://docs.python.org/3/library/exceptions.html).

It supports the `finally` cleanup syntax that will run regardless of exceptions being thrown. It also has an `else` block that executes if no exceptions are caught.

As usual, anything in the `try` block after the exception is thrown will not be executed.

The syntax for exceptions is:

```python

try:
    #risky code goes here
except ImportError:
    #code executed if exception of this type is caught
except OSError:
    #classes can be sequenced
except (IndexError, KeyError):
    #classes can be contained in tuples, but you don't know which is caught
except ValueError as error:
    print(error) #you can assign the error object to a binding.
else:
    #executes only if no exceptions caught
finally:
    #cleanup database connections etc, runs regardless of exceptions.

#alternatively we have 'bare exception' catching
try:
    #risky code
except:
    #catch all exceptions. Not recommended!

#to raise an exception:
raise Exception('stuff is going down')
raise Exception #message is optional
```

### C++

See generally Stroustrup, ch. 13. See [OOP notes](https://github.com/Arundel2017/oop_notes/blob/master/notes.md#exception-handling) for syntax details.

Uncaught exceptions terminate.

It is the responsibility of the function throwing the exception to manage resources before throwing: memory, files, locks, network connections etc.

ch. 13 has a deep dive on resource management when using exceptions. 13.3.1 has a rant about `finally` statements and the superiority of RAII approaches.

We can declare a function `noexcept` to signal it cannot throw an exception. However it is not completely checked by the compiler and linker. If an exception is thrown within a function labelled `noexcept` the program terminates unconditionally.

Catch blocks are type specific, and can be sequenced, `catch(...)` can be used to catch any exception. Catch blocks can rethrow by just calling `throw;` without an operand.

## Security

### JavaScript

Common security issues with JS applications include XSS, SQL injection, sensitive cookie exposure, the scale of the package ecosystem and dependency trees.

Static Analysis:

npm has an `audit` [tool](https://docs.npmjs.com/cli/v7/commands/npm-audit) that will alert you to security vulnerabilities in your dependencies and enable you to update packages.

### Python

See [Wheeler](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/python.html) for some Python issues.

Static Analysis:

[bandit](https://bandit.readthedocs.io/en/latest/index.html) is shown in the course.

### C++

See [Wheeler](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/c-cpp.html) for some C/C++ issues and advice to avoid them if possible.

Static Analysis:

[cpp check](http://cppcheck.sourceforge.net/)

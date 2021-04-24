<!-- omit in toc -->
# Defensive Programming

Notes from the following Books:

- McConnell, *Code Complete*, 2nd ed. 2004.
- Bass et al, *Software Architecture in Practice*, 3rd ed. 2013.
- Wheeler, *Secure Programming: HOWTO*, 2015.

- [General Idea](#general-idea)
  - [Notes from *Code Complete*, ch. 8](#notes-from-code-complete-ch-8)
- [Assertions](#assertions)
  - [Notes from *Code Complete*, ch. 8](#notes-from-code-complete-ch-8-1)
    - [Guidelines for Using Assertions](#guidelines-for-using-assertions)
      - [*Use error-handling code for conditions you expect to occur; assertions for conditions that should never occur*](#use-error-handling-code-for-conditions-you-expect-to-occur-assertions-for-conditions-that-should-never-occur)
      - [*Avoid Putting Executable code in assertions*](#avoid-putting-executable-code-in-assertions)
      - [*Use assertions to document pre and post conditions*](#use-assertions-to-document-pre-and-post-conditions)
      - [*For highly robust or complex code, assert and handle the error anyway*](#for-highly-robust-or-complex-code-assert-and-handle-the-error-anyway)
- [Error Handling](#error-handling)
  - [Notes from *Code Complete*, p. 194](#notes-from-code-complete-p-194)
    - [*Return a Neutral Value*](#return-a-neutral-value)
    - [*Substitute the next piece of valid data*](#substitute-the-next-piece-of-valid-data)
    - [*Return the same answer as last time*](#return-the-same-answer-as-last-time)
    - [*Substitute the closest legal value*](#substitute-the-closest-legal-value)
    - [*Log a warning or error message*](#log-a-warning-or-error-message)
    - [*Return an error code*](#return-an-error-code)
    - [*Call an error processing routine*](#call-an-error-processing-routine)
    - [*Display an error message to the user*](#display-an-error-message-to-the-user)
    - [*Handle the error locally*](#handle-the-error-locally)
    - [*Shut Down*](#shut-down)
- [Exceptions](#exceptions)
  - [Notes from *Code Complete*, p. 198](#notes-from-code-complete-p-198)
    - [*Use exceptions to notify other parts of hte program about errors that should not be ignored*](#use-exceptions-to-notify-other-parts-of-hte-program-about-errors-that-should-not-be-ignored)
    - [*Throw an exception for conditions that are truly exceptional*](#throw-an-exception-for-conditions-that-are-truly-exceptional)
    - [*Don't just pass the buck*](#dont-just-pass-the-buck)
    - [*Don't throw exceptions in constructors or destructors*](#dont-throw-exceptions-in-constructors-or-destructors)
    - [*Throw Exceptions at the Right level of Abstraction*](#throw-exceptions-at-the-right-level-of-abstraction)
    - [*Include in the Exception Message all the information that led to the exception*](#include-in-the-exception-message-all-the-information-that-led-to-the-exception)
    - [*Avoid empty catch blocks*](#avoid-empty-catch-blocks)
    - [*Understand the exceptions thrown by your language and libraries*](#understand-the-exceptions-thrown-by-your-language-and-libraries)
    - [*Consider a centralized exception reporter*](#consider-a-centralized-exception-reporter)
    - [*Standardize the Project's use of Exceptions*](#standardize-the-projects-use-of-exceptions)
    - [*Consider Alternatives to Exceptions*](#consider-alternatives-to-exceptions)
- [Debugging](#debugging)
  - [GDB Basics](#gdb-basics)
  - [Notes from *Code Complete*, ch. 23](#notes-from-code-complete-ch-23)
    - [What not to do](#what-not-to-do)
    - [Finding the defect](#finding-the-defect)
      - [Stabilize the error](#stabilize-the-error)
      - [Tips for Finding Defects](#tips-for-finding-defects)
      - [Syntax Errors and Compiler Warnings](#syntax-errors-and-compiler-warnings)
    - [Fixing the Defect](#fixing-the-defect)
- [Security Engineering](#security-engineering)
  - [Notes from *Software Architecture in Practice*, ch. 9](#notes-from-software-architecture-in-practice-ch-9)
    - [Threat Modelling](#threat-modelling)
    - [Security Tactics](#security-tactics)
  - [Notes from Wheeler, *Secure Programming*](#notes-from-wheeler-secure-programming)
    - [Validate All Input](#validate-all-input)
      - [Validation by Type](#validation-by-type)
    - [Restrict Operations to Buffer Bounds](#restrict-operations-to-buffer-bounds)
    - [Design Your Program for Security](#design-your-program-for-security)
    - [Carefully Call Out to Other Resources](#carefully-call-out-to-other-resources)
      - [Handle metacharacters](#handle-metacharacters)
    - [Send Information Back Judiciously](#send-information-back-judiciously)
    - [Other Topics](#other-topics)
      - [Passwords](#passwords)
      - [Authentication on the Web](#authentication-on-the-web)
  - [Security and the Software Development Lifecycle](#security-and-the-software-development-lifecycle)
    - [Static Analysis](#static-analysis)
    - [Dynamic Security Analysis](#dynamic-security-analysis)

## General Idea

### Notes from *Code Complete*, ch. 8

Think of Defensive Programming like Defensive Driving, you adopt the mind-set that you're never sure what the other drivers are going to do so that if they do something dangerous you won't get hurt. You take responsibility for protecting yourself even if the other driver is at fault.

In defensive programming, the main idea is that if a routine is passed bad data, it won't be hurt, even if the bad data is the fault of another routine.

In production software, the old saying "garbage in, garbage out" is not good enough, it might be "garbage in, nothing out", or "garbage in, error message out", or "no garbage allowed in".

There are three main things to focus on when handling garbage in:

- *Check the values of all data from external sources*. When getting data from a file, network, user, or any other external interface check to be sure that the data falls in the allowable range - that numeric values are in range, that strings are short enough to handle. Check for malicious data, that character data is valid if using a data model.

- *Check the values of all routine input parameters*. This is the same as the first process, except the data is coming from an internal routine, not an external interface.

- *Decide how to handle bad inputs*. There are dozens of ways to handle bad input, this is covered in more detail in error handling below.

## Assertions

### Notes from *Code Complete*, ch. 8

An assertion is code that's used during development - usually a routine or macro - that allows a program to check itself as it runs. When an assertion is true, that means the operation is within expected parameters. When it is false, it means the program has detected an unexpected error in the code.

For example, if we assume that a customer information file will never have more than 50,000 records, we can include an assertion that the number of records is <= 50,000. So long as the number of records is in that boundary, the assertion is silent. If it passes it, the program will loudly "assert" that an error has been found.

An assertion usually takes two arguments, a boolean expression that describes the assumption that should be true, and a message to display if the assumption doesn't hold. Use assertions to document assumptions made in the code and to flush out unexpected conditions. For example these can be checked:

- That an input (or output) parameter's value falls within its expected range.
- That a file or data stream is open (or closed) when a routine begins or ends execution.
- That a file or data stream is at the beginning or end when a routine begins or ends execution.
- That a file or stream is open for read-only, or write-only, or read-write.
- That the value of an input-only variable is not changed by a routine.
- That a pointer is not null
- That an array or other container passed into a routine can contain at least *x* elements.
- That a table has been initialized with real values.
- That a container is empty/full at the beginning or end of a routine.
- That the results from a highly optimized routine match those of a slow, correct routine.

Usually assertions are removed from production code.

#### Guidelines for Using Assertions

##### *Use error-handling code for conditions you expect to occur; assertions for conditions that should never occur*

Assertions should be reserved for conditions that should *never* occur. Use error handling code for atypical situations that might not occur often but are expected. Error handling checks for bad input, assertions for bugs in the code.

Error handling code can gracefully manage an anomalous condition. Assertions aren't meant for that, they are meant to signal you need to change the source code itself.

Think of assertions as executable documentation, they don't make the code work, but they document assumptions more actively than comments.

##### *Avoid Putting Executable code in assertions*

Avoid something like `assert(PerformAction(), "action failed")`, where you want the action to be executed regardless. If the assertion is compiled away for some reason the action won't be performed.

Instead have different statements: `PerformAction(); assert(actionPerformed);`.

##### *Use assertions to document pre and post conditions*

If following the 'design by contract' approach, pre-conditions and post-conditions are part of the contract a routine makes with the rest of the program.

*Preconditions* are the properties that the client code of a routine promises will be true before it calls the routine. They are the client's obligations to the code it calls.

*Postconditions* are the properties that the routine promises will be true when it concludes execution. They are the code's obligations to the code that uses it.

Assertions can be used to document preconditions and postconditions. Comments can also be used, but assertions can check dynamically whether the conditions are true.

##### *For highly robust or complex code, assert and handle the error anyway*

In large, old, complex systems, it may well be necessary to assert but handle errors when assertions fail. EG in MS Word, which is millions of loc, it would be unrealistic for the program to ship error-free, so it includes many thousands of assertions but also errors are handled at runtime.

## Error Handling

### Notes from *Code Complete*, p. 194

Assertions are used to handle errors that should never occur in the code, but how do you handle errors that you do expect? Here are some options:

#### *Return a Neutral Value*

Sometimes the best response to bad data is to continue operation and return a value that is known to be harmless. A numeric operation might return 0, a string operation an empty string, a pointer operation the null pointer. A drawing operation might use a default colour. A sensitive application would often not want to return a "neutral value" and would prefer to shut down.

#### *Substitute the next piece of valid data*

When processing a stream of data, eg reading lines from a CSV file, maybe you want to just continue reading until you find the next valid line. If taking readings from a thermometer at a rate of 100 per second and you get an invalid reading, sample again.

#### *Return the same answer as last time*

As with the thermometer example, or graphics in a game, maybe just return the last result.

#### *Substitute the closest legal value*

If taking readings and you get one invalid, maybe just return the closest valid one. Eg if the reading is less than 0, return 0.

#### *Log a warning or error message*

Sometimes you want to carry on, log the problem, and then use one of the other strategies to return something and keep going, eg in the CSV parsing example you might log the malformed line and carry on parsing.

#### *Return an error code*

Sometimes you decide that only some parts of a program will handle errors, the other parts will just pass an error message along. It could set the value of a status variable, return the status as the function return value, or throw an exception.

#### *Call an error processing routine*

Centralize error handling in a global routine or object and then have other processes call it if needed. This introduces coupling, but can make debugging easier.

#### *Display an error message to the user*

This minimizes error handling overhead, and pushes the responsibility to the user. It can therefore spread user interface responsibilities throughout the application, which is challenging. Also beware giving too much info to users of the internal operation as it can be exploited.

#### *Handle the error locally*

Some designs delegate error handling to the local programmers and routines, this is flexible but risky.

#### *Shut Down*

Some systems just shut down when they detect an error if carrying on would be unsafe.

## Exceptions

### Notes from *Code Complete*, p. 198

Exceptions are a specific means by which code can pass along errors or exceptional events to the code that called it. Code that has no sense of the context of an error can return control to other parts of the system that might have a better ability to interpret the error and do something useful with it.

Exceptions are like inheritance, used well they can reduce complexity, but used badly they can make code almost impossible to follow. some advice on how to use them:

#### *Use exceptions to notify other parts of hte program about errors that should not be ignored*

The great benefit of exceptions is that they can signal errors which should not be ignored. They eliminate the possibility for errors to trickle through code undetected or unhandled.

#### *Throw an exception for conditions that are truly exceptional*

Exceptions should be reserved for conditions that are truly exceptional, ie that cannot be more gracefully handled by other means of error handling. They are similar to assertions in that regard. They weaken encapsulation by requiring that code calling a routine knows the exceptions that may be thrown by that routine. This increases complexity too so using them involves trade offs.

#### *Don't just pass the buck*

If an error condition can be handled locally, handle it locally. Don't throw an exception if you can handle the error locally.

#### *Don't throw exceptions in constructors or destructors*

The execution flow gets very complicated very quickly and you can end up with resource leaks.

#### *Throw Exceptions at the Right level of Abstraction*

Exceptions are part of a routine's interface, so are subject ot the same principles of consistency of abstraction as the rest of the interface.

#### *Include in the Exception Message all the information that led to the exception*

Eg if the exception was thrown because of an array index error, include the upper and lower limits and the illegal value in the exception message.

#### *Avoid empty catch blocks*

Sometimes it can be tempting to catch an error and do nothing with it. Try to either handle it or remove the exception if it's not a real exception/problem. If you do think it's a valid exception but doesn't need handling, at least make your thinking explicit in the code.

#### *Understand the exceptions thrown by your language and libraries*

If you are working in a language or with libraries that throw exceptions make sure you understand and can catch them and handle them. Uncaught exceptions will crash your program. If the library code doesn't document its exceptions create prototype tests to flush them out.

#### *Consider a centralized exception reporter*

This can help with consistency, think about one place that documents kinds of exceptions and how to handle them.

#### *Standardize the Project's use of Exceptions*

To minimize the complexity and make exceptions manageable a project should standardize them. There are several ways to do this

- When working with languages like C++ that allow you to throw a variety of types, choose one.
- Consider creating your own project-specific exception class, this can centralize logging etc.
- Define the specific circumstances project-wide where code is allowed to use throw-catch syntax.
- Define the circumstances when code can throw an exception that is not locally handled.
- Determine when a centralized exception reporter will be used.

#### *Consider Alternatives to Exceptions*

Some programmers use exceptions just because they are there in the language. You should always consider alternatives, from local handling to aborting. Notably there is still little conventional wisdom on the best use of exceptions even after them being available for a while.


## Debugging

### GDB Basics

Notes from MYK's gdb videos.

- Compile code for gdb debugging with the `-g` flag. run the code with `run` when in the debugger
- Show the code with `list`
- Set an unconditional breakpoint with `break <line_number>`
- While execution frozen: `print <var_name>` print the variable; `info locals` local variables; `info variables` all variables (will be a lot); `info stack` stack trace; `info args` stack parameters
- To progress: `next` move to next line in current stack; `step` move to next line, stepping into function calls; `continue` continue to next breakpoint
- Set a conditional breakpoint `break 9 if i > 2` to break if the condition is met
- Set a watch point `watch <var_name>` to break if the variable state changes
- Not in the video but use `backtrace` if the application has crashed and you want to see the stack trace

For more read the [docs](https://www.gnu.org/software/gdb/documentation/)



### Notes from *Code Complete*, ch. 23

Debugging is the process of finding the root cause of an error and correcting it. It contrasts with testing, which is the process of error detection. It can occupy as much as half of development time and is often what developers find hardest.

Debugging is a last resort, but defects are also an opportunity to learn - learn about the program you're working on, about the types of mistakes you make, about the quality of your code from the point of view of someone who has to read it, about how to solve problems, and how to fix defects. Debugging is often where you improve as a software developer.

#### What not to do

Here's what not to do:

- *Find the defect by guessing*. Scatter console logs randomly throughout the program, look at the output to see if you can see where the defect is. Try changing things in the program until something seems to work. Don't back up the original, and don't keep a record of the changes you made.

- *Don't waste time trying to understand the problem*. The problem is likely trivial so don't bother trying to understand it, finding it is enough.

- *Fix the error with the most obvious fix*. Just fix the obvious problem you see with the easiest solution, don't make some big ambitious correction that's going to affect the whole program.

- *Program by Superstition*. Blame hardware problems, compiler defects, a possessed editor inserting characters, library issues, the weather, anything except your own code.

#### Finding the defect

Debugging consists of finding a defect and fixing it. Finding the defect and understanding it is 90% of the work. Here is an effective scientific method for finding a defect:

1. Stabilize the error.
2. Locate the source of the error (the "fault").
    a. Gather the data that produces the defect.
    b. Analyze the data that has been gathered, and form a hypothesis about the defect.
    c. Determine how to prove or disprove the hypothesis, by testing the program or looking at the source code.
    d. Prove or disprove the hypothesis by using the procedure in 2c.
3. Fix the defect.
4. Test the fix.
5. Look for similar errors.

##### Stabilize the error

If a defect does not occur reliably, it's almost impossible to diagnose. Making an intermittent error occur reliably is one of the hardest debugging challenges.

An error that doesn't occur predictably is likely an initialization error, a timing issue, or a dangling pointer. If a sum calculation is right sometimes but not others, a variable is likely not being initialized correctly, but sometimes happens to start at 0. If the problem is a strange and unpredictable one and you are working with pointers, likely you are using an uninitialized pointer or a pointer after the memory has been released.

Stabilizing an error is more than finding a test case that produces it. It includes narrowing the test case to the simplest that produces the error. Try to make it so simple that changing any aspect changes the behaviour of the error. Then you can change the test case carefully in controlled conditions and inspect behaviour.

Suppose you have 10 factors that in combination produce the error. Start with a hypothesis that some are irrelevant. Change them and see if you still get the error. If you still get the error you can eliminate those as the source and you've made the test case simpler.

##### Tips for Finding Defects

- *Use all the data available to make your hypothesis*. When creating a hypothesis about the source of a defect, account for as much of the data as you can. If your data doesn't fit the hypothesis, change the hypothesis don't ignore some of the data.

- *Refine the test cases that produce the error*. If you can't find the error source refine the test cases further than you already have. Focusing on one parameter at a time may produce a breakthrough.

- *Exercise the code in your unit test suite*. Defects are easier to find in small fragments so focus on unit testing rather than large programs.

- *Use all available tools*. Debuggers, compilers, memory checkers, syntax highlighting and linting in your IDE. If you have an issue with memory, use a memory inspector and memory breakpoint to watch an address.

- *Reproduce the error in different ways*. Often trying cases that are similar to the error-producing code but not exactly the same is instructive.

- *Generate more data to generate more hypotheses*. Choose test case that are different from the test cases you already know.

- *Use the results of negative tests*. If your hypothesis proves incorrect from more tests, use that info to narrow the cause.

- *Brainstorm for possible hypotheses*. Come up with several possibilities, don't just chase down the first rabbit hole you can think of.

- *Keep a notepad of possible causes*. Run through a list, move on if your first hypothesis doesn't work.

- *Narrow the suspicious region of code*. If you're testing a large code surface area, narrow it by testing a smaller part instead and eliminating it as a possibility. Systematically remove parts of your code diagram as the error source, divide and conquer.

- *Be suspicious of code that has had errors before, or code that has changed recently.* Check your version control log and bug history for problem areas.

- *Expand the suspicious region of code*. If you've narrowed the source of the error to a small region, but have exhausted it, expand the search again, maybe you were wrong.

- *Integrate incrementally*. Debugging is easier if you add pieces to a system one at a time. If you add a piece to a system and encounter a new error, remove the piece and test it.

- *Check for common defects*. See eg the checklists in Code Complete.

- *Discuss the problem with someone else. Take a Break*

##### Syntax Errors and Compiler Warnings

- *Don't blindly trust line errors in compiler messages*. Look around the line given, it may be before or after the precise line given.

- *Don't blindly trust compiler messages*. Look for yourself, sometimes error messages can be misleading on the actual problem.

- *Don't trust second and subsequent compiler errors*. Fix the first error and recompile rather than working through the list.

- *Divide and Conquer*. If you have a troublesome syntax error and aren't sure where exactly it's coming from, comment out a section of code and try again to see if the error persists.

- *Find misplaced comments or quote marks*. Many text editors will helpfully auto insert characters, like comment ends or closing string quotes etc. This can often cause syntax errors so hunt for them.

- *Set your compiler warning level to the highest, pickiest possible and fix everything*. Make an effort to understand what the warnings mean if you don't already. Treat the warnings like errors and have project-wide standards for compiler settings.

#### Fixing the Defect

It's common to get defect corrections wrong on your first try. Some guidelines on fixing the defect when you find it:

- *Understand the problem before you fix it*. Make sure you understand the problem to the core before you fix it. You should be able to predict the outcome of test cases every time. Related, confirm the defect diagnosis with tests before you try to fix it.

- *Understand the program not just the problem*. Programmers with a global understanding of a program have a higher chance of fixing a problem than programmers who focus only on the local behaviour. For a large program you should understand at least the code in the vicinity of what you are working on.

- *Save the original source code*. Make sure you have a version of the code that you can return to while working on the fix.

- *Fix the problem, not the symptom*. Don't just apply a quick fix to solve the current symptom, resolve the underlying problem or you'll just get similar problems soon.

- *Change the code only for good reason*. Don't just try something plausible and see if it works. That's voodoo.

- *Make one change at a time*. And check your fix.

- *Add a unit test that exposes the defect*. To stop the defect being reintroduced later.

- *Look for similar defects*.

## Security Engineering

### Notes from *Software Architecture in Practice*, ch. 9

Security is a measure of the system's ability to protect data and information from unauthorized access while still providing access to people and systems that are authorized. An action taken against a computer system with the intent to do harm is called an attack.

The simplest categorization of security has three characteristics:

1. *Confidentiality* is the property that data or services are protected from unauthorized access.

2. *Integrity* is the property that data or services are not subject to unauthorized manipulation.

3. *Availability* is the property that the system will be available for legitimate use when required.

An attack is an attempt to break the CIA of a system.

#### Threat Modelling

A common technique used in security engineering is threat modelling. These can be described via the book's 'general scenario' with the following elements:

- *Source of stimulus*. The source of the attack, either human or another system. From inside or outside the organization, known or unknown.

- *Stimulus*. The stimulus is an attack. An unauthorized attempt to display data, change or delete data, access system services, change system behaviour, or reduce availability.

- *Artifact*. The target of the attack. Could be the services of the system, the data within it, or the data produced or consumed by the system.

- *Environment*. The state of the environment during the attack. Eg the attack can come when the system is online or offline, normal operations or unusual state.

- *Response*. THe system should ensure that transactions are carried out such that data and services are protected from unauthorized access; not manipulated without authorization; parties are identified and cannot repudiate their involvements; the data and system is available for legitimate use. System should track activities when the attack is occurring.

- *Response Measure* Measures of the impact of an attack, and the success of the response - how much of a system is compromised, how much time passed before an attack was detected, how many attacks were resisted, how long it took to recover from a successful attack, how much data was exposed...

#### Security Tactics

The book presents four categories of tactics: detect, resist, react, and recover:

***Detect Attacks***

Detect intrusion - compare network traffic or service request patterns within a system to a set of signatures or known patterns of malicious behaviour in a database.

Detect service denial - compare pattern or signature of network traffic coming into a system to profiles of DoS attacks.

Verify message integrity - checksums, hash values are used to verify the integrity of messages, files, etc.

Detect message delay - detect man-in-the-middle attacks by monitoring the time it takes to deliver a message.

***Resist Attacks***

Identify actors - ie any input external to the system. Through access codes, IP addresses, ports, etc

Authenticate actors - ensure an actor is who they purport to be - passwords, one-time-passcode, digital certificates

Authorize actors - Ensure authenticated actor has the right to access and modify data or services. Provide an access control mechanism.

Limit access - Limiting access to computing resources like memory, network connections, compute on the server etc. Use a walled zone for external users for example, block hosts, close a port, reject a protocol

Limit exposure - Minimize the attack surface of the system. A passive defence, having the least possible number of access points for resources, data, and services.

Encrypt data - storage and network layers should encrypt info

Separate entities - include "air gaps" eg through VMs or physical separation, to limit exposure if one system is compromised.

Change default settings - attackers will try to exploit defaults.

***React to Attacks***

Revoke access - if you think an attack is happening, lock down sensitive resources.

Lock computer - Repeated failed logins might indicate an attack, many systems limit access accordingly.

Inform actors - alert those people or systems who need to be aware of the attack.

***Recover from Attacks***

Maintain the audit trail and restore services (backup servers?)

### Notes from Wheeler, *Secure Programming*

See [CWE](http://cwe.mitre.org/data/definitions/1350.html) For common security vulnerabilities, definitions, and examples.

#### Validate All Input

Make sure you identify all inputs from potentially untrusted users, so that you validate them all. Where possible eliminate the inputs or make it impossible for untrusted actors to provide info to them.

For each remaining input, you need to validate the info coming in.

Determine what is legal input as narrowly as you reasonably can, and reject everything else. This is *whitelisting*. Do not do the opposite where you list everything to be rejected and except all other input. That is *blacklisting* and should be avoided.

It is useful to identify "illegal" values for testing purposes though. Attack the whitelist with some illegal values like the empty string, ".", "..", "../", anything starting with "/" or "." or any control characters like "NIL" or "\n", any characters with a high bit set. Make sure your whitelist ruthlessly eliminates all such values.

Limit maximum character lengths (and min length if appropriate) and make sure not to lose control when those lengths are exceeded.

When using regular expression filters beware of Reg Ex Denial of Service attacks. More info [here](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)

##### Validation by Type

***Strings:*** Identify the legal characters or patterns (eg as a regex) and reject anything not matching that form. There are special issues with control characters like newline, and shell metacharacters. You should escape all metacharacters immediately the input is received. 

***Numbers:*** Limit to a minimum (often 0) and maximum allowed values.

***Emails:*** A full email address checker is complicated. Examples are available, often it's easier to simplify and only permit common internet address formats rather than the full legacy spec.

***Filenames:*** These can cause serious problems. Particularly for secure programs that run locally with local untrusted users, but also remote users can trick a program into creating undesirable filenames. 

Usually do not include ".." as a legal value from an untrusted user. Prohibit changes in directory (eg with "/") if you take data from an external user. Don't support globbing (with eg "\*" "?" etc) These can snarl compute time if used maliciously.

Filenames that can cause special problems include leading dashes (cd be interpreted as an option string); filenames with control characters; filenames with spaces (cd be multiple arguments); invalid character encoding; other characters special to internal data formats (like ";" or "<").

***URIs:*** Check for validity. Be careful to check for URIs that escape the document root via sym link or "..". Decode any encoding first. Reject URIs with high bit sets.

***Cookies:*** Check the domain value of any cookie or you could get spoofed cookies.

***File Contents:*** If a program takes directions from a file it must not trust that file unless only a trusted user can control the contents, ie an untrusted user cannot modify the file, its directory, or any ancestor directory. Otherwise all the contents of the file must be considered untrustworthy and validated according to the rules in the book.

For a deep dive on character encoding see [section 5.11](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/character-encoding.html)

For a deep dive on html validation see [section 5.13](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/filter-html.html)

#### Restrict Operations to Buffer Bounds

Programs often use memory buffers to capture input and process data. In some cases, particularly in C/C++, it may be possible to perform an operation but read or write at a memory address that is outside the intended memory boundary. This is very bad.

A subcategory of buffer boundary issues is *buffer overflow*, which has several definitions. A buffer overflow occurs if a program attempts to write more data in a buffer than it can hold or write into a memory area outside the boundaries of the buffer. For example writing character data beyond the end of the alloted buffer.

Allowing attackers to read data beyond a buffer boundary can also result in vulnerabilities, eg the [Heartbleed](https://heartbleed.com/) vulnerability allowed attackers to read critical data.

C/C++ users must avoid using dangerous functions that do not check bounds unless they've ensured the bounds will never get exceeded. For example the `scanf` family of functions is dangerous, as are the likes of `strcpy` and `strcat`. For other common problems see [section 6.1](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/dangers-c.html)

Standard library methods are available to mitigate the dangers, eg the `std::string` library in c++. Compiler checking is also a useful tool, but should not be relied on as your sole defence.

#### Design Your Program for Security

Wheeler lists the following design principles for secure systems (Linux specific stuff is omitted here):

***Secure the Interface:*** Interfaces should be minimal, narrow, and non-bypassable. Trust should be minimized, consider limiting the data the user can see.

***Separate Data and Control:*** Completely separate passive data from programs that are executed. Applications and data viewers may be used to display files developed externally, so don't allow them to accept programs (eg macros). An auto-executing macro that fires on boot or initial display is a disaster waiting to happen. If you really have to run remote code, sandbox it.

***Minimize Privileges:*** Minimize the privileges granted, minimize the time the privilege can be used, minimize the time it is active, minimize the modules granted the privilege, minimize the accessible data, minimize the resources available.

***Minimize Component Functionality:*** If your component does several things, break it up. then if a flaw is discovered, you can just disable one narrow component.

***Use Safe defaults and config:*** Config is considered to be the number one security problem, so make the initial installation secure and make it easy to reconfigure the system while keeping it secure. Never have a default password. Don't create 'access to all' configs or default users until an admin has had the chance to set it up properly. Take care of install scripts, and file permissions installed.

***Load initialization values safely:*** Often programs read some kind of init or config file on boot. You must ensure this can't be changed or modified by an attacker. Don't use the current directory for the config file, use a hidden file in the relevant part of the filesystem (eg user home). Trusted values should be loaded from `/etc` or similar.

***Minimize Data Access:*** Make any config and data files have the minimum necessary privileges, maybe ordinary users can't even read them...

***Fail Safe:*** Make sure that if a failure occurs, the safest result should occur. For example if misbehaviour is detected the program should immediately deny service adn stop processing the request. Don't try to figure out what the user wanted and work around it, just fail and deny service.

***Avoid race conditions:*** This is a [detailed section](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/avoid-race.html) with code examples. The gist is to check for any pair of operations that might fail if arbitrary code is executed between them (eg around the file system); and avoiding locking scenarios.

***Trust only Trustworthy Channels:*** Only trust information (input, results) from trustworthy channels. No unauthenticated transmission is trustworthy. Checking IP address and/or port can have some value but it can be spoofed. This applies to data referencing other data (eg html referencing stylesheets, or xml DTDs)

***Setup a Trusted Path:*** Signal to the user that they are on a trusted site. Beware of web spoofing tricks eg 'mysite.com/some_stuff_I_want/is@evilsite.com' sends you to evilsite.com, but browsers getting better at alerting users to that kind of thing.

***Use code that checks internal consistency:*** ie assertions that check state assumptions.

***Self-limit Resources:*** Shed or limit excessive loads.

***Prevent XSS Malicious Content:*** This is another [detailed section](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/cross-site-malicious-content.html) on XSS attacks. There is also a link to an [Anatomy of cross site scripting](https://img2.helpnetsecurity.com/dl/articles/xss_anatomy.pdf)(pdf). A list of special characters to look out for is provided (eg "<", ">", and "&"). Approaches to dealing with it are mentioned, eg filtering based on permitted characters or else encoding (quoting) characters so they no longer have special meaning.

***Foil Semantic Attacks:*** A semantic attack is an attack in which the system is operating as intended, but the attacker is fooling users into doing something they do not intend. For example financial scams. These are hard to tackle technically because the system is not malfunctioning. The solution is to give the human user additional info, warn them when something odd is happening or something may be pretending to be something else. See eg Firefox's reaction to 'mytricksite.com/test@bbc.co.uk'. Homographs are another issue - characters that look similar but could be mistaken in eg urls.

***Be Careful with Data Types:*** For example signed and unsigned values, particularly in interfaces, and potential memory issues.

***Avoid Algorithmic Complexity Attacks:*** Eg reg ex denial of service, or exploiting worst-case run time for sorting algorithms, hash collisions.

#### Carefully Call Out to Other Resources

Call out only safe library routines. Test standard library functions for security issues, don't just assume they are ok.

Limit callouts to other programs to only permit valid and expected values for parameters.

Only call APIs, don't call a program designed for human interaction.

Check all system call returns.

Watch out for embedded content and links, eg html calling out and fetching content when added to the DOM.

Hide sensitive info, while being input and output, and when stored. Encrypt all sensitive info in databases, and hide it by default on input or output (eg credit card numbers, addresses, account balances).

##### Handle metacharacters

Many systems, like SQL interpreters and shells, have *metacharacters*, characters in their input that are not interpreted as data. They could be commands, or delimit commands from data.

If your program invokes those interpreters, and allows attackers to insert those metacharacters, you have likely lost your application.

Some common metacharacter injection issues include:

***SQL Injection*** Insertion of double or single quotes, the ';' or '--' characters which signify command separation and comments. The best approach to tackle this is to use prepared statements, with placeholders, and then a trusted library to escape the input string properly. It is difficult to get your own escape code right. Blacklisting is a very bad idea, because different SQL interpreters have different metacharacters. Prepend and append a quote to user input so white space is not an issue.

***Shell Injection:*** The shell metacharacters are:

```bash
& ; ` ' \ " | * ? ~ < > ^ ( ) [ ] { } $ \n \r #
```

But there are other problematic characters too, so again blacklisting is bad. Several library calls also invoke the command shell, so these problems can be wider than you think. Use whitelists.

***Filenames:*** These can be tricky to handle safely. In Unix a filename is any sequence of bytes, not necessarily characters, so you can end up with problematic filenames (like all spaces). There are issues around, for example, concatenating a trusted home directory in the application with a user name of "../../../my_secrets". For tips on how to handle this properly see [Wheeler's article](https://dwheeler.com/essays/filenames-in-shell.html)

#### Send Information Back Judiciously

Avoid giving much info to untrusted users. If it fails, just say it fails with minimal info on why. *Minimize feedback* - don't echo back passwords, don't give much info at all to users pre-authentication. Use audit logs.

Don't leave comments in code that will be visible to users (eg html or client JS files) that could provide any insight into the system's operation that could help attackers.

It may be possible for an attacker to 'clog' the output channel of an application. Place time-outs on outgoing network write-requests. Release locks.

Control string formatting. String formatters are mini programming languages, don't use untrusted ones from outside the system, control it. Eg don't say `printf(string_from_user)`.

Control character encoding of output. In web apps, mixed encoding can lead to XSS attacks. Always specify the character encoding in the html head, and the http protocol output if possible.

Don't allow the user to read from include/config files. Make sure they won't be served ever (put them in a protected directory)

#### Other Topics

##### Passwords

Don't write code to handle passwords wherever possible. If writing a local application, depend on the normal login auth of the user.

For network applications:

Use eg SSL/TLS when transmitting passwords - always cryptographically authenticate and encrypt the connection.

NEVER store the password 'in the clear'. The bare minimum is "salted hashes" - ie *a cryptographic hash that includes per-user salt and uses an intentionally slow hash function designed for the purpose*. That is:

- A cryptographic hash function, such as SHA-512.

- Per user salt, without this an attacker could pre-hash common passwords and see if any of the many passwords match the computed hash. So an individual random *salt* is used as part of the data to be hashed.

- Key derivation/iterated functions: The stored value should be created by using a key derivation or stretching function which is intentionally slow. This is irrelevant in normal operation but designed to frustrate attackers doing password-guessing.

If users create their own passwords, make sure it's good.


##### Authentication on the Web

Quite a [detailed section](https://dwheeler.com/secure-programs/Secure-Programs-HOWTO/web-authentication.html)

Use the 'username' and 'password' field names as the browser will do some work for you.

Don't automatically login users with their details pre-filled, display the form to them so they can make sure they want to login. Don't save user passwords on the client in cookies etc. Don't display passwords in the UI, obscure them.

Mark login pages as not to be cached.

Once logged in, send back an authentication token, with an expiration time, username and a keyed digest - a hash of the other info in the token. See the actual section for issues with tokens and how to handle them.

Always provide users a means to log out.

### Security and the Software Development Lifecycle

Notes from MYK's videos.

A SDLC is a structure for the various development activities to be performed within a project. How does security fit with this?

Microsoft have an industry leading security development lifecycle with a set of [recommended practices](https://www.microsoft.com/en-us/securityengineering/sdl/practices)

MYK picks out three of them:

*Manage Security Risk of 3rd party dependencies* (eg node packages). What to do? 1. keep an inventory; 2. perform security analysis on the source code;  3. Keep dependency packages up to date.

*Use approved tools*. MYK suggests using the practices above.

*Perform Static Analysis security testing* See section below.

MYK mentions alternatives to Microsoft's framework:

- [SAMM](https://www.opensamm.org/) organization centered.
- [BSIMM](https://www.bsimm.com/) attempt to distil common ground from existing practice.
- [OWASP CLASP process](https://us-cert.cisa.gov/bsi/articles/best-practices/requirements-engineering/introduction-to-the-clasp-process)

#### Static Analysis

Static analysis is analysis of source code. You could either do it with a tool, or eyeball it (eg code review).

See the [OWASP summary](https://owasp.org/www-community/Source_Code_Analysis_Tools)

Static analysis of security issues is a subset. 

MYK shoes the bandit tool for static analysis. His example is:

```python

def login(un='matthew', pw='secret'):
    print('logging in with', un, pw)
```

The tool showed a warning about a hardcoded password.

From the [documentation](https://bandit.readthedocs.io/en/latest/plugins/index.html#complete-test-plugin-listing), the following kinds of potential issues are examined by bandit:

- bad file permissions (if `chmod` is used with permissive values)
- assert used (assertions can be compiled away)
- exec used (exec is risky)
- binding to all network interfaces
- hardcoded passwords (as in myk's example)
- insecure use of the `/tmp` directory
- silently ignoring exceptions with the `pass` or `continue` keywords
- running Flask in debug mode (which allows arbitrary code to be executed)
- test for SQL injection with hardcoded SQL strings.
- use of weak cryptographic keys

But you can add your own plugins to test for problems that you have identified.

You can also have blacklists for particular function calls or import statements to warn if unsafe versions of functions/libraries are being used.

#### Dynamic Security Analysis

Dynamic analysis tests an application at runtime. It is a black box process design to discover vulnerabilities like XSS, denial of service, information disclosure, buffer overflows etc. See the [wikipedia page](https://en.wikipedia.org/wiki/Dynamic_application_security_testing)

Strengths include being able to test the final, release candidate in simulated conditions for load robustness etc.

Weaknesses include difficulty in achieving 100% coverage, and the risk of corrupting data - sandboxes are needed.

List of [tools](http://projects.webappsec.org/w/page/13246988/Web%20Application%20Security%20Scanner%20List) for dynamic analysis.
Test running software and see if we can exploit it eg penetration tests
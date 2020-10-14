# Week 1

## Module
> "... a mechanism for improving the *flexibility* and *comprehensibility* of a system while allowing the *shortening of its development time*" - Parnas,  1972


A piece of software like a complex machinery needs to be developed in pieces and integrated to achieve end goals. This allows multiple teams to work on different parts of it at same time, someone unfamiliar to it can understand it by its parts and how they interact. These parts can be swapped out and replaced with something more desirable, giving us flexibility in development.

A module is:
1. Program unit that is discrete and identifiable with respect to *compiling, combining* with other units and *loading*.
2. Logically separable part of a program. (i.e. single responsibility)
3. set of source code files under *version control* that can be manipulated together as one.
4. Collections of both data and the routines that act on it. (i.e. Classes from object oriented design)

## Module complexity
> "Controlling the complexity is the essence of computer programming" - Brian Kernighan

Definition:

Complexity is ...
1. degree to which a system's design or code is **difficult to understand** because of numerous components or relationships among components.
2. pertaining to any of set of structure-based metric that measures attribute in.
3. degree to which a system or component has a design implantation that is difficult to understand and verify.

Lots of work is done measuring software quality and complexity. Some examples are covered in Reference reading below.

Module complexity can be thought of in informal and formal ways. Informally, complexity is the sense that the programmer has on reading the code of the number of different pathways and the interdependencies. Formally, one might consider metrics that can be extracted from the code, such as graph theoretic complexity.

### Example of complexity metric: Excessive structural complexity
It is expected that new projects will grow in complexity and after some time they are refactored to reduce the complexity. This was shown by a study on open source projects in first reference reading by Sangwan Et al.


        +
        |
        |
     c  |
     o  |
     m  |                                          X
     p  |                                         X
     l  |                              X        XX
     e  |                            XX XX    X
     x  |          refactor        XXX   XXXX
     i  |             ↓           XX
     t  |           XXX        XXX
     y  |         XX   XXX   XXX
        |        XX       XXX
        |      XX
        |     X
        |   XX
        | XX
        |X
    +---------------------------------------------------+
        |
        |              time
        +


Cyclomatic complexity: cyclic dependencies between modules and how complexity moves between layers of organization in the codebase over time.

"Fat": How much work is going on here? ~ related to cohesion
"Tangle": How much interaction is there? ~ related to coupling


## Reference reading
- [✓] https://ieeexplore.ieee.org/document/4548410
    - As software evolves, complexity shifts from lower to higher structural level, or vice-versa. Managing this complexity could require periodic major restructuring of software.
    - Complexity's impact depends on the abstraction level. E.g. cyclic dependencies between packages and components have greater impact than excessive complexity at method level code.
    - "Cyclomatic complexity": number of possible execution paths through the body of code.
    - Excessively complex systems tend to have high coupling and low cohesion.
    - Dependency graph: nodes are different modules and edges represent relationship between modules.
    - Ideally, the coupling should be low and dependency graph should be directed and acyclic. Cycles in dependency graph form tangles, where the code becomes harder to develop and maintain.
    - Tangles are cyclic dependencies between packages.
    - Fat measurement gives us a sense of how easy it is to understand given codebase.
    - In FOSS projects the requirements are loosely defined, hence both high-level and code-level design continuously evolves. As a consequence the complexity of such projects increases unless there are efforts to reduce or maintain it.


- [✓] https://ieeexplore.ieee.org/document/1702388
    - This paper presents a graph-theoretic complexity measure of code complexity.
    - Even very small programs such as 25 if-then statements can have combinatoric explosion and give us 33.5 million distinct outputs. It's very difficult to test even a fraction of all those outcomes.
    - `V(G) = e - n + p` where `V(G)` is cyclomatic number of graph `G` with `n` vertices, `e` edges and `p` connected components.
    - Can be simplified as number of "holes" ~ cycles in the graph.
    - Such metric can be used to decide if method or class contains too much complexity.
    - "Program control graph": each node is block of code where flow is sequential, edges are jumps or branches taken in program. Each node can be reached by the entry node and each node can reach the exit node.

- [✓] https://ieeexplore.ieee.org/document/5306330
- [ ] https://dl.acm.org/doi/abs/10.1145/2000259.2000263


# Week 2 - Module cohesion

> "Module cohesion is a way to reason about contents of a module."

## Some definitions:
- Module cohesion is the way in which the elements of a module relate to each other. There are different ways for the elements to relate; for example, they might be functions that work on the same type of data or the program might execute the function at a similar point in time. Some of these are desirable, others are not.
- A measure of the strength of association of the elements within a module.

## Different type of module cohesions


| Type of cohesion | Description of module tasks                                                 | Good or bad?                           |
| :--------------: | :-------------------------------------------------------------------------- | :------------------------------------: |
| communicational  | tasks use the same input data and contribute to producing the same output   | OK. This is practically OOP.           |
| functional       | tasks contributes to the performance of a single function                   | OK for well defined and limited goals. |
| logical          | tasks perform logically similar functions                                   | Generally bad.                         |
| procedural       | tasks contribute to given program procedure, such as iteration or decision  | Generally bad.                         |
| sequential       | output of one task serves as input for another task                         | Generally bad.                         |
| temporal         | tasks are required by a phase of program execution, not necessarily related | Bad.                                   |
| coincidental     | have no relationship to one another                                         | Duh                                    |

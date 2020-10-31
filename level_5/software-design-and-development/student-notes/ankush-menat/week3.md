# Week 3 - Module coupling

Definitions:
1. Manner and degree of interdependence between software modules. e.g. Providing some functions that another module relies on and how much do they rely.
2. strength of the relationship between modules.
3. measure of how closely connected two routines or modules are.
4. In software design, a measure of the interdependence among modules in a computer program.


## Different type of module couplings


| Type of coupling     | Description of module tasks                                                                                                       | Good or bad?                                                                           |
| :----------:         | :------------------                                                                                                               | :---------:                                                                            |
| Common-environment   | Two modules access a common data area. Example: some modules working on global namespace.                                         | Good, if data is properly scoped, otherwise data could end up in unpredictable state.  |
| Content              | Some or all of the content of one module are included in content of another module. E.g. Lambda functions, event-listeners        | Good, as long as inner module is not accessed and modified in other parts of program.  |
| Control              | One module communicates info to another module for explicit purpose of influencing the latter module's execution.                 | Bad, can be usually skipped in different smaller modules.                              |
| Data or Input-Output | Output from one module serves as input for another module. Using functions.                                                       | Generally, good.                                                                       |
| Hybrid               | Different subset of range of values that data item can assume are used for different and unrelated purposes in different modules. | Generally bad, but sometimes necessary if resources are limited.                       |
| Pathological         | One module affects or depends upon internal implementation of another module                                                      | Duh                                                                                    |

# cliq Usage Examples

This directory contains examples of how to use the cliq library.

You can compile all the examples using:
```bash
$ make examples
```
Executables will be placed in the `examples/bin` directory.

## Simple
Demonstrates how to create a simple CLI application with custom commands.
```text
$ ./bin/simple help
testarg   This is a test argument
ver       Display version information
help      Display CLI information
```
```text
$ ./bin/simple
No arguments found!
```
```text
$ ./bin/simple ver
You really thought I'll version examples?!
```
```text
$ ./bin/simple testarg ver
Test Argument Found!
```


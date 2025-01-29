# cliq Usage Examples

This directory contains examples of how to use the cliq library.

You can compile all the examples using:
```bash
$ make examples
```
Executables will be placed in the `examples/bin` directory.

You can also run the examples using:
```bash
$ make run-examples
```

## Simple (`simple`)
Demonstrates how to create a simple CLI application with custom arguments.
```text
$ ./bin/simple
No flags are set!
```
```text
$ ./bin/simple --version
Version flag is set!
```
```text
$ ./bin/simple --test
error: [--test] requires a value

Try `--help` for more information.
```
```text
$ ./bin/simple --test 'hello world'
received: hello world
```

## Default Values (`defaultValues`)
Demonstrates how to set default values for arguments with `--test` being `true` and `--version` being `false` by default.
```text
$ ./bin/defaultValues
Test flag is set!
```
```text
$ ./bin/defaultValues --notest
No flags are set!
```
```text
$ ./bin/defaultValues --test
Test flag is set!
```

## Auto Help (`autoHelp`)
Demonstrates how to automatically generate the `--help` flag and its output.
### Full auto :P (`auto()`)
```text
$ ./bin/autoHelp --help
Flags:
   --test   bool
   --help   bool
```
```text
$ ./bin/autoHelp --test
Test flag is set!
```
```text
$ ./bin/autoHelp
Test flag is not set!
```
### Manual (`manual()`)
```text
$ ./bin/autoHelp --help
Flags:
   --help   bool
```
```text
$ ./bin/autoHelp
Help flag is not set!
```

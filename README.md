# Computer simulator

This library exposes a simple `Computer` class which can be used to execute
a simplified instruction set mimicking assembly.

## Instructions

- `MULT`: Pop the 2 arguments from the stack, multiply them and push the result back to the stack
- `CALL addr`: Set the program counter (PC) to `addr`
- `RET`: Pop address from stack and set PC to address
- `STOP`: Exit the program
- `PRINT`: Pop value from stack and print it
- `PUSH arg`: Push argument to the stack

## Tests

Unit tests for this repo can be run with:

```shell
bundle exec rspec specs/
```

## Acceptance specs

The [`examples/` directory] is used to have slightly more complicated examples
which act as acceptance tests. Any of the examples can be run with:

```shell
ruby examples/example1.rb
```

[`examples/` directory]: ./examples

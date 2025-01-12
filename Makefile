# cliq
# The Jule CLI Library
# https://github.com/adamperkowski/cliq
# Copyright (c) 2025, Adam Perkowski
# BSD 3-Clause License

JULEC = julec
JULEFMT = julefmt

NAME = cliq
EXAMPLES = simpleGET

examples:
	mkdir -p examples/bin
	@for example in $(EXAMPLES); do \
		cd examples/$$example; \
		$(JULEC) . -o ../bin/$$example; \
		cd ../..; \
	done

format:
	$(JULEFMT) -w $(NAME) 
	@for example in $(EXAMPLES); do \
		$(JULEFMT) -w examples/$$example; \
	done

test:
	mkdir -p bin
	$(JULEC) test $(NAME) -o bin/$(NAME)_test
	./bin/$(NAME)_test

clean:
	rm -rf examples/bin

.PHONY: examples format test clean

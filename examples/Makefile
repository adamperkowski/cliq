# cliq
# The Jule CLI Library
# https://github.com/adamperkowski/cliq
# Copyright (c) 2025, Adam Perkowski
# BSD 3-Clause License

JULEC = julec
JULEFMT = julefmt

EXAMPLES = simple

all:
	mkdir -p bin
	@for example in $(EXAMPLES); do \
		cd $$example; \
		$(JULEC) . -o ../bin/$$example; \
		cd ..; \
	done

format:
	@for example in $(EXAMPLES); do \
		$(JULEFMT) -w $$example; \
	done

clean:
	rm -rf bin

.PHONY: all format clean

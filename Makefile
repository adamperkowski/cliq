# cliq
# The Jule CLI Library
# https://github.com/adamperkowski/cliq
# Copyright (c) 2025, Adam Perkowski
# BSD 3-Clause License

JULEC = julec
JULEFMT = julefmt

NAME = cliq
EXAMPLES = simple autoHelp
LIB = $(NAME).jule LICENSE README.md

examples:
	mkdir -p examples/bin
	@for example in $(EXAMPLES); do \
		cd examples/$$example; \
		echo "Building $$example..."; \
		$(JULEC) . -o ../bin/$$example; \
		cd ../..; \
	done

format:
	$(JULEFMT) -w .
	@for example in $(EXAMPLES); do \
		$(JULEFMT) -w examples/$$example; \
	done

test:
	mkdir -p bin
	$(JULEC) test . -o bin/$(NAME)_test
	./bin/$(NAME)_test

package:
	mkdir -p $(NAME)
	cp -R $(LIB) $(NAME)
	tar -czf $(NAME)-$(VERSION).tar.gz $(NAME)
	zip -r $(NAME)-$(VERSION).zip $(NAME)

clean:
	rm -rf bin examples/bin $(NAME) *.tar.gz *.zip

.PHONY: examples format test clean

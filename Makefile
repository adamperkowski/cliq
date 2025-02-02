# cliq
# The Jule CLI Library
# https://github.com/adamperkowski/cliq
# Copyright (c) 2025, Adam Perkowski
# BSD 3-Clause License

JULEC = julec
JULEFMT = julefmt

NAME = cliq
MODULES = internal
ALL = . $(MODULES)
LIB = $(NAME).jule $(MODULES) jule.mod LICENSE README.md
EXAMPLES = simple autoHelp defaultValues

examples:
	mkdir -p examples/bin
	@for example in $(EXAMPLES); do \
		cd examples/$$example; \
		echo "Building $$example ..."; \
		$(JULEC) . -o ../bin/$$example; \
		cd ../..; \
	done

run-examples: examples
	echo
	@for example in $(EXAMPLES); do \
		echo "Running $$example ..."; \
		./examples/bin/$$example $(TESTARGS); \
		echo; \
	done

format:
	@for module in $(ALL); do \
		echo "Formatting $$module ..."; \
		$(JULEFMT) -w $$module; \
	done
	@for example in $(EXAMPLES); do \
		echo "Formatting examples/$$example ..."; \
		$(JULEFMT) -w examples/$$example; \
	done

test:
	mkdir -p bin
	@for module in $(ALL); do \
		echo -e "Testing $$module ...\n"; \
		if $(JULEC) test $$module -o bin/$(NAME)_$$module-test; then \
			if ! ./bin/$(NAME)_$$module-test; then \
				exit 1; \
			fi; \
		else \
			true; \
		fi; \
	done

package:
	mkdir -p $(NAME)
	cp -R $(LIB) $(NAME)
	tar -czf $(NAME)-$(VERSION).tar.gz $(NAME)
	zip -r $(NAME)-$(VERSION).zip $(NAME)

clean:
	rm -rf bin examples/bin tests/bin $(NAME) *.tar.gz *.zip

.PHONY: examples run-examples format test clean

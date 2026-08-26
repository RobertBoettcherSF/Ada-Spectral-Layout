.PHONY: all test clean

GNAT = gnatmake

all:
	$(GNAT) -P spectral.gpr

test: all
	@echo "Running tests..."
	@./bin/tests

clean:
	rm -rf obj bin

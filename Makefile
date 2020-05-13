.PHONY: clean

clean:
	git submodule foreach --recursive git clean -f


.PHONY: clean

clean:
	git submodule foreach git clean -f


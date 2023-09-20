.PHONY: clean

clean:
	git submodule foreach --recursive git clean -f

install:
	pip install poetry
	poetry install
	poetry run python ./link-dotfiles.py -p macos
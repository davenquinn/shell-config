.PHONY: clean

clean:
	cd dotfiles/vim \
	&& git submodule foreach git clean -f


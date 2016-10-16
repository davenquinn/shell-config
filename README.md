# Daven's dotfiles

This was long ago forked from Mathias Bynen's version,
but it has been substantially changed to suit my whims,
and only the fundamental
approach remains the same (all of the mechanics are different
internally).

## Installation

Install some python modules (you will need `click` and `pathlib` (for Python < 3.0)

Run `./make-links.py` with an optional `-p` switch for profile.
This will install os-specific dotfiles as well as more general
configurations.

You may need to run `Rake` inside the  `dotfiles/vim` directory
periodically.

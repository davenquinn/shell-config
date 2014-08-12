#!/usr/bin/env python3

from os.path import dirname, expanduser
from pathlib import Path
from click import style, echo, confirm
from functools import partial

home = Path(expanduser("~"))
dotfiles = Path(dirname(__file__)).resolve()/"dotfiles"

green = lambda s: style(str(s),fg="cyan")
red = lambda s: style(str(s),fg="red")
dotted = lambda p: "."+p.name

linkfile = lambda p: home/dotted(p)

def symlink_path(p):
    loc = linkfile(p)
    if loc.is_symlink(): loc.unlink()
    if loc.exists(): return p
    s = "Symlinking "+green(loc)+" → "+green(p)
    echo(s)
    loc.symlink_to(p)

def make_symlinks(files):
    results = map(symlink_path, files)
    remainders = list(filter(lambda x: x is not None, results))
    if len(remainders) == 0: return
    linkfiles = map(linkfile, remainders)
    echo("Some unmanaged dotfiles remain:")
    for loc in linkfiles:
        type = "folder" if loc.is_dir() else "file  "
        echo("    {0} ".format(type)+red(loc))
    if confirm("Do you want to overwrite these unmanaged dotfiles?"):
        map(lambda i: i.unlink(), linkfiles)
        make_symlinks(remainders)

if __name__ == "__main__":
    make_symlinks(dotfiles.iterdir())

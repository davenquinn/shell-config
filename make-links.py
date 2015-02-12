#!/usr/bin/env python
# -*- coding: utf8 -*-
from os.path import dirname, expanduser
from pathlib import Path
from click import style, echo, confirm
from functools import partial
from subprocess import call

home = Path(expanduser("~"))
dotfiles = Path(dirname(__file__)).resolve()/"dotfiles"

cyan = lambda s: style(str(s),fg="cyan")
magenta = lambda s: style(str(s),fg="magenta")
dotted = lambda p: "."+p.name

linkfile = lambda p: home/dotted(p)

def symlink_path(p):
    loc = linkfile(p)
    if loc.is_symlink(): loc.unlink()
    if loc.exists(): return p
    s = "Symlinking "+cyan(loc)+" → "+cyan(p)
    echo(s)
    loc.symlink_to(p)

def make_symlinks(files):
    results = map(symlink_path, files)
    remainders = list(filter(lambda x: x is not None, results))
    if len(remainders) == 0: return
    linkfiles = list(map(linkfile, remainders))
    echo("")
    echo("Some unmanaged dotfiles remain:")
    for loc in linkfiles:
        type = "folder" if loc.is_dir() else "file  "
        echo("    {0} {1}".format(type,magenta(loc)))
    s = ["Do you want to overwrite these unmanaged files?",
         "You'll lose any changes you've made."]
    if confirm("\n".join(s)):
        for loc in linkfiles:
            echo("Removing {0}".format(loc))
            call(["rm","-rf",str(loc)])
        make_symlinks(remainders)

if __name__ == "__main__":
    make_symlinks(dotfiles.iterdir())

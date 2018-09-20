#!/usr/bin/env python
# -*- coding: utf8 -*-
from os.path import dirname, expanduser
from pathlib import Path
import click
from click import style, echo, confirm
from functools import partial
from subprocess import call

home = Path(expanduser("~"))
here = Path(__file__).resolve().parent
dotfiles = here/"dotfiles"

cyan = lambda s: style(str(s),fg="cyan")
magenta = lambda s: style(str(s),fg="magenta")
dotted = lambda p: "."+p.name

linkfile = lambda p: home/dotted(p)

profiles = [
    'macos',
    'server']

def symlink_path(p):
    loc = linkfile(p)
    if loc.is_symlink(): loc.unlink()
    if loc.exists():
        # We return the path if the file already exists
        return p
    s = "Symlinking "+cyan(loc)+" → "+cyan(p)
    echo(s)
    loc.symlink_to(p)

def make_symlinks(files):
    results = (symlink_path(i) for i in  files)
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

@click.command()
@click.option('--profile','-p',
              help='Profile of dotfiles to link',
              type=str)
@click.option('--list','-l',help="Show names of profiles",
              is_flag=True)
def dotfile_cmd(profile,list):
    """
    Command to make dotfiles for each directory
    """
    if list:
        echo("Below are the profiles that can be used"
             " for setup")
        for i in profiles:
            magenta(i)
        return

    make_symlinks(dotfiles.iterdir())

    if profile is None:
        echo("No profile-specific dotfiles were linked. "
             "Specify `-p/--p <a-profile>` to link these. "
             "`-l/--list` shows the possible profiles.")
        return
    dn = here/"dotfiles-{}".format(profile)
    make_symlinks(dn.iterdir())


if __name__ == "__main__":
    dotfile_cmd()

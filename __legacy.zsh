# This file contains legacy configs that are retained for posterity.

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
## make sure proj and gdal tools come before their Postgres-app provided versions in the path.
export PATH=$(brew --prefix proj)/bin:$(brew --prefix gdal)/bin:$PATH

# Subshells inherit already-declared variables so we
# don't want to add to path etc.


COREUTILS=$(brew --prefix coreutils)/libexec/gnubin
SED=$(brew --prefix gnu-sed)/libexec/gnubin
export PATH="$SED:$COREUTILS:$PATH"

export PKG_CONFIG_PATH="$(brew --prefix)/lib/pkgconfig:/usr/lib/pkgconfig:/opt/X11/lib/pkgconfig";

export PYTHONDONTWRITEBYTECODE=True

export OSG_LIBRARY_PATH=/usr/local/lib/osgPlugins-3.7.0
export IDL_PATH=/Applications/exelis/CAT_ENVI

# PostgreSQL
arr=($HOME/Library/Databases/PostgreSQL $HOME/Library/PostgreSQL)
for fn in $arr; do
  if [ -d $fn ]; then
    export PGDATA=$fn
    break
  fi
done

# Pipenv configuration
export PIPENV_IGNORE_VIRTUALENVS=1

# Run `starship timings` to check what's making things slow

export PATH="$HOME/.poetry/bin:$PATH"
export PATH=/Users/Daven/.meteor:$PATH

## DESK project management (disabled for now)

# Desk environment setup
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true

# Fuzzy project finder
pr() {
  # Go directly to project
  if [ "$#" -eq 1 ]; then
    desk . "$1"
    return
  fi
  vm=$(desk ls 2> /dev/null | grep --invert-match "{text}" | fzf | grep -o -e '^[A-Za-z0-9_-]\+')
  desk . "$vm"
}
alias prl='desk ls'

function wr() {
  # Writing projects only
  # Go directly to project
  if [ "$#" -eq 1 ]; then
    desk . "$1"
    return
  fi
  vm=$(desk ls 2> /dev/null | grep "{text}" | fzf | grep -o -e '^[A-Za-z0-9_-]\+')
  desk . "$vm"
}




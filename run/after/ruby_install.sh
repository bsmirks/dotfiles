#!/bin/sh
set -o errexit -o nounset

RUBY_VER="3.0.1"


if command -v rbenv >/dev/null; then
    eval "$(rbenv init -)"
else
    echo >&2 "Error: rbenv not installed"
    exit 1
fi

echo "Updating Ruby"
rbenv install "$RUBY_VER" --skip-existing
rbenv global "$RUBY_VER"

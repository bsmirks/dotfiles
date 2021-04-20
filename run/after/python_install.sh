#!/bin/sh
eval "$(pyenv init -)"
set -o errexit

PYTHON_VER="3.9.4"

pyenv install "$PYTHON_VER" --skip-existing
pyenv shell "$PYTHON_VER"
pyenv global "$PYTHON_VER"

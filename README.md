# Dotfiles

This repository contains all configurations for my Mac development setup.

## Installation

The commands below will clone this repository into a directory `.dotfiles` located
in your home directory and then executes the `setup` command from the `zero` submodule
included in this repository.

```bash
git clone --recursive https://github.com/bsmirks/dotfiles ~/.dotfiles
~/.dotfiles/zero/setup
```

### Zero setup

[Zero.sh](https://github.com/zero-sh/zero.sh) is the framework I use to automate
the installation and configuration of the packages, symlinks, and dotfiles
within this repository. This section serves to enumerate what happenes when
`zero setup` is run. This is what happens in order:

1. Check for system and application updates via softwareupdate, brew, brew cask,
and mas.

1. Install packages and applications via Homebrew Bundle.

1. Run any scripts under `run/before` in alphabetical order.

1. Apply system defaults described in `defaults.yml` via apply-user-defaults.

1. Symlink configuration files listed under symlinks to the home directory.

1. Run the remaining scripts under `run/after` in alphabetical order.

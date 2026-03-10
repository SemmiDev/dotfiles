# Dotfiles (Managed with GNU Stow)

My personal configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## How to Install
Run the following from this directory:

```bash
# Symlink all configs in the zsh/ folder to $HOME
stow zsh

# Symlink all configs in the git/ folder to $HOME
stow git
```

## Structure
- `zsh/`: Contains `.zshrc`, `.zprofile`, etc.
- `git/`: Contains `.gitconfig`, `.gitignore_global`.
- `nvim/`: Neovim configuration (`.config/nvim`).
- `config/`: Configuration for other tools.

## Prerequisites
- **GNU Stow**: `brew install stow`

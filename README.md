# Dotfiles (Managed with GNU Stow)

My personal configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Features
- **Zsh**: Oh My Zsh, Starship prompt, Zoxide, FZF.
- **Git**: Global aliases, rebase by default, and global ignore patterns.
- **Neovim**: Lua-based configuration with sane defaults.
- **Ghostty**: Modern terminal configuration.
- **Tmux**: Prefix `Ctrl-a`, mouse support, and vi-style navigation.
- **Cursor / Antigravity**: Standardized settings for AI-first editors.
- **macOS Defaults**: A script to optimize macOS for development.
- **Brewfile**: Track and install all Homebrew packages.

## How to Install
1. **Install GNU Stow**: `brew install stow`
2. **Clone this repo**: `git clone git@github.com:SemmiDev/dotfiles.git ~/dotfiles`
3. **Symlink configurations**:
   ```bash
   cd ~/dotfiles
   stow zsh
   stow git
   stow nvim
   stow starship
   stow ghostty
   stow tmux
   stow cursor
   stow antigravity
   ```
4. **Apply macOS Defaults**:
   ```bash
   chmod +x macos/defaults.sh
   ./macos/defaults.sh
   ```

## Structure
- `zsh/`: Zsh shell configuration.
- `git/`: Git global configuration.
- `nvim/`: Neovim configuration.
- `starship/`: Starship prompt configuration.
- `ghostty/`: Ghostty terminal configuration.
- `tmux/`: Tmux terminal multiplexer configuration.
- `cursor/`: Cursor code editor settings.
- `antigravity/`: Antigravity IDE settings.
- `macos/`: Script for macOS system defaults.
- `Brewfile`: List of Homebrew packages.

# Dotfiles

This repository contains my personal dotfiles for a custom development environment.

## Components

- Neovim: Custom configuration
- AeroSpace: Tiling window manager
- bat: Enhanced `cat` command
- Oh My Posh: Shell prompt customization
- tmux: Terminal multiplexer
- Alacritty: GPU-accelerated terminal emulator

## Setup

1. Clone this repository:
```bash
git clone https://github.com/MrMoneyInTheBank/dotfiles.git ~/.dotfiles
```
2. Create symlinks:
```bash
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/aerospace ~/.config/aerospace
ln -s ~/.dotfiles/bat ~/.config/bat
ln -s ~/.dotfiles/ohmyposh ~/.config/ohmyposh
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/alacritty ~/.config/alacritty
```
3. Install required software (commands may vary based on your OS)
4. Restart your terminal or reload configurations

## Customization

Feel free to modify configs to suit your preferences. Key files:

- `nvim/lua/*`: Neovim configuration
- `aerospace/aerospace.toml`: AeroSpace settings
- `ohmyposh/config.toml`: Oh My Posh theme
- `tmux/tmux.conf`: tmux configuration
- `alacritty/alacritty.toml`: Alacritty settings

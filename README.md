# My Dotfiles 🏠

Welcome to my personal dotfiles repository! This is where I keep all my configuration files organized and synced across machines. Nothing fancy, just a clean setup that works.

## What's Inside

Here's what you'll find in this repo:

- **aerospace** - Window management that doesn't suck
- **bat** - A better `cat` with syntax highlighting
- **configstore** - Various app configs and settings
- **gh** - GitHub CLI configuration
- **ghostty** - Terminal emulator config
- **git** - Git aliases, settings, and other git goodies
- **nvim** - Neovim setup (the good stuff)
- **ohmyposh** - Prompt theme and customization
- **tmux** - Terminal multiplexer config
- **zsh** - Shell configuration and aliases

## Setup

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage these dotfiles. It's simple and does exactly what you need without being complicated.

### First Time Setup

1. **Clone this repo** to your home directory:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install GNU Stow** if you don't have it:
   ```bash
   # macOS
   brew install stow
   
   # Ubuntu/Debian
   sudo apt install stow
   
   # Arch
   sudo pacman -S stow
   ```

3. **Stow the configs you want**:
   ```bash
   # Zsh files live in $HOME (e.g. ~/.zshrc, ~/.zprofile, ...)
   stow -t ~ zsh

   # Everything under ./config is meant to live under ~/.config/*
   # (note: `stow config` from the repo root would create/link into ~/config, NOT ~/.config)
   stow -t ~/.config config

   # If you only want one app from ./config, stow that sub-package from within ./config:
   (cd config && stow -t ~/.config nvim) # This works because `nvim` is a package relative to ./config

   ```

### How Stow Works

Stow creates symlinks in a **target directory** that mirror the directory structure inside the **package directory**.

- If you run `stow zsh` from `~/dotfiles`, the default target is `~` (your home directory), so it links things like `~/.zshrc` → `~/dotfiles/zsh/.zshrc`.
- For this repo’s `config/` package, you usually want the target to be `~/.config`, so you run `stow -t ~/.config config`. That links `~/.config/nvim` → `~/dotfiles/config/nvim`, `~/.config/ghostty` → `~/dotfiles/config/ghostty`, etc.

The structure here mirrors where files should go on your system:
- `zsh/` → `~/` (for `.zshrc`, `.zprofile`, etc.)
- `config/` → `~/.config/` (when you use `-t ~/.config`)

### Managing Changes

When you update a config file, the changes are automatically reflected in this repo since everything is symlinked. Just commit and push when you're happy with your changes.

```bash
# Make changes to your configs
# They're automatically "in" the repo via symlinks

# Commit your changes
git add .
git commit -m "update nvim config"
git push
```

### Setting Up a New Machine

1. Clone this repo
2. Install stow
3. Run:
   ```bash
   stow -t ~ zsh
   stow -t ~/.config config
   ```
4. You're done!

### Unstowing

If you need to remove the symlinks for any reason:

```bash
# Remove zsh symlinks from $HOME
stow -D -t ~ zsh

# Remove config symlinks from ~/.config
stow -D -t ~/.config config

# If you stowed a single app from within ./config:
(cd config && stow -D -t ~/.config nvim)
```

## Notes

- Back up your existing configs before stowing if you care about them
- Some configs might need tweaking for your specific setup
- Not everything will work out of the box - you might need to install the actual programs first
- Feel free to fork this and make it your own!

## Questions?

This setup works for me, but your mileage may vary. The beauty of dotfiles is that they're personal. Take what you like, change what you don't, and make it yours.

Happy configuring! 🛠️

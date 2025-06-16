export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

if [[ "$TERM_PROGRAM" != "Apple_Terminal" ]]; then
    eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"
    alias vim="nvim"
else
    unalias vim 2>/dev/null
fi

alias ":q"="exit"

eval "$(fzf --zsh)"

alias cat="bat"

alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"

eval "$(zoxide init zsh)"
alias cd="z"

# pnpm
export PNPM_HOME="/Users/anshumansingh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# C/C++ stuff
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

# Created by `pipx` on 2024-09-27 05:52:49
export PATH="$PATH:/Users/anshumansingh/.local/bin"

function pen() {
  if [ -d "$1/bin" ]; then
    source "$1/bin/activate"
  else
    echo "Could not find virtual environment."
  fi
}

## pomodoro stuff
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
        
alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

# Go stuff
export PATH=$PATH:$(go env GOPATH)/bin

# nonsense
alias temp="curl wttr.in"

# actual nonsense
alias chrome="open -a Google\ Chrome"
alias music="open -a Spotify"
alias whatsapp="open -a Whatsapp"
alias settings="open -a System\ Settings"
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/Users/anshumansingh/Library/pnpm:/Users/anshumansingh/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/Applications/Sublime Text.app/Contents/SharedSupport/bin:/Library/Frameworks/Python.framework/Versions/3.11/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Library/TeX/texbin:/usr/local/go/bin:/Users/anshumansingh/.cargo/bin:/Applications/Ghostty.app/Contents/MacOS:/Users/anshumansingh/.local/bin:/Users/anshumansingh/go/bin"; export PATH;
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# bun completions
[ -s "/Users/anshumansingh/.bun/_bun" ] && source "/Users/anshumansingh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias air='~/.air'

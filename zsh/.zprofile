
# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"


# Added by Toolbox App
export PATH="$PATH:/usr/local/bin"


# Created by `pipx` on 2024-09-27 05:52:49
export PATH="$PATH:/Users/anshumansingh/.local/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

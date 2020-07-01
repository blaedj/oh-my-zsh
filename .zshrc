# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blaed"

# Example aliases
alias ll="ls -lh"
alias lstime="ls -t"

if [ "$(uname -s)" = "Linux" ]
then
    alias fd="fdfind"
fi

# 'directory aliases'
# usage: `cd ~go`
hash -d go=$HOME/code/go/src/github.com

# may only be necessary/helpful on osx,
#try to fix zsh in emacs
export LANG='en_US.UTF-8'
export LC_ALL="en_US.UTF-8"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# To install the fast-highlighting plugin:
#   git clone https://github.com/zdharma/fast-syntax-highlighting.git \
#       ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
plugins=(git themes fast-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# grc (a log colorizer) has built-in support for some commands.
# the following automatically sets some aliases to colorize those commands
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

source $ZSH/oh-my-zsh.sh

# for bat: https://github.com/sharkdp/bat
export BAT_THEME="TwoDark"

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# add dotifiles bin/ folder to path
export PATH=$PATH:~/.dotfiles/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# add postgresql from postgres.app to path
#export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# Set the default editor to a custom command, that first tries to use emacsclient, but falls back to vim
export EDITOR="e"

export PATH="$PATH:$HOME/.rbenv/bin" # Add rbenv to PATH for scripting
eval "$(rbenv init -)"

export EMAIL="blaedj@gmail.com"
export NAME="Blaed Johnston"
#export EMAIL="smtp.gmail.com"

source ~/.secrets.sh

export PATH="$HOME/.yarn/bin:$PATH"

#export GOPATH="$HOME/code/go"
export PATH"=$PATH:$HOME/code/go/bin"
export PATH="$PATH:/usr/local/go/bin"

export DISABLE_SPRING=true

# turn on erlang/elixir shell history
export ERL_AFLAGS="-kernel shell_history enabled"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/blaed/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/blaed/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/blaed/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/blaed/google-cloud-sdk/completion.zsh.inc'; fi

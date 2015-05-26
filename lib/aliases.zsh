# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'
#alias please='sudo $(fc -ln -1)'
alias p='$(fc -ln -1)'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List direcory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

alias afind='ack-grep -il'

alias agh='sudo $(history -p \!\!)'

alias reload!='. ~/.zshrc'
alias tails="tail -n 75 -f"

alias ll="ls -lh"
alias gls="git ls"

alias rpsec="rspec"
alias ios="open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app"

alias server="spring rails server -b 0.0.0.0"
alias pt="papertrail"

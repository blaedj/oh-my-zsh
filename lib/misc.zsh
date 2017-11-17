## Load smart urls if available
for d in $fpath; do
	if [[ -e "$d/url-quote-magic" ]]; then
		autoload -U url-quote-magic
		zle -N self-insert url-quote-magic
	fi
done

## jobs
setopt long_list_jobs

## pager
export PAGER="less"
export LESS="-R"

# only define LC_CTYPE if undefined
if [[ -z "$LC_CTYPE" && -z "$LC_ALL" ]]; then
	export LC_CTYPE=${LANG%%:*} # pick the first entry from LANG
fi

# recognize comments
setopt interactivecomments

# rerun previous command. For when I try to Ctrl-p <enter> and forget to press Ctrl.
alias p='$(fc -ln -1)'

alias tails="tail -n 75 -f"
alias rpsec="rspec" # I can't spell rspec

alias frs="foreman run rails server -b 0.0.0.0"

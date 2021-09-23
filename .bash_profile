#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# My Aliases
alias ..="cd .."
alias cc="clear"
alias gs="git status"
alias gc="git checkout"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;14m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\]\e[1m\$(parse_git_branch)\[\033[00m\]\n\\$ \[$(tput sgr0)\]"

export BROWSER=chromium

# Fixes rvm on new tabs
cd .

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

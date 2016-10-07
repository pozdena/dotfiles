# local customizations before

if [ -f ~/.bashrc_local_before ]; then
  source ~/.bashrc_local_before
fi

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# aliases

alias l='ls -laFh'
alias ll='ls -lFh'

alias g='git'
alias s='git status'
alias a='git add -A'

# prompt

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\W$(parse_git_branch)\$ '

# fzf

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git

source ~/.bash/git-completion.bash
__git_complete g _git

# local customizations after 

if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after
fi


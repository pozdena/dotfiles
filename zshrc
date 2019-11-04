# local customizations before

if [ -f ~/.shell_local_before ]; then
  source ~/.shell_local_before
fi

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# aliases

alias l='ls -laFh'
alias cp='cp -i'
alias mv='mv -i'

#prompt

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
PROMPT='%1~${vcs_info_msg_0_}$ '

# local customizations after 

if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi


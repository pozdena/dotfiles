if [ -f ~/.bashrc_local_before ]; then
  source ~/.bashrc_local_before
fi

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# aliases

shopt -s expand_aliases

alias l='ls -laFh'
alias ll='ls -lFh'

alias s='git status'
alias a='git add -A'
alias c='git commit'
alias r='git reset'
alias rh='confirm "Are you sure you wish to reset all local changes?" && git reset --hard'

confirm () {
  # call with a prompt string or use a default
  read -r -p "${1:-Are you sure? [y/N]} " response
  case $response in
    [yY][eE][sS]|[yY]) 
      true
      ;;
    *)
      false
      ;;
  esac
}

# prompt

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W$(parse_git_branch)\$ '

if [ -f ~/.bashrc_local_before ]; then
    source ~/.bashrc_local_before
fi

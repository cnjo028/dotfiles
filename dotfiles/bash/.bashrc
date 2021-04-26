# Add ssh-identity
export SSH_AUTH_SOCK=~/.ssh/ssh-agent.$HOSTNAME.sock
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
  ssh-add
fi

export GPG_TTY=$(tty)

up() { local p= i=${1:-1}; while (( i-- )); do p+=../; done; cd "$p$2"; }



# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


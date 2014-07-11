CURRENT_USER=`whoami`

if [[ $CURRENT_USER == 'root' ]]; then
  USER_SIGN="%F{1}☠"
else
  USER_SIGN="%F{2}∴"
fi

PROMPT="%F{12}%~%  ${USER_SIGN}%f "

export PATH="$HOME/.bin:$HOME/.rbenv/bin:$PATH"

# Load rbenv if available in path
if which rbenv &>/dev/null ; then
  eval "$(rbenv init --no-rehash -)"
fi

# use vim as an default editor
export EDITOR=vim

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases


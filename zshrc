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

# Enable colored output for commands like ls...
export CLICOLOR=1

## History
if [ -z $HISTFILE ]; then
  HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases


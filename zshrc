CURRENT_USER=`whoami`

if [[ $CURRENT_USER == 'root' ]]; then
  USER_SIGN="%F{1}☠"
else
  USER_SIGN="%F{2}∴"
fi

PROMPT="%F{12}%~%  ${USER_SIGN}%f "

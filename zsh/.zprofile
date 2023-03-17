#  ▓▓▓▓▓▓▓▓▓▓ 
# ░▓ Author ▓ Abdullah <https://abdullah.today/> 
# ░▓▓▓▓▓▓▓▓▓▓ 
# ░░░░░░░░░░ 


# Start keychain for ssh keys

eval $(keychain --eval --quiet id_ed25519)

# Start X at login    
    

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
  logout
elif [[ $(tty) != /dev/tty1 ]]; then
  sudo loadkeys $HOME/.loadkeysrc
  tmux has-session -t $USER || tmux new-session -t $USER && tmux attach-session -t $USER
fi

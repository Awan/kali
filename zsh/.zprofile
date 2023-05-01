#  ▓▓▓▓▓▓▓▓▓▓ 
# ░▓ Author ▓ Abdullah Khabir <https://abdullah.solutions> 
# ░▓▓▓▓▓▓▓▓▓▓ 
# ░░░░░░░░░░ 


# Start keychain for ssh keys

# eval $(keychain --eval --quiet id_ed25519)

# Start X at login    
    

# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#   startx
#   logout
# elif [[ $(tty) != /dev/tty1 ]]; then
#   sudo loadkeys $HOME/.loadkeysrc
#   tmux has-session -t $USER || tmux new-session -t $USER && tmux attach-session -t $USER
# fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" >/dev/null 2>&1
    ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
fi

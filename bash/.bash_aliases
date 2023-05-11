# ~/.bash_aliases: by lf
echo ".bash_aliases execution start.."
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias editor
alias v="vim"
alias n="nano"
alias emacs="emacsclient -c -a 'emacs'"

# alias conda
alias c="conda"
alias ca="conda activate"

alias j="jupyter-notebook"

alias up="$HOME/bin/update.sh"

alias es="cd $HOME/escriptorium; docker compose pull; docker compose up -d; open http://localhost:8080/"

alias kamiapp="conda activate kamiapp_env; python3 $HOME/kami-app/app.py & open http://127.0.0.1:7860"

# alias git

alias g="git"
alias gst="git status"
alias gbr="git branch"
alias gci="git commit"
alias gps="git push"
alias gpl="git pull"

echo ".bash_aliases execution stops.."


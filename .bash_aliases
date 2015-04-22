if [ -f ~/.zipcar_aliases ]; then
  . .zipcar_aliases
fi

# Editing
alias editpr='vi ~/.bash_profile'
alias editrc='vi ~/.bashrc'
alias edital='vi ~/.bash_aliases'
alias edittm='vi ~/.tmux.conf'
alias editvi='vi ~/.vimrc'
alias src='. ~/.bash_profile'

# Navigation
alias up='cd ..'

# Git
alias gf='git fetch'
alias gp='git pull'
alias gst='git status'
alias gl='git log'
alias gr='git reset'
alias ga='git add'
alias gg='git grep'
alias gc='git commit -m'

# TMUX
alias tls='tmux ls'
alias ta='tmux attach -t $1'
alias tn='tmux new -s $1'

# Rails
alias tc='bundle exec rails c test'
alias rsv='bundle exec rails s'
alias bi='bundle install'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.zipcar_profile ];
then
  . ~/.zipcar_profile
fi

if [ "$PS1" ]; then

    # fancy prompt                                                                                                                                              
    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    LIME_YELLOW=$(tput setaf 190)
    YELLOW=$(tput setaf 3)
    POWDER_BLUE=$(tput setaf 153)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)
    BRIGHT=$(tput bold)
    NORMAL=$(tput sgr0)
    BLINK=$(tput blink)
    REVERSE=$(tput smso)
    UNDERLINE=$(tput smul)

    PS1="\[${CYAN}\]\w \[${NORMAL}\]$ "
fi

# show what git branch i am currently on
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[${BLUE}\][\@] \[${MAGENTA}\]\u@\h\[${CYAN}\] \W \[${RED}\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "

if [ -f ~/.bashrc ];
then
  . ~/.bashrc
fi

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias clear='clear;archey'
alias nano='nano -c'
archey
echo
#PS1="\[\033[1;35m\][ \h ] \[\033[1;32m\]"
PS1="\[\033[1;37m\]\342\224\214\342\224\200 \[\033[1;35m\]\h \[\033[0;37m\] [\[\033[1;36m\] \W \[\033[0;37m\]] \n\342\224\224\342\224\200\342\224\200\342\224\200 \[\033[0;32m\]>>> "
~/.quote

complete -cf sudo

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

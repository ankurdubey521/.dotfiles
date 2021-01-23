# Oh My Zsh
export ZSH=/home/ankurdubey/.oh-my-zsh
ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"
plugins=(git zsh-autosuggestions sudo npm zsh-syntax-highlighting bgnotify)
source $ZSH/oh-my-zsh.sh

# User Defined Env
export EDITOR="vim"
export SAM_CLI_TELEMETRY=0

# Alias
alias ec2ssh='ssh -i ~/.ssh/ankurdubey521-mumbai.pem -l ubuntu'
alias git-graph='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
# Yay
alias yayi='yay --sudoloop -S'
alias yayr='yay --sudoloop -Rs'
alias yayin='yay --sudoloop --noconfirm -S'
alias yayup='yay --sudoloop -Syyuu'
alias yayupn='yay --sudoloop --noconfirm -Syyuu'
alias yayscn='yay --sudoloop --noconfirm -Sc'
alias pacrmundep='sudo pacman -Rns $(pacman -Qqtd)'
# Colored Variants of Commands
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias lsa='ls --color=auto -sail'
# Colored man using less
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
# Colored less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'	       # reset underline
# Colored cat 
alias cat='bat'
alias catn='bat --style="plain"'

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh


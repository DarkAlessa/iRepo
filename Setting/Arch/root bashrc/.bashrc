#
# ~/.bashrc
#

# Gir Prompt
# source ~/.git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
#PS1='[\u@\h \W]\$ '

_ps1_symbol='\[\e[38;2;0;255;0;48;2;70;70;70m\] \$ \[\e[0m\]\[\e[38;2;70;70;70m\]\356\202\260\[\e[0m\]'

[[ $(declare -p PS1 2>/dev/null | cut -c 1-11) = 'declare -x ' ]] || \
  export PS1='\[\e]0;\w\a\]\[\e[38;2;40;40;40;48;2;255;0;0m\] \u\[\e[38;2;255;255;255;48;2;255;0;0m\] \357\234\267 \[\e[0m\]\[\e[38;2;40;40;40;48;2;255;0;0m\]\h \[\e[0m\]\[\e[38;2;255;0;0;48;2;255;150;50m\]\356\202\260\[\e[0m\]\[\e[38;2;40;40;40;48;2;255;150;50m\] \W \[\e[0m\]\[\e[38;2;255;150;50;48;2;70;70;70m\]\356\202\260\[\e[0m\]$(__git_ps1 "\[\e[38;2;0;255;0;48;2;70;70;70m\] %s \356\202\240\[\e[0m\]\[\e[38;2;40;40;40;48;2;70;70;70m\] \356\202\261\[\e[0m\]")'"${_ps1_symbol}"' '
unset _ps1_symbol

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# .bashrc

# export PS1="[\[$(tput bold)\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;8m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;12m\]\W\[$(tput sgr0)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;9m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PS1="\[\033[1;37m\]\u\[\033[0m\]:\[\033[38;5;12m\]\W\[\033[0m\] \[\033[38;5;9m\]\$ \[\033[0m\]"


# # Source global definitions
# if [ -f /etc/bashrc ]; then
# 	. /etc/bashrc
# fi
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

unset rc
export PATH=$PATH:~/Scripts/

EDITOR=nvim
export MANPAGER='nvim +Man!'

# FLUTTER
export PATH="~/tools_sdks/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# bun
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=~/.npm-global/bin:$PATH

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ls="ls --color=auto"
alias ll="ls -alh"
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim"
alias bashrc="nvim ~/.bashrc"
alias sbsh="source ~/.bashrc"
alias jp="cd ~/Programming"
alias edit="nvim \`fzf\`"

bind 'set completion-ignore-case on'

set -o vi

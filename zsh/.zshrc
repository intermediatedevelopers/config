export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="steeef"

plugins=(git zsh-z zsh-syntax-highlighting)

alias vi="nvim"

source $ZSH/oh-my-zsh.sh

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/sharif-dotfiles/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

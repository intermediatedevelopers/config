# dotfiles

## This readme includes instructions to set up all prerequisites

Prerequisites: 

- neovim (latest)
- vim-plug
- zsh
- oh-my-zsh

# From a fresh Ubuntu Install

## Update Your Distro

`sudo apt-get upgrade`

`sudo apt-get update`

`sudo apt upgrade`

`sudo apt-get update`

## Install zsh

`sudo apt-get install zsh`

## Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- seleect 'Yes' at the prompt to set it as your default shell

## Install Homebrew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Homebrew Follow-up 

`vi ~/.zshrc`

- add the following lines somewhere in the file to add Homebrew to your path

`eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)`

- source the config 

`source ~/.zshrc`

- test brew installation

`brew --version`

- install build tools

`sudo apt-get install build-essential`

`brew install gcc`



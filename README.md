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

```
# replace <user> with your linux username

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/<user>/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
```

- source the config 

`source ~/.zshrc`

- test brew installation

`brew --version`

- install build tools

`sudo apt-get install build-essential`

`brew install gcc`


## Confirm Docker is working

`docker run hello-world`

- if on WSL, you may need to configure your Docker Desktop settings

    - https://docs.docker.com/docker-for-windows/wsl/

    - Settings > Resources > WSL Integration > Select your distro > Apply & Restart
  
  - now if you try running the docker command again, you will get a permission denied error
  
  -to fix the error, run the following commands
  
  `sudo groupadd docker`
  
  `sudo usermod -aG docker ${USER}`
  
  - restart terminal
  
  `su -s ${USER}` (you will probably get an authentication failure -- I still run the command anyway)
  
  - now you should be able to run
  
  `docker run hello-world`

## Install neovim (latest)

- once you have confirmed you can run Docker, run the following to install neovim

`brew install neovim --HEAD`

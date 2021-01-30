# dotfiles

## This readme includes instructions to set up all prerequisites

## If you just want the dotfiles, jump to [Install GNU Stow](#install-gnu-stow)

Prerequisites: 

- neovim (latest)
- vim-plug
- zsh
- oh-my-zsh

# From a fresh Ubuntu Install

## Update Your Distro

`sudo apt-get update`

`sudo apt-get upgrade`

`sudo apt-get update`

`sudo apt upgrade`

## Install Node.js

`sudo apt-get install nodejs`

## Install ESLint

`npm install -g eslint`

- keep in mind that you will need to run  `npm init` as well as `eslint --init` in the root directory of your project for ESLint to work

    - TODO:  figure out a solution for a global config

- May also need a `jsconfig.json` file located in project root: [read more](https://code.visualstudio.com/docs/languages/jsconfig)

    - TODO: figure out a solution for global config
 
 > Note: to see the ESLint warnings/errors, you must place your cursor over the underlined variable/expression
 
 >      - then the error will show in the preview window
 
 >      - simply putting your cursor on the line is not enough

## Install zsh

`sudo apt-get install zsh`

## Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- seleect 'Yes' at the prompt to set it as your default shell


## Confirm Docker is working

`docker run hello-world`

- if on WSL, you may need to configure your Docker Desktop settings

    - https://docs.docker.com/docker-for-windows/wsl/

    - Settings > Resources > WSL Integration > Select your distro > Apply & Restart
  
  - now if you try running the docker command again, you will get a permission denied error
  
  - to fix the error, run the following commands
  
  `sudo groupadd docker`
  
  `sudo usermod -aG docker ${USER}`
  
  - restart terminal
  
  `su -s ${USER}` (you will probably get an authentication failure -- I still run the command anyway)
  
  - now you should be able to run
  
  `docker run hello-world`
  
  > Note: after you run the Docker commands and restart your terminal, sometimes it sets your shell back to /bin/bash
  
  - to set terminal back to zsh:
  
  `chsh -s $(which zsh)`
  
  - then restart terminal again


## Install Neovim (On WSL, this is the most straightforward)

```
sudo add-apt-repository ppa:neovim-ppa/unstable 
sudo apt-get update
sudo apt-get install neovim
```


## Install Homebrew (if having issues with the step above)

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Homebrew Follow-up 

`vi ~/.profile`

- add the following lines somewhere in the file to add Homebrew to your path

```
# in .zshrc
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

`brew install node`


## Install Neovim (latest) with Homebrew

- once you have confirmed you can run Docker, run the following to install neovim

`brew install neovim --HEAD`

- if you have issues installing with brew, you can try [Building Neovim from source](https://github.com/neovim/neovim/wiki/Building-Neovim)

- if your installation is hanging on `cmake --build .`, check your task manager

- if your CPU is pegged, you may have better luck building from source 

## Building Neovim from Source (if the above step failed)

- install prerequisites

`sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip`

- clone the repo

`git clone https://github.com/neovim/neovim.git`

`cd neovim`

- build and install

```
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

- you may need to set the vim runtimes
```
VIMRUNTIME="/usr/local/share/nvim/runtime"
```
> Note that this line is not included in the .zshrc for this dotfiles repo. If you are building neovim from source, copy this path down somewhere. You will need to add it to the .zshrc after syncing the dotfiles from this repo

- source the config 

`source ~/.zshrc`


## Confirm Neovim Installation

`nvim --version`

## Install GNU Stow

`sudo apt-get install stow`

## Get dotfiles

- clone this repo

`cd dotfiles`

- delete the readme

`rm README.md`

- delete your .zshrc

`rm ~/.zshrc`

- apply symlinks

`stow *`

## Install Plugins

`cd ~`

- vim-plug

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
 ```

- zsh-z

`git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z`

- zsh-syntax-highlighting

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Source Configs

`source ~/.zshrc`

- you should see your theme change, and command syntax highlighting should work

`vi ~/.config/nvim/init.vim`

- install nvim plugins

`:PlugInstall`

- source the vimrc

`so %`

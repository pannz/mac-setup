#!/bin/bash


# Ackownledge
# created and maintained by wojiaopanzhifan@gmail.com for personal usage
# All COPYRIGHT reserved 
# v0.0.1
# prepare.sh


# Install Surge for mac and config crown with enhanced mode

# 1. Install Homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Config oh-my-zsh https://ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Config xxf.zsh-theme, one pretty nice theme.
curl 'https://gist.githubusercontent.com/xfanwu/18fd7c24360c68bab884/raw/f09340ac2b0ca790b6059695de0873da8ca0c5e5/xxf.zsh-theme' > ~/.oh-my-zsh/themes/xxf.zsh-theme
sed -i -e 's/ZSH_THEME=.*/ZSH_THEME="xxf"/' ~/.zshrc
# install zsh-completions via brew will prompt some error, haven't google it, so here clone directly.
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
# need additional add following in ~/.zshrc plugins, will include in dotfiles/.zshrc
# plugins=(… zsh-completions)
# autoload -U compinit && compinit

# Todo, add more plugins to zsh


# 3. Install packages
brew install git vim wget go docker-compose nvm ruby python autojump
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc
# nvm setup
mkdir ~/.nvm
echo '# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc
# use nvm to install node instead of brew
nvm install node # "node" is an alias for the latest version

# git initial config
git config --global user.name "zhifan"
git config --global user.email "wojiaopanzhifan@gmail.com"

# 4. Install softwares (free favoured & some purchased)
# zoom & google-earch-pro need user password input
brew install --cask iterm2 visual-studio-code appavtive authy microsoft-edge mweb github slack maccy iina notion neteasemusic docker postman wechat jietu sketch rectangle zoom youdaodict yuque google-backup-and-sync google-earth-pro telegram

# Todo, add tools that not in brew cask
# Flicker List


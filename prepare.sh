#!/usr/bin/env bash


# Ackownledge
# created and maintained by wojiaopanzhifan@gmail.com for personal usage
# All COPYRIGHT reserved 
# v0.0.1
# prepare.sh


# Install Surge for mac and config crown with enhanced mode

# 1. Config oh-my-zsh https://ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 2. Install Homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc

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
brew install git vim wget go docker-compose ruby fnm
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc
# use fnm instead of nvm and setup
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc

# git initial config
git config --global user.name "zhifan"
git config --global user.email "wojiaopanzhifan@gmail.com"

# 4. Install softwares (free favoured & some purchased)
brew install --cask iterm2 visual-studio-code apptivate authy microsoft-edge mweb slack maccy notion neteasemusic docker wechat jietu rectangle telegram

# Todo, add tools that not in brew cask
# Flicker List


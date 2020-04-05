#!/usr/bin/env zsh

# Install pure to change terminal theme
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# zshrcに保管機能、プロンプト有効化を書き込み
{
echo "# 文字コードUTF-8に設定"
echo "export LANG=ja_JP.UTF-8"
echo ""
echo "zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'"
echo ""
echo "# history"
echo "HISTFILE=$HOME/.zsh_history"
echo "HISTSIZE=1000"
echo "SAVEHIST=1000"
echo "setopt extended_history"
echo ""
echo "zstyle ':completion:*:default' menu select=1"
echo ""
echo "fpath+=$HOME/.zsh/pure"
echo ""
echo "# プロンプト、補完有効"
echo "autoload -U promptinit compinit"
echo "promptinit"
echo "compinit"
echo ""
echo "prompt pure" } > "$HOME/.zshrc"

# Clone prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

# Change the prompt theme to pure
sed -i '' s/\'sorin\'/\'pure\'/ "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc"

# Enable syntax highligting and auto suggestions.
sed -i '' "s/'prompt'/'syntax-highlighting' 'autosuggestions' 'prompt'/" "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc"

# Reload
exec $SHELL -l

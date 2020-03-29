# Catalina以降、zshがdefaultなので、コメントアウトしておく。
# Update /etc/shell file to include the zsh path 
# sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells" 

# Change login shell
# chsh -s /usr/local/bin/zsh

# Restart shell
# exec $SHELL -l

# Clone prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB

# Change the prompt theme to pure
sed -i '' s/\'sorin\'/\'pure\'/ "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc"

# Enable syntax highligting and auto suggestions.
sed -i '' "s/'prompt'/'syntax-highlighting' 'autosuggestions' 'prompt'/" "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc"

# Reload
source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zpreztorc"

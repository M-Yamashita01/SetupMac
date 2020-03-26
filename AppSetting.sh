# Install Homebrew
# パスワードを入力が要求されたら、Macログイン時のパスワードを入力
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install mas-cli
brew install mas

# Install Slack
mas install 803453959

# Install Evernote
mas install 406056744

# Install Google Chrome
brew cask install google-chrome

# Install Docker
brew cask install docker

# Install VSCode
brew cask install visual-studio-code
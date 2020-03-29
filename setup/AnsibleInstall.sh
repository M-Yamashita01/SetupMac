# Install Homebrew
# パスワードを入力が要求されたら、Macログイン時のパスワードを入力
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update brew
brew update

# Install ansible
brew install ansible
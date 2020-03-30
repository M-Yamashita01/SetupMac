#!/bin/zsh

# define helpers
source_dir=~/.osx-bootstrap

# configuring osx
if [[ ! -f ~/.osx-bootstrap/.osx-bootstrap ]]; then
    echo ''
    echo 'Configuring OSX...'
    
    # ブート時のサウンド無効化
    sudo nvram SystemAudioVolume=%80

    # スクロール時のみスクロールバー表示
    defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

    # 拡張子を全て表示
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true

    # ウィンドウアニメーションを無効化
    defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

    # Dock
    # Dockのサイズを変更
    defaults -currentHost write com.apple.dock titlesize 25

    # Trackpad 
    # タップでクリック
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

    # 副ボタンのクリック
    defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
    defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

    # OTHER
    # バッテリーのパーセント表示
    defaults write com.apple.menuextra.battery ShowPercent -string "YES"

    #  killall
    for app in Finder Dock Mail Safari iTunes SystemUIServer
    do
        killall "$app" > /dev/null 2>&1
    done

    echo 'Finished.'
else
    echo 'No Settings.'
fi
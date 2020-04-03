# SetupMac

## Overview
これは、macOSにソフトウェアのインストールと、zshのカスタマイズを行うセットアップツールです。
This is the setup tool that installs below software and customizes zsh for macOS.

## Description
このツールは以下ソフトウェアをインストールします。
- インストール対象ソフトウェア
  - ansible
  - docker
  - evernote
  - git
  - google-chrome
  - google-japanese-ime
  - homebrew
  - npm
  - slack
  - visual-studio-code

また、このツールはzshに対し以下カスタマイズを行います。
- カスタマイズ内容
  - ターミナルテーマをpureへ変更
  - 文字コードをUTF-8へ変更
  - ターミナル上の文字を大文字小文字関係なく補完
  - HISTFILEをホーム以下の.zsh_historyにセットし、HISTSIZE、SAVEHISTを1000件にセット
  - メニュー補完

最後にzshを再起動します。

This tool installs below software.
- Software
  - ansible
  - docker
  - evernote
  - git
  - google-chrome
  - google-japanese-ime
  - homebrew
  - npm
  - slack
  - visual-studio-code

And、This tool performs the following customizations of zsh.
- カスタマイズ内容
  - It changes terminal theme to pure.
  - It changes MIME to UTF-8.
  - It completes the characters on the terminal regardless of case.
  - It sets HISTFILE as .zsh_history.
  - It sets HISTSIZE and SAVEHIST as 1000 record.
  - It configures zsh completion to launch a menu

## Requirement
macOS Catalina

## Usage
ターミナルを開き、以下コマンドを入力します。
Open terminal. and input below commands.
```
zsh SetupStart.sh
```

## License
このツールはMITライセンスです。
This project is licensed under the MIT License.
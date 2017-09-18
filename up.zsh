#!/bin/zsh
source ~/.zshrc

# Fix unhelpful prompts
if ! [ -d ~/.ssh ]; then
  mkdir ~/.ssh
fi

# Force chruby to evaluate
if ! grep 2.3.4 <(chruby); then
  ruby-install ruby 2.3.4
fi

if ! grep "Developer" <(git config --get user.name); then
  git config --global user.name "Developer"
fi

if ! which cf; then
  brew install cloudfoundry/tap/cf-cli
fi

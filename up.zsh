#!/bin/zsh
source ~/.zshrc

# Fix unhelpful prompts
if ! [ -d ~/.ssh ]; then
  mkdir ~/.ssh
fi

if ! grep "Developer" <(git config --get user.name); then
  git config --global user.name "Developer"
fi

if ! which cf; then
  brew install cloudfoundry/tap/cf-cli
fi

echo "Be sure to change the password from 'youreallyneedtochangemenow'"

#!/bin/bash
set -euEo pipefail

# ZSH plugin setup
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
grep -q "zsh-syntax-highlighting" ~/.zshrc || sed -i '/^plugins=/ s/)/ zsh-syntax-highlighting)/' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
grep -q "zsh-autosuggestions" ~/.zshrc || sed -i '/^plugins=/ s/)/ zsh-autosuggestions)/' ~/.zshrc

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
grep -q "zsh-history-substring-search" ~/.zshrc || sed -i '/^plugins=/ s/)/ zsh-history-substring-search)/' ~/.zshrc
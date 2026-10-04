/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update;

brew install \
    tig \
    chezmoi \
    fzf \
    eza bat ripgrep fd git-delta dust bottom hyperfine zoxide \
    bitwarden-cli

brew install --cask \
    visual-studio-code \
    karabiner-elements \
    microsoft-edge  \
    kde-connect \
    bettertouchtool \
    raycast \
    snipaste

## Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Font
```zsh
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
```

## Git clone
```zsh
brew install git
git clone git@github.com:waterlua/dotfiles.git ~/Code/dotfiles
ln -s ~/Code/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/Code/dotfiles/git/gitignore ~/.gitignore
```

## Zsh
```zsh
ln -s ~/Code/dotfiles/zsh/zprofile ~/.zprofile
```

## Wezterm
```zsh
brew install --cask wezterm`
ln -s ~/Code/dotfiles/wezterm ~/.config/wezterm
```

## Neovim
```zsh
brew install neovim npm
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
ln -s ~/Code/dotfiles/nvim ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Hammerspoon
```zsh
brew install --cask hammerspoon`
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
ln -s ~/Code/dotfiles/hammerspoon ~/.config/hammerspoon
```


#!/bin/zsh
 
# setup script
# based on a few different scripts

# install xcode
xcode-select --install

# install brew if missing
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#add brew tap
brew tap homebrew/cask-fonts

# Update brew recipes
brew update

# brew recipes
BREW_PACKAGES=(
	git
	act
	fzf
	gh
	htop
	jless
	jq
	mas
	mist-cli
	powerlevel10k
	pyenv
	tailscale
	tmux
	tree
	yt-dlp
	zsh
	russellbanks/tap/komac
)

brew install ${BREW_PACKAGES[@]}

# brew casks
BREW_CASKS=(
	1password
	1password-cli
	apparency
	audacity
    alfred
    discord
    firefox
    font-jetbrains-mono
    github
	google-chrome
	google-drive
    hiddenbar
    iterm2
    itsycal
    lulu
    kap
    keybase
	obsidian
	orbstack
	powershell
	pycharm-ce
	raspberry-pi-imager
	slack
	ultimaker-cura
	utm
	visual-studio-code
    vlc
    vmware-fusion
)

brew install --cask ${BREW_CASKS[@]}

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

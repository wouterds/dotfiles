#!/usr/bin/env bash

# Copy dotfiles
cd "$(dirname "${BASH_SOURCE}")";
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
	--exclude "init/" --exclude "README.md" -avh --no-perms . ~;
source ~/.bash_profile;

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Brew versions
brew tap homebrew/versions

# Basics
brew install bash
brew install zsh
brew install zsh-completions

# Install more recent versions of some OS X tools
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install GNU core utilities (those that come with macOS are outdated)
brew install coreutils
brew install findutils

# Some other def tools that are handy
brew install ruby
brew install curl
brew install wget --with-iri
brew install htop
brew install git
brew install ssh-copy-id
brew install autoconf
brew install node
brew install python
brew install python3
brew install josegonzalez/php/php71
brew install josegonzalez/php/composer
brew install docker-compose
brew install mas
brew install cask

# Caskroom versions
brew tap caskroom/versions

# Install some apps
brew cask install dropbox --appdir=/Applications
brew cask install google-drive --appdir=/Applications
brew cask install google-chrome --appdir=/Applications
brew cask install firefox --appdir=/Applications
brew cask install keepingyouawake --appdir=/Applications
brew cask install docker --appdir=/Applications
brew cask install atom --appdir=/Applications
brew cask install phpstorm --appdir=/Applications
brew cask install spotify --appdir=/Applications
brew cask install spotify-notifications --appdir=/Applications
brew cask install skype --appdir=/Applications
brew cask install messenger --appdir=/Applications
brew cask install whatsapp --appdir=/Applications
brew cask install transmission --appdir=/Applications
brew cask install spectacle --appdir=/Applications
brew cask install viscosity --appdir=/Applications
brew cask install sequel-pro-nightly --appdir=/Applications
brew cask install smcfancontrol --appdir=/Applications
brew cask install sketch --appdir=/Applications
brew cask install kibako --appdir=/Applications
brew cask install alfred2 --appdir=/Applications
brew cask install knock --appdir=/Applications
brew cask install application-loader --appdir=/Applications
brew cask install rescuetime --appdir=/Applications
brew cask install vlc --appdir=/Applications
brew cask install bartender --appdir=/Applications

# Fonts
brew cask install caskroom/fonts/font-open-sans
brew cask install caskroom/fonts/font-roboto
brew cask install caskroom/fonts/font-hack

# Install Mac App Store apps
mas install 443987910 # 1Password
mas install 497799835 # Xcode
mas install 425424353 # The Unarchiver
mas install 1020812363 # CopyClip 2
mas install 443987910 # 1Password
mas install 411643860 # DaisyDisk
mas install 1054607607 # Helium
mas install 409789998 # Twitter
mas install 803453959 # Slack
mas install 457622435 # Yoink
mas install 507257563 # Sip
mas install 880001334 # Reeder
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers

# Cleanup
brew cleanup

# Cat with syntax highlighting
easy_install Pygments
echo '' >> ~/.aliases
echo '# Cat with syntax highlighting' >> ~/.aliases
echo 'alias cat="pygmentize -g"' >> ~/.aliases

# The fuck
brew install thefuck
echo '' >> ~/.aliases
echo '# Fuck alias' >> ~/.aliases
echo 'eval "$(thefuck --alias)"' >> ~/.aliases

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# macOS preferences                                                           #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "Wouter's MacBook Pro"
sudo scutil --set HostName "macbook-pro-wouterds"
sudo scutil --set LocalHostName "macbook-pro-wouterds"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "macbook-pro-wouterds"

# Menu bar: show remaining battery time as percentage
defaults write com.apple.menuextra.battery ShowPercent -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove dock delay when hiding
defaults write com.apple.Dock autohide-delay -float 0

# Disable local Time Machine snapshots
sudo tmutil disablelocal

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Stop iTunes from responding to the keyboard media keys
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Enable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool false

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Brussels" > /dev/null

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# Remove the sleep image file to save disk space
sudo rm /private/var/vm/sleepimage
# Create a zero-byte file instead…
sudo touch /private/var/vm/sleepimage
# …and make sure it can’t be rewritten
sudo chflags uchg /private/var/vm/sleepimage

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

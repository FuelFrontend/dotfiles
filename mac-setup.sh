
##Utility functions

#Custom Utility functions
custom_echo() {
  local fmt="$1"; shift

  printf "\n$fmt\n" "$@"
}

#Welcome message
custom_echo "Your OS X development machine is just a few steps away"
custom_echo "Author: https://github.com/gokulkrish"

# Setting up git config & .gitignore
custom_echo "==> Setting Git Config <=="
cp gitignore ~/.gitignore_global
git config --global core.excludesfile '~/.gitignore_global'

#Get user's git email id
custom_echo "Enter Your Github Email:"
read emailId
git config --global user.email "$emailId"

#Get user's git username
custom_echo "Enter Your Github Username:"
read userName
git config --global user.name "$userName"

#Install Oh My Zsh
custom_echo "==> Installating Oh My Zsh <== \n"
curl -L http://install.ohmyz.sh | sh

#Copy zshrc config
custom_echo  "==> Copying shortcuts <=="
custom_echo  "==> Check your .zshrc file for more details <=="
cp zshrc ~/.zshrc

#Install Homebrew
custom_echo  "==> Installing Homebrew <== \n"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install node
custom_echo  "==> Installing NodeJS <=="
brew install node

#Set up npm for global install without sudo
custom_echo  "==> Set up npm for global install without sudo <=="
cp npmrc ~/.npmrc
mkdir "${HOME}/.npm-packages"

#Install commonly used npm and generator-smacss etc.
custom_echo "==> Installing commonly used npm modules & generators <== \n"
npm install -g gulp grunt-cli jshint yo generator-mocha@0.1.0 generator-smacss

# Installation

1. Set Up WSL2 with Ubuntu https://docs.microsoft.com/en-us/windows/wsl/install-win10
2. Install Windows Terminal from the Windows Store
3. Copy contents of settings.json into the settings file for the windows terminal
4. Install ZSH and Oh-My-ZSH
```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
5. Install Fira Code Font
```
# You might need to update your sudo package lists
sudo add-apt-repository universe
sudo apt-get update

sudo apt-get install fonts-firacode
code ~/.zshrc # to customize it
```
6. Copy the .zshrc file contents into your .zshrc
7. Check this out for setting up docker and nvm and node https://fireship.io/lessons/windows-10-for-web-dev/
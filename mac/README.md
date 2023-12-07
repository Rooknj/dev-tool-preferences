# Installation

## Steps to bootstrap a new Mac
0. Set up Mac Settings
    - Turn on Night Shift
    - Set up TouchID
    - Set up Wallpaper [./mac/pictures](./mac/pictures)
    - Turn on Dark Mode Appearance
    - Log into Apple iCloud account
    - Update to latest software

1. Install required apps

    - Iterm2: https://iterm2.com/
    - VSCode: https://code.visualstudio.com/
        - Sync with rooknj@gmail.com github account 
        - Install code command in PATH
    - IntelliJ: https://www.jetbrains.com/idea/download/?section=mac
        - Sync with rooknj@gmail.com account 
    - Github Desktop: https://desktop.github.com/

2. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew. (Might already be done)

```zsh
xcode-select --install
```


3. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:Rooknj/dev-tool-preferences.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/Rooknj/dev-tool-preferences.git ~/.dotfiles
```

4. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/mac/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles/mac && brew bundle
```

5. Install oh-my-zsh and Spaceship Prompt
    1. Install oh-my-zsh https://github.com/robbyrussell/oh-my-zsh
        - Yes you need to install it even on OSX Catalina where zsh is default
        - It gives you the different colors for directories and files
    2. Install Spaceship Prompt https://denysdovhan.com/spaceship-prompt/#npm
        ```zsh
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
        ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
        ```

6. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.
# Note, you can't symlink the hosts file. It just doesn't work
# sudo ln -s ~/.dotfiles/mac/etc/hosts /etc/hosts

rm ~/.zshrc
ln -s ~/.dotfiles/mac/.spaceshiprc.zsh ~/.spaceshiprc.zsh
ln -s ~/.dotfiles/mac/.zshrc ~/.zshrc
ln -s ~/.dotfiles/mac/.npmrc ~/.npmrc
# ln -s ~/.dotfiles/mac/.gitconfig ~/.gitconfig
```

7. Intuit Specific Setup

Set up Zoom Background
- Zoom Backgrounds[./mac/pictures](./mac/pictures)


Set up SSH Keys: Github
```zsh
ssh-keygen -t rsa
chmod 600 ~/.ssh/id_rsa
if grep -q ENCRYPT ~/.ssh/id_rsa*; then echo "ERROR: Key is encrypted"; else echo "Key is good."; fi
```

Set up SSH Keys: Devportal
```zsh
ssh-keygen -t rsa
chmod 600 ~/.ssh/id_rsa
if grep -q ENCRYPT ~/.ssh/id_rsa*; then echo "ERROR: Key is encrypted"; else echo "Key is good."; fi
```

Set up Plugin CLI
```zsh
npx @appfabric/webtools-mgr install @appfabric/webtools-mgr --set-global --force
appf-webtools-mgr install @appfabric/plugin-cli --set-global --force

```

## TODO List

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Doffiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

## Oh-My-Zsh config
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# Set Spaceship ZSH
ZSH_THEME="spaceship"

# This needs to be ran after setting the theme
source $ZSH/oh-my-zsh.sh

## Custom Stuff
export MAVEN_OPTS="-Xmx5120m -XX:-UseGCOverheadLimit"

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Java version manager jEnv setup
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# How to set up jEnv with Amazon Corretto
# https://chamikakasun.medium.com/how-to-manage-multiple-java-version-in-macos-e5421345f6d0
# first install all Amazon Corretto versions
# brew install jenv
# # ensure that JAVA_HOME is correct
# jenv enable-plugin export
# # make Maven aware of the Java version in use (and switch when your project does)
# jenv enable-plugin maven
# jenv enable-plugin gradle
# jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
# jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
# # set default version with 
# jenv global <VERSION>

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias qbo='cd /Users/nrook/dev/qbo/src/qbo; /Users/nrook/dev/ecosystem-docker/start.sh'

alias idea='open -na "IntelliJ IDEA.app"'

alias podmanRestart='podman machine rm -f && podman machine init --cpus=2 -m=4096 && podman machine start && kubectl kustomize ./infra/dependencies/local-arm | podman play kube --network podman -'

# Enable oracle 19C support for Java Monolith
export ENABLE_ORACLE19C=true

# Run MSaaS applications locally
export NEXUS_PROXY_URL=https://nexus.intuit.com/nexus

# python poetry package manager
export PATH="/Users/nrook/.local/bin:$PATH"
## Oh-My-Zsh config

# Path to your oh-my-zsh installation.
export ZSH="/Users/nrook/.oh-my-zsh"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Spaceship config
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  # git           # Git section (git_branch + git_status) NOTE: Disabling due to slowness in monolith
  package       # Package version
  node          # Node.js section
  rust          # Rust section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  # kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Set Spaceship ZSH as a prompt (When installed via yarn)
autoload -U promptinit; promptinit
prompt spaceship

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
# run jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
# run jenv add /Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
# set default version with jenv global <VERSION>

# Old java setup
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home"


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

alias qbo='cd /Users/nrook/dev/qbo/src/qbo; /Users/nrook/dev/ecosystem-docker/start.sh'

alias idea='open -na "IntelliJ IDEA.app"'

# Enable oracle 19C support for Java Monolith
export ENABLE_ORACLE19C=true

# Run MSaaS applications locally
export NEXUS_PROXY_URL=https://nexus.intuit.com/nexus

# python poetry package manager
export PATH="/Users/nrook/.local/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH=/Users/Icehunter/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="icehunter"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases git git-extras)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

. $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# helper application calls
alias atom="atom ."
alias finder="open ."
alias tower="gittower ."
alias pweb="python -m SimpleHTTPServer"
alias npmc="npm --userconfig=~/.npmrccorp"

# force spotlight re-index
alias si="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist && sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"

# few little useful aliases
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias apmu="yes | apm update"
alias bu="brew update && brew upgrade"

alias vi="vim"

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="0;32"

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export ANDROID_HOME=~/Downloads/android-sdk-macosx
export KITEMATIC_HOME=/Applications/Docker/Kitematic\ \(Beta\).app/Contents/Resources/resources
export PATH=$KITEMATIC_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/usr/local/bin:/usr/local/sbin:$PATH
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH=~/.docker/machine/machines/default
export DOCKER_MACHINE_NAME="default"
export NVM_DIR=~/.nvm

. /usr/local/opt/nvm/nvm.sh
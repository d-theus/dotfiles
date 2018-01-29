# GistID: a66c5eb8991bf87de363b1bfc74b9739
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
PATH=$PATH:$HOME/.rbenv/bin:/home/andrew/.cargo/bin
eval "$(rbenv init -)"
DEFAULT_USER="andrew"
# curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.sh | zsh
ZSH_THEME="spaceship"

SPACESHIP_DIR_COLOR=green

# PROMPT
SPACESHIP_PROMPT_PREFIXES_SHOW=true
SPACESHIP_PROMPT_SYMBOL='$>'
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_DIR_TRUNK=3

# BATTERY
SPACESHIP_BATTERY_SHOW=false

# PREFIXES
SPACESHIP_HOST_PREFIX=' at '
SPACESHIP_DIR_PREFIX=' in '
SPACESHIP_PROMPT_DEFAULT_PREFIX=' via '

# GIT
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_STATUS_UNCOMMITTED='%F{white}∆%f%F{red}'
SPACESHIP_GIT_STATUS_UNSTAGED="%F{red}∆%f%F{red}"
SPACESHIP_GIT_STATUS_UNTRACKED="%F{red}∆%f%F{red}"
SPACESHIP_GIT_STATUS_STASHED="%F{white}%}\$%f%F{red}"
SPACESHIP_GIT_STATUS_BEHIND='↑'
SPACESHIP_GIT_STATUS_AHEAD='↓'
SPACESHIP_GIT_BRANCH_COLOR=green

# DOCKER
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_DOCKER_SYMBOL=' '

# NVM
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_SYMBOL='⬢'

# RUBY
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_SYMBOL=' '

# SWIFT
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_GLOBAL=false
SPACESHIP_SWIFT_SYMBOL='🐦'

# XCODE
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_XCODE_SHOW_GLOBAL=false
SPACESHIP_XCODE_SYMBOL='🛠'

# VENV
SPACESHIP_VENV_SHOW=false

# PYENV
SPACESHIP_PYENV_SHOW=true
SPACESHIP_PYENV_SYMBOL='🐍'

# VI_MODE
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_INSERT="[I]"
SPACESHIP_VI_MODE_NORMAL="[N]"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

fpath=(~/.oh-my-zsh/completions $fpath)
autoload -U compinit
compinit
zstyle ':comletion:*' menu select=2

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(last-working-dir git archlinux systemd vi-mode ranger docker docker-compose netctl bundler rails-comletions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

#alias chromium="chromium --disable-accelerated-compositing"  
alias ra="ranger_cd"
alias dhcp="sudo systemctl start dhcpcd@enp0s20u2.service"
alias um="udiskie-mount-asroot"
alias uum="sudo udiskie-umount -a"
alias wifi="sudo wifi-select"
alias ll="ls -clah"
alias ttodo="vim `date +%d-%m-%y`.taskpaper"
alias sshx="TERM=xterm-256color ssh"
alias vimr="mux start vimruby"
alias wi="sudo netcfg reconnect"
alias extmon="sudo xrandr --output HDMI-1 --auto && sudo xrandr --output HDMI-1 --above eDP-1"
alias extproj="sudo xrandr --output VGA-1 --auto && sudo xrandr --output VGA-1 --same-as eDP-1"
alias nomon="sudo xrandr --output HDMI-1 --off"
alias vim="nvim"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

export EDITOR=nvim


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/home/ironstone/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="pygmalion"
#ZSH_THEME="powerlevel9k/powerlevel9k"


# Powerlevel theme settings
POWERLEVEL9K_MODE="awesome-patched"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_DIR_HOME_BACKGROUND="green"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="039"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="249"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"

# Clear backgroung colors
#POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="green"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="039"
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="008"

#VCS colors
POWERLEVEL9K_VCS_FOREGROUND="green"
POWERLEVEL9K_VCS_BACKGROUND="clear"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
#POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
#POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
#POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
#POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
#POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

# Left segment separator
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$''

POWERLEVEL9K_DIR_FOREGROUND='white'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
# Left prompt with context
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable vcs)
# Left prompt without context
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time time)
POWERLEVEL9K_SHOW_CHANGESET=true

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
plugins=(git brew ruby sudo z)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

zstyle ':completion::complete:*' use-cache on               # completion caching, use rehash to clear
zstyle ':completion:*' cache-path ~/.zsh/cache              # cache path
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # ignore case
zstyle ':completion:*' menu select=2                        # menu if nb items > 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate # list of completers to use

# sections completion !
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format $'\e[00;34m%d'
zstyle ':completion:*:messages' format $'\e[00;31m%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true


# My Aliases

# Open current location in file browser
alias open='nautilus .'

# Enable auto-color for listing
alias ls='ls --color=auto'

# Show only hidden files
alias lh='ls -d .* --color=auto'

# List directories
alias dir='dir --color=auto'

# List only directories
alias ldi='ls -d */'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias lsa='ls -a'

alias h='history'

alias tgz='tar -czvf'

alias st='subl . &> /dev/null &'
alias bubu='brew prune ; brew tap --repair ; brew update ; brew outdated ; brew upgrade ; brew cleanup --force'

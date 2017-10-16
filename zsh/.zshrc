# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/scripts:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/kristian/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

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

# Directory aliases
alias uio="/home/kristian/Dropbox/Studier/fag"
alias mat="cd /home/kristian/Dropbox/Studier/fag/MAT4400/"
alias inf="cd /home/kristian/Dropbox/Studier/fag/INF4300/"
alias matinf="cd /home/kristian/Dropbox/Studier/fag/MAT-INF4130/"

alias bibst="cd /home/kristian/Dropbox/bible/"

alias prog="/home/kristian/Dropbox/prog/"
alias scripts="/home/kristian/scripts/"
alias c="clear"

alias g="git"
alias gu="git add -u"
alias gm="git commit -m"
alias gma="git commit -a -m"
alias gum="gu && gm"
alias gg="git status -s"




alias myscrot="scrot ~/screenshots/%b%d::%H%M%S.png"

mkcd () {
	mkdir "$1" && cd "$1"
}

calc () {
    echo "$1" | bc
}

export EDITOR=vim
# export TERMINAL="xterm-256color"
export TERMINAL="termite"

alias v="gvim --remote-silent"

alias l="ls"

bindkey -e

# Taskwarrior
alias t="task"
alias tl="task list"
alias tn="task next"
alias ta="task add"
alias tm="task modify"

## GTD for taskwarrior

# Easily add tasks to the inbox
alias in="task add +in"
# export PS1='$(task +in +PENDING count) '$PS1

## Easily tickle things
tickle() {
    deadline="$1"
    shift
    in +tickle wait:"$deadline" "$@"
}
alias tick=tickle
alias think='tickle +1d'

# Avoid typing -in when processing inbox
process() {
    taskid="$1"
    shift
    tm "$taskid" -in "$@"
}
alias tp=process

alias cwd="pwd | xclip"
alias cdwd="cd $(xclip -o)"


# Import colorscheme from wal
printf $(wal -r &)
clear

mcd () {
    mkdir "$1" && cd "$1"
}

edsc() {
    vim $(which "$1")
}

# Make `fuck` more Ned Flanders-friendly
# For use with https://github.com/nvbn/thefuck
alias darn="fuck"
eval $(thefuck --alias)

# Only things for interactive
# i.e. Things here will not be defined when running scripts
# Check if PS1 is set
[ -z "$PS1" ] && return

function cd {
    builtin cd "$@" && ls -F
}

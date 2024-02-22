# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.dotnet/tools:$PATH
#
# # Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#
#
export SUDO_EDITOR=vi
#
# # Set name of the theme to load --- if set to "random", it will
# # load a random theme each time oh-my-zsh is loaded, in which case,
# # to know which specific one was loaded, run: echo $RANDOM_THEME
# # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir dir_writable vcs virtualenv nodeenv docker_machine)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"#
# # Set list of themes to pick from when loading at random
# # Setting this variable when ZSH_THEME=random will cause zsh to load
# # a theme from this variable instead of looking in $ZSH/themes/
# # If set to an empty array, this variable will have no effect.
# # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#
# # Uncomment the following line to use case-sensitive completion.
# # CASE_SENSITIVE="true"
#
# # Uncomment the following line to use hyphen-insensitive completion.
# # Case-sensitive completion must be off. _ and - will be interchangeable.
# # HYPHEN_INSENSITIVE="true"
#
# # Uncomment the following line to disable bi-weekly auto-update checks.
# # DISABLE_AUTO_UPDATE="true"
#
# # Uncomment the following line to automatically update without prompting.
# # DISABLE_UPDATE_PROMPT="true"
#
# # Uncomment the following line to change how often to auto-update (in days).
# # export UPDATE_ZSH_DAYS=13
#
# # Uncomment the following line if pasting URLs and other text is messed up.
# # DISABLE_MAGIC_FUNCTIONS="true"
#
# # Uncomment the following line to disable colors in ls.
# # DISABLE_LS_COLORS="true"
#
# # Uncomment the following line to disable auto-setting terminal title.
# # DISABLE_AUTO_TITLE="true"
#
# # Uncomment the following line to enable command auto-correction.
# # ENABLE_CORRECTION="true"
#
# # Uncomment the following line to display red dots whilst waiting for
# completion.
# # COMPLETION_WAITING_DOTS="true"
#
# # Uncomment the following line if you want to disable marking untracked files
# # under VCS as dirty. This makes repository status check for large
# repositories
# # much, much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# # Uncomment the following line if you want to change the command execution
# time
# # stamp shown in the history command output.
# # You can set one of the optional three formats:
# # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# # or set a custom format using the strftime function format specifications,
# # see 'man strftime' for details.
# # HIST_STAMPS="mm/dd/yyyy"
#
# # Would you like to use another custom folder than $ZSH/custom?
# # ZSH_CUSTOM=/path/to/new-custom-folder
#
# # Which plugins would you like to load?
# # Standard plugins can be found in $ZSH/plugins/
# # Custom plugins may be added to $ZSH_CUSTOM/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# # Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fzf
  dnf
  zsh-syntax-highlighting
  zsh-autosuggestions
  docker
  docker-compose
  dirhistory
  sudo
)
#
source $ZSH/oh-my-zsh.sh
#
# # User configuration
#
# # export MANPATH="/usr/local/man:$MANPATH"
#
# # You may need to manually set your language environment
# # export LANG=en_US.UTF-8
#
# # Preferred editor for local and remote sessions
# # if [[ -n $SSH_CONNECTION ]]; then
# #   export EDITOR='vim'
# # else
# #   export EDITOR='mvim'
# # fi
#
# # Compilation flags
# # export ARCHFLAGS="-arch x86_64"
#
# # Set personal aliases, overriding those provided by oh-my-zsh libs,
# # plugins, and themes. Aliases can be placed here, though oh-my-zsh
# # users are encouraged to define aliases within the ZSH_CUSTOM folder.
# # For a full list of active aliases, run `alias`.
# #
# # Example aliases
# # alias zshconfig="mate ~/.zshrc"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi
#export DOCKER_HOST=tcp://0.0.0.0:2375
alias ssh-toolkit='ssh -i /c/Users/Sunxutian/.ssh/id_rsa.openssh xsun227@10.117.4.47'
alias gl='git log --oneline --all --graph --decorate  $*'
alias ls='ls -l --color'
alias la='ls -lat --color'
# sudo apt install bat
alias fzf-preview='fzf --preview "bat -m sls:yaml -m csproj:xml -m \"*.log*:log\" --style=numbers --color=always --line-range :500 {}"'
# ctrl+alt+p
bindkey -s '^[^p' 'fzf-preview^M'
# for setting up dpkg
# put dpkg binaries in your path
export PATH=/opt/bb/bin:~/.local/bin:/usr/bin:$PATH
# do not use the proxy for the DPKG api
# export http_proxy="http://192.168.1.101:8888"
# export https_proxy="http://192.168.1.101:8888"
export http_proxy="http://127.0.0.1:8888"
export https_proxy="http://127.0.0.1:8888"
export no_proxy=$no_proxy,blp-dpkg.dev.bloomberg.com,artifactory.inf.bloomberg.com
#export no_proxy=$no_proxy,dev.bloomberg.com
export GPG_TTY=$(tty)
# needed by `dpkg-distro-dev build` on bcc
export TMPDIR=/tmp

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash  
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

#docker engine
#DOCKER_DISTRO="Ubuntu-20.04"
#DOCKER_DIR=/mnt/wsl/shared-docker
#DOCKER_SOCK="$DOCKER_DIR/docker.sock"
#export DOCKER_HOST="unix://$DOCKER_SOCK"
#if [ ! -S "$DOCKER_SOCK" ]; then
#    mkdir -pm o=,ug=rwx "$DOCKER_DIR"
#    chgrp docker "$DOCKER_DIR"
#    /mnt/c/Windows/System32/wsl.exe -d $DOCKER_DISTRO sh -c "nohup sudo -b dockerd < /dev/null > $DOCKER_DIR/dockerd.log 2>&1"
#fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# sudo apt-get install fd-find
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fdfind --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# load autojump apt-get install autojump
. /usr/share/autojump/autojump.sh

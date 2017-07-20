# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export DEFAULT_USER='ryan.thames'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%H:%M  \UF133  %d.%m.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='cyan'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{cyan}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{cyan}\u2570\uf460%F{white} "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon ssh root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status battery disk_usage time)

ENABLE_CORRECTION="false"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git git-extras gem bundler osx ruby rvm rails sudo sublime colorize history history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting zsh-syntax-highlighting-filetypes warhol)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="vim"
alias vim="nvim"

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home'

# Stripe api keys
export PUBLISHABLE_KEY='pk_test_bYRkD4NexYR1CZ5aISp7SQ8k'
export SECRET_KEY='sk_test_wO9TotXIwXoL80h5MqSlZsDe'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/Users/ryanthames/.rvm/gems/ruby-2.0.0-p195/bin:/Users/ryanthames/.rvm/gems/ruby-2.0.0-p195@global/bin:/Users/ryanthames/.rvm/rubies/ruby-2.0.0-p195/bin:/Users/ryanthames/.rvm/bin:/usr/local/bin:/Users/ryanthames/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH="/usr/local/bin:$HOME/bin:$JAVA_HOME:$PATH:$HOME/Library/Python/2.7/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Powerline
. /Users/ryan.thames/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export NVM_DIR="/Users/ryanthames/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin"

# added by travis gem
[ -f /Users/ryanthames/.travis/travis.sh ] && source /Users/ryanthames/.travis/travis.sh

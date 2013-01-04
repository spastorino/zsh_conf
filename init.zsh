source $HOME/.zsh/git.zsh
source $HOME/.zsh/key-bindings.zsh

autoload -U colors
colors

setopt prompt_subst
PROMPT='%{$fg_bold[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

export LSCOLORS="Gxfxcxdxbxegedabagacad"
alias ls='ls -G'

# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

# Opens the current input in terminal to an editor
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# Color grep results
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER="less -R"
export LC_CTYPE=$LANG

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

alias memcached_load="launchctl load -w /usr/local/opt/memcached/homebrew.mxcl.memcached.plist"
alias memcached_unload="launchctl unload -w /usr/local/opt/memcached/homebrew.mxcl.memcached.plist"
alias mysql_load="launchctl load -w /usr/local/opt/mysql/homebrew.mxcl.mysql.plist"
alias mysql_unload="launchctl unload -w /usr/local/opt/mysql/homebrew.mxcl.mysql.plist"
alias postgres_load="launchctl load -w /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"
alias postgres_unload="launchctl unload -w /usr/local/opt/postgresql/homebrew.mxcl.postgresql.plist"
alias mongo_load="launchctl load -w /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist"
alias mongo_unload="launchctl unload -w /usr/local/opt/mongodb/homebrew.mxcl.mongodb.plist"
alias redis_load="launchctl load -w /usr/local/opt/redis/homebrew.mxcl.redis.plist"
alias redis_unload="launchctl unload -w /usr/local/opt/redis/homebrew.mxcl.redis.plist"


# export PATH=/usr/local/share/python:$PATH

# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh
# chruby 2.0.0dev

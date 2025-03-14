# This is for common/generic alias commands
# alias ls='ls -alF --color=auto'
alias ls="exa -lF --all --icons"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git shortcuts
alias gst='git status'
alias gpl='git pull'
alias gp='git push'
alias gpr='git pull --rebase'
alias gaa='git add .'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias gm='git merge'

# Editor
export EDITOR="nvim"
alias nvconfig='nvim ~/.config/nvim/init.lua'

# Other generic commands
alias h='history'

# shortcut for quickly moving to dotfiles repo
alias dotfiles="cd ~/dotfiles/;"

# Edit alias and env files
alias nvalias="nvim ~/dotfiles/shell/alias.sh"
alias nvlalias='nvim ~/dotfiles/shell/local_alias.sh'
alias nvenv='nvim ~/dotfiles/shell/env.sh'
alias nvlenv='nvim ~/dotfiles/shell/local_env.sh'

# bash specific configs
if [ -n "$BASH_VERSION" ]; then
	alias bsource='source ~/.bashrc'
	alias bconfig='nvim ~/.bashrc'
fi

# zsh specific configs
if [ -n "$ZSH_VERSION" ]; then
	alias zsource='source ~/.zshrc'
	alias zconfig='nvim ~/.zshrc'
fi

# ~/dotfiles/fzf/fzf.sh
# ---------------------
# Ensure fzf’s bin directory is in PATH
if [[ ":$PATH:" != *":$HOME/.fzf/bin:"* ]]; then
  export PATH="$PATH:$HOME/.fzf/bin"
fi

# Set your fzf defaults (customize as you like)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS='--height=40% --border --info=inline --prompt "❯ "'
export FZF_CTRL_T_OPTS='--preview "bat --style=numbers --color=always {}" --bind "ctrl-/:change-preview-window(down|hidden|)"'

# Shell-specific integration
if [ -n "$BASH_VERSION" ]; then
  # For Bash: use fzf’s built-in bash completion/integration
  eval "$(fzf --bash)"
elif [ -n "$ZSH_VERSION" ]; then
  # For Zsh: if the install script generated ~/.fzf.zsh, source it;
  # otherwise, use fzf’s zsh completion command.
  if [ -f "$HOME/.fzf.zsh" ]; then
    source "$HOME/.fzf.zsh"
  else
    eval "$(fzf --zsh)"
  fi
fi
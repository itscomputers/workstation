# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --tmux 80%,60% --layout reverse'

# mise
eval "$(mise activate zsh)"

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# env
export AOC_SESSION='_ga=GA1.2.1620977976.1699659438; _gid=GA1.2.1561094559.1703294629; session=53616c7465645f5f0d4b989fa9988b7f66e25ed439fa4142ee59d55ea3b006006cf34a5c9d8932f532430b5e3c679dccd7c80d27f70380b41a82ec6fb65e0a4e; _ga_MHSNPJKWC7=GS1.2.1703294628.73.1.1703294664.0.0.0'

export GPG_TTY=$(tty)


# Antigen.
source ~/.antigen/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle sindresorhus/pure
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/lw/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases.
alias la='ls -la'
alias vim='nvim'
alias ..='cd ..'

# Keybinds
# UP and DOWN arrow keys.
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


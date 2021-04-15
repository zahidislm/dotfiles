## Themes
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

## Utilities
zinit wait lucid light-mode for unixorn/fzf-zsh-plugin
zinit wait lucid light-mode for MichaelAquilina/zsh-autoswitch-virtualenv
zinit wait lucid light-mode for yun-cloud/zsh-bd

## Syntax Chain
zinit wait lucid light-mode for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-history-substring-search \
 atload"zicompinit; zicdreplay" blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions
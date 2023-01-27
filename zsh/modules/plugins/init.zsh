## VENV
# AUTOENV
zturbo MichaelAquilina/zsh-autoswitch-virtualenv

##Utils
# EXA
zturbo \
    has'exa' atinit'AUTOCD=1' \
  zplugin/zsh-exa

# FZF-TAB
zturbo Aloxaf/fzf-tab

# FORGIT
zturbo wfxr/forgit

## Syntax Chain
zturbo \
  zsh-users/zsh-history-substring-search \
    atload"_zsh_autosuggest_start" \
  zsh-users/zsh-autosuggestions \
    atinit"ZINIT[COMPINIT_OPTS]= zpcompinit; zpcdreplay" \
  zdharma/fast-syntax-highlighting

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=50

# Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

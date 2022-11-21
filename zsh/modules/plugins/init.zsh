## VENV
# AUTOENV
zturbo MichaelAquilina/zsh-autoswitch-virtualenv

##Utils
# EXA
zturbo \
  has'exa' \
    zplugin/zsh-exa

# FZF-TAB
zturbo Aloxaf/fzf-tab

# FORGIT
zturbo wfxr/forgit

## Syntax Chain
zturbo \
    zdharma-continuum/fast-syntax-highlighting \
    zsh-users/zsh-history-substring-search \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions

## STARSHIP PROMPT
zturbo \
    as'program' \
    from'gh-r' \
    sbin \
        starship/starship

eval "$(starship init zsh)"

# Alias for enabling TURBO mode
alias zturbo="zinit wait lucid light-mode for"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-readurl \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

## VENV
# AUTOENV
zturbo MichaelAquilina/zsh-autoswitch-virtualenv

## SYSTEM UTILITIES
# ZOXIDE
zturbo \
    as'command' \
    from'gh-r' \
    sbin \
    atinit'ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay' \
    atclone'./zoxide init zsh > init.zsh' \
    atpull'%atclone' src'init.zsh' nocompile'!' \
        ajeetdsouza/zoxide

# EXA
zturbo \
    from'gh-r' \
    as'command' \
    sbin'**/exa -> exa' \
    atclone'cp -vf completions/exa.zsh _exa' \
        ogham/exa

zturbo \
  has'exa' \
    zplugin/zsh-exa

# BAT
zturbo \
    as'command' \
    from'gh-r' \
    sbin'**/bat -> bat' \
    atclone'cp -vf **/autocomplete/bat.zsh _bat' \
        @sharkdp/bat

# FD-FIND
zturbo \
    as'command' \
    from'gh-r' \
    sbin'**/fd -> fd' \
        @sharkdp/fd

# FZF
zturbo \
    from'gh-r' \
    sbin \
        stedolan/jq

zinit pack"bgn-binary" for fzf
zturbo Aloxaf/fzf-tab


## GIT
# DELTA
zturbo \
    as'program' \
    from'gh-r' \
    sbin'**/delta -> delta' \
        dandavison/delta

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

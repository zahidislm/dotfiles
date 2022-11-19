# Alias for enabling TURBO mode
alias zturbo="zinit wait lucid light-mode for"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-readurl \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

## Utilities
zturbo MichaelAquilina/zsh-autoswitch-virtualenv

## ZOXIDE
zturbo \
    as'command' \
    from'gh-r' \
    sbin \
    atinit'ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay' \
    atclone'./zoxide init zsh > init.zsh' \
    atpull'%atclone' src'init.zsh' nocompile'!' \
        ajeetdsouza/zoxide

## EXA
zturbo \
    from'gh-r' \
    as'program' \
    sbin'**/exa -> exa' \
    atclone'cp -vf completions/exa.zsh _exa' \
        ogham/exa

zturbo \
  has'exa' \
    zplugin/zsh-exa

## GIT_DELTA
zturbo \
    as'program' \
    from'gh-r' \
    sbin'**/delta -> delta' \
        dandavison/delta

## FZF
zturbo \
    from'gh-r' \
    sbin \
        stedolan/jq

zinit pack"bgn-binary" for fzf
zturbo Aloxaf/fzf-tab

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

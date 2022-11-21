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

# RIPGREP
zturbo \
    from'gh-r' \
    as'command' \
    sbin'**/rg -> rg' \
        BurntSushi/ripgrep

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


# TOPGRADE
zturbo \
    as'program' \
    from'gh-r' \
    sbin \
        topgrade-rs/topgrade

## GIT
# DELTA
zturbo \
    as'program' \
    from'gh-r' \
    sbin'**/delta -> delta' \
        dandavison/delta

## SYSTEM UTILITIES
# ZOXIDE
zturbo \
    as'command' \
    from'gh-r' \
    sbin \
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

## BAT
zturbo \
    as'command' \
    from'gh-r' \
    sbin'**/bat -> bat' \
    atclone'cp -vf **/autocomplete/bat.zsh _bat' \
  @sharkdp/bat

# Enable synthax auto-theming support
local bat_config=$HOME/.config/bat/config
auto_theme_tool_syntax $bat_config "GitHub" "Nord"

# FD-FIND
zturbo \
    as'command' \
    from'gh-r' \
    sbin'**/fd -> fd' \
  @sharkdp/fd

## FZF
zturbo \
    as'command' \
    from'gh-r' \
    sbin'* -> jq' \
    nocompile \
 @stedolan/jq

zinit pack"bgn-binary" for fzf

# Enable synthax auto-theming support
local lightFZF="\
    --color=bg+:#f9f1eb,bg:#ffffff,spinner:#dc8a78,hl:#d20f39 \
    --color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
    --color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#e36209 \
    --ansi"

local darkFZF="\
    --color=bg+:#3B4252,bg:#24292e,spinner:#81A1C1,hl:#616E88 \
    --color=fg:#D8DEE9,header:#616E88,info:#81A1C1 \
    --color=pointer:#81A1C1,marker:#81A1C1,fg+:#D8DEE9 \
    --color=prompt:#81A1C1,hl+:#81A1C1 --ansi"

auto_theme_fzf $lightFZF $darkFZF

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

# Enable synthax auto-theming support
local git_config=$HOME/dotfiles/git/.gitconfig
auto_theme_tool_syntax $git_config "GitHub" "Nord"

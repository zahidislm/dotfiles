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

# vivid
zturbo \
    from'gh-r' \
    as'command' \
    sbin'**/vivid -> vivid' \
    atload'export LS_COLORS="$(vivid generate $ZSH_HOME/modules/cli-tools/vivid/themes/fox-${${SysTheme:l}:-dark}.yml)" \
    && zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS}' \
  @sharkdp/vivid

## BAT
zturbo \
    as'command' \
    from'gh-r' \
    sbin'**/bat -> bat' \
    atclone'cp -vf **/autocomplete/bat.zsh _bat' \
  @sharkdp/bat

# Enable synthax auto-theming support
local bat_config=$HOME/.config/bat/config
auto_theme_tool_syntax $bat_config "OneHalfLight" "OneHalfDark"

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

## Enable synthax auto-theming support

# dayfox
local color00='#837a72'
local color01='#f6f2ee'
local color02='#4863b6'
local color03='#3d2b5a'
local color04='#e7d2be'
local color05='#2848a9'
local color06='#396847'
local color07='#6e33ce'
local color08='#3d2b5a'
local color09='#a5222f'
local color10='#b3434e'
local color11='#8452d5'

local lightFZF="\
    --color=fg:$color00,bg:$color01,hl:$color02 \
    --color=fg+:$color03,bg+:$color04,hl+:$color05 \
    --color=info:$color06,prompt:$color07,pointer:$color08 \
    --color=marker:$color09,spinner:$color10,header:$color11"

# carbonfox
local color00='#d1d1d1'
local color01='#161616'
local color02='#78a9ff'
local color03='#f2f4f8'
local color04='#2a2a2a'
local color05='#8cb6ff'
local color06='#25be6a'
local color07='#be95ff'
local color08='#be95ff'
local color09='#ee5396'
local color10='#f16da6'
local color11='#c8a5ff'

local darkFZF="\
    --color=fg:$color00,bg:$color01,hl:$color02 \
    --color=fg+:$color03,bg+:$color04,hl+:$color05 \
    --color=info:$color06,prompt:$color07,pointer:$color08 \
    --color=marker:$color09,spinner:$color10,header:$color11"

auto_theme_fzf $lightFZF $darkFZF

##

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
auto_theme_tool_syntax $git_config "OneHalfLight" "OneHalfDark"

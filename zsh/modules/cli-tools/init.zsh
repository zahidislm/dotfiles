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
    atload'export LS_COLORS="$(vivid generate one-${${SysTheme:l}:-dark})"' \
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

# OneHalfLight
local color00='#fafafa'
local color01='#f0f0f1'
local color02='#e5e5e6'
local color03='#a0a1a7'
local color04='#696c77'
local color05='#383a42'
local color06='#202227'
local color07='#090a0b'
local color08='#ca1243'
local color09='#d75f00'
local color0A='#c18401'
local color0B='#50a14f'
local color0C='#0184bc'
local color0D='#4078f2'
local color0E='#a626a4'
local color0F='#986801'

local lightFZF="\
    --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D \
    --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C \
    --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D \
    --ansi"

# OneHalfDark
local color00='#282c34'
local color01='#353b45'
local color02='#3e4451'
local color03='#545862'
local color04='#565c64'
local color05='#abb2bf'
local color06='#b6bdca'
local color07='#c8ccd4'
local color08='#e06c75'
local color09='#d19a66'
local color0A='#e5c07b'
local color0B='#98c379'
local color0C='#56b6c2'
local color0D='#61afef'
local color0E='#c678dd'
local color0F='#be5046'

local darkFZF="\
    --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D \
    --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C \
    --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D \
    --ansi"

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

function auto_theme_map_gen() {
    typeset -gA themeMap
    themeMap[Light]=$1
    themeMap[Dark]=$2
}

function auto_theme_tool_syntax() {
    local configFile=$1
    local LightTheme=$2
    local DarkTheme=$3
    eval local selectedTheme=\$"${SysTheme}Theme"

    if [[ ! -f $configFile ]]; then return; fi
    if [[ -z "$SysTheme" ]]; then return; fi
    if grep -q $selectedTheme $configFile; then return; fi

    auto_theme_map_gen \
        "s/$DarkTheme/$LightTheme/g" "s/$LightTheme/$DarkTheme/g"

    sed -i $themeMap[$SysTheme] $configFile
}

function auto_theme_fzf() {
    local lightTheme=$1
    local darkTheme=$2

    if [[ -z "$SysTheme" ]]; then return; fi

    auto_theme_map_gen $lightTheme $darkTheme
    export FZF_DEFAULT_OPTS=$themeMap[$SysTheme]
}

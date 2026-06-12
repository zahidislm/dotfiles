# yazi shell wrapper for CWD
if (($+commands[yazi])); then
    function y() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
        yazi "$@" --cwd-file="$tmp"
        IFS= read -r -d '' cwd <"$tmp"
        [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
        rm -f -- "$tmp"
    }
fi

# Activate mise if available
if (($+commands[mise])); then
    eval "$(mise activate zsh)"
fi

# 🌓 Auto-Sync CLI Themes with macOS System Theme
sync_tool_theme() {
    local tool=$1
    local config_path=$2
    local light_theme=$3
    local dark_theme=$4

    # 1. Detect and Cache macOS Theme 
    # Caching prevents running the `defaults read` command multiple times 
    # during terminal startup, keeping your prompt fast.
    if [[ -z "$_MACOS_THEME_CACHED" ]]; then
        if defaults read -g AppleInterfaceStyle &>/dev/null; then
            export _MACOS_THEME_CACHED="dark"
        else
            export _MACOS_THEME_CACHED="light"
        fi
    fi

    # 2. Determine which theme string to apply
    local active_theme="$light_theme"
    local is_dark=false
    if [[ "$_MACOS_THEME_CACHED" == "dark" ]]; then
        active_theme="$dark_theme"
        is_dark=true
    fi

    # 3. Apply theme based on the specific tool
    case "$tool" in
        bat)
            if [[ -f "$config_path" ]]; then
                # Replaces the existing --theme="..." line in bat's config
                sed -i '' "s/^--theme=.*/--theme=\"$active_theme\"/" "$config_path"
            fi
            ;;

        git|delta)
            if [[ -f "$config_path" ]]; then
                # Edits the target .gitconfig using git's native config editor
                git config --file "$config_path" delta.features "$active_theme"

                # Flips Delta's structural light/dark boolean
                if $is_dark; then
                    git config --file "$config_path" delta.light false
                else
                    git config --file "$config_path" delta.light true
                fi
            fi
            ;;

        *)
            echo "Theme sync failed: Unsupported tool '$tool'"
            ;;
    esac
}

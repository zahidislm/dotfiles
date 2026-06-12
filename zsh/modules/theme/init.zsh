# 1. Bat
local bat_config="$HOME/.config/bat/config"
sync_tool_theme "bat" "$bat_config" "dawnfox" "carbonfox"

# 2. Git/Delta (Lazygit will automatically inherit this)
local git_config="$HOME/.gitconfig"
sync_tool_theme "git" "$git_config" "kanso-pearl" "kanso-ink"

# Clean up the cache variable so it doesn't pollute environment
unset _MACOS_THEME_CACHED

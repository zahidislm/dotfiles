alias reload!=". $HOME/.zshrc"
alias cls="clear" # Good "ol Clear Screen command
alias install="sudo dnf install"
alias upgrade="sudo dnf upgrade"
alias uninstall="sudo dnf remove"
alias vpn-on="sudo wg-quick up $MULLVAD_SERVER"
alias vpn-off="sudo wg-quick down $MULLVAD_SERVER"
alias dolphin-root="pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY KDE_SESSION_VERSION=5 KDE_FULL_SESSION=true dolphin"

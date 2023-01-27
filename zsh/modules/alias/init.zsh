## Clear Linux Package Manager
if (( $+commands[swupd] )); then
  alias pkgc='sudo swupd clean --all'    # Cleans the cache.
  alias pkga='sudo swupd bundle-add'      # Installs bundle(s).
  alias pkgls='swupd bundle-list'              # Lists installed bundles.
  alias pkgh='swupd info'              # Displays bundle information.
  alias pkgr='sudo swupd bundle-remove'       # Removes bundle(s).
  alias pkgf='sudo swupd search'            # Searches for a package/bundle.
  alias pkgu='sudo swupd update'       # Updates bundles.
## Fedora's DNF Package Manager
elif (( $+commands[dnf] )); then
  alias pkgc='sudo dnf clean all'    # Cleans the cache.
  alias pkga='sudo dnf install'      # Installs packages(s).
  alias pkgls='dnf list installed'   # Lists installed bundles.
  alias pkgh='dnf info'              # Displays package information.
  alias pkgr='sudo dnf remove'       # Removes package(s).
  alias pkgf='sudo dnf search'       # Searches for a package/bundle.
  alias pkgu='sudo dnf upgrade'       # Updates packages.
fi

## NEOVIM
if (( $+commands[nvim] )); then
    alias vi='nvim'
fi

## BAT
if (( $+commands[bat] )); then
    alias ccat='cat'
    alias cat='bat'
fi

## FZF
if (( $+commands[bat] && $+commands[fzf] )); then
    alias fzfp='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
fi

## Python
if (( $+commands[python3] )); then
    alias python='python3'
fi

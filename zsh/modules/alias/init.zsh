## Clear Linux Package Manager

if (( $+commands[swupd] )); then
  alias pkgc='sudo swupd clean --all'    # Cleans the cache.
  alias pkga='sudo swupd bundle-add'      # Installs bundle(s).
  alias pkgls='swupd bundle-list'              # Lists installed bundles.
  alias pkgh='swupd info'              # Displays bundle information.
  alias pkgr='sudo swupd bundle-remove'       # Removes bundle(s).
  alias pkgf='sudo swupd search'            # Searches for a package/bundle.
  alias pkgu='sudo swupd update'       # Updates bundles.
fi
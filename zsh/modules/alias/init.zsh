## Clear Linux Package Manager

if (( $+commands[swupd] )); then
  alias swupdc='sudo swupd clean --all'    # Cleans the cache.
  alias swupda='sudo swupd bundle-add'      # Installs bundle(s).
  alias swupdl='swupd bundle-list'              # Lists installed bundles.
  alias swupdi='swupd info'              # Displays bundle information.
  alias swupdr='sudo swupd bundle-remove'       # Removes bundle(s).
  alias swupds='sudo swupd search'            # Searches for a package/bundle.
  alias swupdu='sudo swupd update'       # Updates bundles.
fi


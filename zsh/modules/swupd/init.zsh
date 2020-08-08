#
# Defines dnf aliases.
#
# Authors:
#    Zahid Islam <dev@zahidislm.com>
#

# Return if requirements are not found.
if (( ! $+commands[swupd] )); then
  return 1
fi

#
# Aliases
#

alias swupdc='sudo swupd clean --all'    # Cleans the cache.
alias swupda='sudo swupd bundle-add'      # Installs bundle(s).
alias swupdl='swupd bundle-list'              # Lists installed bundles.
alias swupdi='swupd info'              # Displays bundle information.
alias swupdr='sudo swupd bundle-remove'       # Removes bundle(s).
alias swupds='sudo swupd search'            # Searches for a package/bundle.
alias swupdu='sudo swupd update'       # Updates bundles.


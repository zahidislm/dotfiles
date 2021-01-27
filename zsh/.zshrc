ZSH_HOME=$HOME/dotfiles/zsh

# load the zsh modules
module_order=(environment plugins history directory ssh gpg alias)

for module in $module_order;
  for config ($ZSH_HOME/modules/$module/**.zsh);
    source $config

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi
source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/git.fish
source $HOME/.config/fish/docker.fish

set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -U fish_user_paths $HOME/.magento-cloud/bin $fish_user_paths

set -Ux EDITOR nvim 
starship init fish | source

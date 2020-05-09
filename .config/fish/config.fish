source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/git.fish

set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
starship init fish | source

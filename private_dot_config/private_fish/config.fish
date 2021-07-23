source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/git.fish
source $HOME/.config/fish/docker.fish
source $HOME/.config/fish/podman.fish
source $HOME/.config/fish/utils.fish

set -gx SXHKD_SHELL '/usr/bin/sh'
set -Ux EDITOR nvim 
set -Ux VISUAL nvim 

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.magento-cloud/bin
fish_add_path /home/linuxbrew/.linuxbrew/bin

starship init fish | source

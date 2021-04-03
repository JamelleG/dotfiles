source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/git.fish
source $HOME/.config/fish/docker.fish
source $HOME/.config/fish/podman.fish
set -gx SXHKD_SHELL '/usr/bin/sh'
set -Ux EDITOR nvim 
set -Ux VISUAL nvim 

function addpath
  contains $argv[1] $fish_user_paths; or set -Ua fish_user_paths $argv[1]
end

addpath $HOME/.cargo/bin
addpath /home/linuxbrew/.linuxbrew/bin

starship init fish | source

alias rfish="source ~/.config/fish/config.fish"
alias wf="workflow"
alias wfup="wf2 up"
alias wfcf="wf2 m cache:flush"
alias wfcc="wf2 m cache:clean"
alias wfsu="wf2 m setup:upgrade"
alias wfdel="wf2 delete"
alias dcu="docker-compose up -d"
alias dclogs="docker-compose logs"
#todo: add function back
#alias dcrun=dcrun-fn
alias dcb="docker-compose build"
alias dcd="docker-compose down"
alias dcres="docker-compose restart"
alias dcl="docker-compose logs"
alias dclf="docker-compose logs -f"
alias dcps="docker-compose ps"
#todo: add function back
#alias drun=drun-fn
#alias dex=dex-fn
#alias dcex=dcex-fn
alias dstop="docker stop (docker ps --format='{{.Names}}' | rg -i --invert-match 'jamdev')"
alias vim=nvim
alias vi=nvim


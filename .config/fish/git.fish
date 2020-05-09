function current_branch  
    set ref (git symbolic-ref HEAD 2> /dev/null); or \
    set ref (git rev-parse --short HEAD 2> /dev/null); or return
    echo $ref | sed -e 's|^refs/heads/||'
end


alias g='git'
alias gco='git checkout'
alias gst='git status'
alias ggpull='git pull origin (current_branch)'
alias ggpush="git push origin (current_branch)"
alias glog='git log -s'

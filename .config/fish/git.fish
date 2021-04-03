function current_branch  
    set ref (git symbolic-ref HEAD 2> /dev/null); or \
    set ref (git rev-parse --short HEAD 2> /dev/null); or return
    echo $ref | sed -e 's|^refs/heads/||'
end


abbr -ag g 'git'
abbr -ag gco 'git checkout'
abbr -ag gst 'git status'
abbr -ag ggpull 'git pull origin (current_branch)'
abbr -ag ggpush "git push origin (current_branch)"
abbr -ag glog 'git log -s'

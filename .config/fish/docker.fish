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
alias dstopa="docker stop (docker ps -q)"



function drun
 	docker run -it $argv
end

function dcex
	docker-compose exec $argv
end

function dcrun
	docker-compose run $argv
end

function dsr
	docker stop $argv[1]; docker rm $argv[1]
end

abbr -ag dcu "docker-compose up -d"
abbr -ag dcb "docker-compose build"
abbr -ag dcd "docker-compose down"
abbr -ag dcres "docker-compose restart"
abbr -ag dcl "docker-compose logs"
abbr -ag dclf "docker-compose logs -f"
abbr -ag dcps "docker-compose ps"
abbr -ag dstop "docker stop (docker ps --format '{{.Names}}' | rg -i --invert-match 'jamdev')"
abbr -ag dstopa "docker stop (docker ps -q)"


#todo: add function back
#alias dcrun=dcrun-fn
#alias drun=drun-fn
#alias dex=dex-fn
#alias dcex=dcex-fn



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

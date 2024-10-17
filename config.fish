if status is-interactive
    # Commands to run in interactive sessions can go here
    alias g "git"
    alias m "minikube"
    alias k "kubectl"
    alias c "clear"
    alias up "sudo apt update && sudo apt upgrade -y"
    set -U fish_greeting ""
end

function fish_prompt
    echo (set_color brgreen)(whoami)@(hostname) (set_color brred)"("(date '+%H:%M:%S')")"
    echo (set_color adadac)(pwd) (set_color bryellow)"⋊> "
end
if status is-interactive
    # Commands to run in interactive sessions can go here
    alias g "git"
    alias m "minikube"
    alias k "kubectl"
    alias c "clear"
    alias e "exit"
    alias up "sudo apt update && sudo apt upgrade -y && sudo snap refresh"

    # Stop fish from greeting me on every startup
    set -U fish_greeting ""

    # Set PATH for Corretto JDK
    set -gx PATH ~/.jdks/corretto-21.0.4/bin $PATH # may need to be updated depending on version

    # Set PATH for npm
    set -gx PATH /home/lewis/.nvm/versions/node/v20.17.0/bin $PATH # may need to be updated depending on version
end

function fish_prompt
    echo (set_color brgreen)(whoami)@(hostname) (set_color brred)"("(date '+%H:%M:%S')")"
    echo (set_color adadac)(pwd) (set_color bryellow)"⋊> "
end
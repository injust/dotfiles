status is-interactive; or exit

starship init fish | source

# https://github.com/starship/starship/issues/560#issuecomment-2409922650

function clear --description='alias clear=command clear; commandline -f clear-screen'
    command clear
    commandline --function clear-screen
end

function prompt_newline --on-event=fish_postexec
    echo
end

status is-interactive; or exit

starship init fish | source

# https://github.com/starship/starship/issues/560#issuecomment-2409922650
function prompt_newline --on-event=fish_postexec
    echo
end

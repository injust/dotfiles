# TODO(https://github.com/sharkdp/fd/issues/362): Replace with config file
function fd --description='alias fd=fd -H --show-errors'
    command fd --hidden --show-errors $argv
end

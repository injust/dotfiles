# TODO(https://github.com/sharkdp/fd/issues/362): Replace with config file
function fd --description='alias fd=fd -H --no-require-git --show-errors'
    command fd --hidden --no-require-git --show-errors $argv
end

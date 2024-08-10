# TODO(https://github.com/sharkdp/fd/issues/362): Replace with config file
function fd --description='alias fd=fd -H'
    command fd --hidden $argv
end

function mkcd --description='Create a directory and set CWD'
    command mkdir $argv
    and switch $argv[(count $argv)]
        case '-*'
        case '*'
            cd $argv[(count $argv)]
    end
end

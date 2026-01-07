function mkcd --description='Create a directory and set CWD'
    if command mkdir $argv
        switch $argv[(count $argv)]
            case '-*'
            case '*'
                cd $argv[(count $argv)]
        end
    end
end

function cat --description='alias cat=bat' --wraps=bat
    if isatty stdout
        bat $argv
    else
        command cat $argv
    end
end

function cat --description='alias cat=bat -p' --wraps=bat
    if isatty stdout
        bat --plain $argv
    else
        command cat $argv
    end
end

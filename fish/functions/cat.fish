function cat --description='alias cat=bat' --wraps=bat
    if isatty stdout
        set -l options (set -q argv[2]; or echo --plain)
        bat $options $argv
    else
        command cat $argv
    end
end

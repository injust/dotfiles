function cat --description='alias cat=bat' --wraps=bat
    if isatty stdout
        set -l options (test (count $argv) -le 1; and echo --plain)
        bat $options $argv
    else
        command cat $argv
    end
end

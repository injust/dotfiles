function cat --description='alias cat=bat' --wraps=bat
    if isatty stdout
        set -l command bat
        set -l options

        set -q argv[2]; or {
            string match -q '*.md' -- $argv[1]
            and set command glow
            or set options --plain
        }

        $command $options $argv
    else
        command cat $argv
    end
end

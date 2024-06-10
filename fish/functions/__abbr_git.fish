# Inspired by https://github.com/paulirish/dotfiles/blob/main/fish/aliases.fish
function __abbr_git
    argparse -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..-1]

    if not string match --regex --quiet '^\w[\-\w]*$' -- $short
        or not string match --regex --quiet '^[\-\h\w]+$' -- "$long"
        return 1
    end

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo $long
        else
            echo $short
        end
    end"

    abbr $short --position=anywhere --function=__git_$short
end

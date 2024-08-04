# Inspired by https://github.com/paulirish/dotfiles/blob/main/fish/aliases.fish
function __abbr_git
    argparse set-cursor -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..-1]

    if not string match --regex --quiet '^\w[\w\-]*$' -- $short
        or not string match --regex --quiet '^[\h\w"%\-=@{}]+$' -- "$long"
        return 1
    end

    set -l escaped_short (string escape -- $short)
    set -l escaped_long (string escape -- $long)

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo $escaped_long
        else
            echo $escaped_short
        end
    end"

    abbr $short --position=anywhere (set -q _flag_set_cursor; and echo -- --set-cursor) --function=__git_$short
end

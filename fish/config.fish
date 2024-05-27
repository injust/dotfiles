if status is-interactive
    abbr -a dotdot -r '^\.{2,}$' -f __multicd
    abbr -a ll -- ls -AFhl
    abbr -a wget wget2

    starship init fish | source
    zoxide init fish | source
end

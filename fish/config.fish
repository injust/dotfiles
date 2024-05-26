if status is-interactive
    abbr -a ll -- ls -AFhl
    abbr -a wget wget2

    starship init fish | source
    zoxide init fish | source
end

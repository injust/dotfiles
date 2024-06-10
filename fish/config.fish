if status is-interactive
    source ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr-git.fish

    starship init fish | source
    zoxide init fish | source
end

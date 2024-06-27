if status is-interactive
    source ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr-git.fish

    set --global --export LS_COLORS (vivid generate catppuccin-mocha)

    starship init fish | source
    zoxide init fish | source
end

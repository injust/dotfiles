if status is-interactive
    source ~/.config/fish/abbr.fish
    source ~/.config/fish/abbr-git.fish

    set --global --export LS_COLORS (vivid generate catppuccin-mocha)

    starship init fish | source
    zoxide init fish | source
end

# Prepend manual paths corresponding to `fish_user_paths`
# Without this, `man` prioritizes the default manual path over Homebrew-installed commands, e.g. coreutils
# Trailing colon prepends this to the default list
set --global --export MANPATH /usr/local/opt/findutils/libexec/gnuman:/usr/local/opt/gnu-sed/libexec/gnuman:/usr/local/opt/uutils-coreutils/libexec/uuman:

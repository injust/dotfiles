status is-interactive || exit

if defaults read -g AppleInterfaceStyle &> /dev/null # dark mode
    # https://github.com/catppuccin/fzf/blob/6c1280db15a247e28bd99c1a9cc9f6719e5124f7/themes/catppuccin-fzf-mocha.fish with `bg` option removed (to support transparent terminal background)
    set -a FZF_DEFAULT_OPTS --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --color=selected-bg:#45475a --color=border:#6C7086,label:#cdd6f4

    set -gx LS_COLORS (vivid generate catppuccin-mocha)
else
    # https://github.com/catppuccin/fzf/blob/6c1280db15a247e28bd99c1a9cc9f6719e5124f7/themes/catppuccin-fzf-latte.fish with `bg` option removed (to support transparent terminal background)
    set -a FZF_DEFAULT_OPTS --color=bg+:#CCD0DA,spinner:#DC8A78,hl:#D20F39 --color=fg:#4C4F69,header:#D20F39,info:#8839EF,pointer:#DC8A78 --color=marker:#7287FD,fg+:#4C4F69,prompt:#8839EF,hl+:#D20F39 --color=selected-bg:#BCC0CC --color=border:#9CA0B0,label:#4C4F69

    set -gx LS_COLORS (vivid generate catppuccin-latte)
end

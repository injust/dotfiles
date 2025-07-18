status is-interactive || exit

if not command -q /usr/bin/defaults; or defaults read -g AppleInterfaceStyle &>/dev/null # Dark mode
    # https://github.com/catppuccin/fzf/blob/6c1280db15a247e28bd99c1a9cc9f6719e5124f7/themes/catppuccin-fzf-mocha.fish with `bg` option removed (to support transparent terminal background), color codes lowercased, and merged into a single `--color` option
    set -a FZF_DEFAULT_OPTS --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8,fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc,marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8,selected-bg:#45475a,border:#6c7086,label:#cdd6f4

    set -gx LS_COLORS (vivid generate catppuccin-mocha)
else
    # https://github.com/catppuccin/fzf/blob/6c1280db15a247e28bd99c1a9cc9f6719e5124f7/themes/catppuccin-fzf-latte.fish with `bg` option removed (to support transparent terminal background), color codes lowercased, and merged into a single `--color` option
    set -a FZF_DEFAULT_OPTS --color=bg+:#ccd0da,spinner:#dc8a78,hl:#d20f39,fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78,marker:#7287fd,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39,selected-bg:#bcc0cc,border:#9ca0b0,label:#4c4f69

    set -gx LS_COLORS (vivid generate catppuccin-latte)
end

# https://github.com/junegunn/fzf/issues/4549
if command -q /usr/bin/defaults
    set -a fzf_preview_file_cmd --theme=auto:system
else
    set -a fzf_preview_file_cmd --theme=dark
end

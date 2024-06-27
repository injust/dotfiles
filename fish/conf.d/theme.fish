status is-interactive; or exit

fish_config theme choose 'Catppuccin Mocha'

# https://github.com/catppuccin/fzf/blob/6c1280db15a247e28bd99c1a9cc9f6719e5124f7/themes/catppuccin-fzf-mocha.fish:
# - Lowercase color codes
# - Merge into a single `--color` option
# - Remove `bg` color to support transparent terminal background
set -a FZF_DEFAULT_OPTS --color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8,fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc,marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8,selected-bg:#45475a,border:#6c7086,label:#cdd6f4

set -gx LS_COLORS (vivid generate catppuccin-mocha)

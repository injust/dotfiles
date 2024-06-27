status is-interactive; or exit

fish_config theme choose catppuccin-mocha

# Remove `bg` color to support transparent terminal background
set -gx FZF_DEFAULT_OPTS (string replace --regex 'bg:#[[:xdigit:]]{6},' '' <(status dirname)/../../catppuccin/fzf/themes/catppuccin-fzf-mocha.rc)

set -x LS_COLORS (vivid generate catppuccin-mocha)

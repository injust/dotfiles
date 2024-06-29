status is-interactive; or exit

fish_config theme choose catppuccin-mocha

# Remove `bg` color to support transparent terminal background
set -a FZF_DEFAULT_OPTS (string replace --regex 'bg:#[[:xdigit:]]{6},' '' <(status dirname)/../../catppuccin/fzf/themes/catppuccin-fzf-mocha.rc)

# https://github.com/junegunn/fzf/issues/4549
set -a fzf_preview_file_cmd --theme=(command -q /usr/bin/defaults; and echo auto:system; or echo dark)

set -x LS_COLORS (vivid generate catppuccin-mocha)

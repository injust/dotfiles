status is-interactive; or exit

fish_config theme choose catppuccin-mocha

function apply_theme --on-variable=fish_terminal_color_theme
    set -f flavor (test $fish_terminal_color_theme = light; and echo latte; or echo mocha)

    set -gx BAT_THEME $fish_terminal_color_theme

    set -gx DELTA_FEATURES +catppuccin-$flavor

    # Remove `bg` color to support transparent terminal background
    set -gx FZF_DEFAULT_OPTS (string replace --regex 'bg:#[[:xdigit:]]{6},' '' <(status dirname)/../../catppuccin/fzf/themes/catppuccin-fzf-$flavor.rc)

    set -gx LS_COLORS (vivid generate catppuccin-$flavor)

    starship config palette catppuccin_$flavor
end

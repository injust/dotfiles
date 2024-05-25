set -x XDG_CONFIG_HOME ~/code/dotfiles

fish_add_path -g \
    ~/.local/bin \
    ~/code/scripts

set -x HOMEBREW_BUNDLE_NO_DESCRIBE 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_NO_UPGRADE_QUIT_CASKS 1

set -x VISUAL nano

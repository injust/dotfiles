set -x XDG_CONFIG_HOME ~/code/dotfiles

# Homebrew
fish_add_path --path \
    /usr/local/opt/{curl,file-formula}/bin \
    /usr/local/opt/{findutils,gawk,gnu-{sed,tar,which},grep}/libexec/gnubin \
    /usr/local/opt/uutils-coreutils/libexec/uubin
# User paths
fish_add_path -g \
    $XDG_CONFIG_HOME/git/commands \
    ~/.local/bin \
    ~/code/scripts

set -x FZF_DEFAULT_COMMAND fd --hidden --no-require-git
set -x FZF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/.fzfrc

set -x HOMEBREW_BUNDLE_NO_DESCRIBE 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_NO_UPGRADE_QUIT_CASKS 1

# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -x LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w

set -x VISUAL nano

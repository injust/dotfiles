set -x XDG_CONFIG_HOME ~/code/dotfiles

fish_add_path -g \
    ~/.local/bin \
    ~/code/scripts

set -x COLORTERM truecolor

set -x FZF_DEFAULT_COMMAND fd --hidden --no-require-git
set -x FZF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/.fzfrc

# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -x LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w

set -x VISUAL nano

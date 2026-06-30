set -x XDG_CONFIG_HOME ~/code/dotfiles

# Homebrew
fish_add_path --path \
    /usr/local/opt/{curl,file-formula}/bin \
    /usr/local/opt/{findutils,gawk,gnu-{sed,tar,which},grep}/libexec/gnubin \
    /usr/local/opt/uutils-coreutils/libexec/uubin
# User paths
fish_add_path -g \
    ~/.local/bin \
    ~/code/scripts

set -x COLORTERM truecolor

set -x FZF_DEFAULT_COMMAND fd --hidden --no-require-git
set -x FZF_DEFAULT_OPTS --layout=reverse --multi --highlight-line --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --scrollbar=▐ --prompt=❯

# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -x LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w

set -x VISUAL nano

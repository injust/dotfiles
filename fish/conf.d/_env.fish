set -x XDG_CONFIG_HOME ~/code/dotfiles

# Homebrew
fish_add_path --path \
    /home/linuxbrew/.linuxbrew/bin \
    /usr/local/opt/{curl,file-formula}/bin \
    /usr/local/opt/{findutils,gawk,gnu-{sed,tar,which},grep}/libexec/gnubin \
    /usr/local/opt/uutils-coreutils/libexec/uubin
# User paths
fish_add_path -g \
    $XDG_CONFIG_HOME/git/commands \
    ~/.local/bin \
    ~/code/scripts \
    ~/go/bin

set -x COLORTERM truecolor

# https://github.com/fish-shell/fish-shell/discussions/12795
set -q fish_private_mode; and set -x fish_private_mode $fish_private_mode

set -x FZF_DEFAULT_COMMAND fd
set -x FZF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/.fzfrc

set -x HOMEBREW_BUNDLE_NO_DESCRIBE 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
# https://github.com/orgs/Homebrew/discussions/6916
set -x HOMEBREW_NO_UPGRADE_AUTO_UPDATES_CASKS 1
set -x HOMEBREW_NO_UPGRADE_QUIT_CASKS 1

set -x HWATCH --beep --mouse --color --differences

set -x LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -x LESSSECURE 1
# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -x LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w
# Stop bat from passing extra options to less (https://github.com/sharkdp/bat/blob/master/README.md#using-less-as-a-pager)
set -x BAT_PAGER less $LESS

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER bat --plain --language=man
# Unset inherited $MANPATH to stop macOS path_helper from prepending to man's standard search path (https://github.com/fish-shell/fish-shell/issues/10684)
status is-login; and command -q /usr/libexec/path_helper; and set -ge MANPATH

set -x PYTHONSTARTUP $XDG_CONFIG_HOME/.pythonrc.py

set -x RIPGREP_CONFIG_PATH $XDG_CONFIG_HOME/.ripgreprc

set -x VISUAL micro

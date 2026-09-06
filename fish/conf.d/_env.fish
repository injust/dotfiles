set -x XDG_CONFIG_HOME ~/code/dotfiles

# Homebrew paths
switch (uname)
    case Darwin
        fish_add_path --path \
            /usr/local/opt/{curl,file-formula}/bin \
            /usr/local/opt/*/libexec/gnubin \
            /usr/local/opt/uutils-coreutils/libexec/uubin
    case Linux
        fish_add_path --path \
            /home/linuxbrew/.linuxbrew/bin
end

# User paths
fish_add_path -g \
    $XDG_CONFIG_HOME/git/commands \
    ~/.local/bin \
    ~/code/scripts

# https://github.com/fish-shell/fish-shell/discussions/12795
set -q fish_private_mode; and set -x fish_private_mode $fish_private_mode

set -x FZF_DEFAULT_COMMAND fd
set -x FZF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/.fzfrc

set -x HOMEBREW_BUNDLE_NO_DESCRIBE 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_NO_UPGRADE_QUIT_CASKS 1

set -x HWATCH --beep --mouse --color --differences

set -x LESSSECURE 1

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER bat --plain --language=man
# Unset inherited $MANPATH to stop macOS path_helper from prepending to man's standard search path (https://github.com/fish-shell/fish-shell/issues/10684)
status is-login; and command -q /usr/libexec/path_helper; and set -ge MANPATH

set -x MOOR --no-linenumbers --quit-if-one-screen --tab-size=4 --terminal-fg --wrap

set -x PAGER bat --plain

set -x PYTHONSTARTUP $XDG_CONFIG_HOME/.pythonrc.py
set -x PYTHON_HISTORY /tmp/.python_history

set -x RIPGREP_CONFIG_PATH $XDG_CONFIG_HOME/.ripgreprc

set -x VISUAL micro

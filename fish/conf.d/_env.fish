status is-login; or exit

set -x XDG_CONFIG_HOME ~/code/dotfiles

fish_add_path -g \
    # User
    $XDG_CONFIG_HOME/git/commands \
    ~/.local/bin \
    ~/code/scripts \
    # Homebrew
    /usr/local/opt/curl/bin \
    /usr/local/opt/file-formula/bin \
    /usr/local/opt/uutils-coreutils/libexec/uubin \
    /usr/local/opt/*/libexec/gnubin

set -x FZF_DEFAULT_COMMAND fd
set -x FZF_DEFAULT_OPTS_FILE $XDG_CONFIG_HOME/.fzfrc

set -x HOMEBREW_BUNDLE_NO_DESCRIBE 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_NO_UPGRADE_QUIT_CASKS 1

set -x LESS --quit-if-one-screen --RAW-CONTROL-CHARS
# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -x LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -x VISUAL micro

set -x FZF_DEFAULT_COMMAND fd
set -x FZF_DEFAULT_OPTS --layout=reverse --multi --highlight-line --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --scrollbar=▐ --prompt=❯

set -x LESS --quit-if-one-screen --RAW-CONTROL-CHARS

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -x RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -x VISUAL micro

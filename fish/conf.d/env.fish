set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

# Override Git's `LESS=FRX` default to unbreak mouse scrolling (https://github.com/gwsw/less/issues/445)
set -gx LESS --quit-if-one-screen --ignore-case --RAW-CONTROL-CHARS

# https://github.com/sharkdp/bat/blob/f754f43e84a275d7a9a0ee3544c485eed747b311/README.md#man
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"

# TODO(https://github.com/zyedidia/micro/pull/2867): Unset when micro automatically uses true color support
set -gx MICRO_TRUECOLOR 1

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx VISUAL micro

set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

set -gx HOMEBREW_NO_ANALYTICS 1 # In addition to `brew analytics off`
set -gx HOMEBREW_NO_ENV_HINTS 1

set -gx HWATCH --beep --mouse --color --differences

# Override Git's `LESS=FRX` default to unbreak mouse scrolling (https://github.com/gwsw/less/issues/445)
set -gx LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -gx LESSSECURE 1

# https://github.com/sharkdp/bat/blob/f754f43e84a275d7a9a0ee3544c485eed747b311/README.md#man
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"

# TODO(https://github.com/zyedidia/micro/pull/2867): Unset when micro automatically uses true color support
set -gx MICRO_TRUECOLOR 1

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx PYTHONSTARTUP ~/.config/pythonstartup.py

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx UV_VENV_CLEAR 1

set -gx VISUAL micro

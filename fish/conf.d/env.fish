set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

set -gx HOMEBREW_DOWNLOAD_CONCURRENCY auto # TODO(https://github.com/Homebrew/brew/issues/18278): Unset when this becomes the default
set -gx HOMEBREW_NO_ANALYTICS 1 # In addition to `brew analytics off`
set -gx HOMEBREW_NO_ENV_HINTS 1

set -gx HWATCH --beep --mouse --color --differences

# Override Git's `LESS=FRX` default to unbreak mouse scrolling (https://github.com/gwsw/less/issues/445)
set -gx LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -gx LESSSECURE 1
# Stop bat from passing `--quit-on-intr` to less (https://github.com/sharkdp/bat/blob/master/README.md#using-less-as-a-pager)
# TODO(https://github.com/sharkdp/bat/issues/3444): This should stop ctrl-c from exiting less
set -gx BAT_PAGER less $LESS

# https://github.com/sharkdp/bat/blob/f754f43e84a275d7a9a0ee3544c485eed747b311/README.md#man
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx PYTHONSTARTUP ~/.config/pythonstartup.py

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx VISUAL micro

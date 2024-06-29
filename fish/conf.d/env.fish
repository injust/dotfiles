set -gx FZF_DEFAULT_COMMAND fd --hidden
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

# https://github.com/sharkdp/bat/blob/f754f43e84a275d7a9a0ee3544c485eed747b311/README.md#man
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"

set -gx VISUAL nano

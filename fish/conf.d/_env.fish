set -x FZF_DEFAULT_COMMAND fd --hidden --no-require-git
set -x FZF_DEFAULT_OPTS --layout=reverse --multi --highlight-line --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --scrollbar=▐ --prompt=❯

set -x LESS --quit-if-one-screen --RAW-CONTROL-CHARS

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -x SSH_SK_PROVIDER /usr/lib/ssh-keychain.dylib

set -x VISUAL nano

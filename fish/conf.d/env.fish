set -gx FZF_DEFAULT_COMMAND fd --hidden --no-require-git
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line

# https://github.com/sharkdp/bat/blob/2371077352b06954cc013e3a7830ae4021060d3b/README.md#man
# TODO(bat v0.26.2): Simplify to `bat --plain --language=man` (https://github.com/sharkdp/bat/blob/59c58969024d48c0575c42250c7dd87a70106fbd/README.md#man)
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -gx VISUAL nano

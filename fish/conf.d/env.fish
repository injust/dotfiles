set -gx FZF_DEFAULT_COMMAND fd --hidden
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

set -gx MANPAGER sh -c "'col -bx | bat --language=man --style=plain'"

set -gx VISUAL nano

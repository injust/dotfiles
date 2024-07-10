set -gx FZF_DEFAULT_COMMAND fd --hidden
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap

set -gx MANPAGER sh -c "'col -bx | bat --language=man --style=plain'"

# TODO(https://github.com/zyedidia/micro/pull/2867): Unset when micro automatically uses true color support
set -gx MICRO_TRUECOLOR 1

set -gx VISUAL micro

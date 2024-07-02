set -gx FZF_DEFAULT_COMMAND fd --hidden --follow --type=file
set -gx FZF_DEFAULT_OPTS --layout=reverse --scrollbar=▐ --prompt="'❯ '" --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --color=fg:#cdd6f4,bg:#1e1e2e,hl:#f38ba8,fg+:#cdd6f4,bg+:#313244,hl+:#f38ba8,info:#cba6f7,prompt:#cba6f7,pointer:#f5e0dc,marker:#89b4fa,spinner:#f5e0dc,header:#f38ba8 --highlight-line --preview-window=wrap

set -gx MANPAGER sh -c "'col -bx | bat --language=man --style=plain'"
# Prepend manual paths corresponding to `fish_user_paths`
# Without this, `man` prioritizes the default manual path over Homebrew-installed commands, e.g. coreutils
# Trailing colon prepends this to the default list
set -gx MANPATH /usr/local/opt/findutils/libexec/gnuman:/usr/local/opt/gawk/libexec/gnuman:/usr/local/opt/gnu-sed/libexec/gnuman:/usr/local/opt/gnu-tar/libexec/gnuman:/usr/local/opt/gnu-which/libexec/gnuman:/usr/local/opt/grep/libexec/gnuman:/usr/local/opt/uutils-coreutils/libexec/uuman:

set -gx VISUAL nano

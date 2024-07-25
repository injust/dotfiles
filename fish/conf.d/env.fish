# TODO(https://github.com/direnv/direnv/issues/68, https://github.com/direnv/direnv/pull/1231): Use a less hacky solution to suppress logging so `log_status` still works
set -gx DIRENV_LOG_FORMAT

set -gx FZF_DEFAULT_COMMAND fd --hidden --follow --type=file
set -gx FZF_DEFAULT_OPTS --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --color=fg:#cdd6f4,bg:#1e1e2e,hl:#f38ba8,fg+:#cdd6f4,bg+:#313244,hl+:#f38ba8,info:#cba6f7,prompt:#cba6f7,pointer:#f5e0dc,marker:#89b4fa,spinner:#f5e0dc,header:#f38ba8 --highlight-line --preview-window=wrap

set -gx MANPAGER sh -c "'col -bx | bat --language=man --style=plain'"
# Prepend manual paths to prioritize Homebrew-installed commands over default manual path
# Trailing colon prepends this to the default list
# TODO(https://github.com/Homebrew/homebrew-core/issues/176037, https://github.com/Homebrew/homebrew-core/pull/176875): gnu-tar should now be automatically prepended, test and unset MANPATH
set -gx MANPATH /usr/local/opt/gnu-tar/libexec/gnuman:

set -gx MICRO_TRUECOLOR 1

set -gx VISUAL micro

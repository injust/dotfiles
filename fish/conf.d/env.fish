# TODO(https://github.com/direnv/direnv/issues/68, https://github.com/direnv/direnv/issues/1419): Use a less hacky way to suppress logging so `log_status` still works in `layout_uv()`
set -gx DIRENV_LOG_FORMAT

set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap \
# https://github.com/catppuccin/fzf/blob/main/themes/catppuccin-fzf-mocha.fish
--color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --color=selected-bg:#45475a --color=border:#313244,label:#cdd6f4

# Override Git's `LESS=FRX` default to unbreak mouse scrolling (https://github.com/gwsw/less/issues/445)
set -gx LESS --quit-if-one-screen --ignore-case --RAW-CONTROL-CHARS

set -gx MANPAGER sh -c "'col -bx | bat --language=man --style=plain'"

# TODO(https://github.com/zyedidia/micro/issues/1127): Remove when micro checks the COLORTERM environment variable
set -gx MICRO_TRUECOLOR 1

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx VISUAL micro

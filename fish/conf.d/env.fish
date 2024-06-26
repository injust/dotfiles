set -gx FZF_DEFAULT_COMMAND fd --hidden
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line --preview-window=wrap \
# https://github.com/catppuccin/fzf/blob/fd3ab96c134abeca7721f16ad251bc2e9defa493/themes/catppuccin-fzf-mocha.fish with `bg` option removed (to support transparent terminal background)
--color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 --color=selected-bg:#45475a --color=border:#313244,label:#cdd6f4

set -gx VISUAL nano

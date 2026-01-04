# Stop bat from passing `--quit-on-intr` to less (https://github.com/sharkdp/bat/blob/master/README.md#using-less-as-a-pager)
# TODO(https://github.com/sharkdp/bat/issues/3444): This should stop ctrl-c from exiting less
set -gx BAT_PAGER less $LESS

set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line

set -gx HOMEBREW_NO_ANALYTICS 1 # In addition to `brew analytics off`
set -gx HOMEBREW_NO_ENV_HINTS 1

set -gx HWATCH --beep --mouse --color --differences

set -gx LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -gx LESSSECURE 1
# https://github.com/ryanoasis/nerd-fonts/wiki/FAQ-and-Troubleshooting#less-settings
set -gx LESSUTFCHARDEF e000-e09f:w,e0a0-e0bf:p,e0c0-f8ff:w,f0001-fffff:w

# https://github.com/sharkdp/bat/blob/59c58969024d48c0575c42250c7dd87a70106fbd/README.md#man
set -gx MANPAGER bat --plain --language=man

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx PYTHONSTARTUP ~/.config/pythonstartup.py

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx SCREENRC ~/.config/.screenrc

set -gx UV_PYTHON_PREFERENCE only-managed
set -gx UV_VENV_CLEAR 1

set -gx VISUAL micro

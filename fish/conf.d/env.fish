set -x FZF_DEFAULT_COMMAND fd
set -x FZF_DEFAULT_OPTS --layout=reverse --multi --highlight-line --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --scrollbar=▐ --prompt=❯

set -x HOMEBREW_NO_ANALYTICS 1 # In addition to `brew analytics off`
set -x HOMEBREW_NO_ENV_HINTS 1

set -x HWATCH --beep --mouse --color --differences

set -x LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -x LESSSECURE 1

# https://github.com/sharkdp/bat/blob/master/README.md#man
set -x MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -x PRE_COMMIT_ALLOW_NO_CONFIG 1

set -x PYTHONSTARTUP ~/.config/pythonstartup.py

set -x RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -x UV_PYTHON_PREFERENCE only-managed
set -x UV_VENV_CLEAR 1

set -x VISUAL micro

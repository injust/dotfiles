set -l board_vendor_file /sys/devices/virtual/dmi/id/board_vendor
if not set -q AWS_REGION; and test -f $board_vendor_file; and test (cat $board_vendor_file) = 'Amazon EC2'
    set -l token (curl -fsS -X PUT http://169.254.169.254/latest/api/token -H 'X-AWS-EC2-Metadata-Token-TTL-Seconds: 5')
    set -gx AWS_REGION (curl -fsS http://169.254.169.254/latest/meta-data/placement/region -H "X-AWS-EC2-Metadata-Token: $token")
end

set -gx FZF_DEFAULT_COMMAND fd
set -gx FZF_DEFAULT_OPTS --multi --layout=reverse --scrollbar=▐ --prompt=❯ --marker=▌ --marker-multi-line=▖▌▘ --ellipsis=… --tabstop=4 --highlight-line

set -gx HOMEBREW_NO_ANALYTICS 1 # In addition to `brew analytics off`
set -gx HOMEBREW_NO_ENV_HINTS 1

set -gx HWATCH --beep --mouse --color --differences

# Override Git's `LESS=FRX` default to unbreak mouse scrolling (https://github.com/gwsw/less/issues/445)
set -gx LESS --quit-if-one-screen --ignore-case --jump-target=.1 --LONG-PROMPT --quiet --RAW-CONTROL-CHARS --incsearch --no-vbell
set -gx LESSSECURE 1
# Stop bat from passing `--quit-on-intr` to less (https://github.com/sharkdp/bat/blob/master/README.md#using-less-as-a-pager)
# TODO(https://github.com/sharkdp/bat/issues/3444): This should stop ctrl-c from exiting less
set -gx BAT_PAGER less $LESS

# https://github.com/sharkdp/bat/blob/59c58969024d48c0575c42250c7dd87a70106fbd/README.md#man
set -gx MANPAGER bat --plain --language=man

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx PYTHONSTARTUP ~/.config/pythonstartup.py

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx SCREENRC ~/.config/.screenrc

set -gx UV_PYTHON_PREFERENCE only-managed
set -gx UV_VENV_CLEAR 1

set -gx VISUAL micro

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

# https://github.com/sharkdp/bat/blob/2371077352b06954cc013e3a7830ae4021060d3b/README.md#man
# TODO(bat v0.26.2): Simplify to `bat --plain --language=man` (https://github.com/sharkdp/bat/blob/59c58969024d48c0575c42250c7dd87a70106fbd/README.md#man)
set -gx MANPAGER "sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat --plain --language=man'"

set -gx PRE_COMMIT_ALLOW_NO_CONFIG 1

set -gx PYTHONSTARTUP ~/.config/pythonstartup.py

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config

set -gx SCREENRC ~/.config/.screenrc

set -gx UV_PYTHON_PREFERENCE only-managed
set -gx UV_VENV_CLEAR 1

set -gx VISUAL micro

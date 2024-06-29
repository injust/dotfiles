# Prepend manual paths corresponding to `fish_user_paths`
# Without this, `man` prioritizes the default manual path over Homebrew-installed commands, e.g. coreutils
# Trailing colon prepends this to the default list
set --global --export MANPATH /usr/local/opt/findutils/libexec/gnuman:/usr/local/opt/gnu-sed/libexec/gnuman:/usr/local/opt/grep/libexec/gnuman:/usr/local/opt/uutils-coreutils/libexec/uuman:

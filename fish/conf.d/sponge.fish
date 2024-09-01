status is-interactive; or exit

set sponge_purge_only_on_exit true
set sponge_regex_patterns \
    '\bgit .*\b[[:xdigit:]]{7,64}\b' \
    '\bgit commit -m\b' \
    '^(man|type|which) '

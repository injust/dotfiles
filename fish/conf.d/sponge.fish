status is-interactive; or exit

set sponge_purge_only_on_exit true
set sponge_regex_patterns \
    '^(cat|fd|man|micro|rg|type|which)\b' \
    '\bgit commit -m\b' \
    '\bgit .+?\b[[:xdigit:]]{7,64}\b'

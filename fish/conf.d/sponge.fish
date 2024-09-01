status is-interactive; or exit

set sponge_purge_only_on_exit true
set sponge_regex_patterns \
    '\bgit .*\b[\da-f]{7,40}\b' \
    '\bgit commit -m\b' \
    ' https://instagram\.\w+-\d\.fna\.fbcdn\.net/' \
    ' https://scontent-\w+-\d\.cdninstagram\.com/' \
    '^mv out\.\w+ '

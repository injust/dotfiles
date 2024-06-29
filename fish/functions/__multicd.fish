# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
function __multicd
    argparse -- $argv; or return

    set -l dots $argv[1]
    echo cd (string repeat --count=(math (string length -- $dots) - 1) ../)
end

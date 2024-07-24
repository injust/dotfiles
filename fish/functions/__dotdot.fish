# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
function __dotdot
    argparse -- $argv; or return
    set -l dots $argv[1]

    echo (string repeat --count=(math (string length -- $dots) - 1) ../)
end

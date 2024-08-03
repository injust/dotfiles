if not status is-interactive
    exit
end

abbr b3sum -- hashsum --b3sum
abbr cat -- bat
abbr grep -- rg
abbr wget -- wget2
abbr where -- type --all
abbr which -- type

# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
abbr dotdot --position=anywhere --regex='^\.{3,}$' --function=__dotdot

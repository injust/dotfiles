if not status is-interactive
    exit
end

abbr cat -- bat
abbr grep -- rg
abbr wget -- wget2
abbr where -- type --all
abbr which -- type

# Inspired by https://fishshell.com/docs/current/interactive.html#abbreviations
abbr dotdot --regex='^\.{2,}$' --function=__multicd

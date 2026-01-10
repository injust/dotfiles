# https://github.com/fish-shell/fish-shell/discussions/12302
# https://github.com/shell-pool/shpool/discussions/289

function __shpool_sessions
    shpool list | awk 'NR > 1 { print $1 }'
end

complete -c shpool -f

complete -c shpool -s l -l log-file -rF -d 'The file to write logs to'
complete -c shpool -s v -l verbose -d 'Show more in logs, may be provided multiple times'
complete -c shpool -s s -l socket -rF -d 'The path for the unix socket to listen on'
complete -c shpool -s c -l config-file -rF -d 'a toml file containing configuration'
complete -c shpool -s d -l daemonize -d 'automatically launch a daemon if one is not running'
complete -c shpool -s D -l no-daemonize -d 'do not automatically launch a daemon'

set -l commands version daemon attach detach kill list set-log-level help
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a version -d 'Print version'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a daemon -d 'Starts running a daemon that holds a pool of shells'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a attach -d 'Creates or attaches to an existing shell session'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a detach -d 'Make the given session detach from shpool'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a kill -d 'Kill the given sessions'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a list -d 'lists all the running shell sessions'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a set-log-level -d 'Dynamically change daemon log level'
complete -c shpool -n "not __fish_seen_subcommand_from $commands" -a help -d 'Print help or help of the given subcommand(s)'

complete -c shpool -n '__fish_seen_subcommand_from attach; and __fish_is_nth_token 2' -a '(__shpool_sessions)'
complete -c shpool -n '__fish_seen_subcommand_from attach' -s f -l force -d 'If a tty is already attached to the session, detach it first'
complete -c shpool -n '__fish_seen_subcommand_from attach' -l ttl -rf -d 'Automatically kill the session after the given time'
complete -c shpool -n '__fish_seen_subcommand_from attach' -s c -l cmd -rf -d "A command to run instead of the user's default shell"
complete -c shpool -n '__fish_seen_subcommand_from attach' -s d -l dir -rF -d 'The directory to start the shell in'

complete -c shpool -n '__fish_seen_subcommand_from detach kill' -a '(__shpool_sessions)'

complete -c shpool -n '__fish_seen_subcommand_from set-log-level; and __fish_is_nth_token 2' -a 'off error warn info debug trace'

complete -c shpool -n 'not __fish_seen_subcommand_from help' -s h -l help -d 'Print help'

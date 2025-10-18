status is-interactive; or exit

# https://github.com/fish-shell/fish-shell/blob/9870faa8beceb8807a79802cb6ff457e7a3bf956/share/functions/fish_title.fish:
# - Replace "caffeinate" with ☕
# - Strip leading whitespace from $argv[1]
# - Unshorten command, hostname, and pwd
function fish_title
    # If we're connected via SSH, we print the hostname
    set -l ssh
    set -q SSH_TTY; and set ssh "[$(prompt_hostname)]"

    set -l command (status current-command)
    if set -q argv[1]
        # An override for the current command is passed as the first parameter
        # This is used by `fg` to show the true process name, among others
        set -l command_override (string trim --left -- $argv[1])
        if test "$command" = caffeinate
            set command_override (string replace --regex --max-matches=1 '^caffeinate\b' ☕ -- $command_override)
        end
        set command $command_override
    else if test "$command" = fish
        # Don't print "fish" because it's redundant
        set command
    end

    echo -- $ssh $command (prompt_pwd --dir-length=0)
end

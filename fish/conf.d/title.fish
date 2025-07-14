status is-interactive || exit

# https://github.com/fish-shell/fish-shell/blob/9870faa8beceb8807a79802cb6ff457e7a3bf956/share/functions/fish_title.fish but unshortened
function fish_title
    # If we're connected via ssh, we print the hostname.
    set -l ssh
    set -q SSH_TTY
    and set ssh "[$(prompt_hostname)]"
    # An override for the current command is passed as the first parameter.
    # This is used by `fg` to show the true process name, among others.
    if set -q argv[1]
        echo -- $ssh $argv[1] (prompt_pwd --dir-length=0)
    else
        # Don't print "fish" because it's redundant
        set -l command (status current-command)
        if test "$command" = fish
            set command
        end
        echo -- $ssh $command (prompt_pwd --dir-length=0)
    end
end

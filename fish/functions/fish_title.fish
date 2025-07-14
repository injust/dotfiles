set fish_title_pwd_dir_length 1
set fish_title_pwd_full_dirs 2

# https://github.com/fish-shell/fish-shell/blob/9870faa8beceb8807a79802cb6ff457e7a3bf956/share/functions/fish_title.fish:
# - Unshorten command and hostname
# - Customize pwd shortening using $fish_title_pwd_dir_length and $fish_title_pwd_full_dirs

function fish_title
    # If connected via SSH, print the hostname
    set -f ssh
    set -q SSH_TTY; and set ssh "[$(prompt_hostname)]"

    set -f command (status current-command)
    if set -q argv[1]
        # An override for the current command is passed as the first parameter
        # This is used by `fg` to show the true process name, among others
        set command $argv[1]
    else if test "$command" = fish
        # Don't print "fish" because it's redundant
        set command
    end

    set -f pwd (prompt_pwd -d $fish_title_pwd_dir_length -D $fish_title_pwd_full_dirs)

    echo -- $ssh $command $pwd
end

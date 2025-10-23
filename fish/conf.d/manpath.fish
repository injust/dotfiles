if status is-login; and command -q /usr/libexec/path_helper
    # Unset inherited $MANPATH to stop macOS path_helper behaviour of prepending to man's standard search path (https://github.com/fish-shell/fish-shell/issues/10684)
    set -ge MANPATH
end

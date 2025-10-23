if status --is-login; and command -q /usr/libexec/path_helper
    # Remove inherited $MANPATH to stop macOS' path_helper from prepending to man's standard search path (https://github.com/fish-shell/fish-shell/issues/10684)
    set -ge MANPATH
end

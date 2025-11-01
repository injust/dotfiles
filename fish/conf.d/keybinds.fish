status is-interactive || exit

# Override platform-specific keybinds (https://github.com/fish-shell/fish-shell/issues/10926#issue-2753198774)
bind alt-left prevd-or-backward-word
bind alt-right nextd-or-forward-word
bind alt-backspace backward-kill-word
bind alt-delete kill-word
bind ctrl-left backward-token
bind ctrl-right forward-token
bind ctrl-backspace backward-kill-token
bind ctrl-delete kill-token
bind ctrl-alt-h backward-kill-word

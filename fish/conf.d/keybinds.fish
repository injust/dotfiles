status is-interactive || exit

# Override platform-dependent keybinds (https://github.com/fish-shell/fish-shell/commit/2bb5cbc95943b0168c8ceb5b639391299e767e72)
# https://github.com/fish-shell/fish-shell/issues/10926#issue-2753198774
bind --preset alt-left prevd-or-backward-word
bind --preset alt-right nextd-or-forward-word
bind --preset alt-backspace backward-kill-word
bind --preset alt-delete kill-word
bind --preset ctrl-left backward-token
bind --preset ctrl-right forward-token
bind --preset ctrl-backspace backward-kill-token
bind --preset ctrl-delete kill-token
bind --preset ctrl-alt-h backward-kill-word

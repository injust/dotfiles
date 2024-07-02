if status is-interactive
    fzf_configure_bindings --directory=\cf --git_log=\cg --git_status= --processes=

    set -g fzf_directory_opts --height=90% --border

    set -g fzf_fd_opts --hidden --follow

    set -g fzf_git_log_format '%C(bold blue)%h%C(reset) %C(cyan)%<(16)%ah%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'
    set -g fzf_git_log_opts --height=90% --border --prompt='Git Log ❯ ' --preview-window=default

    set -g fzf_git_status_opts --height=90% --border --prompt='Git Status ❯ '

    set -g fzf_history_opts --height=50% --min-height=16 --border --prompt='History ❯ '

    set -g fzf_processes_opts --height=90% --border --prompt='Processes ❯ '

    set -g fzf_variables_opts --height=90% --border --prompt='Variables ❯ '
end

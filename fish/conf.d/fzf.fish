status is-interactive; or exit

fzf_configure_bindings --directory=ctrl-f --git-log=ctrl-g --git-status= --history=ctrl-r --processes=ctrl-p --variables=ctrl-v

set fzf_fd_opts --hidden --no-require-git

set fzf_git_log_format '%C(bold blue)%h%C(reset) %C(cyan)%<(16)%ah%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'
set fzf_history_time_format '%b %d %H:%M'

set fzf_directory_opts --height=90% --border
set fzf_git_log_opts --height=90% --border --preview-window=default
set fzf_git_status_opts --height=90% --border
set fzf_history_opts --height=50% --min-height=16 --border
set fzf_processes_opts --height=90% --border
set fzf_variables_opts --height=90% --border

# Export because fzf preview is run in a non-interactive subshell
set -x fzf_preview_dir_cmd la --oneline --color=always
set -x fzf_preview_file_cmd bat --color=always --style=header-filesize,numbers

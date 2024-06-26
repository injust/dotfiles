status is-interactive || exit

fzf_configure_bindings --directory=ctrl-f --git_log=ctrl-g --git_status= --processes=

set fzf_fd_opts --hidden

set fzf_git_log_format '%C(bold blue)%h%C(reset) %C(cyan)%<(16)%ah%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'

set fzf_history_time_format '%a %b %e %H:%M'

set fzf_directory_opts --height=90% --border
set fzf_git_log_opts --height=90% --border --preview-window=default
set fzf_git_status_opts --height=90% --border
set fzf_history_opts --height=50% --min-height=16 --border
set fzf_processes_opts --height=90% --border
set fzf_variables_opts --height=90% --border

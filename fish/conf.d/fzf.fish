status is-interactive; or exit

set fzf_diff_highlighter delta --width=\$FZF_PREVIEW_COLUMNS
set fzf_fd_opts --hidden --no-require-git

set fzf_git_log_format '%C(auto)%h %C(blue)%<(16)%ah %C(auto)%d %s  %C(dim)[%an]%C(reset)'
set fzf_history_time_format '%b %d %H:%M'

set fzf_directory_opts --height=90% --border
set fzf_git_log_opts --nth=2.. --height=90% --border
set fzf_git_status_opts --height=90% --border
set fzf_history_opts --nth=2.. --height=50% --min-height=16 --border
set fzf_processes_opts --nth=2.. --height=90% --border
set fzf_variables_opts --height=90% --border

# Export because fzf preview runs in a non-interactive subshell
set -x fzf_preview_dir_cmd la --oneline --color=always
set -x fzf_preview_file_cmd bat --color=always --style=full,-changes,-grid,-numbers

fzf_configure_bindings --directory=ctrl-f --git-log=ctrl-g --git-status= --history=ctrl-r --processes= --variables=ctrl-v

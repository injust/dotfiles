if status is-interactive
    fzf_configure_bindings --directory=\cf --git_log=\cg --git_status= --processes=

    set -g fzf_git_log_format '%C(bold blue)%h%C(reset) %C(cyan)%<(16)%ah%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'
end

status is-interactive; or exit

set -a FZF_DEFAULT_OPTS --bind=shift-page-up:preview-page-up,shift-page-down:preview-page-down

fzf_configure_bindings --directory=ctrl-f --git-log=ctrl-g --git-status= --history=ctrl-r --processes= --variables=ctrl-v

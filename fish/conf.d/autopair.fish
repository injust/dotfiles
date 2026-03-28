status is-interactive; or exit

set -a autopair_left `
set -a autopair_right `
set -a autopair_pairs ``

# Use autopair for shift-tab completion (with pager search)
bind shift-tab _autopair_shift_tab

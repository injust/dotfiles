function _autopair_shift_tab
    commandline --paging-mode; and down-or-search; and return

    string match --regex --quiet -- '\$\S*"$' (commandline --current-token)
    and commandline --function end-of-line backward-delete-char
    commandline --function complete-and-search
end

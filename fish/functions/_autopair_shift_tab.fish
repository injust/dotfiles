function _autopair_shift_tab
    commandline --paging-mode; and down-or-search; and return

    commandline --current-token | string match -rq -- '\$\S*"$'
    and commandline -f end-of-line backward-delete-char
    commandline -f complete-and-search
end

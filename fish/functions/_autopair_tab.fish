# https://github.com/jorgebucaran/autopair.fish/blob/244bb1ebf74bf944a1ba1338fc1026075003c5e3/functions/_autopair_tab.fish

function _autopair_tab --description='autopair tab completion but with search'
    commandline --paging-mode; and down-or-search; and return

    string match --quiet --regex -- '\$[^\s]*"$' (commandline --current-token); and commandline --function end-of-line backward-delete-char
    commandline --function complete-and-search # instead of `complete`
end

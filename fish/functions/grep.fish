function grep --description='alias grep=grep --color -n --binary-files=without-match -D skip'
    command grep --color --line-number --binary-files=without-match --devices=skip $argv
end

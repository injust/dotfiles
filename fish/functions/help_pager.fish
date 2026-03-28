# https://github.com/sharkdp/bat/blob/master/README.md#highlighting---help-messages

function help_pager --description='alias help_pager=bat -plhelp' --wraps=bat
    bat --plain --language=help $argv
end

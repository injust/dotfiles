function _ls --description='alias _ls=eza -F --icons --hyperlink' --wraps=eza
    command eza --classify --icons --hyperlink=auto $argv
end

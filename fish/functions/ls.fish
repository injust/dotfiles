function ls --description='alias ls=eza -F --icons --hyperlink' --wraps=eza
    eza --classify --icons --hyperlink $argv
end

function ls --description='alias ls=eza -F --icons' --wraps=eza
    eza --classify --icons $argv
end

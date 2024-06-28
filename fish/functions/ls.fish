function ls --description='alias ls=eza --classify=always --icons' --wraps=eza
    eza --classify=always --icons $argv
end

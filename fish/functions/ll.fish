function ll --description='alias ll=la -l --smart-group --git-repos' --wraps=eza
    la --long --smart-group --git-repos $argv
end

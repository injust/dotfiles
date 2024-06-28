function ll --description='alias ll=ls --long --all --smart-group --git-repos' --wraps=eza
    ls --long --all --smart-group --git-repos $argv
end

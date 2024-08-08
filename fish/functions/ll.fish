function ll --description='alias ll=ls --long --all --git-repos' --wraps=eza
    ls --long --all --git-repos $argv
end

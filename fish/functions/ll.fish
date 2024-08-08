function ll --description='alias ll=ls -la --git-repos' --wraps=eza
    ls --long --all --git-repos $argv
end

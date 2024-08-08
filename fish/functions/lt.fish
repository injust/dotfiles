function lt --description='alias lt=ls --tree --all --git-ignore --group-directories-last' --wraps=eza
    ls --tree --all --git-ignore --group-directories-last $argv
end

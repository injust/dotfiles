function lt --description='alias lt=ls --tree --all --git-ignore --group-directories-first' --wraps=eza
    ls --tree --all --git-ignore --group-directories-first $argv
end

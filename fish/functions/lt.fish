function lt --description='alias lt=ls -Ta --git-ignore --group-directories-last' --wraps=eza
    ls --tree --all --git-ignore --group-directories-last $argv
end

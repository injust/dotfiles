function lt --description='alias lt=ls -Ta --git-ignore --group-directories-first' --wraps=eza
    ls --tree --all --git-ignore --group-directories-first $argv
end

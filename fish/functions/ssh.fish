function ssh --description='alias ssh=tssh' --wraps=tssh
    tssh $argv
end

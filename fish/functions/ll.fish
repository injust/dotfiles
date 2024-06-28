function ll --wraps=ls --wraps='ls -AFhl --color=auto' --description 'alias ll=ls -AFhl --color=auto'
    ls -AFhl --color=auto $argv
end

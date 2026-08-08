function bun --description='alias bun=bun repl'
    set -q argv[1]; or set argv repl
    command bun $argv
end

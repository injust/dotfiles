# https://github.com/micro-editor/micro/issues/2006

function micro --description='Run micro with mouse shift capturing'
    printf '\e[>1s'
    command micro $argv
    printf '\e[>s'
end

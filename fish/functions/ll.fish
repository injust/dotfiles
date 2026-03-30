function ll --description='alias ll=la -l --smart-group --git-repos' --wraps=eza
    set -l options --long --smart-group --git-repos

    if isatty stdout
        set -a options --classify=always --color=always --icons=always --hyperlink=always

        # https://github.com/eza-community/eza/issues/1584
        la $options $argv | string replace --regex "(->.+)$HOME/" '$1~/'
        return $pipestatus[1]
    else
        la $options $argv
    end
end

# Inspired by https://github.com/paulirish/dotfiles/blob/main/fish/aliases.fish
function abbr_git
    argparse -- $argv; or return
    set --local short $argv[1]
    set --local long $argv[2..-1]

    if not string match --regex --quiet '^\w[\w-]*$' -- $short
        or not string match --regex --quiet '^[\h\w-]+$' -- "$long"
        return 1
    end

    eval "function __git_$short
        set --local tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo $long
        else
            echo $short
        end
    end"

    abbr $short --position=anywhere --function=__git_$short
end

abbr gad -- git add

abbr_git br -- branch
abbr gbr -- git branch

abbr_git co -- checkout
abbr gco -- git checkout

abbr_git cp -- cherry-pick
abbr gcp -- git cherry-pick

abbr_git df -- diff
abbr gdf -- git diff

abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached
abbr gdfc -- git diff --cached

abbr glg -- git log

abbr_git lol -- log --decorate --oneline --graph
abbr glol -- git log --decorate --oneline --graph

abbr_git lola -- log --decorate --all --oneline --graph
abbr glola -- git log --decorate --all --oneline --graph

abbr_git rb -- rebase
abbr grb -- git rebase

abbr_git rba -- rebase --abort
abbr grba -- git rebase --abort

abbr_git rbc -- rebase --continue
abbr grbc -- git rebase --continue

abbr_git rbi -- rebase --interactive
abbr grbi -- git rebase --interactive

abbr_git sh -- show
abbr gsh -- git show

abbr_git st -- status
abbr gst -- git status

abbr_git sw -- switch
abbr gsw -- git switch

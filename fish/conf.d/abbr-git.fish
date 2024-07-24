if not status is-interactive
    exit
end

# Inspired by https://github.com/paulirish/dotfiles/blob/3412844c7a0a768864a0ac384731721de1dd9c2e/fish/aliases.fish#L44
function abbr_git
    argparse -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..]

    if not string match --regex --quiet '^\w[\-\w]*$' -- "$short"
        or not string match --regex --quiet '^[\-\h\w]+$' -- "$long"
        return 1
    end

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo -- $long
        else
            echo -- $short
        end
    end"

    abbr $short --position=anywhere --function=__git_$short
end

abbr gad -- git add
abbr_git ad -- add

abbr gbr -- git branch
abbr_git br -- branch

abbr gcm -- git commit
abbr_git cm -- commit

abbr gco -- git checkout
abbr_git co -- checkout

abbr gcp -- git cherry-pick
abbr_git cp -- cherry-pick

abbr gdf -- git diff
abbr_git df -- diff

abbr gdfc -- git diff --cached
abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached

abbr ggr -- git grep --break --heading
abbr_git gr -- grep --break --heading

abbr glg -- git log
abbr_git lg -- log

abbr glol -- git lol

abbr glola -- git lol --all
abbr_git lola -- lol --all

abbr grb -- git rebase
abbr_git rb -- rebase

abbr grba -- git rebase --abort
abbr_git rba -- rebase --abort

abbr grbc -- git rebase --continue
abbr_git rbc -- rebase --continue

abbr grbi -- git rebase --interactive
abbr_git rbi -- rebase --interactive

abbr gsh -- git show
abbr_git sh -- show

abbr gst -- git status
abbr_git st -- status

abbr gsw -- git switch
abbr_git sw -- switch

functions --erase abbr_git

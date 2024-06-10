status is-interactive || exit

# Inspired by https://github.com/paulirish/dotfiles/blob/a87b632425a8f5636a9c1f6b1a86f2c3f7be6270/fish/aliases.fish#L42
function abbr_git
    argparse -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..]

    string match --regex --quiet '^\w[\-\w]*$' -- "$short"
    and string match --regex --quiet '^[\-\h\w]+$' -- "$long"
    or return

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        test \$tokens[1] = git; or return
        echo -- $long
    end"

    abbr $short --position=anywhere --function=__git_$short
end

abbr gad -- git add

abbr gbr -- git branch
abbr_git br -- branch

abbr gco -- git checkout
abbr_git co -- checkout

abbr gcp -- git cherry-pick
abbr_git cp -- cherry-pick

abbr gdf -- git diff
abbr_git df -- diff

abbr gdfc -- git diff --cached
abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached

abbr glg -- git log

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

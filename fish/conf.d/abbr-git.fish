status is-interactive || exit

# Inspired by https://github.com/paulirish/dotfiles/blob/a87b632425a8f5636a9c1f6b1a86f2c3f7be6270/fish/aliases.fish#L42
function abbr_git
    argparse set-cursor -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..]
    set -l options (set -q _flag_set_cursor; and echo --set-cursor)

    if not string match --regex --quiet '^\w[\-\w]*$' -- "$short"
        or not string match --regex --quiet '^["%\-=@{}\h\w]+$' -- "$long"
        return 1
    end

    set -l escaped_short (string escape -- $short)
    set -l escaped_long (string escape -- $long)

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        if test \$tokens[1] = git
            echo -- $escaped_long
        else
            echo -- $escaped_short
        end
    end"

    abbr $short --position=anywhere $options --function=__git_$short
end

abbr gad -- git add
abbr_git ad -- add

abbr gam -- git commit --amend --no-edit
abbr_git am -- commit --amend --no-edit

abbr game -- git commit --amend
abbr_git ame -- commit --amend

abbr gbr -- git branch
abbr_git br -- branch

abbr gcl -- git clone
abbr_git cl -- clone

abbr gcm --set-cursor -- git commit --message='"%"'
abbr_git cm --set-cursor -- commit --message='"%"'

abbr gco -- git checkout
abbr_git co -- checkout

abbr gcp -- git cherry-pick
abbr_git cp -- cherry-pick

abbr gdf -- git diff
abbr_git df -- diff

abbr gdfc -- git diff --cached
abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached

abbr gdfu -- git diff @{upstream}
abbr_git dfu -- diff @{upstream}
abbr_git diffu -- diff @{upstream}

abbr gdfus -- git diff --stat @{upstream}
abbr_git dfus -- diff --stat @{upstream}

abbr ggr -- git grep --break --heading
abbr_git gr -- grep --break --heading

abbr glg -- git log
abbr_git lg -- log

abbr glgu -- git log @{upstream}
abbr_git lgu -- log @{upstream}

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

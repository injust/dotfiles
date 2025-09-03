status is-interactive || exit

# Inspired by https://github.com/paulirish/dotfiles/blob/a87b632425a8f5636a9c1f6b1a86f2c3f7be6270/fish/aliases.fish#L42
function abbr_git
    argparse set-cursor -- $argv; or return
    set -l short $argv[1]
    set -l long $argv[2..]

    string match --regex --quiet '^\w[\-\w]*$' -- "$short"
    and string match --regex --quiet '^[%\'\-:=@{}\h\w]+$' -- "$long"
    or return

    set -l escaped_long (string escape -- $long)

    eval "function __git_$short
        set -l tokens (commandline --tokenize)
        test \$tokens[1] = git; or return
        echo -- $escaped_long
    end"

    set -l options (set -q _flag_set_cursor; and echo --set-cursor)
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

abbr gbrd -- gs branch delete

abbr gcl -- git clone
abbr_git cl -- clone

abbr gclb -- git clone --filter=blob:none
abbr_git clb -- clone --filter=blob:none
abbr_git cloneb -- clone --filter=blob:none

abbr gcm --set-cursor -- git commit -m \"%\"
abbr_git cm --set-cursor -- commit -m \"%\"

abbr gco -- git checkout
abbr_git co -- checkout

abbr gcp -- git cherry-pick
abbr_git cp -- cherry-pick

abbr gdf -- git diff
abbr_git df -- diff

abbr gdfc -- git diff --cached
abbr_git dfc -- diff --cached
abbr_git diffc -- diff --cached

abbr gdft -- git difft
abbr_git dft -- difft

abbr gdftc -- git difft --cached
abbr_git dftc -- difft --cached

abbr gdfu -- git diff @{u}
abbr_git dfu -- diff @{u}
abbr_git diffu -- diff @{u}

abbr gdfus -- git diff --stat @{u}
abbr_git dfus -- diff --stat @{u}

abbr ggr -- git grep --break --heading
abbr_git gr -- grep --break --heading

abbr glg -- git log
abbr_git lg -- log

abbr glgu -- git log @{u}
abbr_git lgu -- log @{u}

abbr glol -- git lol

abbr glola -- git lola

abbr gpull -- git pull

abbr gpush -- git push
abbr gpushf -- git push --force-with-lease

abbr grb -- git rebase
abbr_git rb -- rebase

abbr grba -- git rebase --abort
abbr_git rba -- rebase --abort

abbr grbc -- git rebase --continue
abbr_git rbc -- rebase --continue

abbr grbi -- git rebase -i
abbr_git rbi -- rebase -i

abbr gsh -- git show
abbr_git sh -- show

abbr gsht -- git showt
abbr_git sht -- showt

abbr gsrr -- gs repo restack

abbr gst -- git status
abbr_git st -- status

abbr gsw -- gs branch checkout
abbr_git sw -- switch

abbr gswc -- gs branch create --no-commit
abbr_git swc -- switch -c

functions --erase abbr_git

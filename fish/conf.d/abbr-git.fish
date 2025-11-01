status is-interactive || exit

abbr gad -- git add
abbr --command=git ad -- add

abbr gam -- git commit --amend --no-edit
abbr --command=git am -- commit --amend --no-edit

abbr game -- git commit --amend
abbr --command=git ame -- commit --amend

abbr gbr -- git branch
abbr --command=git br -- branch

abbr gbrd -- gs branch delete

abbr gcl -- git clone
abbr --command=git cl -- clone

abbr gclb -- git clone --filter=blob:none
abbr --command=git clb -- clone --filter=blob:none
abbr --command=git cloneb -- clone --filter=blob:none

abbr gcm --set-cursor -- git commit -m \"%\"
abbr --command=git cm --set-cursor -- commit -m \"%\"

abbr gco -- git checkout
abbr --command=git co -- checkout

abbr gcp -- git cherry-pick
abbr --command=git cp -- cherry-pick

abbr gdf -- git diff
abbr --command=git df -- diff

abbr gdfc -- git diff --cached
abbr --command=git dfc -- diff --cached
abbr --command=git diffc -- diff --cached

abbr gdft -- git difft
abbr --command=git dft -- difft

abbr gdftc -- git difft --cached
abbr --command=git dftc -- difft --cached

abbr gdfu -- git diff @{u}
abbr --command=git dfu -- diff @{u}
abbr --command=git diffu -- diff @{u}

abbr gdfus -- git diff --stat @{u}
abbr --command=git dfus -- diff --stat @{u}

abbr ggr -- git grep --break --heading
abbr --command=git gr -- grep --break --heading

abbr glg -- git log
abbr --command=git lg -- log

abbr glgu -- git log @{u}
abbr --command=git lgu -- log @{u}

abbr glol -- git lol

abbr glola -- git lola

abbr gpull -- git pull

abbr gpush -- git push
abbr gpushf -- git push --force-with-lease

abbr grb -- git rebase
abbr --command=git rb -- rebase

abbr grba -- git rebase --abort
abbr --command=git rba -- rebase --abort

abbr grbc -- git rebase --continue
abbr --command=git rbc -- rebase --continue

abbr grbi -- git rebase -i
abbr --command=git rbi -- rebase -i

abbr gsh -- git show
abbr --command=git sh -- show

abbr gsht -- git showt
abbr --command=git sht -- showt

abbr gsrr -- gs repo restack

abbr gst -- git status
abbr --command=git st -- status

abbr gsw -- gs branch checkout
abbr --command=git sw -- switch

abbr gswc -- gs branch create --no-commit
abbr --command=git swc -- switch -c

if not status is-interactive
    exit
end

abbr gad -- git add
__abbr_git ad -- add

abbr gam -- git commit --amend --no-edit
__abbr_git am -- commit --amend --no-edit

abbr game -- git commit --amend
__abbr_git ame -- commit --amend

abbr gbr -- git branch
__abbr_git br -- branch

abbr gcl -- git clone
__abbr_git cl -- clone

abbr gclb -- git clone --filter=blob:none
__abbr_git clb -- clone --filter=blob:none
__abbr_git cloneb -- clone --filter=blob:none

abbr gcm --set-cursor -- git commit -m '"%"'
__abbr_git cm --set-cursor -- commit -m '"%"'

abbr gco -- git checkout
__abbr_git co -- checkout

abbr gcp -- git cherry-pick
__abbr_git cp -- cherry-pick

abbr gdf -- git diff
__abbr_git df -- diff

abbr gdfc -- git diff --cached
__abbr_git dfc -- diff --cached
__abbr_git diffc -- diff --cached

abbr gdft -- git difftool
__abbr_git dft -- difftool
__abbr_git difft -- difftool

abbr gdftc -- git difftool --cached
__abbr_git dftc -- difftool --cached

abbr gdfu -- git diff @{u}
__abbr_git dfu -- diff @{u}
__abbr_git diffu -- diff @{u}

abbr gdfus -- git diff @{u} --stat
__abbr_git dfus -- diff @{u} --stat

abbr ggr -- git grep --break --heading
__abbr_git gr -- grep --break --heading

abbr glg -- git log
__abbr_git lg -- log

abbr glgu -- git log @{u}
__abbr_git lgu -- log @{u}

abbr glol -- git lol

abbr glola -- git lol --all
__abbr_git lola -- lol --all

abbr grb -- git rebase
__abbr_git rb -- rebase

abbr grba -- git rebase --abort
__abbr_git rba -- rebase --abort

abbr grbc -- git rebase --continue
__abbr_git rbc -- rebase --continue

abbr grbi -- git rebase -i
__abbr_git rbi -- rebase -i

abbr gsh -- git show
__abbr_git sh -- show

abbr gsht -- git showt
__abbr_git sht -- showt

abbr gst -- git status
__abbr_git st -- status

abbr gsw -- git switch
__abbr_git sw -- switch

abbr gswc -- git switch -c
__abbr_git swc -- switch -c

functions --erase __abbr_git

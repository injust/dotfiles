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

abbr gcm --set-cursor -- git commit --message="'%'"
__abbr_git cm --set-cursor -- commit --message="'%'"

abbr gco -- git checkout
__abbr_git co -- checkout

abbr gcp -- git cherry-pick
__abbr_git cp -- cherry-pick

abbr gdf -- git diff
__abbr_git df -- diff

abbr gdfc -- git diff --cached
__abbr_git dfc -- diff --cached

abbr gdfu -- git diff @{upstream}
__abbr_git dfu -- diff @{upstream}

__abbr_git diffc -- diff --cached

__abbr_git diffu -- diff @{upstream}

abbr ggr -- git grep --break --heading
__abbr_git gr -- grep --break --heading

abbr glg -- git log
__abbr_git lg -- log

abbr glgu -- git log @{upstream}
__abbr_git lgu -- log @{upstream}

abbr glol -- git log --decorate --oneline --graph
__abbr_git lol -- log --decorate --oneline --graph

abbr glola -- git log --decorate --all --oneline --graph
__abbr_git lola -- log --decorate --all --oneline --graph

abbr grb -- git rebase
__abbr_git rb -- rebase

abbr grba -- git rebase --abort
__abbr_git rba -- rebase --abort

abbr grbc -- git rebase --continue
__abbr_git rbc -- rebase --continue

abbr grbi -- git rebase --interactive
__abbr_git rbi -- rebase --interactive

abbr gsh -- git show
__abbr_git sh -- show

abbr gst -- git status
__abbr_git st -- status

abbr gsw -- git switch
__abbr_git sw -- switch

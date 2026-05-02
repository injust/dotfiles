status is-interactive; or exit

ssh-add -l >/dev/null; or SSH_ASKPASS=true SSH_ASKPASS_REQUIRE=force ssh-add -Kq

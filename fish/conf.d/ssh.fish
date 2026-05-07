status is-interactive; and test -x /usr/lib/ssh-keychain.dylib; or exit

set -x SSH_SK_PROVIDER /usr/lib/ssh-keychain.dylib

set -lx SSH_ASKPASS true
set -lx SSH_ASKPASS_REQUIRE force

ssh-add -l >/dev/null; and exit
ssh-add ~/.ssh/id_ecdsa_sk_rk_git_signing 2>/dev/null # First key is used for Git signing (gpg.ssh.defaultKeyCommand)
ssh-add -Kq

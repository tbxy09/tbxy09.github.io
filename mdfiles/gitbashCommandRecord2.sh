
Administrator@SKY-20150108YSF MINGW64 ~
$ d:
bash: d:: command not found

Administrator@SKY-20150108YSF MINGW64 ~
$ cd d:

Administrator@SKY-20150108YSF MINGW64 /d
$ cd github

Administrator@SKY-20150108YSF MINGW64 /d/github
$ git clone https://github.com/marcoau/flipnote.git
Cloning into 'flipnote'...
remote: Counting objects: 363, done.
remote: Total 363 (delta 0), reused 0 (delta 0), pack-reused 363
Receiving objects: 100% (363/363), 48.96 KiB | 0 bytes/s, done.
Resolving deltas: 100% (189/189), done.
Checking connectivity... done.

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd flipnote

Administrator@SKY-20150108YSF MINGW64 /d/github/flipnote (build)
$ git remote -v
origin  https://github.com/marcoau/flipnote.git (fetch)
origin  https://github.com/marcoau/flipnote.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/flipnote (build)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/github
$ ls
augmented-traffic-control-master/
blecat/
bleno/
ble-swarm/
cordova-cli/
cordova-plugman/
datafeed-master/
debug-stream/
dict_uk/
duplexify/
ExpressMysqlJU/
FlashcardModel/
flipnote/
haloword/
JapaneseSegmentation/
LTE-Cell-Scanner/
mbed-master/
MongodbStudy/
Nodejs/
node-smtp-protocol/
Oneyardline.github.io/
PHP-Stanford-NLP/
pk/
PythonPrj/
rakutenma/
rakutenma-master.zip
README.md
RFIDIOt/
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
rtl8192eu-linux-driver/
SublimeText-Nodejs/
tbxy09.github.io/
tbxy09.github.io.backup/
test/
test2/
tornado_helloworld/
tushare/
VisualStudioProjExample/
vnpy/
vnpy_backup/
WebSocket/

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd tushare

Administrator@SKY-20150108YSF MINGW64 /d/github/tushare (master)
$ git remote -v
origin  https://github.com/waditu/tushare.git (fetch)
origin  https://github.com/waditu/tushare.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/tushare (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/github
$ ls
augmented-traffic-control-master/
blecat/
bleno/
ble-swarm/
cordova-cli/
cordova-plugman/
datafeed-master/
debug-stream/
dict_uk/
duplexify/
ExpressMysqlJU/
FlashcardModel/
flipnote/
haloword/
JapaneseSegmentation/
LTE-Cell-Scanner/
mbed-master/
MongodbStudy/
Nodejs/
node-smtp-protocol/
Oneyardline.github.io/
PHP-Stanford-NLP/
pk/
PythonPrj/
rakutenma/
rakutenma-master.zip
README.md
RFIDIOt/
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
rtl8192eu-linux-driver/
SublimeText-Nodejs/
tbxy09.github.io/
tbxy09.github.io.backup/
test/
test2/
tornado_helloworld/
tushare/
VisualStudioProjExample/
vnpy/
vnpy_backup/
WebSocket/

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd RFIDIOT

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote -v
origin  git@github.com:tbxy09/RFIDIOt.git (fetch)
origin  git@github.com:tbxy09/RFIDIOt.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git fetch

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/github
$ git branch
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd RFIOIOT
bash: cd: RFIOIOT: No such file or directory

Administrator@SKY-20150108YSF MINGW64 /d/github
$ git branch
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd RFIDIOT

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ get remote rename origin tbxy09
bash: get: command not found

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote rename origin tbxy09

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote -v
tbxy09  git@github.com:tbxy09/RFIDIOt.git (fetch)
tbxy09  git@github.com:tbxy09/RFIDIOt.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote add adam https://github.com/AdamLaurie/RFIDIOt.git

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote -v
adam    https://github.com/AdamLaurie/RFIDIOt.git (fetch)
adam    https://github.com/AdamLaurie/RFIDIOt.git (push)
tbxy09  git@github.com:tbxy09/RFIDIOt.git (fetch)
tbxy09  git@github.com:tbxy09/RFIDIOt.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ ^C

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git remote rename adam upstream

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git fetch upstream
From https://github.com/AdamLaurie/RFIDIOt
 * [new branch]      master     -> upstream/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -v
* master ed1732f Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git checkout master
Already on 'master'
Your branch is up-to-date with 'tbxy09/master'.

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git rebase upstream/master
Current branch master is up to date.

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -vv
* master ed1732f [tbxy09/master] Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ ^C

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ ^C

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ git branch -va
* master                  ed1732f Merge pull request #17 from zhovner/master
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   ed1732f Merge pull request #17 from zhovner/master
  remotes/upstream/master ed1732f Merge pull request #17 from zhovner/master

Administrator@SKY-20150108YSF MINGW64 /d/github/RFIDIOT (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/github
$ git clone -o tbxy09 https://github.com/tbxy09/awesome.git
Cloning into 'awesome'...
remote: Counting objects: 1262, done.
remote: Total 1262 (delta 0), reused 0 (delta Receiving objects: 100% (1262/1262                                                                                                                0), pack-reused 1262
Receiving objects: 100% (1262/1262), 363.56 KiB | 97.00 KiB/s, done.
Resolving deltas: 100% (571/571), done.
Checking connectivity... done.

Administrator@SKY-20150108YSF MINGW64 /d/github
$ git remote
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/github
$ cd awesome

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git remote
tbxy09

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git remote -v
tbxy09  https://github.com/tbxy09/awesome.git (fetch)
tbxy09  https://github.com/tbxy09/awesome.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git remote add upstream https://github.com/sindresorhus/awesome.git

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git remote -v
tbxy09  https://github.com/tbxy09/awesome.git (fetch)
tbxy09  https://github.com/tbxy09/awesome.git (push)
upstream        https://github.com/sindresorhus/awesome.git (fetch)
upstream        https://github.com/sindresorhus/awesome.git (push)

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git fetch upstream
remote: Counting objects: 6, done.
remote: Total 6 (delta 4), reused 4 (delta 4), pack-reused 2
Unpacking objects: 100% (6/6), done.
From https://github.com/sindresorhus/awesome
 * [new branch]      master     -> upstream/master

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -va
* master                  8d8d1d1 Close #587 PR: Add RxJava.
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git brahcn -vva
git: 'brahcn' is not a git command. See 'git --help'.

Did you mean this?
        branch

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -vva
* master                  8d8d1d1 [tbxy09/master] Close #587 PR: Add RxJava.
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git checkout tbxy09/master
Note: checking out 'tbxy09/master'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b <new-branch-name>

HEAD is now at 8d8d1d1... Close #587 PR: Add RxJava.

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome ((8d8d1d1...))
$ git branch -vva
* (HEAD detached at tbxy09/master) 8d8d1d1 Close #587 PR: Add RxJava.
  master                           8d8d1d1 [tbxy09/master] Close #587 PR: Add Rx                                                                                                                Java.
  remotes/tbxy09/HEAD              -> tbxy09/master
  remotes/tbxy09/master            8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master          c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome ((8d8d1d1...))
$ git checkout master
Switched to branch 'master'
Your branch is up-to-date with 'tbxy09/master'.

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git brahcn --va
git: 'brahcn' is not a git command. See 'git --help'.

Did you mean this?
        branch

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch --va
error: unknown option `va'
usage: git branch [<options>] [-r | -a] [--merged | --no-merged]
   or: git branch [<options>] [-l] [-f] <branch-name> [<start-point>]
   or: git branch [<options>] [-r] (-d | -D) <branch-name>...
   or: git branch [<options>] (-m | -M) [<old-branch>] <new-branch>

Generic options
    -v, --verbose         show hash and subject, give twice for upstream branch
    -q, --quiet           suppress informational messages
    -t, --track           set up tracking mode (see git-pull(1))
    --set-upstream        change upstream info
    -u, --set-upstream-to <upstream>
                          change the upstream info
    --unset-upstream      Unset the upstream info
    --color[=<when>]      use colored output
    -r, --remotes         act on remote-tracking branches
    --contains <commit>   print only branches that contain the commit
    --abbrev[=<n>]        use <n> digits to display SHA-1s

Specific git-branch actions:
    -a, --all             list both remote-tracking and local branches
    -d, --delete          delete fully merged branch
    -D                    delete branch (even if not merged)
    -m, --move            move/rename a branch and its reflog
    -M                    move/rename a branch, even if target exists
    --list                list branch names
    -l, --create-reflog   create the branch's reflog
    --edit-description    edit the description for the branch
    -f, --force           force creation, move/rename, deletion
    --no-merged <commit>  print only not merged branches
    --merged <commit>     print only merged branches
    --column[=<style>]    list branches in columns


Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch --va
error: unknown option `va'
usage: git branch [<options>] [-r | -a] [--merged | --no-merged]
   or: git branch [<options>] [-l] [-f] <branch-name> [<start-point>]
   or: git branch [<options>] [-r] (-d | -D) <branch-name>...
   or: git branch [<options>] (-m | -M) [<old-branch>] <new-branch>

Generic options
    -v, --verbose         show hash and subject, give twice for upstream branch
    -q, --quiet           suppress informational messages
    -t, --track           set up tracking mode (see git-pull(1))
    --set-upstream        change upstream info
    -u, --set-upstream-to <upstream>
                          change the upstream info
    --unset-upstream      Unset the upstream info
    --color[=<when>]      use colored output
    -r, --remotes         act on remote-tracking branches
    --contains <commit>   print only branches that contain the commit
    --abbrev[=<n>]        use <n> digits to display SHA-1s

Specific git-branch actions:
    -a, --all             list both remote-tracking and local branches
    -d, --delete          delete fully merged branch
    -D                    delete branch (even if not merged)
    -m, --move            move/rename a branch and its reflog
    -M                    move/rename a branch, even if target exists
    --list                list branch names
    -l, --create-reflog   create the branch's reflog
    --edit-description    edit the description for the branch
    -f, --force           force creation, move/rename, deletion
    --no-merged <commit>  print only not merged branches
    --merged <commit>     print only merged branches
    --column[=<style>]    list branches in columns


Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -vva
* master                  8d8d1d1 [tbxy09/master] Close #587 PR: Add RxJava.
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git merge upstream/master
Updating 8d8d1d1..c894bc3
Fast-forward
 readme.md | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git diff

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch
* master

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -va
* master                  c894bc3 [ahead 2] 😣
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -vva
* master                  c894bc3 [tbxy09/master: ahead 2] 😣
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   8d8d1d1 Close #587 PR: Add RxJava.
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git push tbxy09/master
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

fatal: 'tbxy09/master' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git push tbxy09:master
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

ssh: Could not resolve hostname tbxy09: Name or service not known
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git push tbxy09 master
Username for 'https://github.com': tbxy09
Password for 'https://tbxy09@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/tbxy09/awesome.git/'

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git push tbxy09 master
Username for 'https://github.com': tbxy09
Password for 'https://tbxy09@github.com':
Counting objects: 6, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 743 bytes | 0 bytes/s, done.
Total 6 (delta 4), reused 0 (delta 0)
To https://github.com/tbxy09/awesome.git
   8d8d1d1..c894bc3  master -> master

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$ git branch -vva
* master                  c894bc3 [tbxy09/master] 😣
  remotes/tbxy09/HEAD     -> tbxy09/master
  remotes/tbxy09/master   c894bc3 😣
  remotes/upstream/master c894bc3 😣

Administrator@SKY-20150108YSF MINGW64 /d/github/awesome (master)
$


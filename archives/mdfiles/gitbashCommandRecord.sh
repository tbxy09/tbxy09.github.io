

Administrator@SKY-20150108YSF MINGW64 ~
$ cd d:

Administrator@SKY-20150108YSF MINGW64 /d
$ d:
bash: d:: command not found

Administrator@SKY-20150108YSF MINGW64 /d
$ git config -l
core.symlinks=false
core.autocrlf=true
color.diff=auto
color.status=auto
color.branch=auto
color.interactive=true
pack.packsizelimit=2g
help.format=html
http.sslcainfo=D:/Git/mingw64/ssl/certs/ca-bundle.crt
diff.astextplain.textconv=astextplain
rebase.autosquash=true
filter.lfs.clean=git lfs clean %f
filter.lfs.smudge=git lfs smudge %f
filter.lfs.required=true
user.name=tbxy09
user.email=tb_xy09@163.com

Administrator@SKY-20150108YSF MINGW64 /d
$ d:
bash: d:: command not found

Administrator@SKY-20150108YSF MINGW64 /d
$ cd d:

Administrator@SKY-20150108YSF MINGW64 /d
$ cd d:/gitHub

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ ssh -T tbxy09@github.com
Permission denied (publickey).

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ cd ~/.ssh

Administrator@SKY-20150108YSF MINGW64 ~/.ssh
$ dir
github_rsa_backup  github_rsa_backup.pub  known_hosts_backup

Administrator@SKY-20150108YSF MINGW64 ~/.ssh
$ ssh -T tbxy09@github.com
The authenticity of host 'github.com (192.30.252.130)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'github.com,192.30.252.130' (RSA) to the list of know                                                                                                                n hosts.
Permission denied (publickey).

Administrator@SKY-20150108YSF MINGW64 ~/.ssh
$ ssh -keygen -t rsa -C "tb_xy09@163.com"
Bad escape character 'ygen'.

Administrator@SKY-20150108YSF MINGW64 ~/.ssh
$ ssh -keygen -t rsa -C "tb_xy09@163.com"
Bad escape character 'ygen'.

Administrator@SKY-20150108YSF MINGW64 ~/.ssh
$ cd ..

Administrator@SKY-20150108YSF MINGW64 ~
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /c/Users
$ cd d:

Administrator@SKY-20150108YSF MINGW64 /d
$ cd d:/gitHub

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ ssh -keygen -t rsa -C "tb_xy09@163.com"
Bad escape character 'ygen'.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ ssh-keygen -t rsa -C "tb_xy09@163.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/Administrator.SKY-20150108YSF/.ssh                                                                                                                /id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/Administrator.SKY-20150108YSF/.ss                                                                                                                h/id_rsa.
Your public key has been saved in /c/Users/Administrator.SKY-20150108YSF/.ssh/id                                                                                                                _rsa.pub.
The key fingerprint is:
SHA256:XrR80QfXV+N924XjfxMSY9+EBh6ueAU4ngvdXkwP1Oc tb_xy09@163.com
The key's randomart image is:
+---[RSA 2048]----+
|         ...+...=|
|        o  +o+o=*|
|       o +.o=**+B|
|      . ++.+++=+E|
|       .So*....+o|
|       ..o..  ...|
|        .      .o|
|                o|
|                 |
+----[SHA256]-----+

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ ssh -T tbxy09@github.com
Warning: Permanently added the RSA host key for IP address '192.30.252.131' to t                                                                                                                he list of known hosts.
Hi tbxy09! You've successfully authenticated, but GitHub does not provide shell                                                                                                                 access.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ dir
cordova-cli                                    tbxy09.github.io
cordova-plugman                                test
MongodbStudy                                   test2
Oneyardline.github.io                          tornado_helloworld
pk                                             tushare
README.md                                      VisualStudioProjExample
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911  vnpy

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ cd tbxy09.github.io

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git status
On branch master
nothing to commit, working directory clean

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git push -u origin master
fatal: remote error:
   is not a valid repository name
  Email support@github.com for help

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ cd .git

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ dir
branches        config       FETCH_HEAD  hooks  info  objects    refs
COMMIT_EDITMSG  description  HEAD        index  logs  ORIG_HEAD

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ gvim config
bash: gvim: command not found

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ vim config

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git push -u origin master
fatal: unable to access 'https://github.com/tbxy09/tbxy09.github.io.git fetch =                                                                                                                 +refs/heads/*:refs/remotes/origin/*/': The requested URL returned error: 400

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ cd .git

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ vim config

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io/.git (GIT_DIR!)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git push -u origin master



fatal: unable to access 'https://github.com/tbxy09/tbxy09.github.io.git fetch =                                                                                                                 +refs/heads/*:refs/remotes/origin/*/': The requested URL returned error: 400

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ vim .git/config

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git push -u origin master
fatal: unable to access 'https://github.com/tbxy09/tbxy09.github.io.git/': Empty                                                                                                                 reply from server

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ dir
cordova-cli                                    tbxy09.github.io
cordova-plugman                                test
MongodbStudy                                   test2
Oneyardline.github.io                          tornado_helloworld
pk                                             tushare
README.md                                      VisualStudioProjExample
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911  vnpy

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ cd test2

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/test2 (master)
$ git push -u origin master
Counting objects: 6, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 436 bytes | 0 bytes/s, done.
Total 6 (delta 0), reused 0 (delta 0)
To git@github.com:tbxy09/test2.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/test2 (master)
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/test2 (master)
$ vim .git/config

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/test2 (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ dir
cordova-cli                                    tbxy09.github.io
cordova-plugman                                test
MongodbStudy                                   test2
Oneyardline.github.io                          tornado_helloworld
pk                                             tushare
README.md                                      VisualStudioProjExample
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911  vnpy

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ cd VisualStudioProjExample

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ vim .git/config

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ dir
DialogRsp.con  tornado_helloworld.py  tradermain.vcxproj.filters
mongodbJunior  tradermain.sln         TradingDay.con
QueryRsp.con   tradermain.vcxproj

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ vim newfile.txt

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git add -all
error: did you mean `--all` (with two dashes ?)

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git add --all
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.ids.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.local.xm                                                                                                                l.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/encodings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/misc.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/modules.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/mongoSettings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/mongodbJunior.iml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/vcs.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/workspace.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/controldb.py.
The file will have its original line endings in your working directory.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git commit -m "add newfile.txt for test"
[master warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.                                                                                                                ids.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.local.xm                                                                                                                l.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/encodings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/misc.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/modules.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/mongoSettings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/workspace.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/controldb.py.
The file will have its original line endings in your working directory.
43c412b] add newfile.txt for test
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.ids.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.local.xm                                                                                                                l.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/dataSources.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/encodings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/misc.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/modules.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/mongoSettings.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/mongodbJunior.iml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/vcs.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/.idea/workspace.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in mongodbJunior/controldb.py.
The file will have its original line endings in your working directory.
 70 files changed, 1931 insertions(+), 3825 deletions(-)
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/ReleaseNotes.p                                                                                                                df
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/Android.mk
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/Start_Guide_P2P_User_Interface_Linux.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/install.sh
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/p2p_api_test_linux.c
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/p2p_test.h
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/WiFi_Direct_Us                                                                                                                er_Interface/p2p_ui_test_linux.c
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.1/Realtek_Wi-Fi_SDK_for_Android_JB_4_1.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.1/linux-3.0.42_STATION_INFO_ASSOC_REQ_IES.diff
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.1/realtek_wifi_SDK_for_android_JB_4.1_20130306.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.2/Realtek_Wi-Fi_SDK_for_Android_JB_4_2.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.2/linux-3.0.42_STATION_INFO_ASSOC_REQ_IES.diff
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_ref_co                                                                                                                des_JB_4.2/realtek_wifi_SDK_for_android_JB_4.2_20130208.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_refere                                                                                                                nce_codes/realtek_wifi_SDK_for_android.txt
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_refere                                                                                                                nce_codes/realtek_wifi_SDK_for_android_20120618.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_refere                                                                                                                nce_codes_ICS_nl80211/Realtek_Wi-Fi_SDK_for_Android_ICS.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/android_refere                                                                                                                nce_codes_ICS_nl80211/realtek_wifi_SDK_for_android_ICS_20120621.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/HowTo                                                                                                                _enable_driver_to_support_80211d.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/HowTo                                                                                                                _enable_driver_to_support_WIFI_certification_test.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/HowTo                                                                                                                _enable_the_power_saving_functionality.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/HowTo                                                                                                                _support_more_VidPids.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Mirac                                                                                                                ast_for_Realtek_WiFi.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Quick                                                                                                                _Start_Guide_for_Bridge.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Quick                                                                                                                _Start_Guide_for_Driver_Compilation_and_Installation.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Quick                                                                                                                _Start_Guide_for_SoftAP.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Quick                                                                                                                _Start_Guide_for_Station_Mode.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/RTK_P                                                                                                                2P_WFD_Programming_guide.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Realt                                                                                                                ek_WiFi_concurrent_mode_Introduction.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/SoftA                                                                                                                P_Mode_features.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/Wirel                                                                                                                ess_tools_porting_guide.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/linux                                                                                                                _dhcp_server_notes.txt
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/document/wpa_c                                                                                                                li_with_wpa_supplicant.pdf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/driver/rtl8188                                                                                                                C_8192C_usb_linux_v4.0.2_9000.20130911.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/hardware_wps_p                                                                                                                bc/Readme.txt
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/hardware_wps_p                                                                                                                bc/sample.c
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/install.sh
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/readme.txt
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wireless_tools                                                                                                                /wireless_tools.30.rtl.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/p2p_hostapd.conf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/rtl_hostapd_2G.conf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/rtl_hostapd_5G.conf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/wpa_0_8.conf
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/wpa_supplicant_8_jb_4.1_rtw_r7473.20130517.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/wpa_supplicant_8_jb_4.2_rtw_r8680.20130821.tar.gz
 delete mode 100644 RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/wpa_supplicant                                                                                                                _hostapd/wpa_supplicant_hostapd-0.8_rtw_r7475.20130812.tar.gz
 create mode 100644 mongodbJunior/.idea/.name
 create mode 100644 mongodbJunior/.idea/dataSources.ids
 create mode 100644 mongodbJunior/.idea/dataSources.local.xml
 create mode 100644 mongodbJunior/.idea/dataSources.xml
 create mode 100644 mongodbJunior/.idea/encodings.xml
 rename {tornado_helloworld => mongodbJunior}/.idea/misc.xml (70%)
 rename {tornado_helloworld => mongodbJunior}/.idea/modules.xml (51%)
 create mode 100644 mongodbJunior/.idea/mongoSettings.xml
 rename tornado_helloworld/.idea/tornado_helloworld.iml => mongodbJunior/.idea/m                                                                                                                ongodbJunior.iml (100%)
 rename {tornado_helloworld => mongodbJunior}/.idea/vcs.xml (100%)
 create mode 100644 mongodbJunior/.idea/workspace.xml
 create mode 100644 mongodbJunior/000875
 create mode 100644 mongodbJunior/000875.csv
 create mode 100644 mongodbJunior/000876.csv
 create mode 100644 mongodbJunior/__pycache__/link.cpython-34.pyc
 create mode 100644 mongodbJunior/__pycache__/tree.cpython-34.pyc
 create mode 100644 mongodbJunior/controldb.py
 create mode 100644 mongodbJunior/link.py
 create mode 100644 mongodbJunior/tree.py
 create mode 100644 mongodbJunior/xy.py
 create mode 100644 newfile.txt
 create mode 100644 tornado_helloworld.py
 delete mode 100644 tornado_helloworld/.idea/.name
 delete mode 100644 tornado_helloworld/.idea/workspace.xml
 delete mode 100644 tornado_helloworld/tornado_helloword.py

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git sttus
git: 'sttus' is not a git command. See 'git --help'.

Did you mean this?
        status

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git push -u origin master













Username for 'https://github.com': Password for 'https://github.com':
remote: Anonymous access to tbxy09/VisualStudioProjExample.git denied.
fatal: Authentication failed for 'https://github.com/tbxy09/VisualStudioProjExam                                                                                                                ple.git/'

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git push -u origin master
Username for 'https://github.com': tbxy09
Password for 'https://tbxy09@github.com':
Counting objects: 23, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (21/21), done.
Writing objects: 100% (23/23), 36.53 KiB | 0 bytes/s, done.
Total 23 (delta 1), reused 0 (delta 0)


error: RPC failed; result=55, HTTP code = 0
fatal: The remote end hung up unexpectedly
fatal: The remote end hung up unexpectedly
Everything up-to-date

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/VisualStudioProjExample (master)
$ cd ..

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ git clone git@github.com:tbxy09/tbxy09.github.io.git
Cloning into 'tbxy09.github.io'...
Warning: Permanently added the RSA host key for IP address '192.30.252.129' to t                                                                                                                he list of known hosts.
remote: Counting objects: 187, done.
ote: Total 187 (delta 0), reused 0 (delta 0), pack-reused 187
Receiving objects: 100% (187/187), 1005.52 KiB | 206.00 KiB/s, done.
Resolving deltas: 100% (75/75), done.
Checking connectivity... done.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ dir
cordova-cli                                    tbxy09.github.io.backup
cordova-plugman                                test
MongodbStudy                                   test2
Oneyardline.github.io                          tornado_helloworld
pk                                             tushare
README.md                                      VisualStudioProjExample
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911  vnpy
tbxy09.github.io

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ git add --all
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ dir
cordova-cli                                    tbxy09.github.io.backup
cordova-plugman                                test
MongodbStudy                                   test2
Oneyardline.github.io                          tornado_helloworld
pk                                             tushare
README.md                                      VisualStudioProjExample
RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911  vnpy
tbxy09.github.io

Administrator@SKY-20150108YSF MINGW64 /d/gitHub
$ cd tbxy09.github.io

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git add --all
warning: LF will be replaced by CRLF in 063015.html.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in 070115.html.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in 100115.html.
The file will have its original line endings in your working directory.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git commit -m 'update'
[master b434d24] update
warning: LF will be replaced by CRLF in 063015.html.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in 070115.html.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in 100115.html.
The file will have its original line endings in your working directory.
 57 files changed, 6464 insertions(+)
 create mode 100644 031116.md
 create mode 100644 031216.md
 create mode 100644 063015.html
 create mode 100644 070115.html
 create mode 100644 100115.html
 create mode 100644 coreallc.cpp
 create mode 100644 hisdetail190.csv
 create mode 100644 mdfiles/031116.md
 create mode 100644 mdfiles/062115.md
 create mode 100644 mdfiles/062215.md
 create mode 100644 "mdfiles/062215\346\231\232.md"
 create mode 100644 mdfiles/062315.md
 create mode 100644 mdfiles/062415.md
 create mode 100644 mdfiles/062515.md
 create mode 100644 mdfiles/062615.md
 create mode 100644 mdfiles/062715.md
 create mode 100644 mdfiles/062815.md
 create mode 100644 mdfiles/062915.md
 create mode 100644 mdfiles/063015.md
 create mode 100644 mdfiles/070115.md
 create mode 100644 mdfiles/070315.md
 create mode 100644 "mdfiles/070815\344\272\244\346\230\223\347\254\224\350\256\                                                                                                                260.md"
 create mode 100644 "mdfiles/071215\344\272\244\346\230\223\347\254\224\350\256\                                                                                                                260.md"
 create mode 100644 "mdfiles/0715\344\272\244\346\230\223\347\254\224\350\256\26                                                                                                                0.md"
 create mode 100644 "mdfiles/0716\344\272\244\346\230\223\347\254\224\350\256\26                                                                                                                0.md"
 create mode 100644 "mdfiles/0720\344\272\244\346\230\223\347\254\224\350\256\26                                                                                                                0.md"
 create mode 100644 mdfiles/072115.md
 create mode 100644 mdfiles/082215.md
 create mode 100644 mdfiles/082515.md
 create mode 100644 mdfiles/082615.md
 create mode 100644 mdfiles/090415.md
 create mode 100644 mdfiles/091015.md
 create mode 100644 mdfiles/092415.md
 create mode 100644 mdfiles/093015.md
 create mode 100644 mdfiles/100115.md
 create mode 100644 mdfiles/100315.md
 create mode 100644 mdfiles/100715.md
 create mode 100644 mdfiles/101115.md
 create mode 100644 mdfiles/101815.md
 create mode 100644 mdfiles/102215.md
 create mode 100644 mdfiles/102515.md
 create mode 100644 mdfiles/102815.md
 create mode 100644 mdfiles/103115.md
 create mode 100644 mdfiles/122115.md
 create mode 100644 "mdfiles/150719\344\272\244\346\230\223\347\254\224\350\256\                                                                                                                260.md"
 create mode 100644 "mdfiles/150722\344\272\244\346\230\223\347\254\224\350\256\                                                                                                                260.md"
 create mode 100644 "mdfiles/150818\344\272\244\346\230\223\347\254\224\350\256\                                                                                                                260.md"
 create mode 100644 mdfiles/README.md
 create mode 100644 mdfiles/index
 create mode 100644 mdfiles/index.md
 create mode 100644 mdfiles/linuxWirlessNetworkdriver.md
 create mode 100644 mdfiles/test.md
 create mode 100644 mdfiles/vnctpSummary.md
 create mode 100644 "mdfiles/\344\272\244\346\230\223\346\200\273\347\273\223\34                                                                                                                7\254\224\350\256\260.md"
 create mode 100644 test.txt
 create mode 100644 test2.txt
 create mode 100644 "\345\255\230\347\256\241\345\220\210\345\220\214.txt"

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git push -u origin master
Counting objects: 50, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (48/48), done.
Writing objects: 100% (50/50), 67.32 KiB | 0 bytes/s, done.
Total 50 (delta 4), reused 1 (delta 0)
To git@github.com:tbxy09/tbxy09.github.io.git
   b5d59c5..b434d24  master -> master
Branch master set up to track remote branch master from origin.

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ ssh
usage: ssh [-1246AaCfGgKkMNnqsTtVvXxYy] [-b bind_address] [-c cipher_spec]
           [-D [bind_address:]port] [-E log_file] [-e escape_char]
           [-F configfile] [-I pkcs11] [-i identity_file]
           [-L address] [-l login_name] [-m mac_spec]
           [-O ctl_cmd] [-o option] [-p port]
           [-Q cipher | cipher-auth | mac | kex | key]
           [-R address] [-S ctl_path] [-W host:port]
           [-w local_tun[:remote_tun]] [user@]hostname [command]

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ ^C

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$ ^C

Administrator@SKY-20150108YSF MINGW64 /d/gitHub/tbxy09.github.io (master)
$





Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj
$ git remote add origin git@github.com:tbxy09/PythonPrj.git
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj
$ git remote add origin 'git@github.com:tbxy09/PythonPrj.git'
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj
$ git remote add origin git@github.com:tbxy09/PythonPrj.git
fatal: Not a git repository (or any of the parent directories): .git

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj
$ git init
Initialized empty Git repository in D:/GitHub/PythonPrj/.git/

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git remote add origin git@github.com:tbxy09/PythonPrj.git

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git pull
remote: Counting objects: 10, done.
remote: Total 10 (delta 0), reused 0 (delta 0), pack-reused 10
Unpacking objects: 100% (10/10), done.
From github.com:tbxy09/PythonPrj
 * [new branch]      master     -> origin/master
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> master


Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ dir
QTrade  UnderLineTest

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git add --all
warning: LF will be replaced by CRLF in QTrade/ctp_data_type.py.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in UnderLineTest/ctp_data_type.py.
The file will have its original line endings in your working directory.

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git commit -n 'upodate Qtrade and Underlinetest to git'
error: pathspec 'upodate Qtrade and Underlinetest to git' did not match any file

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git commit -u 'upodate Qtrade and Underlinetest to git'
error: pathspec 'upodate Qtrade and Underlinetest to git' did not match any file

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git commit -m 'upodate Qtrade and Underlinetest to git'
[master (root-commit) 0276639] upodate Qtrade and Underlinetest to git
warning: LF will be replaced by CRLF in QTrade/ctp_data_type.py.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in UnderLineTest/ctp_data_type.py.
The file will have its original line endings in your working directory.
 13 files changed, 12898 insertions(+)
 create mode 100644 QTrade/DemoApi.py
 create mode 100644 QTrade/ctp_data_type.py
 create mode 100644 QTrade/test.py
 create mode 100644 UnderLineTest/A.py
 create mode 100644 UnderLineTest/A.pyc
 create mode 100644 UnderLineTest/B.py
 create mode 100644 UnderLineTest/B.pyc
 create mode 100644 UnderLineTest/README.txt
 create mode 100644 UnderLineTest/cd
 create mode 100644 UnderLineTest/ctp_data_type.py
 create mode 100644 UnderLineTest/main.py
 create mode 100644 UnderLineTest/python
 create mode 100644 UnderLineTest/sessionlog.sh

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git pull
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> master


Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git pull origin master
From github.com:tbxy09/PythonPrj
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 .idea/.name                  |   1 +
 .idea/misc.xml               |  21 +++
 .idea/modules.xml            |   8 +
 .idea/tornado_helloworld.iml |   8 +
 .idea/vcs.xml                |   6 +
 .idea/workspace.xml          | 398 +++++++++++++++++++++++++++++++++++++++++++
 tornado_helloword.py         |  21 +++
 7 files changed, 463 insertions(+)
 create mode 100644 .idea/.name
 create mode 100644 .idea/misc.xml
 create mode 100644 .idea/modules.xml
 create mode 100644 .idea/tornado_helloworld.iml
 create mode 100644 .idea/vcs.xml
 create mode 100644 .idea/workspace.xml
 create mode 100644 tornado_helloword.py

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$ git push origin master
Counting objects: 17, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (16/16), done.
Writing objects: 100% (17/17), 38.24 KiB | 0 bytes/s, done.
Total 17 (delta 1), reused 0 (delta 0)
To git@github.com:tbxy09/PythonPrj.git
   d11dfe2..eca8328  master -> master

Administrator@SKY-20150108YSF MINGW64 /d/GitHub/PythonPrj (master)
$


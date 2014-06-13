Dovecot tools
=============

Tools list:
-----------

 - "message_sync_SSH.sh" => with this script you can sync changes between 2 dovecot servers over SSH

Install steps (always last beta):
---------------------------------
 - git clone --depth 1 https://github.com/zorpat/Dovecot-Tools.git
 - open script you wanna use with you favourite editor (nano, vi, ..)
 - Follow installation and setup instruction on the beginning of every script

Check if updated is needed:
 - git pull --dry-run
 
Update:
 - "cd" into GIT project root folder
 - git pull

Update to a specifix commit:
 - git pull
 - git checkout <commit hash> (e.g. git chekout ca8c910)

To go back to "master":
 - git checkout master

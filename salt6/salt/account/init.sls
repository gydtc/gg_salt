disable-uid0:
  cmd.run:
    - name: "for user in $(awk -F: '($3 == 0) { print $1 }' /etc/passwd |grep -v root);do /usr/sbin/usermod -L $user ;echo $user ;done"

disable-emptypasswords:
  cmd.run:
    - name: "for user in $(awk -F: '($2 == \"\") { print $1 }' /etc/shadow) ;do /usr/sbin/usermod -L $user ;echo $user;done"

disable-sysaccount:
  cmd.script:
    - source: salt://account/files/set-account.sh

#disable-nfsnobody:
#  cmd.run:
#    - name: "usermod -L -s /dev/null nfsnobody"

set-profile-his:
  file.append:
   - name: /etc/profile.d/myhistory.sh
   - text:
     - "export HISTTIMEFORMAT=\"%F %T \"" 
     - "export PROMPT_COMMAND=\"history -a\""
     - "export HISTCONTROL=\"ignoredups\""
     - "export HISTSIZE=2000"  

set-profile-timeout:
  file.append:
   - name: /etc/profile.d/mytimeout.sh
   - text:
     - "export TMOUT=600"

set-profile-umask-profile:
    file.replace:
    - name: /etc/profile
    - pattern: "umask 0.*"
    - repl: "umask 027"

set-profile-umask-bashrc:
    file.replace:
    - name: /etc/bashrc
    - pattern: "umask 0.*"
    - repl: "umask 027"

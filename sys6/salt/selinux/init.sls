set-selinux-config:
  file.replace:
    - name: /etc/selinux/config
    - pattern: "^SELINUX=.*"
    - repl: "SELINUX=disabled"


stop-selinux:
  cmd.run:
   - name: setenforce 0

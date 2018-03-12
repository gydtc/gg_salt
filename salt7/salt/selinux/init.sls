set-selinux-config:
  file.replace:
    - name: /etc/selinux/config
    - pattern: "^SELINUX=.*"
    - repl: "SELINUX=disabled"


stop-selinux:
  cmd.run:
   - name: "/usr/sbin/setenforce 0"
   - unless: "/usr/sbin/getenforce | grep -i disabled"

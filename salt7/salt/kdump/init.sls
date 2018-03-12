set-kdump:
  file.replace:
    - name: /etc/kdump.conf
    - pattern: "^path.*"
    - repl: "path /kdump"

create-kdumpdir:
  file.directory:
    - name: /kdump
    - user: root
    - group: root
    - dir_mode: 755

set-sysctl:
  sysctl.present:
    - name: kernel.sysrq
    - value: 1
    - config: /etc/sysctl.d/kdump.conf

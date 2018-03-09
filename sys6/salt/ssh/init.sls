set-ssh-port-22:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}Port.*"
    - repl: "Port 22"

set-ssh-protocol-2:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}Protocol.*"
    - repl: "Protocol 2"

set-ssh-loglevel-info:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}LogLevel.*"
    - repl: "LogLevel INFO"

set-ssh-PermitRootLogin:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}PermitRootLogin.*"
    - repl: "PermitRootLogin no"

set-ssh-MaxAuthTries:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}MaxAuthTries.*"
    - repl: "MaxAuthTries 6"

set-ssh-PermitEmptyPasswords:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}PermitEmptyPasswords.*"
    - repl: "PermitEmptyPasswords no"

set-ssh-banner:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: "^[#]{0,1}Banner.*"
    - repl: "Banner /etc/issue"

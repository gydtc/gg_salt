set-logfile-rotate:
  file.replace:
    - name: /etc/logrotate.conf
    - pattern: "^rotate 4"
    - repl: "rotate 24"

set-crontab-config:
  file.replace:
    - name: /etc/crontab
    - pattern: "^MAILTO.*"
    - repl: "MAILTO=\"\""

set-su-step1:
  file.replace:
    - name: /etc/pam.d/su
    - pattern: ".*required.*pam_wheel.so.*use_uid.*"
    - repl: "auth            required        pam_wheel.so use_uid root_only"

set-su-step2:
  file.append:
    - name: /etc/login.defs
    - text:
      - "SU_WHEEL_ONLY yes"

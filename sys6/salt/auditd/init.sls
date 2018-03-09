set-repo:
  file.managed:
    - name: /etc/audit/audit.rules
    - source: salt://auditd/files/audit6.rules
    - user: root
    - group: root
    - mode: 640

modify-audit-log-num:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: "^num_logs =.*"
    - repl: "num_logs = 4"

modify-audit-log-size:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: "^max_log_file =.*"
    - repl: "max_log_file = 50"

modify-audit-flush:
  file.replace:
    - name: /etc/audit/auditd.conf
    - pattern: "^flush =.*"
    - repl: "flush = NONE"

stop-auditd:
  service.dead:
    - name: auditd

start-service:
  service.running:
    - name: auditd
    - enable: True

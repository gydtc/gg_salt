set-audit-rules:
  file.managed:
    - name: /etc/audit/rules.d/audit.rules
    - source: salt://auditd/files/audit7.rules
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
  cmd.run:
    - name: service auditd stop

start-service:
  service.running:
    - name: auditd
    - enable: True

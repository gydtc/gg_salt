install-ntp:
  pkg.installed:
    - name: ntp

set-ntp_ntpd.conf:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://ntp/files/ntp.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install-ntp

set-ntpd:
  file.replace:
    - name: /etc/sysconfig/ntpd
    - pattern: "^OPTIONS=.*"
    - repl: "OPTIONS=\"-u ntp:ntp -x -p /var/run/ntpd.pid -g\""

set-ntpdate:
  file.replace:
    - name: /etc/sysconfig/ntpdate
    - pattern: "^SYNC_HWCLOCK=.*"
    - repl: "SYNC_HWCLOCK=yes"

ntp_service:
  service.running:
    - name: ntpd
    - require:
      - pkg: install-ntp
    - watch:
      - file: set-ntp_ntpd.conf

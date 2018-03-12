set-timezone:
  cmd.run:
    - name: "/usr/bin/timedatectl set-timezone Asia/Shanghai"
    - unless: "/usr/bin/timedatectl | grep Asia/Shanghai"

install-chrony:
  pkg.installed:
    - name: chrony
    - unless: /usr/bin/rpm -qa | grep chrony

set-chrony_chrony.conf:
  file.managed:
    - name: /etc/chrony.conf
    - source: salt://ntp/files/chrony.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: install-chrony

set-chrony-service:
  service.running:
    - name: chronyd
    - enable: True
    - require:
      - pkg: install-chrony
    - watch:
      - file: set-chrony_chrony.conf

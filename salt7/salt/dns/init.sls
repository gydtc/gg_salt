{% set resolver = salt['pillar.get'](
    'resolver'
) %}

set-dns:
  file.managed:
   - name: /etc/resolv.conf
   - user: root
   - group: root
   - mode: '0644'
   - source: salt://dns/files/resolv.conf.jinja
   - template: jinja
   - defaults:
       nameservers: {{ resolver.nameservers }}

{% set serv1 = salt['pillar.get'](
    'centos7_server'
) %}

{% for s1 in serv1 %}
stop-{{ s1 }}:
  service.dead:
    - name: {{ s1 }}
    - enable: False
{% endfor %}

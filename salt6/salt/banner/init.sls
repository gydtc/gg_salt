{% for b1 in pillar['bannerfile'] %}
set-banner-{{ b1 }}:
  file.managed:
    - name: /etc/{{ b1 }}
    - source: salt://banner/files/issue.jinja
    - user: root
    - group: root
    - mode: 644
{% endfor %}

{% for item in pillar['sysctlinfo'] %}
set-sysctl-{{ item.i_name }}:
  sysctl.present:
    - name: {{ item.i_name }}
    - value: {{ item.i_nu }}
    - config: /etc/sysctl.d/mysysctl.conf
{% endfor %}

{% for item1 in pillar['fileinfo'] %}
set-{{ item1.i_path }}-{{ item1.i_mode }}:
  file.managed:
    - name: {{ item1.i_path }}
    - user: root
    - group: root
    - mode: {{ item1.i_mode }}
{% endfor %}

{% for item2 in pillar['dirinfo'] %}
set-{{ item2.i_path }}-{{ item2.i_mode }}:
  file.directory:
    - name: {{ item2.i_path }}
    - user: root
    - group: root
    - dir_mode: {{ item2.i_mode }}
{% endfor %}

{% for item3 in pillar['dangerfile'] %}
rm-dangerfiles-{{ item3 }}:
  file.absent:
    - name: {{ item3 }}
{% endfor %}

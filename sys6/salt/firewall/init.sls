stop-iptables:
  service.dead:
    - name: iptables
    - enable: False

stop-ip6tables:
  service.dead:
    - name: ip6tables
    - enable: False

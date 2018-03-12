stop-iptables1:
  service.dead:
    - name: iptables
    - enable: False

stop-ip6tables1:
  service.dead:
    - name: ip6tables
    - enable: False

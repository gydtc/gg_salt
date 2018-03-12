stop-firewalld1:
  service.dead:
    - name: firewalld
    - enable: False

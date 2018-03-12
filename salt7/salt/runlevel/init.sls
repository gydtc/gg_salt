set-runlevel3:
  cmd.run:
    - name: "/usr/bin/systemctl set-default multi-user.target"
    - unless: "/usr/bin/systemctl get-default | grep multi-user"

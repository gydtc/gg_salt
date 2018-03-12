set-nousb:
  file.append:
   - name: /etc/modprobe.d/usb-storage.conf 
   - text:
     - "install usb-storage /bin/true"

set-no-altctrldel:
  cmd.run:
    - name: "/usr/bin/systemctl mask ctrl-alt-del.target"
    - unless: "/usr/bin/systemctl is-enabled ctrl-alt-del.target | grep masked"

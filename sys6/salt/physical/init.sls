set-nousb:
  file.append:
   - name: /etc/modprobe.d/usb-storage.conf 
   - text:
     - "install usb-storage /bin/true"

set-no-altctrldel:
  file.append:
    - name: /etc/init/control-alt-delete.override
    - text:
      - "exec /usr/bin/logger -p kern.warn -t init \"Ctrl-Alt-Del was pressed and ignored\""

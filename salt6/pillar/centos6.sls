{% if grains['osmajorrelease'] == '6' %}  
centos6_server:
  - acpid
  - autofs
  - avahi-daemon
  - bluetooth
  - cups
  - dnsmasq
  - firstboot
  - iptables
  - ip6tables
  - NetworkManger
  - netfs
  - nfs
  - nfslock
  - rpcbind
  - rpcgssd
  - rpcidmapd
  - rpcsvcgssd
  - postfix
  - postgresql
  - pppoe-server
  - pcscd
  - smb
  - httpd
  - squid
  - smartd
  - spice-vdagentd
  - rhnsd
  - rhsmcertd
  - wpa_supplicant
  - winbind
  - ypbind
  - xinetd


dirinfo:
  - { i_path: '/tmp', i_mode: '1777' }
  - { i_path: '/var/tmp', i_mode: '1777' }

fileinfo:
  - { i_path: '/etc/passwd', i_mode: '0644' }
  - { i_path: '/etc/group', i_mode: '0644' }
  - { i_path: '/etc/shadow', i_mode: '0000' }
  - { i_path: '/etc/gshadow', i_mode: '0000' }
  - { i_path: '/etc/hosts', i_mode: '0664' }
  - { i_path: '/etc/inittab', i_mode: '0600' }
  - { i_path: '/etc/sysctl.conf', i_mode: '0644' }
  - { i_path: '/etc/crontab', i_mode: '0400' }
  - { i_path: '/etc/securetty', i_mode: '0400' }
  - { i_path: '/etc/login.defs', i_mode: '0640' }

{% endif %}



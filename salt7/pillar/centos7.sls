{% if grains['osmajorrelease'] == '7' %} 
centos7_server:
  - autofs
  - dnsmasq
  - firewalld
  - rhnsd
  - rhsmcertd
  - bluetooth
  - cups-browsed
  - cups
  - postfix
  - ModemManager
  - rpcbind
  - NetworkManager
  - rpc-statd
  - nfs-server
  - nfs-idmapd
  - nfs-config
  - nfs-mountd
  - upower
  - gssproxy
  - gdm
  - avahi-daemon
  - dmraid-activation
  - firstboot-graphical
  - iscsid
  - libvirtd
  - mdmonitor
  - microcode
  - qemu-guest-agent
  - spice-vdagentd
  - nfs-client.target
  - zebra
  - ypbind
  - rlogin.socket 
  - rsh.socket
  - rexec.socket 
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
  - { i_path: '/etc/sysctl.conf', i_mode: '0644' }
  - { i_path: '/etc/crontab', i_mode: '0400' }
  - { i_path: '/etc/securetty', i_mode: '0400' }
  - { i_path: '/etc/login.defs', i_mode: '0640' }

{% endif %}




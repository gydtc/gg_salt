resolver:
  nameservers:
    - 192.168.88.254
    - 192.168.88.253


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
{% endif %}

bannerfile:
  - issue
  - issue.net
  - motd

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

dangerfile:
  - /root/.rhosts
  - /root/.shosts
  - /etc/hosts.equiv
  - /etc/shosts.equiv

sysctlinfo:
  - { i_name: 'net.ipv4.tcp_max_syn_backlog', i_nu: '4096' }
  - { i_name: 'net.ipv4.tcp_syncookies', i_nu: '1' }
  - { i_name: 'net.ipv4.conf.all.rp_filter', i_nu: '1' }
  - { i_name: 'net.ipv4.conf.all.accept_source_route', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.all.accept_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.all.secure_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.default.rp_filter', i_nu: '1' }
  - { i_name: 'net.ipv4.conf.default.accept_source_route', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.default.accept_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.default.secure_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.ip_forward', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.all.send_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.conf.default.send_redirects', i_nu: '0' }
  - { i_name: 'net.ipv4.ip_no_pmtu_disc', i_nu: '1' }
  - { i_name: 'net.ipv4.icmp_echo_ignore_broadcasts', i_nu: '1' }

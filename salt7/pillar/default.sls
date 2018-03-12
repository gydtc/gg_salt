resolver:
  nameservers:
    - 192.168.88.254
    - 192.168.88.253

bannerfile:
  - issue
  - issue.net
  - motd

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

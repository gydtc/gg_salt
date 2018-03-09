set-repo:
  file.managed:
    - name: /etc/yum.repos.d/centos6
    - source: salt://yum/files/centos6.repo 
    - user: root
    - group: root
    - mode: 640

cp-yum-plugin-priorities:
  file.managed:
    - source: salt://yum/files/yum-plugin-priorities-1.1.30-40.el6.noarch.rpm
    - name: /tmp/yum-plugin-priorities-1.1.30-40.el6.noarch.rpm
  
install-yum-plugin-priorities:
  pkg.installed:
    - sources: 
      - yum-plugin-priorities: /tmp/yum-plugin-priorities-1.1.30-40.el6.noarch.rpm
    - unless: rpm -qa | grep yum-plugin-priorities

remove-yum-plugin-priorities:
  file.absent:
    - name: /tmp/yum-plugin-priorities-1.1.30-40.el6.noarch.rpm  

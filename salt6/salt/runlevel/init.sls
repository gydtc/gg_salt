set-runlevel3:
  file.replace:
    - name: /etc/inittab
    - pattern: "^id:.*"
    - repl: "id:3:initdefault:"

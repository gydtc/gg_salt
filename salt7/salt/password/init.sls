set-PASS_MAX_DAYS:
  file.replace:
    - name: /etc/login.defs
    - pattern: "^PASS_MAX_DAYS.*"
    - repl: "PASS_MAX_DAYS 90"

set-PASS_MIN_DAYS:
  file.replace:
    - name: /etc/login.defs
    - pattern: "^PASS_MIN_DAYS.*"
    - repl: "PASS_MIN_DAYS 2"

set-PASS_MIN_LEN:
  file.replace:
    - name: /etc/login.defs
    - pattern: "^PASS_MIN_LEN.*"
    - repl: "PASS_MIN_LEN 8"

set-PASS_WARN_AGE:
  file.replace:
    - name: /etc/login.defs
    - pattern: "^PASS_WARN_AGE.*"
    - repl: "PASS_WARN_AGE 7"

set-modify-password:
  file.replace:
    - name: /etc/pam.d/system-auth-ac
    - pattern: "^password.*requisite.*pam_pwquality.so.*"
    - repl: "password    requisite     pam_pwquality.so try_first_pass retry=3 minlen=8 dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1"

set-modify-password-multiplexing:
  file.replace:
    - name: /etc/pam.d/system-auth-ac
    - pattern: "^password.*sufficient.*pam_unix.so.*sha512.*shadow.*nullok.*try_first_pass.*use_authtok.*"
    - repl: "password    sufficient    pam_unix.so sha512 shadow nullok try_first_pass use_authtok remember=5"

set-modify-password-locking-sys:
  cmd.run:
    - name: "sed -i '/# User/aauth        required      pam_tally2.so onerr=fail deny=6 unlock_time=300 ' /etc/pam.d/system-auth-ac"
    - unless: grep "auth        required      pam_tally2.so onerr=fail deny=6 unlock_time=300" /etc/pam.d/system-auth-ac

set-modify-password-locking-pass:
  cmd.run:
    - name: "sed -i '/# User/aauth        required      pam_tally2.so onerr=fail deny=6 unlock_time=300 ' /etc/pam.d/password-auth-ac"
    - unless: grep "auth        required      pam_tally2.so onerr=fail deny=6 unlock_time=300" /etc/pam.d/password-auth-ac

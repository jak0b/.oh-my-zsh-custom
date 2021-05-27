# Generate random password
function rand {
  local length=${1:-64}
  local pass=$(tr -cd '0-9a-zA-Z!#$%&*+-=?@^_|' < /dev/urandom | fold -w"$length" | head -n1)
  printf '%s\n' "$pass"
  which wl-copy &>/dev/zero && wl-copy "$pass"
}

function randa {
  local length=${1:-64}
  local pass=$(tr -cd '0-9a-zA-Z' < /dev/urandom | fold -w$length | head -n1)
  printf '%s\n' "$pass"
  which wl-copy &>/dev/zero && wl-copy "$pass"
}

function b64_rand {
  local length=${1:-64}
  local pass=$(rand $length)
  local b64=$(echo -n "$pass" | base64 -w0)
  printf '%s\n' "$pass"
  printf '%s\n' "$b64"
  which wl-copy &>/dev/zero && wl-copy "$b64"
}

function b64_randa {
  local length=${1:-64}
  local pass=$(randa $length)
  local b64=$(echo -n "$pass" | base64 -w0)
  printf '%s\n' "$pass"
  printf '%s\n' "$b64"
  which wl-copy &>/dev/zero && wl-copy "$b64"
}

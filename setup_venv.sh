#!/bin/bash
set -euo pipefail

# Resolve paths from the script so previews also work from another directory.
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
readonly address='127.0.0.1:8000'
setsid -f xdg-open "http://$address" &
# Avoid localhost resolving to IPv6 on systems where IPv6 sockets are disabled.
# Explicit user arguments remain last so --dev-addr can override this default.
exec .venv/bin/zensical serve --dev-addr "$address" "$@"

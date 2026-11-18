#!/usr/bin/env bash
#
# scripts/install.sh — shae-zig-system-info
#
# Builds and installs the Zig system info CLI.
#
# Requires: zig compiler (not available locally). Cannot compile-test locally.
#
# Usage:
#   ./scripts/install.sh        # build release binary
#   ./scripts/install.sh run    # build + run
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_ROOT/src/main.zig"
BIN="$REPO_ROOT/main"

require_zig() {
    if ! command -v zig >/dev/null 2>&1; then
        echo "Error: zig compiler is required but not installed." >&2
        echo "Install Zig (https://ziglang.org/download/) and re-run." >&2
        exit 1
    fi
}

build() {
    require_zig
    zig build-exe -O ReleaseSafe -o "$BIN" "$SRC"
    echo "Built: $BIN"
}

run() {
    build
    "$BIN"
}

case "${1:-}" in
    run)
        shift
        "$BIN" "$@"
        ;;
    *)
        build
        echo "Done. Run with: ./main"
        ;;
esac

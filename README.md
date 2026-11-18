# shae-zig-system-info

System information CLI written in Zig, built on the SHAE Field Manual
design system: warm paper #F2EEE5, ink #191712, one oxide-red #B3341B
signal per view, 0px radius, 1px borders, border-defined cards,
monospace metadata, WCAG AA contrast, reduced-motion fallbacks.

## Features

- show OS, architecture, hostname
- show CPU info, memory usage
- show disk usage
- show uptime

## Install

Requires the Zig compiler (not available locally). Cannot compile-test locally.

```bash
# Install Zig: https://ziglang.org/download/

git clone https://github.com/spdedsec/shae-zig-system-info.git
cd shae-zig-system-info

zig build-exe -O ReleaseSafe -o main src/main.zig
```

Or use the installer:

```bash
./scripts/install.sh
```

## Usage

```bash
./main
```

Example output:

```
shae-zig-system-info
----------------------------------------
System
----------------------------------------
  OS:      Linux
  Arch:    x86_64
  Host:    shae-host

CPU
----------------------------------------
  Info:    /proc/cpuinfo (Linux)
  Cores:   8

Memory
----------------------------------------
  Info:    /proc/meminfo (Linux)

Disk
----------------------------------------
  Path:    /
  Type:    directory
  Size:    4096 bytes

Uptime
----------------------------------------
  Up:      2 days, 3 hours, 12 minutes
```

(/proc-based metrics are Linux-specific; other OSes print build-time
OS/arch and best-effort values.)

## Design system

See `DESIGN.md`. Console rendering applies the SHAE palette via ANSI
escapes:

- Warm paper `#F2EEE5` — section rules
- Ink `#191712` — primary text
- Oxide `#B3341B` — single signal (section headers/errors)

Tables/lists are left-aligned, monospace, hairline-ruled. No gradients,
glass, pills, or shadows.

## Build / release

```bash
make build      # zig build-exe -O ReleaseSafe
make release    # source tarball for GitHub release v0.1.0
```

The Zig compiler is required and is not available locally.

## License

MIT. See `LICENSE`.

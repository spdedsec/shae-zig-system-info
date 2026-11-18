# shae-zig-system-info (Deutsch)

System-Informationen-CLI in Zig, nach dem SHAE Field Manual Design System:
warmes Papier #F2EEE5, Tinte #191712, ein Oxid-Rot #B3341B als einziges
Signal pro Ansicht, 0px Radius, 1px Rahmen, Monospace-Metadaten,
WCAG-AA-Kontrast, reduzierte-Bewegung-Fallbacks.

## Funktionen

- Betriebssystem, Architektur, Hostname anzeigen
- CPU- und Arbeitsspeicher-Auslastung anzeigen
- Festplattennutzung anzeigen
- Laufzeit anzeigen

## Installation

Erfordert den Zig-Compiler (nicht lokal verfügbar). Kann nicht lokal
kompiliert-getestet werden.

```bash
# Zig installieren: https://ziglang.org/download/

git clone https://github.com/spdedsec/shae-zig-system-info.git
cd shae-zig-system-info

zig build-exe -O ReleaseSafe -o main src/main.zig
```

## Verwendung

```bash
./main
```

## Design-System

Siehe `DESIGN.md`. Die Konsolenausgabe nutzt die SHAE-Palette über
ANSI-Escape-Sequenzen.

## Lizenz

MIT. Siehe `LICENSE`.

# shae-zig-system-info (Español)

CLI de información del sistema en Zig, basado en el SHAE Field Manual
design system: papel cálido #F2EEE5, tinta #191712, una señal óxido
#B3341B por vista, 0px de radio, bordes de 1px, metadatos monoespaciados,
contraste WCAG AA, fallback de movimiento reducido.

## Funcionalidades

- Mostrar SO, arquitectura, nombre de host
- Mostrar información de CPU, uso de memoria
- Mostrar uso de disco
- Mostrar tiempo de actividad

## Instalación

Requiere el compilador Zig (no disponible localmente). No se puede
compilar-probar localmente.

```bash
# Instalar Zig: https://ziglang.org/download/

git clone https://github.com/spdedsec/shae-zig-system-info.git
cd shae-zig-system-info

zig build-exe -O ReleaseSafe -o main src/main.zig
```

## Uso

```bash
./main
```

## Sistema de diseño

Véase `DESIGN.md`. La salida por consola usa la paleta SHAE mediante
secuencias de escape ANSI.

## Licencia

MIT. Véase `LICENSE`.

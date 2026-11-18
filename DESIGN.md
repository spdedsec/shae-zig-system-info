# DESIGN.md — shae-zig-system-info

SHAE Field Manual design system applied to this Zig system info CLI.

## Palette

| Role | Hex | Usage |
|------|-----|-------|
| Warm paper | #F2EEE5 | Section rules, negative space |
| Ink | #191712 | Primary text, titles |
| Oxide signal | #B3341B | Errors, single signal per view |

Colours are emitted via ANSI escapes in `src/main.zig`.

## Typography

- Body / labels: Instrument Sans (terminal falls back to system mono)
- Code / metadata: JetBrains Mono — tabular numerals keep columns aligned

## Layout & form

- 0px radius — no rounded corners
- 1px borders — hairline rules (`----`) separate sections
- Border-defined cards — each info block is framed by rules
- Left-aligned data — every field is left-aligned
- Uppercase only for short labels — section names stay lowercase

## Motion

CLI; no animated UI. Any future TUI layer must use 140–240ms state
changes, transform/opacity/clip-path only, with reduced-motion /
reduced-transparency fallbacks. No animation libraries.

## Accessibility

- WCAG AA contrast between ink and paper
- Complete keyboard paths — every operation is keyboard-driven
- No horizontal overflow — values are printed on single lines

## Anti-patterns avoided

No gradients, glows, pills, glass cards, shadows, or centered heroes.

## Files

- `src/main.zig` — source, ANSI-coloured console UI
- `README.md`, `DESIGN.md` — docs
- `scripts/install.sh`, `Makefile` — build/test/release
- `docs/DE.md`, `docs/ES.md` — German / Spanish

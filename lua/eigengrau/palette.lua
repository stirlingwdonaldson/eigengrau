-- Eigengrau color palette
--
-- Standard Solarized Dark values by Ethan Schoonover.
--   - 8 monotone base colors forming a precise luminance ramp
--   - 8 accent colors with matched perceptual weight
--   - Background and foreground selected for long-session readability
--
-- Luminance ramp (dark → light):
--   base03 < base02 < base01 < base00 < base0 < base1 < base2 < base3
--   bg deep   bg main  bg emph   content  fg body  fg emph  light bg  light fg

return {
	-- ── Base tones (monotone luminance ramp) ────────────────
	base03 = "#002b36", -- darkest bg: floats, sidebars
	base02 = "#073642", -- main editor bg
	base01 = "#586e75", -- bg emphasis: cursorline, selection
	base00 = "#657b83", -- UI chrome: borders, statusline bg
	base0  = "#839496", -- default foreground (body text)
	base1  = "#93a1a1", -- emphasized content: active line nr
	base2  = "#eee8d5", -- strong emphasis: titles, bold text
	base3  = "#fdf6e3", -- brightest fg: cursor, inverted text

	-- ── Accent colors (8 hues, perceptually uniform) ────────
	yellow  = "#b58900", -- constants, numbers, booleans
	orange  = "#cb4b16", -- escape chars, regex, special strings
	red     = "#dc322f", -- errors, deletions, dangerous builtins
	magenta = "#d33682", -- types, interfaces, classes, modules
	blue    = "#268bd2", -- keywords: import, const, function, if, for, return
	cyan    = "#2aa198", -- functions, methods, calls, links, tags, directories
	green   = "#859900", -- strings, characters, additions, success
	violet  = "#6c71c4", -- (unused by init.lua, available for extensions)

	-- ── Derived (dimmed variants for subtle contexts) ───────
	red_dim     = "#8b1a1a", -- deprecated strikethrough
	yellow_dim  = "#7a5c00", -- muted emphasis
	blue_dim    = "#1a4f6e", -- fold column bg
	green_dim   = "#0a2a10", -- diff add bg
	red_bg      = "#2a0f0f", -- diff delete bg, error virt text bg
	yellow_bg   = "#2a2000", -- diff change bg, warn virt text bg
	blue_bg     = "#0a1a2a", -- info virt text bg
	cyan_bg     = "#0a2825", -- hint virt text bg
}

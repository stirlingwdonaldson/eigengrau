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
	base03 = "#0a1014", -- darkest bg: floats, sidebars
	base02 = "#000000", -- main editor bg
	base01 = "#1a2028", -- bg emphasis: cursorline, selection
	base00 = "#6e7a85", -- UI chrome: borders, statusline bg, comments
	base0  = "#b0bcc6", -- default foreground (body text)
	base1  = "#cdd6dc", -- emphasized content: active line nr
	base2  = "#f0ece0", -- strong emphasis: titles, bold text
	base3  = "#ffffff", -- brightest fg: cursor, inverted text

	-- ── Accent colors (8 hues, boosted saturation + brightness) ──
	yellow  = "#e0ad00", -- constants, numbers, booleans
	orange  = "#f06020", -- escape chars, regex, special strings
	red     = "#f04040", -- errors, deletions, dangerous builtins
	magenta = "#e846a0", -- types, interfaces, classes, modules
	blue    = "#3ea8ff", -- keywords: import, const, function, if, for, return
	cyan    = "#40d0c0", -- functions, methods, calls, links, tags, directories
	green   = "#a0c800", -- strings, characters, additions, success
	violet  = "#8a8ef0", -- (unused by init.lua, available for extensions)

	-- ── Derived (dimmed variants for subtle contexts) ───────
	red_dim     = "#a02020", -- deprecated strikethrough
	yellow_dim  = "#8a6a00", -- muted emphasis
	blue_dim    = "#1e5a80", -- fold column bg
	green_dim   = "#0e3218", -- diff add bg
	red_bg      = "#301010", -- diff delete bg, error virt text bg
	yellow_bg   = "#302800", -- diff change bg, warn virt text bg
	blue_bg     = "#0e1e30", -- info virt text bg
	cyan_bg     = "#0e302a", -- hint virt text bg
}

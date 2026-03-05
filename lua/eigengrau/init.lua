local M = {}

local function hi(group, settings)
	vim.api.nvim_set_hl(0, group, settings)
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "eigengrau"

	local c = require("eigengrau.palette")

	-- ═══════════════════════════════════════════════════════════
	-- SEMANTIC KEY:
	--
	--   blue     → keywords (import, const, function, if, for, return)
	--   cyan     → functions, methods, calls, links, tags, directories
	--   magenta  → types, interfaces, classes, modules
	--   green    → strings, characters
	--   yellow   → constants, numbers, booleans
	--   orange   → escape chars, regex, special strings
	--   red      → errors, dangerous builtins, deletions
	--
	--   base0    → default body text, identifiers, variables
	--   base00   → comments (low contrast, recedes)
	--   base1    → emphasized text (active line nr)
	--   base2    → strong emphasis (titles, bold)
	-- ═══════════════════════════════════════════════════════════

	-- ── Editor ──────────────────────────────────────────────
	hi("Normal",							{ fg = c.base0, bg = c.base02 })
	hi("NormalFloat",						{ fg = c.base0, bg = c.base03 })
	hi("FloatBorder",						{ fg = c.base00, bg = c.base03 })
	hi("FloatTitle",						{ fg = c.base2, bg = c.base03, bold = true })
	hi("Cursor",							{ fg = c.base02, bg = c.base3 })
	hi("CursorLine",						{ bg = c.base01 })
	hi("CursorColumn",						{ bg = c.base01 })
	hi("ColorColumn",						{ bg = c.base01 })
	hi("LineNr",							{ fg = c.base00 })
	hi("CursorLineNr",						{ fg = c.base1, bold = true })
	hi("SignColumn",						{ bg = c.base02 })
	hi("VertSplit",							{ fg = c.base00 })
	hi("WinSeparator",						{ fg = c.base00 })
	hi("Folded",							{ fg = c.base0, bg = c.base01 })
	hi("FoldColumn",						{ fg = c.base00, bg = c.base02 })
	hi("NonText",							{ fg = c.base00 })
	hi("SpecialKey",						{ fg = c.base00 })
	hi("Whitespace",						{ fg = c.base01 })
	hi("EndOfBuffer",						{ fg = c.base02 })

	-- ── Selections and Search ───────────────────────────────
	hi("Visual",							{ bg = c.base00 })
	hi("VisualNOS",							{ bg = c.base00 })
	hi("Search",							{ fg = c.base02, bg = c.yellow })
	hi("IncSearch",							{ fg = c.base02, bg = c.yellow })
	hi("CurSearch",							{ fg = c.base02, bg = c.yellow })
	hi("Substitute",						{ fg = c.base02, bg = c.red })

	-- ── Popups and Menus ────────────────────────────────────
	hi("Pmenu",								{ fg = c.base0, bg = c.base01 })
	hi("PmenuSel",							{ fg = c.base2, bg = c.base00 })
	hi("PmenuSbar",							{ bg = c.base01 })
	hi("PmenuThumb",						{ bg = c.base00 })
	hi("WildMenu",							{ fg = c.base02, bg = c.cyan })

	-- ── Statusline and Tabline ──────────────────────────────
	hi("StatusLine",						{ fg = c.base1, bg = c.base00 })
	hi("StatusLineNC",						{ fg = c.base00, bg = c.base01 })
	hi("TabLine",							{ fg = c.base0, bg = c.base01 })
	hi("TabLineFill",						{ bg = c.base03 })
	hi("TabLineSel",						{ fg = c.base2, bg = c.base02 })
	hi("WinBar",							{ fg = c.base1, bg = c.base02 })
	hi("WinBarNC",							{ fg = c.base00, bg = c.base02 })

	-- ── Messages ────────────────────────────────────────────
	hi("MsgArea",							{ fg = c.base0 })
	hi("ModeMsg",							{ fg = c.cyan, bold = true })
	hi("MoreMsg",							{ fg = c.blue })
	hi("WarningMsg",						{ fg = c.orange })
	hi("ErrorMsg",							{ fg = c.red, bold = true })
	hi("Question",							{ fg = c.blue })
	hi("Title",								{ fg = c.base2, bold = true })
	hi("Directory",							{ fg = c.cyan })
	hi("MatchParen",						{ fg = c.base2, bg = c.base00, bold = true })

	-- ── Diff ────────────────────────────────────────────────
	hi("DiffAdd",							{ fg = c.green, bg = c.green_dim })
	hi("DiffChange",						{ fg = c.yellow, bg = c.yellow_bg })
	hi("DiffDelete",						{ fg = c.red, bg = c.red_bg })
	hi("DiffText",							{ fg = c.yellow, bg = c.yellow_bg, bold = true })

	-- ── Diagnostics ─────────────────────────────────────────
	hi("DiagnosticError",					{ fg = c.red })
	hi("DiagnosticWarn",					{ fg = c.orange })
	hi("DiagnosticInfo",					{ fg = c.cyan })
	hi("DiagnosticHint",					{ fg = c.magenta })
	hi("DiagnosticOk",						{ fg = c.green })
	hi("DiagnosticUnderlineError",			{ undercurl = true, sp = c.red })
	hi("DiagnosticUnderlineWarn",			{ undercurl = true, sp = c.orange })
	hi("DiagnosticUnderlineInfo",			{ undercurl = true, sp = c.cyan })
	hi("DiagnosticUnderlineHint",			{ undercurl = true, sp = c.magenta })
	hi("DiagnosticVirtualTextError",		{ fg = c.red, bg = c.red_bg })
	hi("DiagnosticVirtualTextWarn",			{ fg = c.orange, bg = c.yellow_bg })
	hi("DiagnosticVirtualTextInfo",			{ fg = c.cyan, bg = c.blue_bg })
	hi("DiagnosticVirtualTextHint",			{ fg = c.magenta, bg = c.cyan_bg })

	-- ── Syntax (legacy Vim groups) ──────────────────────────
	--   blue=keywords, cyan=functions, magenta=types,
	--   green=strings, yellow=constants, orange=special, red=errors
	hi("Comment",							{ fg = c.base00, italic = true })
	hi("Constant",							{ fg = c.yellow })
	hi("String",							{ fg = c.green })
	hi("Character",							{ fg = c.green })
	hi("Number",							{ fg = c.yellow })
	hi("Boolean",							{ fg = c.yellow })
	hi("Float",								{ fg = c.yellow })
	hi("Identifier",						{ fg = c.base0 })
	hi("Function",							{ fg = c.cyan })
	hi("Statement",							{ fg = c.blue })
	hi("Conditional",						{ fg = c.blue })
	hi("Repeat",							{ fg = c.blue })
	hi("Label",								{ fg = c.blue })
	hi("Operator",							{ fg = c.base0 })
	hi("Keyword",							{ fg = c.blue })
	hi("Exception",							{ fg = c.blue })
	hi("PreProc",							{ fg = c.blue })
	hi("Include",							{ fg = c.blue })
	hi("Define",							{ fg = c.blue })
	hi("Macro",								{ fg = c.blue })
	hi("PreCondit",							{ fg = c.blue })
	hi("Type",								{ fg = c.magenta })
	hi("StorageClass",						{ fg = c.blue })
	hi("Structure",							{ fg = c.magenta })
	hi("Typedef",							{ fg = c.magenta })
	hi("Special",							{ fg = c.orange })
	hi("SpecialChar",						{ fg = c.orange })
	hi("Tag",								{ fg = c.cyan })
	hi("Delimiter",							{ fg = c.base0 })
	hi("SpecialComment",					{ fg = c.base00, italic = true })
	hi("Debug",								{ fg = c.red })
	hi("Underlined",						{ fg = c.cyan, underline = true })
	hi("Ignore",							{ fg = c.base00 })
	hi("Error",								{ fg = c.red, bold = true })
	hi("Todo",								{ fg = c.orange, bold = true })

	-- ── Treesitter ──────────────────────────────────────────
	-- Variables and identifiers: base tones (no color noise)
	hi("@variable",							{ fg = c.base0 })
	hi("@variable.builtin",				{ fg = c.red })
	hi("@variable.parameter",				{ fg = c.base0, italic = true })
	hi("@variable.member",					{ fg = c.base0 })

	-- Constants and literals: yellow
	hi("@constant",							{ fg = c.yellow })
	hi("@constant.builtin",				{ fg = c.yellow })
	hi("@constant.macro",					{ fg = c.yellow })

	-- Modules and labels
	hi("@module",							{ fg = c.magenta })
	hi("@label",							{ fg = c.blue })

	-- Strings: green
	hi("@string",							{ fg = c.green })
	hi("@string.escape",					{ fg = c.orange })
	hi("@string.regex",						{ fg = c.orange })
	hi("@string.special",					{ fg = c.orange })
	hi("@string.documentation",				{ fg = c.base00, italic = true })
	hi("@character",						{ fg = c.green })

	-- Numbers: yellow
	hi("@number",							{ fg = c.yellow })
	hi("@boolean",							{ fg = c.yellow })
	hi("@float",							{ fg = c.yellow })

	-- Functions: cyan
	hi("@function",							{ fg = c.cyan })
	hi("@function.builtin",				{ fg = c.cyan })
	hi("@function.call",					{ fg = c.cyan })
	hi("@function.macro",					{ fg = c.cyan })
	hi("@method",							{ fg = c.cyan })
	hi("@method.call",						{ fg = c.cyan })
	hi("@constructor",						{ fg = c.cyan })

	-- Keywords: blue
	hi("@keyword",							{ fg = c.blue })
	hi("@keyword.function",					{ fg = c.blue })
	hi("@keyword.operator",					{ fg = c.blue })
	hi("@keyword.return",					{ fg = c.blue })
	hi("@keyword.import",					{ fg = c.blue })
	hi("@conditional",						{ fg = c.blue })
	hi("@repeat",							{ fg = c.blue })
	hi("@exception",						{ fg = c.blue })

	-- Types: magenta
	hi("@type",								{ fg = c.magenta })
	hi("@type.builtin",						{ fg = c.magenta })
	hi("@type.qualifier",					{ fg = c.blue })
	hi("@type.definition",					{ fg = c.magenta })

	-- Attributes and properties: base tones
	hi("@attribute",						{ fg = c.base0 })
	hi("@property",							{ fg = c.base0 })
	hi("@field",							{ fg = c.base0 })
	hi("@parameter",						{ fg = c.base0, italic = true })

	-- Punctuation: recedes into background
	hi("@punctuation.bracket",				{ fg = c.base00 })
	hi("@punctuation.delimiter",			{ fg = c.base00 })
	hi("@punctuation.special",				{ fg = c.orange })

	-- Comments: lowest contrast (base00)
	hi("@comment",							{ fg = c.base00, italic = true })
	hi("@comment.todo",						{ fg = c.orange, bold = true })
	hi("@comment.error",					{ fg = c.red, bold = true })
	hi("@comment.warning",					{ fg = c.orange, bold = true })
	hi("@comment.note",						{ fg = c.blue, bold = true })

	-- Tags (JSX/HTML): cyan for element, base for attributes
	hi("@tag",								{ fg = c.cyan })
	hi("@tag.attribute",					{ fg = c.base0 })
	hi("@tag.delimiter",					{ fg = c.base00 })

	-- Markup
	hi("@markup.heading",					{ fg = c.base2, bold = true })
	hi("@markup.bold",						{ bold = true })
	hi("@markup.italic",					{ italic = true })
	hi("@markup.strikethrough",				{ strikethrough = true })
	hi("@markup.underline",					{ underline = true })
	hi("@markup.link",						{ fg = c.cyan, underline = true })
	hi("@markup.link.url",					{ fg = c.cyan, underline = true })
	hi("@markup.raw",						{ fg = c.green })
	hi("@markup.list",						{ fg = c.base0 })

	-- ── LSP Semantic Tokens ─────────────────────────────────
	hi("@lsp.type.class",					{ fg = c.magenta })
	hi("@lsp.type.decorator",				{ fg = c.base0 })
	hi("@lsp.type.enum",					{ fg = c.magenta })
	hi("@lsp.type.enumMember",				{ fg = c.yellow })
	hi("@lsp.type.function",				{ fg = c.cyan })
	hi("@lsp.type.interface",				{ fg = c.magenta })
	hi("@lsp.type.macro",					{ fg = c.blue })
	hi("@lsp.type.method",					{ fg = c.cyan })
	hi("@lsp.type.namespace",				{ fg = c.magenta })
	hi("@lsp.type.parameter",				{ fg = c.base0, italic = true })
	hi("@lsp.type.property",				{ fg = c.base0 })
	hi("@lsp.type.struct",					{ fg = c.magenta })
	hi("@lsp.type.type",					{ fg = c.magenta })
	hi("@lsp.type.typeParameter",			{ fg = c.magenta, italic = true })
	hi("@lsp.type.variable",				{ fg = c.base0 })
	hi("@lsp.mod.deprecated",				{ fg = c.red_dim, strikethrough = true })
	hi("@lsp.mod.readonly",					{ fg = c.yellow })

	-- ── LSP UI ──────────────────────────────────────────────
	hi("LspSignatureActiveParameter",		{ fg = c.base2, bold = true, underline = true })

	-- ── Git Signs ───────────────────────────────────────────
	hi("GitSignsAdd",						{ fg = c.green })
	hi("GitSignsChange",					{ fg = c.yellow })
	hi("GitSignsDelete",					{ fg = c.red })
	hi("GitSignsCurrentLineBlame",			{ fg = c.base00, italic = true })

	-- ── Telescope ───────────────────────────────────────────
	hi("TelescopeNormal",					{ fg = c.base0, bg = c.base03 })
	hi("TelescopeBorder",					{ fg = c.base00, bg = c.base03 })
	hi("TelescopeTitle",					{ fg = c.base2, bold = true })
	hi("TelescopePromptNormal",				{ fg = c.base0, bg = c.base01 })
	hi("TelescopePromptBorder",				{ fg = c.base00, bg = c.base01 })
	hi("TelescopePromptTitle",				{ fg = c.base2, bg = c.base01, bold = true })
	hi("TelescopePromptPrefix",				{ fg = c.cyan, bg = c.base01 })
	hi("TelescopeResultsNormal",			{ fg = c.base0, bg = c.base03 })
	hi("TelescopeResultsBorder",			{ fg = c.base00, bg = c.base03 })
	hi("TelescopePreviewNormal",			{ fg = c.base0, bg = c.base03 })
	hi("TelescopePreviewBorder",			{ fg = c.base00, bg = c.base03 })
	hi("TelescopeSelection",				{ fg = c.base2, bg = c.base00 })
	hi("TelescopeSelectionCaret",			{ fg = c.cyan })
	hi("TelescopeMatching",					{ fg = c.orange, bold = true })

	-- ── Trouble ─────────────────────────────────────────────
	hi("TroubleNormal",						{ fg = c.base0, bg = c.base03 })
	hi("TroubleText",						{ fg = c.base0 })
	hi("TroubleCount",						{ fg = c.blue, bg = c.base01 })

	-- ── Indent Blankline ────────────────────────────────────
	hi("IblIndent",							{ fg = c.base01, nocombine = true })
	hi("IblScope",							{ fg = c.base00, nocombine = true })

	-- ── Noice ───────────────────────────────────────────────
	hi("NoiceCmdlinePopup",					{ fg = c.base0, bg = c.base03 })
	hi("NoiceCmdlinePopupBorder",			{ fg = c.base00, bg = c.base03 })
	hi("NoiceCmdlineIcon",					{ fg = c.cyan })
	hi("NoiceConfirm",						{ fg = c.base0, bg = c.base03 })
	hi("NoiceConfirmBorder",				{ fg = c.base00, bg = c.base03 })

	-- ── Which-Key ───────────────────────────────────────────
	hi("WhichKey",							{ fg = c.cyan })
	hi("WhichKeyGroup",						{ fg = c.magenta })
	hi("WhichKeyDesc",						{ fg = c.base0 })
	hi("WhichKeySeparator",					{ fg = c.base00 })
	hi("WhichKeyFloat",						{ bg = c.base03 })
	hi("WhichKeyValue",						{ fg = c.base00 })

	-- ── Oil ─────────────────────────────────────────────────
	hi("OilDir",							{ fg = c.cyan, bold = true })
	hi("OilFile",							{ fg = c.base0 })
	hi("OilSymlink",						{ fg = c.magenta })

	-- ── Blink.cmp (completion) ──────────────────────────────
	hi("BlinkCmpMenu",						{ fg = c.base0, bg = c.base03 })
	hi("BlinkCmpMenuBorder",				{ fg = c.base00, bg = c.base03 })
	hi("BlinkCmpMenuSelection",				{ fg = c.base2, bg = c.base00 })
	hi("BlinkCmpLabel",						{ fg = c.base0 })
	hi("BlinkCmpLabelMatch",				{ fg = c.orange, bold = true })
	hi("BlinkCmpKind",						{ fg = c.base00 })
	hi("BlinkCmpKindFunction",				{ fg = c.cyan })
	hi("BlinkCmpKindMethod",				{ fg = c.cyan })
	hi("BlinkCmpKindVariable",				{ fg = c.base0 })
	hi("BlinkCmpKindKeyword",				{ fg = c.blue })
	hi("BlinkCmpKindText",					{ fg = c.green })
	hi("BlinkCmpKindClass",				{ fg = c.magenta })
	hi("BlinkCmpKindStruct",				{ fg = c.magenta })
	hi("BlinkCmpKindInterface",				{ fg = c.magenta })
	hi("BlinkCmpKindModule",				{ fg = c.magenta })
	hi("BlinkCmpKindProperty",				{ fg = c.base0 })
	hi("BlinkCmpKindConstant",				{ fg = c.yellow })
	hi("BlinkCmpKindEnum",					{ fg = c.magenta })
	hi("BlinkCmpKindEnumMember",			{ fg = c.yellow })
	hi("BlinkCmpKindSnippet",				{ fg = c.blue })
	hi("BlinkCmpKindField",				{ fg = c.base0 })
end

--- Returns a lualine theme table
function M.lualine()
	local c = require("eigengrau.palette")
	return {
		normal = {
			a = { fg = c.base02, bg = c.cyan, gui = "bold" },
			b = { fg = c.base0, bg = c.base00 },
			c = { fg = c.base00, bg = c.base01 },
		},
		insert = {
			a = { fg = c.base02, bg = c.green, gui = "bold" },
		},
		visual = {
			a = { fg = c.base02, bg = c.magenta, gui = "bold" },
		},
		replace = {
			a = { fg = c.base02, bg = c.red, gui = "bold" },
		},
		command = {
			a = { fg = c.base02, bg = c.orange, gui = "bold" },
		},
		inactive = {
			a = { fg = c.base00, bg = c.base01 },
			b = { fg = c.base00, bg = c.base01 },
			c = { fg = c.base00, bg = c.base01 },
		},
	}
end

return M

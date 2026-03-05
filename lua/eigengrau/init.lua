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

	-- ── Editor ──────────────────────────────────────────────
	hi("Normal",							{ fg = c.fg0, bg = c.bg1 })
	hi("NormalFloat",						{ fg = c.fg0, bg = c.bg0 })
	hi("FloatBorder",						{ fg = c.bg4, bg = c.bg0 })
	hi("FloatTitle",						{ fg = c.orange, bg = c.bg0, bold = true })
	hi("Cursor",							{ fg = c.bg1, bg = c.fg0 })
	hi("CursorLine",						{ bg = c.bg2 })
	hi("CursorColumn",					{ bg = c.bg2 })
	hi("ColorColumn",						{ bg = c.bg2 })
	hi("LineNr",							{ fg = c.fg3 })
	hi("CursorLineNr",					{ fg = c.orange, bold = true })
	hi("SignColumn",						{ bg = c.bg1 })
	hi("VertSplit",						{ fg = c.bg3 })
	hi("WinSeparator",					{ fg = c.bg3 })
	hi("Folded",							{ fg = c.fg2, bg = c.bg2 })
	hi("FoldColumn",						{ fg = c.fg3, bg = c.bg1 })
	hi("NonText",							{ fg = c.fg3 })
	hi("SpecialKey",						{ fg = c.fg3 })
	hi("Whitespace",						{ fg = c.bg3 })
	hi("EndOfBuffer",						{ fg = c.bg1 })

	-- ── Selections and Search ───────────────────────────────
	hi("Visual",							{ bg = c.bg3 })
	hi("VisualNOS",						{ bg = c.bg3 })
	hi("Search",							{ fg = c.bg1, bg = c.yellow })
	hi("IncSearch",						{ fg = c.bg1, bg = c.orange })
	hi("CurSearch",						{ fg = c.bg1, bg = c.orange })
	hi("Substitute",						{ fg = c.bg1, bg = c.red })

	-- ── Popups and Menus ────────────────────────────────────
	hi("Pmenu",								{ fg = c.fg1, bg = c.bg2 })
	hi("PmenuSel",							{ fg = c.fg0, bg = c.bg4 })
	hi("PmenuSbar",						{ bg = c.bg3 })
	hi("PmenuThumb",						{ bg = c.fg3 })
	hi("WildMenu",							{ fg = c.bg1, bg = c.blue })

	-- ── Statusline and Tabline ──────────────────────────────
	hi("StatusLine",						{ fg = c.fg1, bg = c.bg3 })
	hi("StatusLineNC",					{ fg = c.fg3, bg = c.bg2 })
	hi("TabLine",							{ fg = c.fg2, bg = c.bg2 })
	hi("TabLineFill",						{ bg = c.bg0 })
	hi("TabLineSel",						{ fg = c.fg0, bg = c.bg1 })
	hi("WinBar",							{ fg = c.fg1, bg = c.bg1 })
	hi("WinBarNC",							{ fg = c.fg3, bg = c.bg1 })

	-- ── Messages ────────────────────────────────────────────
	hi("MsgArea",							{ fg = c.fg1 })
	hi("ModeMsg",							{ fg = c.blue, bold = true })
	hi("MoreMsg",							{ fg = c.green })
	hi("WarningMsg",						{ fg = c.yellow })
	hi("ErrorMsg",							{ fg = c.red, bold = true })
	hi("Question",							{ fg = c.green })
	hi("Title",								{ fg = c.orange, bold = true })
	hi("Directory",						{ fg = c.blue })
	hi("MatchParen",						{ fg = c.orange, bg = c.bg3, bold = true })

	-- ── Diff ────────────────────────────────────────────────
	hi("DiffAdd",							{ fg = c.green, bg = "#1A2E1A" })
	hi("DiffChange",						{ fg = c.yellow, bg = "#2E2A1A" })
	hi("DiffDelete",						{ fg = c.red, bg = "#2E1A1A" })
	hi("DiffText",							{ fg = c.orange, bg = "#3E2A1A", bold = true })

	-- ── Diagnostics ─────────────────────────────────────────
	hi("DiagnosticError",				{ fg = c.red })
	hi("DiagnosticWarn",					{ fg = c.yellow })
	hi("DiagnosticInfo",					{ fg = c.cyan })
	hi("DiagnosticHint",					{ fg = c.teal })
	hi("DiagnosticOk",					{ fg = c.green })
	hi("DiagnosticUnderlineError",	{ undercurl = true, sp = c.red })
	hi("DiagnosticUnderlineWarn",	   { undercurl = true, sp = c.yellow })
	hi("DiagnosticUnderlineInfo",	   { undercurl = true, sp = c.cyan })
	hi("DiagnosticUnderlineHint",	   { undercurl = true, sp = c.teal })
	hi("DiagnosticVirtualTextError",	{ fg = c.red, bg = "#2A1215" })
	hi("DiagnosticVirtualTextWarn",	{ fg = c.yellow, bg = "#2A2815" })
	hi("DiagnosticVirtualTextInfo",	{ fg = c.cyan, bg = "#152A2A" })
	hi("DiagnosticVirtualTextHint",	{ fg = c.teal, bg = "#152A25" })

	-- ── Syntax (legacy Vim groups) ──────────────────────────
	hi("Comment",							{ fg = c.fg2, italic = true })
	hi("Constant",							{ fg = c.yellow })
	hi("String",							{ fg = c.green })
	hi("Character",						{ fg = c.green })
	hi("Number",							{ fg = c.orange })
	hi("Boolean",							{ fg = c.orange })
	hi("Float",								{ fg = c.orange })
	hi("Identifier",						{ fg = c.fg0 })
	hi("Function",							{ fg = c.blue })
	hi("Statement",						{ fg = c.blue, bold = true })
	hi("Conditional",						{ fg = c.blue, bold = true })
	hi("Repeat",							{ fg = c.blue, bold = true })
	hi("Label",								{ fg = c.cyan })
	hi("Operator",							{ fg = c.fg1 })
	hi("Keyword",							{ fg = c.blue, bold = true })
	hi("Exception",						{ fg = c.red })
	hi("PreProc",							{ fg = c.magenta })
	hi("Include",							{ fg = c.magenta })
	hi("Define",							{ fg = c.magenta })
	hi("Macro",								{ fg = c.magenta })
	hi("PreCondit",						{ fg = c.magenta })
	hi("Type",								{ fg = c.cyan })
	hi("StorageClass",					{ fg = c.blue })
	hi("Structure",						{ fg = c.cyan })
	hi("Typedef",							{ fg = c.cyan })
	hi("Special",							{ fg = c.teal })
	hi("SpecialChar",						{ fg = c.teal })
	hi("Tag",								{ fg = c.blue_bright })
	hi("Delimiter",						{ fg = c.fg1 })
	hi("SpecialComment",					{ fg = c.fg2, italic = true })
	hi("Debug",								{ fg = c.red })
	hi("Underlined",						{ fg = c.blue_bright, underline = true })
	hi("Ignore",							{ fg = c.fg3 })
	hi("Error",								{ fg = c.red, bold = true })
	hi("Todo",								{ fg = c.yellow, bg = c.bg3, bold = true })

	-- ── Treesitter ──────────────────────────────────────────
	hi("@variable",						{ fg = c.fg0 })
	hi("@variable.builtin",			   { fg = c.red })
	hi("@variable.parameter",		   { fg = c.fg1, italic = true })
	hi("@variable.member",				{ fg = c.fg0 })
	hi("@constant",						{ fg = c.yellow })
	hi("@constant.builtin",			   { fg = c.orange })
	hi("@constant.macro",				{ fg = c.magenta })
	hi("@module",							{ fg = c.cyan })
	hi("@label",							{ fg = c.cyan })
	hi("@string",							{ fg = c.green })
	hi("@string.escape",					{ fg = c.teal })
	hi("@string.regex",					{ fg = c.teal })
	hi("@string.special",				{ fg = c.teal })
	hi("@character",						{ fg = c.green })
	hi("@number",							{ fg = c.orange })
	hi("@boolean",							{ fg = c.orange })
	hi("@float",							{ fg = c.orange })
	hi("@function",						{ fg = c.blue })
	hi("@function.builtin",			   { fg = c.blue_bright })
	hi("@function.call",					{ fg = c.blue })
	hi("@function.macro",				{ fg = c.magenta })
	hi("@method",							{ fg = c.blue })
	hi("@method.call",					{ fg = c.blue })
	hi("@constructor",					{ fg = c.cyan })
	hi("@keyword",							{ fg = c.blue, bold = true })
	hi("@keyword.function",			   { fg = c.blue, bold = true })
	hi("@keyword.operator",			   { fg = c.blue })
	hi("@keyword.return",				{ fg = c.blue, bold = true })
	hi("@keyword.import",				{ fg = c.magenta })
	hi("@conditional",					{ fg = c.blue, bold = true })
	hi("@repeat",							{ fg = c.blue, bold = true })
	hi("@exception",						{ fg = c.red })
	hi("@type",								{ fg = c.cyan })
	hi("@type.builtin",					{ fg = c.cyan })
	hi("@type.qualifier",				{ fg = c.blue })
	hi("@type.definition",				{ fg = c.cyan })
	hi("@attribute",						{ fg = c.magenta })
	hi("@property",						{ fg = c.fg0 })
	hi("@field",							{ fg = c.fg0 })
	hi("@parameter",						{ fg = c.fg1, italic = true })
	hi("@punctuation.bracket",	   	{ fg = c.fg2 })
	hi("@punctuation.delimiter",  	{ fg = c.fg2 })
	hi("@punctuation.special",	   	{ fg = c.teal })
	hi("@comment",							{ fg = c.fg2, italic = true })
	hi("@comment.todo",					{ fg = c.yellow, bg = c.bg3, bold = true })
	hi("@comment.error",					{ fg = c.red, bg = c.bg3, bold = true })
	hi("@comment.warning",				{ fg = c.orange, bg = c.bg3, bold = true })
	hi("@comment.note",					{ fg = c.cyan, bg = c.bg3, bold = true })
	hi("@tag",									{ fg = c.blue_bright })
	hi("@tag.attribute",					{ fg = c.orange })
	hi("@tag.delimiter",					{ fg = c.fg2 })
	hi("@markup.heading",				{ fg = c.orange, bold = true })
	hi("@markup.bold",					{ bold = true })
	hi("@markup.italic",					{ italic = true })
	hi("@markup.strikethrough",		{ strikethrough = true })
	hi("@markup.underline",			   { underline = true })
	hi("@markup.link",					{ fg = c.blue_bright, underline = true })
	hi("@markup.link.url",				{ fg = c.blue_bright, underline = true })
	hi("@markup.raw",						{ fg = c.green })
	hi("@markup.list",					{ fg = c.orange })

	-- ── LSP Semantic Tokens ─────────────────────────────────
	hi("@lsp.type.class",				{ fg = c.cyan })
	hi("@lsp.type.decorator",	   	{ fg = c.magenta })
	hi("@lsp.type.enum",					{ fg = c.cyan })
	hi("@lsp.type.enumMember",	   	{ fg = c.yellow })
	hi("@lsp.type.function",			{ fg = c.blue })
	hi("@lsp.type.interface",		   { fg = c.cyan })
	hi("@lsp.type.macro",				{ fg = c.magenta })
	hi("@lsp.type.method",				{ fg = c.blue })
	hi("@lsp.type.namespace",	   	{ fg = c.cyan })
	hi("@lsp.type.parameter",	   	{ fg = c.fg1, italic = true })
	hi("@lsp.type.property",			{ fg = c.fg0 })
	hi("@lsp.type.struct",				{ fg = c.cyan })
	hi("@lsp.type.type",					{ fg = c.cyan })
	hi("@lsp.type.typeParameter",	   { fg = c.cyan, italic = true })
	hi("@lsp.type.variable",			{ fg = c.fg0 })
	hi("@lsp.mod.deprecated",		   { fg = c.orange_dim, strikethrough = true })
	hi("@lsp.mod.readonly",			   { fg = c.yellow })

	-- ── Git Signs ───────────────────────────────────────────
	hi("GitSignsAdd",						{ fg = c.green })
	hi("GitSignsChange",					{ fg = c.yellow })
	hi("GitSignsDelete",					{ fg = c.red })
	hi("GitSignsCurrentLineBlame",	{ fg = c.fg3, italic = true })

	-- ── Telescope ───────────────────────────────────────────
	hi("TelescopeNormal",				{ fg = c.fg1, bg = c.bg0 })
	hi("TelescopeBorder",				{ fg = c.bg4, bg = c.bg0 })
	hi("TelescopeTitle",					{ fg = c.orange, bold = true })
	hi("TelescopePromptNormal",		{ fg = c.fg0, bg = c.bg2 })
	hi("TelescopePromptBorder",		{ fg = c.bg4, bg = c.bg2 })
	hi("TelescopePromptTitle",	   	{ fg = c.orange, bg = c.bg2, bold = true })
	hi("TelescopePromptPrefix",		{ fg = c.orange, bg = c.bg2 })
	hi("TelescopeResultsNormal",  	{ fg = c.fg1, bg = c.bg0 })
	hi("TelescopeResultsBorder",  	{ fg = c.bg4, bg = c.bg0 })
	hi("TelescopePreviewNormal",  	{ fg = c.fg1, bg = c.bg0 })
	hi("TelescopePreviewBorder",  	{ fg = c.bg4, bg = c.bg0 })
	hi("TelescopeSelection",			{ fg = c.fg0, bg = c.bg3 })
	hi("TelescopeSelectionCaret",	   { fg = c.orange })
	hi("TelescopeMatching",			   { fg = c.orange, bold = true })

	-- ── Trouble ─────────────────────────────────────────────
	hi("TroubleNormal",					{ fg = c.fg1, bg = c.bg0 })
	hi("TroubleText",						{ fg = c.fg1 })
	hi("TroubleCount",					{ fg = c.orange, bg = c.bg3 })

	-- ── Indent Blankline ────────────────────────────────────
	hi("IblIndent",						{ fg = c.bg3, nocombine = true })
	hi("IblScope",							{ fg = c.bg4, nocombine = true })

	-- ── Noice ───────────────────────────────────────────────
	hi("NoiceCmdlinePopup",			   { fg = c.fg0, bg = c.bg0 })
	hi("NoiceCmdlinePopupBorder",	   { fg = c.bg4, bg = c.bg0 })
	hi("NoiceCmdlineIcon",				{ fg = c.orange })
	hi("NoiceConfirm",					{ fg = c.fg0, bg = c.bg0 })
	hi("NoiceConfirmBorder",			{ fg = c.bg4, bg = c.bg0 })

	-- ── Which-Key ───────────────────────────────────────────
	hi("WhichKey",							{ fg = c.orange })
	hi("WhichKeyGroup",					{ fg = c.blue })
	hi("WhichKeyDesc",					{ fg = c.fg1 })
	hi("WhichKeySeparator",		   	{ fg = c.fg3 })
	hi("WhichKeyFloat",					{ bg = c.bg0 })
	hi("WhichKeyValue",					{ fg = c.fg2 })

	-- ── Oil ─────────────────────────────────────────────────
	hi("OilDir",							{ fg = c.blue, bold = true })
	hi("OilFile",							{ fg = c.fg0 })
	hi("OilSymlink",						{ fg = c.cyan })
end

--- Returns a lualine theme table
function M.lualine()
	local c = require("eigengrau.palette")
	return {
		normal = {
			a = { fg = c.bg1, bg = c.blue, gui = "bold" },
			b = { fg = c.fg1, bg = c.bg3 },
			c = { fg = c.fg2, bg = c.bg2 },
		},
		insert = {
			a = { fg = c.bg1, bg = c.green, gui = "bold" },
		},
		visual = {
			a = { fg = c.bg1, bg = c.magenta, gui = "bold" },
		},
		replace = {
			a = { fg = c.bg1, bg = c.red, gui = "bold" },
		},
		command = {
			a = { fg = c.bg1, bg = c.orange, gui = "bold" },
		},
		inactive = {
			a = { fg = c.fg3, bg = c.bg2 },
			b = { fg = c.fg3, bg = c.bg2 },
			c = { fg = c.fg3, bg = c.bg2 },
		},
	}
end

return M

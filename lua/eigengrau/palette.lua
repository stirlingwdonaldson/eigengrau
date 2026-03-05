-- Eigengrau color palette
-- Split-complementary: blue-orange axis on navy-black ground
-- Blue (#0000FF family) and Orange (#FB6019 family) are direct complements

return {
   -- Backgrounds (dark navy-charcoal progression)
   bg0 = "#0D0F14", -- deepest: floats, sidebars
   bg1 = "#131520", -- main editor background
   bg2 = "#1A1D2E", -- cursorline, visual selection
   bg3 = "#242840", -- UI borders, subtle separators
   bg4 = "#2E3354", -- statusline bg, inactive elements

   -- Foregrounds
   fg0 = "#FDFFFC", -- primary text
   fg1 = "#C8CCDB", -- secondary text, parameters
   fg2 = "#8B90A8", -- comments, line numbers
   fg3 = "#565B75", -- disabled, whitespace chars

   -- Core accents
   blue = "#2B5CFF", -- keywords, control flow
   orange = "#FB6019", -- highlights, emphasis
   cyan = "#4FC1E9", -- types, interfaces
   yellow = "#F1D302", -- warnings, constants
   green = "#5CCC6F", -- strings, additions, success
   red = "#E04255", -- errors, deletions, important
   magenta = "#C77DFF", -- special, preprocessor
   teal = "#2AC9B0", -- regex, escape chars

   -- Extended
   orange_dim = "#C04E15", -- deprecated, muted emphasis
   blue_bright = "#5B8AFF", -- links, tags
   blue_dim = "#235789", -- fold backgrounds
   pink = "#FF7EB3", -- punctuation brackets
   navy = "#161925", -- terminal bg
}

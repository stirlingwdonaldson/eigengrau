-- Entry point for :colorscheme eigengrau
-- Clear cached modules so palette/highlight changes are picked up on reload
-- package.loaded["eigengrau"] = nil
-- package.loaded["eigengrau.palette"] = nil
require("eigengrau").load()

-- import comment plugin safely
local setup, hop = pcall(require, "hop")
if not setup then
  return
end

local directions = require("hop.hint").HintDirection
vim.keymap.set("n", "s", function()
  hop.hint_char1({ multi_windows = true })
end, { remap = true })
vim.keymap.set("n", "S", function()
  hop.hint_char1({ multi_windows = true })
end, { remap = true })
vim.keymap.set("n", "f", function()
  hop.hint_char1({ current_line_only = true })
end, { remap = true })
vim.keymap.set("n", "F", function()
  hop.hint_char1({ current_line_only = true })
end, { remap = true })

-- enable comment
hop.setup({
  case_insensitive = false,
  multi_windows = true,
})

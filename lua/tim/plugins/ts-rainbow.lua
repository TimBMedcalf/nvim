-- import nvim-treesitter plugin safely
local status = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

require("rainbow-delimiters.setup").setup({
  strategy = {
    -- ...
  },
  query = {
    -- ...
  },
  highlight = {
    -- ...
  },
})

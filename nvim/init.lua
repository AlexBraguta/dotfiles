-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.clipboard = "unnamedplus"

require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",   -- latte, frappe, macchiato, mocha
        integrations = {
          treesitter = true,
          lsp_trouble = true,
          gitsigns = true,
          telescope = true,
          which_key = true,
          cmp = true,
          nvimtree = true,
        },
      })
      vim.cmd.colorscheme("catppuccin-macchiato")
    end,
  },
})

-- good practice
vim.opt.termguicolors = true

-- File: plugins/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*", -- or a specific version
  config = function()
    require("toggleterm").setup{
      direction = "float",
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        }
      }
    }
    vim.keymap.set("n", "<A-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
  end
}


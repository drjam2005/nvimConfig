return {
  "github/copilot.vim",
  cmd = "Copilot",
  config = function()
    -- Optional key mappings
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
  end,
}


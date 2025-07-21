return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_quickfix_mode = 0

    -- VimTeX settings for Zathura
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_view_general_options = '--synctex-forward %l:%c:%f'
    vim.g.vimtex_view_automatic = 1
  end
}

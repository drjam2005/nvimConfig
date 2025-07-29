return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_quickfix_mode = 0

    -- VimTeX settings for Zathura
    vim.g.vimtex_view_forward_search_on_start = false
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_view_general_options = '--synctex-forward %l:%c:%f'
    vim.g.vimtex_view_automatic = 1
    vim.g.vimtex_compiler_latexmk = {
	aux_dir = "/home/james/.texfiles",
    }
  end
}

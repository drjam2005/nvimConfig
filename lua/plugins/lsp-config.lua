return {
    -- mason lsp
    {
	"williamboman/mason.nvim",
	config = function() 
	    require("mason").setup()
	end
    },

    -- mason lsp config
    {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	config = function()
	    require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "clangd", "pylsp" }
	    })
	end 
    },

    -- nvim lsp config
    {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
	    local capa = require('cmp_nvim_lsp').default_capabilities()

	    local lspconfig = require("lspconfig")
	    lspconfig.lua_ls.setup({ capabilities = capa})
	    lspconfig.clangd.setup({ capabilities = capa})
	    lspconfig.jdtls.setup({capabilities = capa})
	
	    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
	    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
	    vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, {})
	end
    }
}

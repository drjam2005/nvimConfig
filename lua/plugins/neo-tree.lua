return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
    },
    config = function()
	require("neo-tree").setup({
	    window = {
		width = 20
	    }
	})
	vim.keymap.set('n', '<leader>t', ':Neotree toggle filesystem reveal left <cr>')
    end
}

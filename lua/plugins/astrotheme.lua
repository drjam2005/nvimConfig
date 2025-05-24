return {
    'AstroNvim/astrotheme',
    config = function()
	require("astrotheme").setup({
	    palette = "astrodark",
	    background = {
		light = "astrolight",
		dark = "astrodark",
	    },
	    style = {transparent = false},
	})
    end
}

return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.sonokai_style = "andromeda"
		vim.g.sonokai_transparent_background = 1
		vim.cmd("colorscheme sonokai")
	end,
}

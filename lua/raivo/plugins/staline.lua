return {
	"tamton-aquib/staline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "olivercederborg/poimandres.nvim", opt = true },

	config = function()
		require("staline").setup()
	end,
}

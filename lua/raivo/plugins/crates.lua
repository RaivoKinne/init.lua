return {
	"saecki/crates.nvim",
	dependencies = "hrsh7th/nvim-cmp",
	ft = { "rust", "toml" },
	config = function()
		local crates = require("crates")
		crates.setup()
		crates.show()
	end,
}

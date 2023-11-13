require('rose-pine').setup({
	dark_variant = 'main',
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

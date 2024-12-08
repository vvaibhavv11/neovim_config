vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.signcolumn = "no"


if vim.g.neovide then
	vim.o.guifont = "SpaceMono Nerd Font Mono:h12" -- text below applies for VimScript
	vim.g.neovide_refresh_rate_idle = 5
	vim.o.signcolumn = "no"
	vim.keymap.set("n", "<C-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<C-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
end

vim.opt.termguicolors = true

require("zame")

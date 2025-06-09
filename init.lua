vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.signcolumn = "no"

vim.o.completeopt = "menuone,noinsert,noselect"
vim.opt.shortmess = vim.opt.shortmess + "c"

vim.diagnostic.config({
    virtual_text = false,
    float = { border = "rounded" }
})

vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- vim.cmd [[autocmd! ColorScheme * highlight NormaFloat guibg=#1f2335 guifg=#abb2bf]]
vim.keymap.set("n", "<C-K>", function()
  vim.diagnostic.open_float(nil, { scope = "line", focus = false })
end, { desc = "Line diagnostics", silent = true })


if vim.g.neovide then
    vim.o.guifont = "SpaceMono Nerd Font Mono:h12" -- text below applies for VimScript
    vim.g.neovide_refresh_rate_idle = 5
    vim.o.signcolumn = "no"
    vim.keymap.set("n", "<C-v>", '"+P')      -- Paste normal mode
    vim.keymap.set("v", "<C-v>", '"+P')      -- Paste visual mode
    vim.keymap.set("c", "<C-v>", "<C-R>+")   -- Paste command mode
    vim.keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
end

vim.opt.termguicolors = true

require("zame")

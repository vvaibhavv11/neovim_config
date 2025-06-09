vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>fm", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>l", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- disable copilot bindings
vim.g.codeium_disable_bindings = 1

-- keymaps for codeium copilot 
-- vim.keymap.set('i', '<c-l>', function() return vim.fn['codeium#Accept']() end, { expr = true })
-- vim.keymap.set("n", "<c-k>", ":Codeium Disable<CR>")
-- vim.keymap.set("n", "<c-p>", ":Codeium Enable<CR>")
-- vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
-- vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
-- vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
-- NvimTree
vim.keymap.set("n", "<leader>fm", ":NvimTreeToggle<CR>")

--symbole-outline

-- Default options:
local opts = {
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    icons_enabled = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = false, -- invert background for search, diffs, statuslines and errors
    contrast = "soft", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
}

require("gruvbox").setup(opts)
vim.cmd("colorscheme gruvbox")

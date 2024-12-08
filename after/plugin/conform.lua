require("conform").setup({
    formatters_by_ft = {
        javascript = { "biome" },
        typescript = { "biome" },
        javascriptreact = { "biome" },
        typescriptreact = { "biome" },
        svelte = { "biome" },
        css = { "biome" },
        html = { "biome" },
        json = { "clang-format" },
        yaml = { "biome" },
        markdown = { "biome" },
        graphql = { "biome" },
        liquid = { "biome" },
        lua = { "stylua" },
        python = { "isort", "black" },
        java = { "goole-java-format" },
        c = {"clang-format"}
    },
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 2000,
    })
end, { desc = "Format file or range (in visual mode)" })

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "python", "java", "astro", "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	-- syntax of templ, blade
	vim.filetype.add({
		extension = {
			templ = "templ",
			c3 = "c3",
			c3i = "c3",
			c3t = "c3",
		},
		pattern = {
			[".*%.blade%.php"] = "blade",
		},
	}),

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.c3 = {
	install_info = {
		url = "https://github.com/c3lang/tree-sitter-c3",
		files = { "src/parser.c", "src/scanner.c" },
		branch = "main",
	},
}

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"go", "python", "c", "cpp", "javascript", "typescript",
				"java", "yaml", "json", "lua", "dockerfile",
				"bash", "hcl", "terraform", "markdown"
			},
			highlight = {
				enable = true
			},
			indent = {
				enable = true
			},
			autotag = {
				enable = true
			}
		})
	end
}

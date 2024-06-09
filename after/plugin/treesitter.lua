require("nvim-treesitter.configs").setup {
	    ensure_installed = {
		    "javascript",
		    "typescript",
		    "go",
		    "c",
		    "lua",
            "html",
            "terraform",
		    "rust",
	    },
	    sync_install = false,
	    auto_install = true,
	    highight = {
		    enable = true,
		    additional_vim_regex_highighting = false,
	    },
}

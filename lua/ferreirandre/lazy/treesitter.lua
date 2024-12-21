return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "python",
                "go",
                "rust",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "heex",
                "javascript",
                "html",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

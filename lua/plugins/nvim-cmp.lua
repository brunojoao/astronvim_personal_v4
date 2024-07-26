return { -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        opts.sources = cmp.config.sources({
            {
                name = "emmet_vim",
                priority = 1000,
                option = {
                    filetypes = { "html", "css", "edge", "php", "phtml" }
                }
            },
            { name = "codeium",  priority = 900 },
            { name = "luasnip",  priority = 800 },
            { name = "nvim_lsp", priority = 700 },
            { name = "buffer",   priority = 600 },
            { name = "path",     priority = 500 },
        })
    end,
}

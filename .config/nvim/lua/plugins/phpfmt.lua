return {
    "yuchanns/phpfmt.nvim",
    lazy = true,
    config = function()
        require("phpfmt").setup({
            -- Configurações padrão
            cmd = "phpcbf",
            standard = "PSR4",
            auto_format = true
        })
    end
}

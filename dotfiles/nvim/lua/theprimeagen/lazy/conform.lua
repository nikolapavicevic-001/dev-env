return {
    'stevearc/conform.nvim',
    opts = {},
    keys = {
        {
            "<leader>p",
            function()
                require("conform").format({ async = true })
            end,
            desc = "Format (Conform)",
        },
    },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "gofmt" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                elixir = { "mix" }
            }
        })
    end
}

return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    opts = {},
    config = function()
        require("refactoring").setup({
            prompt_func_return_type = {
                go = true,
                python = true,
                javascript = true,
                typescript = true,
            },
            prompt_func_param_type = {
                go = true,
                python = true,
                javascript = true,
                typescript = true,
            },
        })
        vim.keymap.set(
            { "n", "x" },
            "<leader>rr",
            function() require('refactoring').select_refactor() end
        )
    end,
}

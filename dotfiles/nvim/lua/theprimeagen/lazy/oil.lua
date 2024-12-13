return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            CustomOilBar = function()
                local path = vim.fn.expand "%"
                path = path:gsub("oil://", "")

                return "  " .. vim.fn.fnamemodify(path, ":.")
            end

            require("oil").setup {
                columns = { "icon" },
                win_options = {
                    winbar = "%{v:lua.CustomOilBar()}",
                },
                keymaps = {
                    ["<C-p>"] = false,
                    ["<C-c>"] = false,
                    ["<C-l>"] = "actions.preview",
                },
                view_options = {
                    show_hidden = true,
                    is_always_hidden = function(name, _)
                        local folder_skip = { "dev-tools.locks", "dune.lock", "_build" }
                        return vim.tbl_contains(folder_skip, name)
                    end,
                },
            }

            -- Open parent directory in current window
            vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end,
    },
}

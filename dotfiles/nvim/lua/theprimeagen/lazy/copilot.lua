return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "BufReadPost",
    config = function()
        require("copilot").setup({
            copilot_node_command = "/usr/local/n/versions/node/22.5.1/bin/node",
            suggestion = {
                enabled = true,
                auto_trigger = true,
                debounce = 75,
                keymap = {
                    accept = "<Tab>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-j>",
                    prev = "<C-k>",
                    dismiss = "<C-]>",
                },
            },
        })
    end,
}

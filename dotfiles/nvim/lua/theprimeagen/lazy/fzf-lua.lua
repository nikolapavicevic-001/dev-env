return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({"telescope"})
    local fzf = require("fzf-lua")

    vim.keymap.set('n', '<C-p>', fzf.files, {})
    vim.keymap.set('n', '<leader>pws', fzf.grep_cword ,{})
    vim.keymap.set('n', '<leader>pWs', fzf.grep_cWORD ,{})
    vim.keymap.set('n', '<leader>ps', fzf.live_grep ,{})
    vim.keymap.set('v', '<leader>pf', fzf.grep_visual ,{})
  end
}

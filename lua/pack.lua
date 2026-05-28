vim.pack.add({
    { src = "https://github.com/vague-theme/vague.nvim",          name = "vague" },
    { src = "https://github.com/nvim-mini/mini.nvim",             name = "mini" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
    { src = "https://github.com/mason-org/mason.nvim",            name = "mason" },
    "https://github.com/neovim/nvim-lspconfig",
})

require("mini.icons").setup()
require("mini.cmdline").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.statusline").setup()

require("mini.notify").setup({
    content = {
        format = function(notif)
            return notif.msg
        end,
    },
})

require("mini.pick").setup()
require("mini.extra").setup()
vim.keymap.set("n", "<leader>pf", ":Pick files<CR>", { desc = "Mini File Picker" })
vim.keymap.set("n", "<leader>ph", ":Pick help<CR>", { desc = "Mini Help Picker" })
vim.keymap.set("n", "<leader>pg", ":Pick grep_live<CR>", { desc = "Mini Live Grep Picker" })
vim.keymap.set("n", "<leader>pd", ":Pick diagnostic<CR>", { desc = "Mini Diagnostic Picker" })
vim.keymap.set("n", "<leader>pk", ":Pick keymaps<CR>", { desc = "Mini Keymap Picker" })
vim.keymap.set("n", "<leader>pb", ":Pick buffers<CR>", { desc = "Mini Buffer Picker" })

require("mini.completion").setup()

require("mason").setup()

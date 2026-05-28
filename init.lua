require("vim._core.ui2").enable({})

require("options")
require("keymaps")
require("commands")
require("pack")
require("treesitter")
require("lsp")

require("vague").setup({
    transparent = true
})
vim.cmd.colorscheme("vague")

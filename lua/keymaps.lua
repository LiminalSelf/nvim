vim.g.mapleader = " "

-- Nice to haves
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selection without losing yanked text" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

-- This should be the default
vim.keymap.set("n", "<Esc>", "<CMD>nohl<CR>", { desc = "Clear search highlighting" })

-- Who needs a separate file explorer
vim.keymap.set("n", "<leader>e", "<CMD>Ex<CR>", { desc = "Open netrw" })

-- Move lines
vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", "<CMD>m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", "<CMD>m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Hop between split windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize split windows
vim.keymap.set("n", "<C-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width" })

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle undotree" })

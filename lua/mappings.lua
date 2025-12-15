require "nvchad.mappings"

-- disable  which-key "query lookup" on <leader>wk
pcall(vim.keymap.del, "n", "<leader>wk")

local map = vim.keymap.set
map("n", "<leader>sf", "<cmd>Telescope find_files<CR>", {
  desc = "Search files",
})
map({ "n", "v" }, "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "J", "3j", { desc = "Move down 3 lines" })
map({ "n", "v" }, "K", "3k", { desc = "Move up 3 lines" })
map("n", "\\", "<cmd>Oil<CR>", { desc = "Open parent directory (Oil)" })

map("n", "<leader>e", function()
  vim.diagnostic.open_float(nil, {
    focus = false,
    source = "always",
    border = "rounded",
  })
end, { desc = "LSP diagnostic under cursor" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

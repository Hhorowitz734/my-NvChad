require("nvchad.configs.lspconfig").defaults()

vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
  },
}

local servers = { "html", "cssls", "clangd"}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

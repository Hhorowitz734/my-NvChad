require "nvchad.autocmds"


vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() ~= 1 then return end

    local arg = vim.fn.argv(0)
    if vim.fn.isdirectory(arg) == 0 then return end

    -- run after NvChad dashboard/UI does its thing
    vim.schedule(function()
      local ok, oil = pcall(require, "oil")
      if ok then
        oil.open(arg)
      end
    end)
  end,
})


local group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--Don't auto commenting on save

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    local filename = vim.fn.expand("%:t")

    if vim.opt.number:get() then
      vim.api.nvim_echo({ { filename .. " save now!", "Normal" } }, false, {})
    end

    print("shell_error:", vim.v.shell_error)
  end,
})

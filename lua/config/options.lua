-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_picker = "snacks"

vim.opt.virtualedit = "onemore"
vim.opt.timeoutlen = 300

-- ssh clipboard settings for NixOS on UTM
if vim.fn.has("macunix") == 1 and vim.env.SSH_CONNECTION ~= nil then
  vim.opt.clipboard = "unnamedplus"
  vim.g.clipboard = {
    name = "macOS-clipboard",
    copy = {
      ["+"] = "pbcopy",
      ["*"] = "pbcopy",
    },
    paste = {
      ["+"] = "pbpaste",
      ["*"] = "pbpaste",
    },
    cache_enabled = 0,
  }
end

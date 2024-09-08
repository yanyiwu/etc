vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd("set clipboard=unnamedplus")

vim.cmd("command Q : q")
vim.cmd("command W : w")
vim.cmd("command Wq : wq")
vim.cmd("command WQ : wq")

-- Auto jump to the last cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})


if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

require('packer').startup(function()
  use 'nvim-treesitter/nvim-treesitter'
  run = ':TSUpdate'
end)

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python"}, -- Install Python support
  highlight = {
    enable = true,            
  },
}

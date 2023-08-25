vim.g.mapleader = " "

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.wo.relativenumber = true
vim.g.material_style = "deep ocean"

vim.cmd("colorscheme material")

local cmp = require('cmp')

-- LSP Suggestions allow enter key for select
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

-- Vim has two commands for closing a buffer: :bdelete and :bwipeout. The former removes the file from the buffer list, clears its options, variables and mappings. However, it remains in the jumplist, so Ctrl-o takes you back and reopens the file. If that's not what you want, use :bwipeout or Bbye's equivalent :Bwipeout where you would've used :bdelete.

-- Close current buffer
vim.keymap.set("n", "<A-x>", function ()
	vim.api.nvim_buf_delete(0, {})
end)

-- Move around open buffers with alt and left/right in 
vim.keymap.set("n", "<A-Left>", ":bp<CR>")
vim.keymap.set("n", "<A-Right>", ":bn<CR>")
vim.keymap.set("n", "<c-s>", ":w<CR>")

-- Move line or block of code in visual mode
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv-gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv-gv")

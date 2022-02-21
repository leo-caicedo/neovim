set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

source ~/.config/nvim/.vimrc
source ~/.config/nvim/themes/onedark.vim
lua << EOF
require('neoscroll').setup()
require("bufferline").setup{}
require'colorizer'.setup()

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
	"IndentBlanklineIndent1",
	"IndentBlanklineIndent2",
	"IndentBlanklineIndent3",
	"IndentBlanklineIndent4",
	"IndentBlanklineIndent5",
	"IndentBlanklineIndent6",
    },
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
indent = {
  enable = true
  }
}
EOF
